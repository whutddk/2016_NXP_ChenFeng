/*
 * 文件名: RingBuffer.h
 * 用途:  声明缓冲区配置函数
 * 最后修改日期: 20121204
 *
 *
 * 说明:本页代码基于Freescale官方示例代码修改，源代码文件为 RingBuffer.h
 *    本文件未经修改
 */
#ifndef __RINGBUFFER_H_
#define __RINGBUFFER_H_

/* Includes */
#include "FslTypes.h"


/* Error Codes */
#define     OK                  0
#define     NOT_ENOUGH_SPACE    1


/* Extern variables */
volatile extern UINT8 *OUT_StartAddress;        
volatile extern UINT8 *OUT_EndAddress;          
volatile extern UINT8 *OUT_UsbPointer;          
volatile extern UINT8 *OUT_SciPointer;          
volatile extern UINT8 gu8BufferOverFlow;


/* Prototypes */
void Buffer_Init(UINT8* ,UINT8);
UINT8 Buffer_Request(UINT8* ,UINT16);


#endif /* __CircBuffer__*/