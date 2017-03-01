//============================================================================
//�ļ����ƣ�uart.h
//���ܸ�Ҫ��UART�ײ���������ͷ�ļ�
//��Ȩ���У����ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
//���¼�¼��2012-11-12   V1.0
//============================================================================

#ifndef UART_H         //��ֹ�ظ����壨 ��ͷ)
#define UART_H

#include "common.h"   //��������Ҫ��ͷ�ļ�
#include "sysinit.h"

typedef enum  UARTn
{
    //��ʼ��Ĭ������       --TXD--      --RXD--     ���Ը�������ͨ�����������޸� uart_init
    UART0,    //           PTD7         PTD6
    UART1,    //           PTC4         PTC3
    UART2,    //           PTD3         PTD2

} UARTn;

void uart_init (UARTn uratn,uint32_t baud_rate);

char uart_getchar (UARTn uratn);                     //���޵ȴ�����1���ֽ�
uint8_t uart_pendchar (UARTn uratn,uint8_t *fp);    //����ʱ��ȴ�����һ���ַ�
uint8_t uart_pendstr (UARTn uratn, uint8_t *str);   //����ʱ��ȴ������ַ���

int uart_query (UARTn uratn);                                 //��ѯ�Ƿ���յ�һ���ֽ�
void uart_putchar (UARTn uratn, char ch);                    //����1���ֽ�
void uart_sendN (UARTn uratn, uint8_t *buff, uint16_t len);  //����n���ֽ�
void uart_sendStr (UARTn uratn, const uint8_t *str);         //�����ַ���

void uart_irq_EN(UARTn uratn);                               //�����ڽ����ж�
void uart_irq_DIS(UARTn uratn);                               //�ش��ڽ����ж� 


#endif     //��ֹ�ظ����壨 ��β)
