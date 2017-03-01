//系统全体初始化
//DDK

#include "include.h"

void bspinit()
{
  //首先初始化蜂鸣器进行复位检测
  bzled_init();  
  
  BZ_ON;
  LED_ON;
  
  uart_init (UART0,115200);
  
  tpm_pwm_init(TPM0, TPM_CH0, 10000,0);
  tpm_pwm_init(TPM1, TPM_CH0, 50,0);
  tpm_pulse_init(TPM2,TPM_CLKIN0,TPM_PS_1);
   
  OLED_Init();
  Draw_BMP(0,0,66,7,mushroom);
  
  
  //代入参数
 
  //CTL_SEN_init();
 
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
