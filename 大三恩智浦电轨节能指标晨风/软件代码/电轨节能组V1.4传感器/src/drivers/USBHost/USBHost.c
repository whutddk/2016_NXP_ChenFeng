#include "USBHost.h"
#include "common.h"
#include "SCSI.h"
#include "USBMST.h"

#define K60_USB_FRM_NUM (USB0_ISTAT = USB_ISTAT_SOFTOK_MASK , USB0_FRMNUML | (((uint_16)USB0_FRMNUMH)<<8))


std_error_t std_error;
tr_error_t tr_error;
extern uint_8 USBFlag;
extern MSTInfoStruct mst_info;
static uint_8 dbuffer[DBUFFER_SIZE];
DeviceConect my_device;

uint_8 tBDT_unaligned[1024];


tBDT * tBDTtable;
uint_8 *bdt;

struct {
  uint_8 next_rx;
  uint_8 next_tx;
} ep_info;


uint_8 USBHostInit(void)
{  
    uint_8 ep;
    uint_16 i;
    
    tBDTtable = (tBDT *)((( uint_32 ) tBDT_unaligned & 0xFFFFFE00UL) + 0x200UL);
    bdt = (uint_8 *)tBDTtable;

    my_device.address = INVALID_ADDRESS;
    ep_info.next_tx   = 0;
    ep_info.next_rx   = 0;


    for(i = 0;i < 512;i++)
    {
        bdt[i] = 0;
    }
    
    for(ep=0;ep<MAX_EP_PER_DEVICE;ep++)
    {
        my_device.eps[ep].address = INVALID_ADDRESS;
        my_device.eps[ep].last_due = 0;
        my_device.eps[ep].interval = 74;
    }

    SIM_SOPT2 |= SIM_SOPT2_USBSRC_MASK | SIM_SOPT2_PLLFLLSEL_MASK;
    
    SIM_SCGC4 |= SIM_SCGC4_USBOTG_MASK;

    enable_irq(USB_INTERRUPT_IRQ);

    USB0_USBTRC0 |= USB_USBTRC0_USBRESET_MASK;

    while (USB0_USBTRC0 & USB_USBTRC0_USBRESET_MASK)
    {}

    USB0_USBCTRL = 0x40;
    
    USB0_ISTAT = 0xFF;

    USB0_CTL |= USB_CTL_ODDRST_MASK;
    
    USB0_BDTPAGE1 = (uint_8)(((uint_32)BDT_BASE) >> 8);
    USB0_BDTPAGE2 = (uint_8)(((uint_32)BDT_BASE) >> 16);
    USB0_BDTPAGE3 = (uint_8)(((uint_32)BDT_BASE) >> 24);
    
    USB0_SOFTHLD = USB_SOFTHLD_CNT_MASK;
    
    USB0_OTGCTL = USB_OTGCTL_DPLOW_MASK | USB_OTGCTL_DMLOW_MASK | USB_OTGCTL_OTGEN_MASK;
    USB0_USBCTRL |= USB_USBCTRL_PDE_MASK;
    USB0_USBCTRL &= ~USB_USBCTRL_SUSP_MASK;
    
    USB0_INTEN = USB_INTEN_ATTACHEN_MASK          
               ;
    
    USB0_USBTRC0|=0x40;

    USB0_CTL = USB_CTL_HOSTMODEEN_MASK;
    
    return 0;
}

uint_8 USBHostScan(void)
{
    if ((USB0_CTL & USB_CTL_HOSTMODEEN_MASK) == 0)
    {
        my_device.address = INVALID_ADDRESS;  
        my_device.low_speed = 0;
        return(0);
    }
    if(USBCheckDeviceConnect())
    {
        USBResetBus();
        return(1);
    }
    return(0);
}

void USBModifyEps(uint_8 ep,uint_8 type, uint_8 address, uint_8 interval, uint_16 psize)
{
    my_device.eps[ep].type    = type;
    my_device.eps[ep].address = address;
    my_device.eps[ep].interval= interval;
    my_device.eps[ep].psize   = psize;  
}

