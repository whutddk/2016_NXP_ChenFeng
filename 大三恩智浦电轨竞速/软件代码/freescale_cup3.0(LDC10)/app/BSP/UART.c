#include "include.h"

UART_InitTypeDef uart_init_struct;

#if USE_UART5

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

#else

void UART_init()
{
  uart_init_struct.UART_Uartx = UART0; //ʹ��UARTx
  uart_init_struct.UART_BaudRate = 115200; //���ò�����(115200)
  uart_init_struct.UART_RxPin = PTA15;  //��������ΪPTA15
  uart_init_struct.UART_TxPin = PTA14;  //��������ΪPTA14
  uart_init_struct.UART_RxIntEnable = TRUE;
  uart_init_struct.UART_RxIsr = freecars_isr; //��λ������
  //��ʼ��UART
  LPLD_UART_Init(uart_init_struct);
  LPLD_UART_EnableIrq(uart_init_struct);
}
#endif