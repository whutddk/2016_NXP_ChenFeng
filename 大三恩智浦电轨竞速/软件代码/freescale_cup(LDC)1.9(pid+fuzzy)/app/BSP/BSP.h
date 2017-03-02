#ifndef _BSP_H_
#define _BSP_H_


extern NVIC_InitTypeDef nvic_init_struct;
void sysinit();



void PWM_init();
void qei_init();
void NVIC_init();
void PIT0_init();
void PIT1_init();

void sensor_isr();
void MCNT_isr();
void CTL_isr();
void S3010_init();
void UART_init();
void freecars_isr();//上位机接收ISR
#endif

