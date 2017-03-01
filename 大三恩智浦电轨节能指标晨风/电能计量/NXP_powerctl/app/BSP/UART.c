#include "include.h"

UART_InitTypeDef uart_init_struct;



void UART_init()
{
  uart_init_struct.UART_Uartx = UART5; //ʹ��UARTx
  uart_init_struct.UART_BaudRate = 115200; //���ò�����(115200)
  uart_init_struct.UART_RxPin = PTE9;  //��������ΪPTA15
  uart_init_struct.UART_TxPin = PTE8;  //��������ΪPTA14
  uart_init_struct.UART_RxIntEnable = TRUE;
  uart_init_struct.UART_RxIsr = freecars_isr; //��λ������
  //��ʼ��UART
  LPLD_UART_Init(uart_init_struct);
  LPLD_UART_EnableIrq(uart_init_struct);
}

