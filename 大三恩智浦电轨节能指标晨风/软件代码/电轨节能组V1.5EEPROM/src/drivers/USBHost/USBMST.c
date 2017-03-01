#include "USBMST.h"

#define USB_RERTY_COUNT 3

static volatile uint_8   Stat             = 0x01;

MSTInfoStruct mst_info;

extern tr_error_t tr_error;
extern DeviceConect my_device;

#define RQMST_MASS_STORAGE_RESET   0xffu
#define RQMST_GET_MAX_LUN          0xfeu

int usb_mst_reset(void)
{
    unsigned char setup[8]={
        (0<<7) | (1<<5) | 1      
        ,RQMST_MASS_STORAGE_RESET
        ,0,0                   
        ,0,0                      
        ,0,0                   
    };

    mst_info.mst_error=msterr_none;
    if (0!=USBTokenOUT((uint_8 *)setup, 0, 0))
    {
        mst_info.mst_error=msterr_comunication_error;
        return(1);
    }

    return(0);
}

static int usb_clear_stall_rd(void)
{
    uint_8 setup[8];
    mst_info.mst_error=msterr_none;
    USBFillSetupPacket(setup, STP_DIR_OUT, STP_TYPE_STD, STP_RECIPIENT_ENDPT
        ,STDRQ_CLEAR_FEATURE, 0, (uint_8)(mst_info.in_ep|0x80), 0);
    if (0!=USBTokenOUT((uint_8 *)setup, 0, 0))
    {
        mst_info.mst_error=msterr_comunication_error;
        return(1);
    }
    return(0);
}

static int usb_clear_stall_wr(void)
{
    uint_8 setup[8];
    mst_info.mst_error=msterr_none;  
    USBFillSetupPacket(setup, STP_DIR_OUT, STP_TYPE_STD, STP_RECIPIENT_ENDPT
        ,STDRQ_CLEAR_FEATURE, 0, mst_info.out_ep, 0);
    if (0!=USBTokenOUT((uint_8 *)setup, 0, 0))
    {
        mst_info.mst_error=msterr_comunication_error;
        return(1);
    }
    return(0);
}

int usb_mst_getnlun(void)
{
    unsigned char nlun=0;

    unsigned char setup[8]={
        (1<<7) | (1<<5) | 1      
        ,RQMST_GET_MAX_LUN       
        ,0,0                     
        ,0,0                    
        ,1,0                      
    };
    mst_info.mst_error=msterr_none;
    if (1 != USBTokenIN((uint_8 *)setup, &nlun, 0))
    {
        if (tr_error != tre_stall)
        {        
            mst_info.mst_error=msterr_comunication_error;
            return(-1);
        }
        nlun=0;
    }
    return(nlun);
}


static int usb_mst_search_ifc(void)
{
    StructDevDesc dev_inf;             
    StructConfigDesc cfg_inf;          
    StructInterfaceDesc interface_inf; 
    StructEpDesc ep_inf;               
    uint_8 cfg;
    uint_16 ifc;
    uint_8 ep;
    uint_16 ep_ofs;
    uint_8 state;
    mst_info.ifcd_offset=0;
    
    if(!USBHostScan())
    {
        return(0);
    }

    if(my_device.address != 1)
    {
        return(0);
    }


    if(!USBGetDeviceDesc(&dev_inf))
    {
        return(0);
    }


    for(cfg=0; cfg < dev_inf.ncfg; cfg++)
    {
        state = USBGetConfigDesc(&cfg_inf,0);;
        if(state == 1)
        {
            continue;
        }
        
        ifc = USBFindInterface(0x08, 0, 0);

        if (!ifc)
        {
            continue;
        }


        USBGetInterfaceDesc(&interface_inf,9+0);

        if(interface_inf.sclas != 0x6 && interface_inf.protocol != 0x50)  //只支持SCSI命令和bulk传输类型
        {
            continue;
        }

        mst_info.cfg_ndx    = cfg_inf.ndx;
        mst_info.ifc_ndx    = interface_inf.ndx;
        mst_info.ifcd_offset= ifc;
        mst_info.alt_set    = interface_inf.alt_set;

        ep_ofs = ifc;
        for(ep=0; ep < interface_inf.nep; ep++)
        {
            USBGetEpDesc(&ep_inf,9+9+ep*7);
            if (ep_inf.type==EPTYPE_BULK)
            {
                if (ep_inf.address > 0x80)
                {
                    mst_info.in_ep=USBAddEp(ep_inf.type, (uint_8)ep_inf.address, 0, ep_inf.psize);
					
                }
                else
                {
                    mst_info.out_ep=USBAddEp(ep_inf.type, (uint_8)ep_inf.address, 0, ep_inf.psize);

                }
            }
        }
    
        if (mst_info.in_ep == 0 || mst_info.out_ep == 0)
        {
            continue;
        }

        USBSetConfig(mst_info.cfg_ndx);
        return(1);
    }
    return(0);  
}

