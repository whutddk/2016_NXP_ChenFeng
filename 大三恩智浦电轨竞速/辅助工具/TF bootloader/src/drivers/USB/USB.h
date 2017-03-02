/*
 * 文件名: USB.h
 * 用途: 声明USB底层协议函数和宏定义
 * 最后修改日期: 20121204
 *
 *
 * 说明:本页代码基于Freescale官方示例代码修改，源代码文件为 USB.h
 *    在本文件中将所有端点长度修改为64。
 */

#ifndef __USB_H__
#define __USB_H__


#include "FslTypes.h"
#include "common.h"
#include "USB_CDC.h"

typedef void(*USB_REV_CALLBACK)(void);

/* Select Clock source */
#define USB_CLOCK_PLL
//#define USB_CLOCK_FLL
//#define USB_CLOCK_CLKIN

/* USB Fractional Divider Value */
#define USB_FARCTIONAL_VALUE    0x02

/*********** HIL ***************/
#include "USB_CDC.h"
#define USB_InterfaceReq_Handler  CDC_InterfaceReq_Handler
/********************************/

/* Macros */
#define DISABLE_USB (USBCTL0 = 0x00)    // Disable USB module
#define ENDPOINTS   3

/* EP0 settings */
//设置EP0端点的长度
#define EP0_SIZE            (64)

/********** Enpoint Value Options ***********/
/*                                          */
/* IN       Enabled for IN transactions     */
/* OUT      Enabled for OUT transactions    */
/* DISABLE  EndPoint Disabled               */
/*                                          */
/********************************************/

/* EP1 settings */
#define EP1_VALUE           _EP_IN
#define EP1_TYPE            INTERRUPT
#define EP1_SIZE            64
#define EP1_BUFF_OFFSET     0x18

/* EP2 settings */
#define EP2_VALUE           _EP_IN
#define EP2_TYPE            BULK
#define EP2_SIZE            64
#define EP2_BUFF_OFFSET     0x20

/* EP3 settings */
#define EP3_VALUE           _EP_OUT
#define EP3_TYPE            BULK
#define EP3_SIZE            64
#define EP3_BUFF_OFFSET     0x28

/* EP4 settings */
#define EP4_VALUE           DISABLE
#define EP4_SIZE            1
#define EP4_BUFF_OFFSET     0x08

/* EP5 settings */
#define EP5_VALUE           DISABLE
#define EP5_SIZE            1
#define EP5_BUFF_OFFSET     0x08

/* EP6 settings */
#define EP6_VALUE           DISABLE
#define EP6_SIZE            1
#define EP6_BUFF_OFFSET     0x08

/* Macros */
#define EP3_CTR   tBDTtable[4].Stat._byte= kSIE


/* MACROS */
#define usbSIE_CONTROL(EP)   (tBDTtable[EP<<2].Stat._byte= kSIE)
#define usbMCU_CONTROL(EP)   (tBDTtable[EP<<2].Stat._byte= kMCU)
#define usbEP_Reset(EP)      (tBDTtable[EP<<2].Cnt=0x0020)

#define _EP_IN      USB_ENDPT_EPTXEN_MASK
#define _EP_OUT     USB_ENDPT_EPRXEN_MASK


#define DISABLE     0
#define INTERRUPT   0x03
#define BULK        0x05


// 定义缓冲区描述符的状态信息
#define kMCU      0x00 //单片机有BD的访问权

#define kSIE      0x80 //USB-FS 有专有权访问 BD
                       //定义DATA0允许发送或者接收

#define kUDATA0   0x88 //USB-FS 有专有权访问 BD
                       //使能USB-FS去扮演数据翻转同步
                       //定义DATA0允许发送或者接收

#define kUDATA1   0xC8 //USB-FS 有专有权访问 BD
                       //使能USB-FS去扮演数据翻转同步
                       //定义DATA1允许发送或者接收

//定义缓冲区描述符控制信息中的PID
#define mSETUP_TOKEN    0x0D
#define mOUT_TOKEN      0x01
#define mIN_TOKEN       0x09

//USB Setup bRequest
#define mGET_STATUS           0
#define mCLR_FEATURE          1
#define mSET_FEATURE          3
#define mSET_ADDRESS          5
#define mGET_DESC             6
#define mSET_DESC             7
#define mGET_CONFIG           8
#define mSET_CONFIG           9
#define mGET_INTF             10
#define mSET_INTF             11
#define mSYNC_FRAME           12
#define	mGET_MAXLUN	          0xFE	

//描述符类型
#define mDEVICE				1
#define mCONFIGURATION		        2
#define mSTRING				3
#define mINTERFACE			4
#define mENDPOINT			5

#define	mDEVICE_QUALIFIER		6
#define mOTHER_SPEED_CONFIGURATION	7
#define mINTERFACE_POWER		8

//请求类型
#define STANDARD_REQ             0x00
#define SPECIFIC_REQ             0x20
#define VENDORSPEC_REQ           0x40
#define DEVICE_REQ               0x00
#define INTERFACE_REQ            0x01
#define ENDPOINT_REQ             0x02
//端点请求类型
#define GET_STATUS               0x00
#define CLEAR_FEATURE            0x01
#define SET_FEATURE              0x03
enum
{
    uSETUP,
    uDATA
};

enum
{
    EP0,
    EP1,
    EP2,
    EP3,
    EP4,
    EP5,
    DUMMY,
    LOADER
};


