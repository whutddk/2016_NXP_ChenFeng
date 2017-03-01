#ifndef __USB_HOST__
#define __USB_HOST__
#include "cortex_m0p.h"

#define USB_INTERRUPT_IRQ   (24)

#define USBCFG_THSLD_DELAY 0x65

#define MKDBG_TRACE(evnt, epndx)

extern uint_32 mcf5xxx_byterev(uint_32 val);

#define MIN(a,b)  ((a) < (b) ? (a) : (b)) 
#define WR_LE32(a, v) ((*(uint_32*)(a))=(v))
#define WR_LE16(a, v) ((*(uint_16*)(a))=(uint_16)((v) >> 16))
#define RD_LE32(a)    ((*(uint_32*)(a)))
#define RD_LE16(a)    (*(uint_16*)(a))

#ifdef NDEBUG
#define CMX_ASSERT(c) (void)0
#else
#define CMX_ASSERT(c)\
do {\
  if(!(c))\
  {\
    int a=1;\
    while(a)\
      ;\
  }\
}while(0)
#endif

typedef struct {
    uint_8 rx_bd;
    uint_8 tx_bd;
} EP_STRUCT, * EP_STRUCT_PTR;

#define  USB_DEVICE_IDLE                   (0)
#define  USB_DEVICE_ATTACHED               (1)
#define  USB_DEVICE_CONFIGURED             (2)
#define  USB_DEVICE_SET_INTERFACE_STARTED  (3)
#define  USB_DEVICE_INTERFACED             (4)
#define  USB_DEVICE_DETACHED               (5)
#define  USB_DEVICE_OTHER                  (6)

#define  USB_DEVICE_CONNETED               (0x11)

////////////////
#define  USB_SPEED_FULL                      (0)
#define  USB_SPEED_LOW                       (1)
#define  USB_SPEED_HIGH                      (2)
////////////////

#define kUDATA0   0x88
#define kUDATA1   0xC8

// BDT status value
#define kMCU      0x00
#define kSIE      0x80

typedef union _tBDT_STAT
{
    uint_8 _byte;
    struct{
        uint_8 :1;
        uint_8 :1;
        uint_8 BSTALL:1;             
        uint_8 DTS:1;              
        uint_8 NINC:1;          
        uint_8 KEEP:1;              
        uint_8 DATA:1;           
        uint_8 UOWN:1;          
    }McuCtlBit;
       
    struct{
        uint_8    :2;
        uint_8 PID:4;           
        uint_8    :2;
    }RecPid;
} tBDT_STAT;                         

typedef struct _tBDT
{
    tBDT_STAT Stat;
    uint_8  dummy;
    uint_16 Cnt;
    uint_32 Addr;
} tBDT; 

#define BDT_BASE              ((uint_32*)(tBDTtable))
#define BDT_CTL_RX(ep, b)     (BDT_BASE[((ep)<<3)+((b)<<1)+0])
#define BDT_ADR_RX(ep, b)     (BDT_BASE[((ep)<<3)+((b)<<1)+1])
#define BDT_CTL_TX(ep, b)     (BDT_BASE[((ep)<<3)+((b)<<1)+4])
#define BDT_ADR_TX(ep, b)     (BDT_BASE[((ep)<<3)+((b)<<1)+5])

#define BITX(x) (1U<<x)
#define BIT0    BITX(0)
#define BIT1    BITX(1)
#define BIT2    BITX(2)
#define BIT3    BITX(3)
#define BIT4    BITX(4)
#define BIT5    BITX(5)
#define BIT6    BITX(6)
#define BIT7    BITX(7)
#define BIT8    BITX(8)
#define BIT9    BITX(9)
#define BIT10   BITX(10)
#define BIT11   BITX(11)
#define BIT12   BITX(12)
#define BIT13   BITX(13)
#define BIT14   BITX(14)
#define BIT15   BITX(15)
#define BIT16   BITX(16)
#define BIT17   BITX(17)
#define BIT18   BITX(18)
#define BIT19   BITX(19)
#define BIT20   BITX(20)
#define BIT21   BITX(21)
#define BIT22   BITX(22)
#define BIT23   BITX(23)
#define BIT24   BITX(24)
#define BIT25   BITX(25)
#define BIT26   BITX(26)
#define BIT27   BITX(27)
#define BIT28   BITX(28)
#define BIT29   BITX(29)
#define BIT30   BITX(30)
#define BIT31   BITX(31)