void USBResetBus(void)
{
    uint_8 ep=0;

    if(USBWaitTokenFinish() != tre_none)
    {
        tr_error = tre_not_running;
        return;
    }

    //1 产生复位信号
    USB0_CTL |= USB_CTL_RESET_MASK;           //产生复位信号
    Delay(30);                                //适当延时
    
    USB0_CTL &= ~USB_CTL_RESET_MASK;      
    USB0_ISTAT = USB_ISTAT_USBRST_MASK;     
  
    if (my_device.address != INVALID_ADDRESS)
        my_device.address=0;
    
    USBModifyEps(0, EPTYPE_CTRL, 0, 0, MIN_EP0_PSIZE);
    
    for(ep=1;ep<MAX_EP_PER_DEVICE;ep++)
        my_device.eps[ep].address = INVALID_ADDRESS;
    
    if (USBCheckDeviceConnect())
    {        

        USB0_CTL |= USB_CTL_USBENSOFEN_MASK;
        USB0_ISTAT = USB_ISTAT_SLEEP_MASK | USB_ISTAT_RESUME_MASK; 

        Delay(100);          

        if (!USBSetEp0psize()) 
        {  
            return;
        }

        if (!USBSetAddress(1))
        {
            return;
        }
        my_device.address=1;    
    }  
    else
    {
    }
}

uint_8 USBCheckDeviceConnect(void)
{
    volatile int x;

    if (my_device.address != INVALID_ADDRESS)
    { 
        if (USB0_ISTAT & USB_ISTAT_USBRST_MASK)
        {
            USBDeviceDisConnect();
        }
    }

    if (my_device.address == INVALID_ADDRESS)
    { 
       
        USB0_ISTAT = USB_ISTAT_ATTACH_MASK;
        
        for(x=0; x< 10000; x++)
          ;
        
        if (USB0_ISTAT & USB_ISTAT_ATTACH_MASK)
        {
            USBDeviceConnect();
        }
    }

    if(my_device.address != INVALID_ADDRESS)
        return 1;
    return 0;
}

void USBDeviceDisConnect(void)
{
    MKDBG_TRACE(ev_disconnect, 0);
    

    my_device.address = INVALID_ADDRESS;  
    my_device.low_speed = 0;

    USB0_ISTAT = USB_ISTAT_USBRST_MASK | USB_ISTAT_ATTACH_MASK;  

    USBHostSleep();
}

uint_8 USBSetEp0psize(void)
{    
    uint_8 setup[8];
   
    std_error = stderr_none;   

    USBFillSetupPacket(setup, STP_DIR_IN, STP_TYPE_STD, STP_RECIPIENT_DEVICE,
        STDRQ_GET_DESCRIPTOR, (STDDTYPE_DEVICE<<8) | 0, 0, 8);

    if (8 == USBTokenIN(setup, dbuffer, 0))
    {  
        if ((USBDSC_TYPE(dbuffer) == STDDTYPE_DEVICE)&& (USBDSC_LENGTH(dbuffer) <= 18))
        {
            USBModifyEps(0, EPTYPE_CTRL, 0, 0, DEVDESC_PACKET_SIZE(dbuffer));
            return(1);
        }    
    }

    std_error = stderr_host;  
    return(0);
}


uint_8 USBSetAddress(uint_8 address)
{
    uint_8 setup[8];
    uint_8 retry=3;

    std_error = stderr_none;
    
    USBFillSetupPacket(setup, STP_DIR_OUT, STP_TYPE_STD, STP_RECIPIENT_DEVICE,
        STDRQ_SET_ADDRESS, address, 0, 0);
  
    do {    
        if (0 == USBTokenOUT(setup, dbuffer, 0))
        {
            Delay(45);    
            return(1);
        }
    }while(retry--); 
     
    std_error = stderr_host;  
    return(0);
}


