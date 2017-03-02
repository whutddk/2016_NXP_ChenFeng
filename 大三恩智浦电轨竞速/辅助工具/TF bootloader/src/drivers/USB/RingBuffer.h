/*
 * �ļ���: RingBuffer.h
 * ��;:  �������������ú���
 * ����޸�����: 20121204
 *
 *
 * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ RingBuffer.h
 *    ���ļ�δ���޸�
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