enum
{
    uPOWER,
    uENUMERATED,
    uENABLED,
    uADDRESS,
    uREADY
};

enum
{
    fIN,
    fOUT
};

enum
{
    bEP0OUT_ODD,
    bEP0OUT_EVEN,
    bEP0IN_ODD,
    bEP0IN_EVEN,
    bEP1OUT_ODD,
    bEP1OUT_EVEN,
    bEP1IN_ODD,
    bEP1IN_EVEN,
    bEP2OUT_ODD,
    bEP2OUT_EVEN,
    bEP2IN_ODD,
    bEP2IN_EVEN,
    bEP3OUT_ODD,
    bEP3OUT_EVEN,
    bEP3IN_ODD,
    bEP3IN_EVEN
};


/***** Data Types *****/
/*     */

    typedef struct{
        UINT8 _USB_PERID;
        UINT8 _USB_IDCOMP;
        UINT8 _USB_REV;
        UINT8 _USB_ADDINFO;
        UINT8 _USB_OTGISTAT;
        UINT8 _USB_OTGICR;
        UINT8 _USB_OTGSTAT;
        UINT8 _USB_OTGCTL;
        UINT8 _USB_ISTAT;
        UINT8 _USB_INTEN;
        UINT8 _USB_ERRSTAT;
        UINT8 _USB_ERREN;
        UINT8 _USB_STAT;
        UINT8 _USB_CTL;
        UINT8 _USB_ADDR;
        UINT8 _USB_BDTPAGE1;
        UINT8 _USB_FRMNUML;
        UINT8 _USB_FRMNUMH;
        UINT8 _USB_TOKEN;
        UINT8 _USB_SOFTHLD;
        UINT8 _USB_BDTPAGE2;
        UINT8 _USB_BDTPAGE3;
        UINT8 _USB_ENDPT0;
        UINT8 _USB_ENDPT1;
        UINT8 _USB_ENDPT2;
        UINT8 _USB_ENDPT3;
        UINT8 _USB_ENDPT4;
        UINT8 _USB_ENDPT5;
        UINT8 _USB_ENDPT6;
        UINT8 _USB_ENDPT7;
        UINT8 _USB_ENDPT8;
        UINT8 _USB_ENDPT9;
        UINT8 _USB_ENDPT10;
        UINT8 _USB_ENDPT11;
        UINT8 _USB_ENDPT12;
        UINT8 _USB_ENDPT13;
        UINT8 _USB_ENDPT14;
        UINT8 _USB_ENDPT15;
        UINT8 _USB_USBCTRL;
        UINT8 _USB_OBSERVE;
        UINT8 _USB_CONTROL;
        UINT8 _USB_USBTRC0;
    }USB_Registers;

typedef union _tBDT_STAT
{
    UINT8 _byte;
    struct{
        UINT8 :1;
        UINT8 :1;
        UINT8 BSTALL:1;              //Buffer Stall Enable
        UINT8 DTS:1;                 //Data Toggle Synch Enable
        UINT8 NINC:1;                //Address Increment Disable
        UINT8 KEEP:1;                //BD Keep Enable
        UINT8 DATA:1;                //Data Toggle Synch Value
        UINT8 UOWN:1;                //USB Ownership
    }McuCtlBit;

    struct{
        UINT8    :2;
        UINT8 PID:4;                 //Packet Identifier
        UINT8    :2;
    }RecPid;
} tBDT_STAT;                         //Buffer Descriptor Status Register

typedef struct _tBDT
{
    tBDT_STAT Stat;
    UINT8  dummy;
    UINT16 Cnt;
    UINT32 Addr;
} tBDT;





#define SWAP16(val)                                                 \
    (UINT16)((((UINT16)(val) >> 0x8) & 0xFF) |                    \
    (((UINT16)(val) & 0xFF) << 0x8))

#define SWAP32(val)                                                 \
    (UINT32)((SWAP16((UINT32)(val) & (UINT32)0xFFFF) << 0x10) |  \
    (SWAP16((UINT32)((val) >> 0x10))))


typedef struct _tUSB_Setup
{
       UINT8 bmRequestType;  //请求类型
       UINT8 bRequest;       //对应的具体请求
       UINT8 wValue_l;       //数据低8位
       UINT8 wValue_h;       //数据高8位
       UINT8 wIndex_l;       //索引低8位
       UINT8 wIndex_h;       //索引高8位
       UINT8 wLength_l;      //数据长度低8位
       UINT8 wLength_h;      //数据长度高8位
}tUSB_Setup;


extern UINT8 *BufferPointer[];
extern tUSB_Setup *Setup_Pkt;
extern UINT8 gu8USB_State;

/* Prototypes */
void USB_EP0_IN_Handler(void);
void EP_IN_Transfer(UINT8,UINT8*,UINT8);
UINT8 EP_OUT_Transfer(UINT8,UINT8*);
void USB_Stall_Handler(void);
void USB_EP0_OUT_Handler(void);
void USB_EP0_Stall(void);
void USB_Set_Interface(void);
UINT16 USB_EP_OUT_SizeCheck(UINT8 u8EP);
void USB_Reset_Handler(void);
void USB_Endpoint_Setup_Handler(void);
void USB_Protocol_Handler(void);
void USB_Rev_SetIsr(USB_REV_CALLBACK);
#endif /* __USB__*/