uint_8 USBSetConfig(uint_8 index)
{
    uint_8 setup[8];
    uint_8 retry=3;
 
    std_error=stderr_none;
    
    USBFillSetupPacket(setup, STP_DIR_OUT, STP_TYPE_STD, STP_RECIPIENT_DEVICE,
        STDRQ_SET_CONFIGURATION, index, 0, 0);
    do {      
        if (0 == USBTokenOUT(setup, dbuffer, 0))
        {
            return(0);
        }
    } while(retry--);
    
    std_error=stderr_host;
    return(1);
}


void USBDeviceConnect(void)
{
    uint_8 ep;
    
    USB0_ADDR = 0;

    Delay(100);
  
    my_device.low_speed = (uint_8)((USB0_CTL & USB_CTL_JSTATE_MASK) ? USB_SPEED_FULL : USB_SPEED_LOW);
    
    if (my_device.low_speed == USB_SPEED_FULL)
    {
        USB0_ADDR |= USB_ADDR_LSEN_MASK;
    }
    else
    {
    }
    
    USB0_ISTAT = 0xFF;

    USB0_INTEN = USB_INTEN_TOKDNEEN_MASK | USB_INTEN_USBRSTEN_MASK;
    
    USB0_ENDPT0 |= USB_ENDPT_HOSTWOHUB_MASK;

    USB0_CTL |= USB_CTL_RESET_MASK;
    
    USB0_CTL &= ~USB_CTL_RESET_MASK;

    USB0_CTL |= USB_CTL_USBENSOFEN_MASK;
    
    Delay(100);

    USB0_INTEN = USB_INTEN_TOKDNEEN_MASK | USB_INTEN_USBRSTEN_MASK;

    my_device.address=0;
    
    USBModifyEps(0, EPTYPE_CTRL, 0, 0, MIN_EP0_PSIZE);
    for(ep=1;ep<MAX_EP_PER_DEVICE;ep++)
    {
        my_device.eps[ep].address = INVALID_ADDRESS;
    }
}

void USBIsr(void)
{
    uint_8 status;
    
    while (1)
    {
        status = (uint_8)(USB0_ISTAT & USB0_INTEN);
        
        if (!status)
            break;
        
        USB0_ISTAT = status;
    
        if (status & USB_ISTAT_ATTACH_MASK)
        {

            USB0_INTEN &= ~USB_INTEN_ATTACHEN_MASK;
            USB0_INTEN |= USB_ISTAT_USBRST_MASK;
            USB0_INTEN |= USB_ISTAT_TOKDNE_MASK;
            
            USBFlag |= USB_ISTAT_ATTACH_MASK;
        }
        
        if (status & USB_ISTAT_TOKDNE_MASK)
        {
            USBFlag |= USB_ISTAT_TOKDNE_MASK;
        }
        
        if (status & USB_ISTAT_USBRST_MASK)
        {
            USBFlag |= USB_ISTAT_USBRST_MASK;
        }       
        
    };
}

uint_8 USBGetDeviceDesc(StructDevDesc *res)
{
    uint_8 setup[8];
    uint_8 retry=3;
    USBFillSetupPacket(setup, STP_DIR_IN, STP_TYPE_STD, STP_RECIPIENT_DEVICE,
                      STDRQ_GET_DESCRIPTOR, (STDDTYPE_DEVICE<<8)|0, 0, 18);

    
    do
    {
        if (18 == USBTokenIN(setup, dbuffer, 0))
        {
            if ((USBDSC_TYPE(dbuffer) == STDDTYPE_DEVICE)
                && (USBDSC_LENGTH(dbuffer) <= 18))   
            {
                res->clas    = DEVDESC_CLASS(dbuffer);
                res->sclas   = DEVDESC_SCLASS(dbuffer); 
                res->protocol= DEVDESC_PROTOCOL(dbuffer); 
                res->rev     = DEVDESC_REV(dbuffer);      
                res->vid     = DEVDESC_VID(dbuffer);    
                res->pid     = DEVDESC_PID(dbuffer);     
                res->ncfg    = DEVDESC_NCFG(dbuffer);  
                
                return(1);
            }
        }
    } while(retry--);
            
    return(0);
}

