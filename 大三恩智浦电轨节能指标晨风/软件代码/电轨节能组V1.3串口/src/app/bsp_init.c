//系统全体初始化
//DDK

#include "include.h"

void bspinit()
{
  //首先初始化蜂鸣器进行复位检测
  bzled_init();  
  
//  /*进入VLPR*/
//  SMC_PMPROT |= SMC_PMPROT_AVLP_MASK;
//  SMC_PMCTRL |= SMC_PMCTRL_RUNM(2);
//  
//  while(SMC_PMSTAT != 0x04);//进入VLPR
  
  
  
  BZ_ON;
  LED_ON;
  
  //串口初始化
  uart_init (UART0,115200);
  
  /*忘了干嘛用的了**/
//  gpio_init(PTC6, GPO, 0);
//  gpio_init(PTC5, GPO, 0);
//  
//  PTC5_OUT = 0;
//  PTC6_OUT = 0;
    
  
  //初始化PWM
  tpm_pwm_init(TPM0, TPM_CH0, 10000,100);
  tpm_pwm_init(TPM0, TPM_CH1, 10000,0);
  tpm_pwm_init(TPM0, TPM_CH2, 10000,0);
  tpm_pwm_init(TPM0, TPM_CH3, 10000,100);
  
  //初始化脉冲累加
  //tpm_pwm_init(TPM1, TPM_CH0, 50,0);
  tpm_pulse_init(TPM2,TPM_CLKIN0,TPM_PS_1);
   
  //初始化OLED
  OLED_Init();
  Draw_BMP(0,0,66,7,mushroom);

  //代入参数
  //CTL_SEN_init();
  
  //ADC电流环
  adc_init(ADC0_SE9);   //B1
  adc_init(ADC0_SE12);  //B2
  
  /*LDC_INIT()*/
  gpio_init(PTE24, GPO, 0);
  gpio_init(PTE25, GPO, 0);
  LDC1614_init();
  LDC1614_start_meas();
  
  //key_init();
  

  pit_init_ms(PIT0,10);
  

 uart_irq_EN(UART0);
  set_irq_priority (UART0SE_irq_no, 0);
  set_irq_priority (PIT_irq_no , 1);

  BZ_OFF; //初始化结束，关闭蜂鸣器
  LED_OFF;
}
