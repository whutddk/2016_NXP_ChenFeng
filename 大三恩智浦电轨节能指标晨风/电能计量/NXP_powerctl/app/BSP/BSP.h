#ifndef _BSP_H_
#define _BSP_H_

void sysinit();
void adc_init();
void NVIC_init();
void PIT0_init();
void PWM_init(); //˫����PWM
void CTL_isr();
void qei_init();
void UART_init();
void freecars_isr();//��λ������ISR
void get_offset();
#endif