uint_8 USBGetConfigDesc(StructConfigDesc *res,uint_8 index)
{    
    uint_8 setup[8];
    uint_16 length=5;
    uint_8 retry=3;

 
    do {
        USBFillSetupPacket(setup, STP_DIR_IN, STP_TYPE_STD, STP_RECIPIENT_DEVICE,
                   STDRQ_GET_DESCRIPTOR, (uint_16)((STDDTYPE_CONFIGURATION<<8)|index),
                   0, length);


        if (length == USBTokenIN(setup, dbuffer, 0))
        {

            if ((USBDSC_TYPE(dbuffer) == STDDTYPE_CONFIGURATION)
                && (USBDSC_LENGTH(dbuffer) <= 9))
            {
                length = RD_LE16(dbuffer+2);       
                USBFillSetupPacket(setup, STP_DIR_IN, STP_TYPE_STD, STP_RECIPIENT_DEVICE,
                        STDRQ_GET_DESCRIPTOR, (uint_16)((STDDTYPE_CONFIGURATION<<8)|index), 0, length);

	
                if (length == USBTokenIN(setup, dbuffer, 0))
                {
                    res->nifc  = CONFDESC_INTRFACES(dbuffer);
                    res->ndx   = CONFDESC_MY_NDX(dbuffer);
                    res->str   = CONFDESC_MY_STR(dbuffer);
                    res->attrib= CONFDESC_ATTRIB(dbuffer);
                    res->max_power=CONFDESC_MAX_POW(dbuffer);

                    return(0);    
                }                    
            }
        }
    }while(retry--);
   return(1);

}

uint_16 USBFindInterface(uint_8 class, uint_8 sclass, uint_8 protocol)
{
    int ifc;
    uint_8 *p=dbuffer;      

    CMX_ASSERT(class != 0);
    CMX_ASSERT(USBDSC_TYPE(dbuffer) == STDDTYPE_CONFIGURATION);

    for(ifc=0; ifc < CONFDESC_INTRFACES(dbuffer); ifc++)
    {
        while(USBDSC_TYPE(p) != STDDTYPE_INTERFACE)
            p += USBDSC_LENGTH(p);
        
        if (IFCDESC_CLASS(p) == class)
        {
            if (((sclass == 0) || (IFCDESC_SCLASS(p) == sclass))
                    && ((protocol == 0) || (IFCDESC_PROTOCOL(p) == protocol)))
            { 
                return((uint_8)((uint_32)p-(uint_32)dbuffer));
            }
        }
        p+=USBDSC_LENGTH(p);
    }
    return(0);
}

uint_8 USBGetInterfaceDesc(StructInterfaceDesc *res,uint_16 offset)
{
    res->ndx     = IFCDESC_MY_NDX(&dbuffer[offset]);  
    res->alt_set = IFCDESC_ALTERNATE(&dbuffer[offset]);
    res->nep     = IFCDESC_ENDPONTS(&dbuffer[offset]); 
    res->clas    = IFCDESC_CLASS(&dbuffer[offset]);  
    res->sclas   = IFCDESC_SCLASS(&dbuffer[offset]);  
    res->protocol= IFCDESC_PROTOCOL(&dbuffer[offset]);
    res->str     = IFCDESC_MY_STR(&dbuffer[offset]);  

    return(0);
}

uint_8 USBGetEpDesc(StructEpDesc *res,uint_16 offset)
{

    res->address  = EPDESC_ADDRESS(&dbuffer[offset]);
    res->type     = EPDESC_ATTRIB(&dbuffer[offset]); 
    res->interval = EPDESC_INTERVAL(&dbuffer[offset]); 
    res->psize    = EPDESC_PSIZE(&dbuffer[offset]);    
    
    return(0);
}

