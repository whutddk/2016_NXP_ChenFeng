/*
 * 文件名: USB_CDC.h
 * 用途:  声明CDC配置函数
 * 最后修改日期: 20121204
 *
 *
 * 说明:本页代码基于Freescale官方示例代码修改，源代码文件为 USB_CDC.h
 *    本文件未经修改
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

//USB_CDC设备状态
#define WAITING_FOR_ENUMERATION  0x00
//USB setup接口请求参数
#define SET_LINE_CODING          0x20
#define GET_LINE_CODING          0x21
#define SET_CONTROL_LINE_STATE   0x22
#define LOADER_MODE              0xAA
#define GET_INTERFACE            0x0A
//定义CDC直线通信结构体
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