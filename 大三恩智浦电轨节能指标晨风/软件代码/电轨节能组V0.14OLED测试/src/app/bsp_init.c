//系统全体初始化
//DDK

#include "include.h"
void bspinit()
{
//      /*进入VLPR*/
//  SMC_PMPROT =  SMC_PMPROT | SMC_PMPROT_AVLP_MASK;
//  SMC_PMCTRL =  SMC_PMCTRL | SMC_PMCTRL_RUNM(2);
//  while(SMC_PMSTAT != 0x04);//进入VLPR
  
  
  //首先初始化蜂鸣器进行复位检测
  bzled_init();  
  
  BZ_ON;
  LED_ON;
  
  /*LDC_INIT()*/
  gpio_init(PTE24, GPO, 1);
  gpio_init(PTE25, GPO, 1);
  LDC1614_init();
  LDC1614_start_meas();
  
  //串口初始化
  uart_init(UART0,9600);
  //gpio_init(PTD5, GPO, 0);
  //初始化PWM
  tpm_pwm_init(TPM0, TPM_CH0, 5000,0); //5000为10KHZ
  tpm_pwm_init(TPM0, TPM_CH1, 5000,0);//5000为10KHZ
  tpm_pwm_init(TPM0, TPM_CH2, 5000,0);//5000为10KHZ
  tpm_pwm_init(TPM0, TPM_CH3, 5000,0);//5000为10KHZ
  
  //初始化脉冲累加
  tpm_pulse_init(TPM1,TPM_CLKIN0,TPM_PS_1);
  tpm_pulse_init(TPM2,TPM_CLKIN1,TPM_PS_1);
   
  //sensor_offset();
  Flash_Init();
  
  key_init();

//  set_irq_priority (UART0_IRQn, 0);
  set_irq_priority (PIT_IRQn , 0); 
  pit_init_ms(PIT0,20);
  
  BZ_OFF; //初始化结束，关闭蜂鸣器
  LED_OFF;
}