uint_8 USBAddEp(uint_8 type, uint_8 address, uint_8 interval, uint_16 psize)
{
    uint_8 x;
  

    if ((USB0_CTL & USB_CTL_HOSTMODEEN_MASK) == 0)
    {
        tr_error=tre_not_running;
        return(INVALID_ADDRESS);
    }

    for(x=0; x < MAX_EP_PER_DEVICE; x++)
    {
        if (my_device.eps[x].address == INVALID_ADDRESS)
        {
            my_device.eps[x].type    = type;
            my_device.eps[x].address = (uint_8)(address & 0x7f);
            my_device.eps[x].interval= interval;
            my_device.eps[x].psize   = psize;
            my_device.eps[x].tgl_rx  = 0;
            my_device.eps[x].tgl_tx  = 0;
            my_device.eps[x].last_due= 0;

            return(x);
        }
    }
    return(INVALID_ADDRESS);
}


void USBFillSetupPacket(uint_8 * dst, uint_8 dir, uint_8 type, uint_8 recipient,
                       uint_8 req, uint_16 val, uint_16 ndx, uint_16 len)
{
    dst[0] = (uint_8)(dir | type | recipient);
    dst[1] = req;
    dst[2] = (uint_8)val;
    dst[3] = (uint_8)(val>>8);
    dst[4] = (uint_8)ndx;
    dst[5] = (uint_8)(ndx>>8);
    dst[6] = (uint_8)(len);
    dst[7] = (uint_8)(len>>8);
}


uint_16 USBTokenIN(uint_8 *setup, uint_8* buffer, uint_8 ep)
{
    uint_32 curr=0;
    uint_16 length = RD_LE16(setup+6);


    if ((USB0_CTL & USB_CTL_HOSTMODEEN_MASK) == 0)
    {
        tr_error = tre_not_running;
        return((uint_16) -1u);
    }

    if (((uint_16)-1u) == USBStartTransaction(TRT_SETUP, setup, 8, ep))
    {
        return((uint_16)-1u);
    }

    while(curr < length)
    {
        uint_16 got,
        psize=(uint_16)(MIN(my_device.eps[ep].psize, length));
        got = USBStartTransaction(TRT_IN, buffer+curr, psize, ep);
        curr += got;
        if (got == ((uint_16)-1u))
        {
            return((uint_16)-1u);
        }
        if (got != my_device.eps[ep].psize)
        {
            break;
        }
    }

    my_device.eps[0].tgl_tx = BDT_CTL_DATA;
    if (((uint_16)-1u) == USBStartTransaction(TRT_OUT, (void *)0, 0, ep))
    {
        return((uint_16)-1u);
    }

    return((uint_16)curr);
}

uint_16 USBTokenOUT(uint_8 *setup, uint_8* buffer, uint_8 ep)
{
    uint_32 curr=0;
    uint_16 length=RD_LE16(setup+6);
  
    MKDBG_TRACE(ev_send_control, ep);
  

    if ((USB0_CTL & USB_CTL_HOSTMODEEN_MASK) == 0)
    {
        tr_error=tre_not_running;
        return((uint_16)-1u);
    }
  

    if (((uint_16)-1u) == USBStartTransaction(TRT_SETUP, setup, 8, ep))
    {
        return((uint_16)-1u);
    }

    while(curr<length)
    {
        uint_16 psize=(uint_16)(MIN(my_device.eps[ep].psize, length));
        uint_8 r=(uint_8)USBStartTransaction(TRT_OUT, buffer+curr, psize, ep);
        if (r != psize)
        {
            CMX_ASSERT(r==((uint_8)-1u));
            return((uint_16)-1u);
        }
        curr += psize;
    }

    my_device.eps[ep].tgl_rx = BDT_CTL_DATA;
    if (((uint_16)-1u)==USBStartTransaction(TRT_IN, (void *)0, 0, ep))
    {
        return((uint_16)-1u);
    }

    return((uint_16)curr);
}