int usb_mst_init(void)
{
    mst_info.mst_error = msterr_none;
    mst_info.nlun=0;
    if (usb_mst_search_ifc())
    {   
        mst_info.nlun=(uint_8)(usb_mst_getnlun()+1u);
  
        if (mst_info.nlun == 0)
            return(0);
    }
    return(mst_info.nlun);
}

static int usb_mst_soft_reset_recovery(void)
{
    if (usb_mst_reset())
    {
        return(ERR_IO_REMOVED);
    }

    if (usb_clear_stall_rd())
    {
        return(ERR_IO_REMOVED);
    }

    if (usb_clear_stall_wr())
    {
        return(ERR_IO_REMOVED);
    }
    return(0);
}

int usb_mst_transfer(uint_8 cmd_length, void *cmd, uint_8 dir, uint_32 buf_length, const uint_8 *buf)
{
    uint_8 cbw[31] = {0};
    uint_8 csw[13] = {0};
    int retry,
    first_csw=1;
    uint_32 r;
    static uint_32 tag = 0x0;
  
    WR_BE32(cbw, 0x55534243);

    tag++;
    ((uint_32*)cbw)[1]=tag;

    WR_LE32(&cbw[8], buf_length);

    cbw[12]=(uint_8)(dir ? 0x80 : 0);

    cbw[13]=(uint_8)(((char *)cmd)[1] >> 5);

    cbw[14]=cmd_length;
    CMX_ASSERT(cmd_length < 17);
    for(r=0; r<cmd_length; r++)
    {
        (&cbw[15])[r]=((uint_8*)cmd)[r];
    }

    retry=USB_RERTY_COUNT;
    retry_cmd:
    r=USBSendData(mst_info.out_ep, 31, (uint_8 *)cbw);
    if (r != 31)
    {
        if (--retry)
        {
            if (ERR_IO_REMOVED != usb_mst_soft_reset_recovery())
            {  
                goto retry_cmd;
            }
        }
        return(ERR_IO_REMOVED);
    }
      
    if (buf_length > 0 && dir != DIR_NONE)
    {
        switch(dir)
        {
            case DIR_IN:
                r=USBRevData(mst_info.in_ep, buf_length, (uint_8 *)buf);
                if (r != buf_length)
                {
                    usb_clear_stall_rd();
                }
                break;
            case DIR_OUT:
                r=USBSendData(mst_info.out_ep, buf_length,(uint_8*)buf);
                if (r != buf_length)
                {
                    usb_clear_stall_wr();
                }
                break;
        }
    }
    retry_csw:
    r=USBRevData(mst_info.in_ep, 13, (uint_8*)csw);
    if (r != 13)
    {
        if (first_csw)
        {
            first_csw=0;
            usb_clear_stall_rd();
            goto retry_csw;
        }
        if (ERR_IO_REMOVED != usb_mst_soft_reset_recovery())
        {
            if (--retry)
            {
                goto retry_cmd;
            }
        }

        return(ERR_IO_REMOVED);
    }
    

    if (0x55534253 != RD_BE32(csw) || tag != ((uint_32*)csw)[1])
    {
        if (ERR_IO_REMOVED != usb_mst_soft_reset_recovery())
        {
            if (--retry)
            {
                goto retry_cmd;
            }
        }
        return(ERR_IO_REMOVED);
    }

    if (!(((csw[12] == 0) || (csw[12] == 1)) && RD_LE32(&csw[8]) <= buf_length)
        || csw[12] > 2)
    {
        if (ERR_IO_REMOVED != usb_mst_soft_reset_recovery())
        {
            if (--retry)
            {
                goto retry_cmd;
            }
        }
        return(ERR_IO_REMOVED);
    }

    if (csw[12] == 2)
    {
        if (ERR_IO_REMOVED != usb_mst_soft_reset_recovery())
        {
            if (--retry)
            {
                goto retry_cmd;
            }
        }
        return(ERR_IO_REMOVED);
    }

    if (csw[12] == 0 && RD_LE32(&csw[8]) != 0)
    {
        buf=((uint_8*)buf)+buf_length-RD_LE32(&csw[8]);
        buf_length -= RD_LE32(&csw[8]);
        goto retry_cmd;
    }

    if (csw[12] == 1)
    {
        return(ERR_IO_CHECK);
    }
    return(ERR_IO_NONE);
}

uint_8 GetMSTStat(void)
{
  return Stat;
}

void SetMSTStat(uint_8 state)
{
  Stat = state;
}
