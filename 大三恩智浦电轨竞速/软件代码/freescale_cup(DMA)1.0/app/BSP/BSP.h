#ifndef _BSP_H_
#define _BSP_H_

//����ѡ��
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
void freecars_isr();//��λ������ISR
#endif