uint_16 USBStartTransaction(uint_8 type, uint_8 *buffer, uint_16 length, uint_8 ep)
{
    uint_8 token,numcicli;
    uint_32* bdt_ctl;
    uint_8 retry=3;
    USB_MemMapPtr USBPTR = USB0_BASE_PTR;
    uint_16 elapsed;

    if ((USB0_CTL & USB_CTL_HOSTMODEEN_MASK) == 0)
    {
        tr_error = tre_not_running;
        return((uint_16) -1u);
    }

    if (my_device.address == INVALID_ADDRESS)
    {
        tr_error = tre_no_device;
        return((uint_16)-1u);
    }
    
    if (my_device.eps[ep].address == INVALID_ADDRESS)
    {
        tr_error = tre_no_ep;
        return((uint_16)-1u);
    }

    USB0_ADDR = (uint_8)((my_device.low_speed == USB_SPEED_FULL)? 
                        my_device.address : 
                        my_device.address | USB_ADDR_LSEN_MASK);
    
    USB0_ENDPT0 = 
    (my_device.low_speed == USB_SPEED_LOW ? (USB_ENDPT_HOSTWOHUB_MASK) : 0) | (USB_ENDPT_RETRYDIS_MASK) |
        USB_ENDPT_EPTXEN_MASK | USB_ENDPT_EPRXEN_MASK | USB_ENDPT_EPHSHK_MASK;
    
        USB0_SOFTHLD = USBCFG_THSLD_DELAY;
    
    USB0_ISTAT = 0xFF;
    
    USB0_ISTAT |= USB_ISTAT_SOFTOK_MASK; 
    USB0_ERRSTAT = 0xFF;
    
    do
    {
        tr_error=tre_none;  
        retry--;
        switch(type)
        {
            case TRT_SETUP:
                USBPTR->ENDPOINT[0].ENDPT = 0x4d;
                USB0_ENDPT0 = 0x0d;
    

                my_device.eps[ep].tgl_tx=1;
                my_device.eps[ep].tgl_rx=1;
                
                WR_LE32(&BDT_ADR_TX(0, ep_info.next_tx), (uint_32)buffer);
                bdt_ctl = &BDT_CTL_TX(0, ep_info.next_tx);        
                WR_LE32(bdt_ctl, (0x08<<16) | BDT_CTL_OWN | (0<<2)); 

                tr_error = (tr_error_t)USBWaitTokenFinish();
                if(tr_error == tre_disconnected)
                    return((uint_16)-1u);
                USB0_TOKEN = (uint_8)((TOKEN_SETUP<<4) | (my_device.eps[ep].address | (0<<7)));
                break;
            case TRT_IN:   
                USB0_ENDPT0 = 0x0d;      
                WR_LE32(&BDT_ADR_RX(0, ep_info.next_rx), (uint_32)buffer);

                bdt_ctl=&BDT_CTL_RX(0, ep_info.next_rx);     
                WR_LE32(bdt_ctl, (length<<16) | BDT_CTL_OWN | my_device.eps[ep].tgl_rx);
                my_device.eps[ep].tgl_rx =(uint_8)(my_device.eps[ep].tgl_rx ? 0 : BDT_CTL_DATA);

                tr_error = (tr_error_t)USBWaitTokenFinish();
                if(tr_error == tre_disconnected)
                    return((uint_16)-1u);

                USB0_TOKEN=(uint_8)((TOKEN_IN<<4) | (my_device.eps[ep].address | (1<<7)));
                break;
            case TRT_OUT:

                USB0_ENDPT0 = 0x0d;
                WR_LE32(&BDT_ADR_TX(0, ep_info.next_tx), (uint_32)buffer);

                bdt_ctl=&BDT_CTL_TX(0, ep_info.next_tx);
                WR_LE32(bdt_ctl, (length<<16) | BDT_CTL_OWN | my_device.eps[ep].tgl_tx);
                my_device.eps[ep].tgl_tx = (uint_8)(my_device.eps[ep].tgl_tx ? 0 : BDT_CTL_DATA);

                tr_error = (tr_error_t)USBWaitTokenFinish();
                if(tr_error == tre_disconnected)
                {
                    return((uint_16)-1u);
                }
                    
                USB0_TOKEN=(uint_8)((TOKEN_OUT<<4) | (my_device.eps[ep].address | (0<<7)));
                break;
            default:
                CMX_ASSERT(0);
        }
        
        if (type== TRT_SETUP || type == TRT_OUT)
            ep_info.next_tx ^= 0x1u;
        else
            ep_info.next_rx ^= 0x1u;
        
        numcicli=0;
        
        while((USB0_ISTAT & (USB_ISTAT_TOKDNE_MASK | USB_ISTAT_STALL_MASK | USB_ISTAT_ERROR_MASK)) ==0)
        {
            USB0_ISTAT = USB_ISTAT_TOKDNE_MASK | USB_ISTAT_STALL_MASK | USB_ISTAT_ERROR_MASK;

            do
            {
                numcicli++;
                elapsed=(uint_16)(K60_USB_FRM_NUM - my_device.eps[ep].last_due);
                elapsed &= ((1<<11)-1);
                if (USB0_ISTAT & USB_ISTAT_USBRST_MASK)
                {
                    USBDeviceDisConnect();
                    tr_error=tre_disconnected;
                    return((uint_16)-1u);
                }
            } while(elapsed < my_device.eps[ep].interval);

            my_device.eps[ep].last_due += my_device.eps[ep].interval;
            my_device.eps[ep].last_due &= ((1<<11)-1);

            if(numcicli<3)
            {
                Delay(my_device.eps[ep].interval);
                elapsed=(uint_16)(K60_USB_FRM_NUM);
                elapsed &= ((1<<11)-1);
                my_device.eps[ep].last_due=elapsed;
            }
            else
            {
                break;
            }
        }
        while((USBFlag & USB_ISTAT_TOKDNE_MASK) == 0){}
        
        USBFlag &= ~USB_ISTAT_TOKDNE_MASK;
        
        if(USB0_ERRSTAT & (USB_ERREN_PIDERREN_MASK |

                    USB_ERREN_CRC16EN_MASK |
                    USB_ERREN_DFN8EN_MASK |

                    USB_ERREN_DMAERREN_MASK |
                    USB_ERREN_BTSERREN_MASK))

        {
            USB0_ERRSTAT = 0xff;
            USB0_ISTAT |= USB_ISTAT_ERROR_MASK;

            tr_error=tre_data_error;
            continue;
        }

        USB0_ISTAT = USB_ISTAT_TOKDNE_MASK;
        USB0_CTL &= ~USB_CTL_TXSUSPENDTOKENBUSY_MASK;

      
        if (USB0_ISTAT & USB_ISTAT_STALL_MASK)
        {
            USB0_ISTAT=USB_ISTAT_STALL_MASK;
            tr_error = tre_stall;
            return((uint_16)-1u);
        }

        token=(uint_8)((RD_LE32(bdt_ctl) >> 2) & 0x0f);
        switch (token)
        {
            case TOKEN_NAK:  
                if (my_device.eps[ep].type == EPTYPE_INT)
                    return(0);
                break;
            case TOKEN_STALL:
                tr_error=tre_stall;
                return((uint_16)-1u);
            case 0xf:
                MKDBG_TRACE(ev_got_data_error, ep);
                tr_error=tre_data_error;
                break;
            case 0:
                MKDBG_TRACE(ev_got_unknown, ep);
                tr_error=tre_silent;
                break;
            case 0x03:
            case 0x0b:
            case TOKEN_ACK:
            default:
                return((uint_16)((RD_LE32(bdt_ctl) >> 16u) & 0x3ffu));
        }
    }while(retry);
    return((uint_16)-1u);
}