#define BDT_CTL_STALL (BIT2)
#define BDT_CTL_DTS   (BIT3)
#define BDT_CTL_DATA  (BIT6)
#define BDT_CTL_OWN   (BIT7)

//令牌类型
#define TOKEN_SETUP   0xd
#define TOKEN_IN      0x9
#define TOKEN_OUT     0x1
#define TOKEN_NAK     0xa
#define TOKEN_STALL   0xe
#define TOKEN_ACK     0x2

#define INVALID_ADDRESS  ((uint_8)-1u)
#define MAX_EP_PER_DEVICE  16  


#define USBDSC_LENGTH(p)       (((uint_8*)(p))[0])
#define USBDSC_TYPE(p)         (((uint_8*)(p))[1])
//1.1 设备描述符
typedef struct {  
        uint_8  clas;    
        uint_8  sclas;   
        uint_8  protocol;
        uint_16 vid;     
        uint_16 pid;     
        uint_16 rev;     
        uint_8  ncfg;    
}StructDevDesc, * StructDevDescPtr;

#define DEVDESC_BCDUSB(p)      RD_LE16(((uint_8*)(p))+2)  
#define DEVDESC_CLASS(p)       (((uint_8*)(p))[4])        
#define DEVDESC_SCLASS(p)      (((uint_8*)(p))[5])        
#define DEVDESC_PROTOCOL(p)    (((uint_8*)(p))[6])        
#define DEVDESC_PACKET_SIZE(p) (((uint_8*)(p))[7])        
#define DEVDESC_VID(p)         RD_LE16(((uint_8*)(p))+8)  
#define DEVDESC_PID(p)         RD_LE16(((uint_8*)(p))+10) 
#define DEVDESC_REV(p)         RD_LE16(((uint_8*)(p))+12) 
#define DEVDESC_MANUFACT(p)    (((uint_8*)(p))[14))       
#define DEVDESC_PRODUCT(p)     (((uint_8*)(p))[15])       
#define DEVDESC_SERNO(p)       (((uint_8*)(p))[16])       
#define DEVDESC_NCFG(p)        (((uint_8*)(p))[17])       


typedef struct {
    uint_8 nifc;        
    uint_8 ndx;         
    uint_8 str;         
    uint_8 attrib;      
    uint_8 max_power;   
}StructConfigDesc;
#define CONFDESC_TOTLENGTH(p) RD_LE16(((uint_8*)(p))+2)   
#define CONFDESC_INTRFACES(p) (((uint_8*)(p))[4])         
#define CONFDESC_MY_NDX(p)    (((uint_8*)(p))[5])         
#define CONFDESC_MY_STR(p)    (((uint_8*)(p))[6])         
#define CONFDESC_ATTRIB(p)    (((uint_8*)(p))[7])         
#define CONFDESC_MAX_POW(p)   (((uint_8*)(p))[8])     

//1.3 接口描述符
typedef struct {        
    uint_8 ndx;        
    uint_8 alt_set;    
    uint_8 nep;        
    uint_8 clas;       
    uint_8 sclas;       
    uint_8 protocol;  
    uint_8 str;      
}StructInterfaceDesc;
#define IFCDESC_MY_NDX(p)     (((uint_8*)(p))[2])
#define IFCDESC_ALTERNATE(p)  (((uint_8*)(p))[3])
#define IFCDESC_ENDPONTS(p)   (((uint_8*)(p))[4])
#define IFCDESC_CLASS(p)      (((uint_8*)(p))[5])
#define IFCDESC_SCLASS(p)     (((uint_8*)(p))[6])
#define IFCDESC_PROTOCOL(p)   (((uint_8*)(p))[7])
#define IFCDESC_MY_STR(p)     (((uint_8*)(p))[8])


typedef struct {
    uint_16 psize;     
    uint_8  address;
    uint_8  type;     
    uint_8  interval; 
} StructEpDesc;
#define EPDESC_ADDRESS(p)     (((uint_8*)(p))[2])
#define EPDESC_ATTRIB(p)      (((uint_8*)(p))[3])
#define EPDESC_PSIZE(p)       (((uint_8*)(p))[4])
#define EPDESC_INTERVAL(p)    (((uint_8*)(p))[6])

typedef struct {
    uint_16 last_due;
    uint_16 psize; 
    uint_8  type;
    uint_8  address;
    uint_8  interval;
    uint_8  tgl_rx;
    uint_8  tgl_tx;
}EPInfo;

typedef struct {
    uint_8  address;
    uint_8  low_speed;
    EPInfo eps[MAX_EP_PER_DEVICE];
}DeviceConect;

