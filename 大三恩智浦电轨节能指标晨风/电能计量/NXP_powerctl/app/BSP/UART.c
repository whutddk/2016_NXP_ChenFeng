#include "include.h"

UART_InitTypeDef uart_init_struct;



void UART_init()
{
  uart_init_struct.UART_Uartx = UART5; //使用UARTx
  uart_init_struct.UART_BaudRate = 115200; //设置波特率(115200)
  uart_init_struct.UART_RxPin = PTE9;  //接收引脚为PTA15
  uart_init_struct.UART_TxPin = PTE8;  //发送引脚为PTA14
  uart_init_struct.UART_RxIntEnable = TRUE;
  uart_init_struct.UART_RxIsr = freecars_isr; //上位机接收
  //初始化UART
  LPLD_UART_Init(uart_init_struct);
  LPLD_UART_EnableIrq(uart_init_struct);
}