uint_8 USBWaitTokenFinish()
{
    tr_error_t state;
    
    state = tre_none;
    while(USB0_CTL & USB_CTL_TXSUSPENDTOKENBUSY_MASK)
    {
        if (USB0_ISTAT & USB_ISTAT_USBRST_MASK)
        {
            USB0_CTL &= ~USB_CTL_TXSUSPENDTOKENBUSY_MASK;
            USBDeviceDisConnect();
            state = tre_disconnected;            
        }
    }
    return(state);
}

void USBHostSleep(void)
{
    USB0_ISTAT = USB_ISTAT_RESUME_MASK | USB_ISTAT_SOFTOK_MASK;
    
    USB0_CTL &= ~USB_CTL_USBENSOFEN_MASK;
    Delay(3);                             
}

uint_8 USBSendData(uint_8 ep,uint_16 lenth,uint_8 *buff)
{
    uint_32 curr=0;
    uint_16 psize,r;
   
    MKDBG_TRACE(ev_send, ep);

    if ((USB0_CTL & USB_CTL_HOSTMODEEN_MASK) == 0)
    {
        tr_error=tre_not_running;
        return(0);
    }

    if(lenth > 512)
        return 0;
    
    while(curr<lenth)
    {
        psize = (uint_16)(MIN(my_device.eps[ep].psize, lenth));
        r = USBStartTransaction(TRT_OUT, buff+curr, psize, ep);
        if (r!=psize)
        {
        #ifdef DEBUG
            print_kl25("Send Failure  ");
        #endif
            CMX_ASSERT(r==((uint_16)-1u));
            break;
        }
        curr += psize;    
    }
    return(curr);
}