#define MAX_EP0_PSIZE   64u
#define MIN_EP0_PSIZE   8u

#define DBUFFER_SIZE    255u

#define EPTYPE_INVALID        ((uint_8)-1u)
#define EPTYPE_CTRL           ((uint_8)0u)
#define EPTYPE_ISO            ((uint_8)1u)
#define EPTYPE_BULK           ((uint_8)2u)
#define EPTYPE_INT            ((uint_8)3u)

#define TRT_NONE  0u
#define TRT_IN    1u
#define TRT_OUT   2u
#define TRT_SETUP 3u

#define STDDTYPE_DEVICE        1u  
#define STDDTYPE_CONFIGURATION 2u   
#define STDDTYPE_STRING        3u   
#define STDDTYPE_INTERFACE     4u   
#define STDDTYPE_ENDPOINT      5u  

#define STP_DIR_IN            (1u<<7)
#define STP_DIR_OUT           (0u<<7)
#define STP_TYPE_STD          (0u<<5)
#define STP_TYPE_CLASS        (1u<<5)
#define STP_TYPE_VENDOR       (2u<<5)
#define STP_RECIPIENT_DEVICE  (0<<0)
#define STP_RECIPIENT_IFC     (1<<0)
#define STP_RECIPIENT_ENDPT   (2<<0)
#define STP_RECIPIENT_OTHER   (3<<0)

#define STDRQ_GET_STATUS         0u
#define STDRQ_CLEAR_FEATURE      1u
#define STDRQ_SET_FEATURE        3u
#define STDRQ_SET_ADDRESS        5u
#define STDRQ_GET_DESCRIPTOR     6u
#define STDRQ_SET_DESCRIPTOR     7u
#define STDRQ_GET_CONFIGURATION  8u
#define STDRQ_SET_CONFIGURATION  9u
#define STDRQ_GET_INTERFACE      10u
#define STDRQ_SET_INTERFACE      11u
#define STDRQ_SYNCH_FRAME        12u

typedef enum {
    stderr_none=0,
    stderr_host,
    stderr_bad_desc
} std_error_t;

typedef enum {
    tre_none=0,
    tre_not_running,
    tre_no_device,   
    tre_disconnected, 
    tre_stall,       
    tre_data_error, 
    tre_silent,      
    tre_no_ep      
} tr_error_t;

uint_8 USBHostInit(void);
uint_8 USBHostScan(void);
void USBIsr(void);
uint_8 USBGetDeviceDesc(StructDevDesc *res);
uint_8 USBGetConfigDesc(StructConfigDesc *res,uint_8 index);
uint_8 USBGetInterfaceDesc(StructInterfaceDesc *res,uint_16 offset);
uint_8 USBGetEpDesc(StructEpDesc *res,uint_16 offset);
uint_8 USBAddEp(uint_8 type, uint_8 address, uint_8 interval, uint_16 psize);
uint_8 USBSetConfig(uint_8 index);

uint_16 USBRevData(uint_8 ep, uint_16 length,uint_8* buffer );
uint_8 USBSendData(uint_8 ep,uint_16 lenth,uint_8 *buff);

uint_16 USBFindInterface(uint_8 class, uint_8 sclass, uint_8 protocol);

void USBFillSetupPacket(uint_8 * dst, uint_8 dir, uint_8 type, uint_8 recipient,
                       uint_8 req, uint_16 val, uint_16 ndx, uint_16 len);
uint_16 USBTokenIN(uint_8 *setup, uint_8* buffer, uint_8 ep);
uint_16 USBTokenOUT(uint_8 *setup, uint_8* buffer, uint_8 ep);
 uint_16 USBStartTransaction(uint_8 type, uint_8 *buffer, uint_16 length, uint_8 ep);
 uint_8 USBWaitTokenFinish();
 void USBDeviceDisConnect(void);
 void USBHostSleep(void);
 void USBModifyEps(uint_8 ep,uint_8 type, uint_8 address, uint_8 interval, uint_16 psize);
 void USBResetBus(void);
 uint_8 USBCheckDeviceConnect(void);
 void USBDeviceDisConnect(void);
 uint_8 USBSetEp0psize(void);
 uint_8 USBSetAddress(uint_8 address);
 void USBDeviceConnect(void);

uint_8 CheckUSBDeviceStatus();


 void Delay(uint_32 time);

 extern int print_kl25 (const char *fmt, ...);
 
#endif //__USB_HOST__
