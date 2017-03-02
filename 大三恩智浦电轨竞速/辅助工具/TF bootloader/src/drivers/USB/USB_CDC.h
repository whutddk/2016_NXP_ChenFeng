/*
 * �ļ���: USB_CDC.h
 * ��;:  ����CDC���ú���
 * ����޸�����: 20121204
 *
 *
 * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ USB_CDC.h
 *    ���ļ�δ���޸�
 */
#ifndef __USB_CDC_H__
#define __USB_CDC_H__

/* Includes */
#include "USB.h"
#include "FslTypes.h"
#include "RingBuffer.h"

extern UINT8 u8CDCState;

#define CDC_INPointer   gu8EP2_IN_ODD_Buffer
#define CDC_OUTPointer  gu8EP3_OUT_ODD_Buffer

/* Defines */
#define CDC_BUFFER_SIZE 128
#define EP_OUT          3
#define EP_IN           2   

/* USB_CDC Definitions */

//USB_CDC�豸״̬
#define WAITING_FOR_ENUMERATION  0x00
//USB setup�ӿ��������
#define SET_LINE_CODING          0x20
#define GET_LINE_CODING          0x21
#define SET_CONTROL_LINE_STATE   0x22
#define LOADER_MODE              0xAA
#define GET_INTERFACE            0x0A
//����CDCֱ��ͨ�Žṹ��
typedef struct
{
    UINT32  DTERate;
    UINT8   CharFormat;
    UINT8   ParityType;
    UINT8   Databits;
}CDC_Line_Coding;


/* Extern variables */
extern UINT8 CDC_OUT_Data[];            
extern CDC_Line_Coding LineCoding; 


/* Prototypes */
void CDC_Init(void);
UINT8 CDC_InterfaceReq_Handler(void);
UINT32 LWordSwap(UINT32);
UINT8 CDC_Settings_Update(UINT8*,UINT8);

#endif /* __CDC__*/