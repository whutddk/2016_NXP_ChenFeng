#ifndef _BSP_H_
#define _BSP_H_



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

void I2C_init();
void LDC_SEND(uint8 addr,uint16 dat);
uint16 LDC_READ(uint8 addr);

#endif