uint_16 USBRevData(uint_8 ep, uint_16 length,uint_8* buffer )
{
    uint_32 curr=0;
    uint_16 got,psize;
  
    MKDBG_TRACE(ev_receive, ep);

    if ((USB0_CTL & USB_CTL_HOSTMODEEN_MASK) == 0)
    {
        tr_error=tre_not_running;
        return(0);
    } 

    while(curr < length)
    {
        psize=(uint_16)(MIN(my_device.eps[ep].psize, length));
        got  = USBStartTransaction(TRT_IN, buffer+curr, psize, ep);
        if (got == ((uint_16)-1u))
        {
            break;
        }
        curr += got;
        if (got != my_device.eps[ep].psize)
        {
            break;
        }
    }
    return(curr);
}


uint_8 CheckUSBDeviceStatus()
{
    int i = 0;
    USB0_ISTAT = USB_ISTAT_ATTACH_MASK;
    for(i = 0;i < 1000;i++)
    {
    }
    if(!(USB0_ISTAT & USB_ISTAT_ATTACH_MASK))
    {
        return 0;
    }
    else
    {
        return 1;
    }
}

#define ConuteTo1S 0x2DC6C00u
#define ConuteTo1MS 0xBB80u
#define ConuteTo1NS 0x30u
void PITInit(uint_8 PITChannel,uint_32 times,uint_8 timeType)
{
    uint_32 MAXCount;
    
    if(timeType == 0)
    {
        MAXCount = times * ConuteTo1NS;
    }
    else if(timeType == 1)
    {        
        MAXCount = times * ConuteTo1MS;        
    }
    else
    {
        MAXCount = times * ConuteTo1S;
    }
    
    SIM_SCGC6 |= SIM_SCGC6_PIT_MASK;
    
    PIT_MCR_REG(PIT_BASE_PTR) &= ~(
                                 PIT_MCR_MDIS_MASK | 
                                 PIT_MCR_FRZ_MASK
                                 );
    
    PIT_LDVAL_REG(PIT_BASE_PTR,PITChannel) = MAXCount;
    PIT_TCTRL_REG(PIT_BASE_PTR,PITChannel) = PIT_TCTRL_TIE_MASK;
}

void PITStart(uint_8 PITChannel)
{
    PIT_TCTRL_REG(PIT_BASE_PTR,PITChannel) |= PIT_TCTRL_TEN_MASK;
}

void PITStop(uint_8 PITChannel)
{
    PIT_TCTRL_REG(PIT_BASE_PTR,PITChannel) &= ~PIT_TCTRL_TEN_MASK;
}

uint_8 PITTimeCheck(uint_8 PITChannel)
{
    if((PIT_TFLG_REG(PIT_BASE_PTR,0) & PIT_TFLG_TIF_MASK) == PIT_TFLG_TIF_MASK)
    {
        PIT_TFLG_REG(PIT_BASE_PTR,0) |= PIT_TFLG_TIF_MASK;
        return 1;
    }
    else
    {
        return 0;
    }
}

void Delay(uint_32 time)
{
    PITInit(0,time,1);
    PITStart(0);
    while(PITTimeCheck(0) == 0)
    {
    }
    PITStop(0);
}
