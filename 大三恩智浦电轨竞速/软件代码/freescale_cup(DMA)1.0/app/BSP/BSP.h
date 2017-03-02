#ifndef _BSP_H_
#define _BSP_H_

//串口选择
#define USE_UART5 ON

void sysinit();



void PWM_init();
void qei_init();
void NVIC_init();
void PIT0_init();
void PIT1_init();
void MCNT_isr();
void CTL_isr();
void S3010_init();
void UART_init();
void freecars_isr();//上位机接收ISR
#endif

