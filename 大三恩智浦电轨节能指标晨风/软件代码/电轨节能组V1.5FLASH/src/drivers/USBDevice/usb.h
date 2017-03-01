//=========================================================================
// �ļ����ƣ�hw_usb.h                                                          
// ���ܸ�Ҫ��usb����Դ�ļ�
// ��Ȩ����: ���ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
// �汾����:     ʱ��                     �汾                                       �޸�
//           2011-12-14     V1.0        USB������ʼ�汾
//           2011-12-20     V1.1        USB�����Ż��޸�
//=========================================================================
#ifndef __USB_H__
#define __USB_H__

#include "common.h"

#define USB_INTERRUPT_IRQ   (24)

#define FLAG_SET(BitNumber, Register)        (Register |=(1<<BitNumber))
#define FLAG_CLR(BitNumber, Register)        (Register &=~(1<<BitNumber))
#define FLAG_CHK(BitNumber, Register)        (Register & (1<<BitNumber))

#define USB_FMC_ACC_ENABLE      FLAG_SET(FMC_PFAPR_M4AP_MASK,FMC_PFAPR)
#define USB_REG_SET_ENABLE      FLAG_SET(SIM_SOPT1_USBREGEN_SHIFT,SIM_SOPT1)
#define USB_REG_CLEAR_ENABLE    FLAG_CLR(SIM_SOPT1_USBREGEN_SHIFT,SIM_SOPT1)
#define USB_REG_SET_STDBY       FLAG_SET(SIM_SOPT1_USBSSTBY_SHIFT,SIM_SOPT1)
#define USB_REG_CLEAR_STDBY     FLAG_CLR(SIM_SOPT1_USBSSTBY_SHIFT,SIM_SOPT1)

#define EP_OUT          3
#define EP_IN           2 

#define mEP2_IN       0x28
#define mEP3_OUT      0x30

#define USB_FARCTIONAL_VALUE    0x02

#define DISABLE_USB (USBCTL0 = 0x00)
#define ENDPOINTS   3

//EP0����������
#define EP0_SIZE            32


//EP1����
#define EP1_VALUE           _EP_IN
#define EP1_TYPE            INTERRUPT
#define EP1_SIZE            32
#define EP1_BUFF_OFFSET     0x18


//EP2����
#define EP2_VALUE           _EP_IN
#define EP2_TYPE            BULK
#define EP2_SIZE            32
#define EP2_BUFF_OFFSET     0x20

//EP3����
#define EP3_VALUE           _EP_OUT
#define EP3_TYPE            BULK
#define EP3_SIZE            32
#define EP3_BUFF_OFFSET     0x28

//EP4����
#define EP4_VALUE           DISABLE
#define EP4_SIZE            1
#define EP4_BUFF_OFFSET     0x08

//EP5����
#define EP5_VALUE           DISABLE
#define EP5_SIZE            1
#define EP5_BUFF_OFFSET     0x08

//EP6����
#define EP6_VALUE           DISABLE
#define EP6_SIZE            1
#define EP6_BUFF_OFFSET     0x08

#define EP3_CTR   tBDTtable[4].Stat._byte= kSIE 

#define usbSIE_CONTROL(EP)   (tBDTtable[EP<<2].Stat._byte= kSIE)
#define usbMCU_CONTROL(EP)   (tBDTtable[EP<<2].Stat._byte= kMCU)
#define usbEP_Reset(EP)      (tBDTtable[EP<<2].Cnt=0x0020)

#define _EP_IN      USB_ENDPT_EPTXEN_MASK
#define _EP_OUT     USB_ENDPT_EPRXEN_MASK

#define DISABLE 0

#define INTERRUPT   0x03
#define BULK        0x05


// BDT״̬
#define kMCU      0x00
#define kSIE      0x80

#define kUDATA0   0x88
#define kUDATA1   0xC8

//USB�����У�����PID����
#define mSETUP_TOKEN    0x0D
#define mOUT_TOKEN      0x01
#define mIN_TOKEN       0x09

//��׼��SETUP��������
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

//��ȡ������
#define mDEVICE                     1
#define mCONFIGURATION              2
#define mSTRING                     3
#define mINTERFACE                  4
#define mENDPOINT                   5
#define mDEVICE_QUALIFIER           6
#define mOTHER_SPEED_CONFIGURATION  7
#define mINTERFACE_POWER            8





#define mREPORT                     0x22



// SETUP��������
#define STANDARD_REQ    0x00
#define SPECIFIC_REQ    0x20
#define VENDORSPEC_REQ  0x40
#define DEVICE_REQ      0x00
#define INTERFACE_REQ   0x01
#define ENDPOINT_REQ    0x02



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

typedef union _tBDT_STAT
{
    uint_8 _byte;
    struct{
        uint_8 :1;
        uint_8 :1;
        uint_8 BSTALL:1;              //
        uint_8 DTS:1;                 //
        uint_8 NINC:1;                //
        uint_8 KEEP:1;                //
        uint_8 DATA:1;                //
        uint_8 UOWN:1;                //BDT����Ȩ
    }McuCtlBit;
       
    struct{
        uint_8    :2;
        uint_8 PID:4;                 //����־
        uint_8    :2;
    }RecPid;
} tBDT_STAT;                            //��������������ṹ��



//BDT����������������
typedef struct _tBDT
{
    tBDT_STAT Stat;
    uint_8  dummy;
    uint_16 Cnt;
    uint_32 Addr;             
} tBDT;

//SETUP���ṹ��
typedef struct _tUSB_Setup 
{
       uint_8 bmRequestType;
       uint_8 bRequest;
       uint_8 wValue_l;
       uint_8 wValue_h;
       uint_8 wIndex_l;
       uint_8 wIndex_h;
       uint_8 wLength_l;
       uint_8 wLength_h;
}tUSB_Setup;

#define GET_STATUS              0x00
#define CLEAR_FEATURE           0x01
#define SET_FEATURE             0x03


//=========================================================================
//������: hw_usb_init
//��  ��: USBģ���ʼ 
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_init(void);

//=========================================================================
//������: hw_usb_ep_in_transfer
//��  ��: USB����IN�� 
//��  ��: u8EP���˵�
//       pu8DataPointer�������������ڻ������׵�ַ
//       u8DataSize���������ݳ���
//��  ��: ��
//=========================================================================
void hw_usb_ep_in_transfer(uint_8 u8EP,uint_8 *pu8DataPointer,uint_8 u8DataSize);

//=========================================================================
//������: hw_usb_ep_out_transfer
//��  ��: USB����OUT�� 
//��  ��: u8EP���˵�
//       pu8DataPointer��������յ������ݵĻ������׵�ַ
//��  ��: ���յ������ݳ���
//=========================================================================
uint_8 hw_usb_ep_out_transfer(uint_8 u8EP,uint_8 *pu8DataPointer);

//=========================================================================
//������: hw_usb_set_interface
//��  ��: USBģ��������� 
//��  ��: ��
//��  ��: ���յ������ݳ���
//=========================================================================
void hw_usb_set_interface(void);

//=========================================================================
//������: hw_usb_stdReq_handler
//��  ��: �Ա�׼��SETUP������ʹ���
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_stdReq_handler(void);

//=========================================================================
//������: hw_usb_setup_handler
//��  ��: ��SETUP������ʹ���
//��  ��: ��  
//��  ��: ��
//˵  ��:
//   (1)ֻ�н��յ�SETUP���ŵ��øú���
//   (2)SETUP����8�ֽ�����
//    bmRequestType:1
//    bRequest:1
//    wValue.H:1 :������������
//    wValue.L:1 :������������
//    wIndex:2
//    wLength:2
//=========================================================================
void hw_usb_setup_handler(void);

//=========================================================================
//������: hw_usb_endpoint_setup_handler
//��  ��: ����������ӿ���������ʱ��ִ�иú���
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_endpoint_setup_handler(void);

//=========================================================================
//������: hw_usb_handler
//��  ��: ���յ�SETUP��ʱ���øú���
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_handler(void);

//=========================================================================
//������: hw_usb_ep0_in_handler
//��  ��: �˵�0����IN��
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_ep0_in_handler(void);

//=========================================================================
//������: hw_usb_ep0_stall
//��  ��: �˵�0����һ��STALL��
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_ep0_stall(void);

//=========================================================================
//������: hw_usb_ep0_out_handler
//��  ��: �˵�0����OUT��
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_ep0_out_handler(void);

//=========================================================================
//������: hw_usb_ep2_in_handler
//��  ��: �˵�2����IN��
//��  ��: SendBuff���������ݻ�����
//       DataLenght���������ݳ���  
//��  ��: ��
//=========================================================================
void hw_usb_ep2_in_handler(uint_8 *SendBuff,uint_32 DataLenght);

//=========================================================================
//������: hw_usb_ep3_out_handler
//��  ��: �˵�2����IN��
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_ep3_out_handler(void);

//=========================================================================
//������: hw_usb_stall_handler
//��  ��: ����stall�ж�
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_stall_handler(void);

//=========================================================================
//������: hw_usb_reset_handler
//��  ��: ����λ�ж�
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_reset_handler(void);
//=========================================================================
//������: hw_usb_reset_handler
//��  ��: ����λ�ж�
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_isr(void);
#endif // __USB_H__
