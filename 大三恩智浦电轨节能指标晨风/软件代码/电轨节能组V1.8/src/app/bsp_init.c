//ϵͳȫ���ʼ��
//DDK

#include "include.h"

void bspinit()
{
  //���ȳ�ʼ�����������и�λ���
  bzled_init();  
  
//  /*����VLPR*/
  //SMC_PMPROT |= SMC_PMPROT_AVLP_MASK;
  //SMC_PMCTRL |= SMC_PMCTRL_RUNM(2);
//  
 //while(SMC_PMSTAT != 0x04);//����VLPR
  
  
  BZ_ON;
  LED_ON;
  
  //���ڳ�ʼ��
  uart_init (UART0,115200);
  
  //��ʼ��PWM
  tpm_pwm_init(TPM0, TPM_CH0, 10000,0);
  tpm_pwm_init(TPM0, TPM_CH1, 10000,0);
  tpm_pwm_init(TPM0, TPM_CH2, 10000,0);
  tpm_pwm_init(TPM0, TPM_CH3, 10000,0);
  
  //��ʼ�������ۼ�
  tpm_pulse_init(TPM1,TPM_CLKIN0,TPM_PS_1);
  tpm_pulse_init(TPM2,TPM_CLKIN1,TPM_PS_1);
   
  //��ʼ��OLED
  OLED_Init();
  Draw_BMP(0,0,66,7,mushroom);

  //�������
  //CTL_SEN_init();
  
  //ADC������
  adc_init(ADC0_SE9);   //B1
  adc_init(ADC0_SE12);  //B2
  
  //adc_offset();
  
  /*LDC_INIT()*/
  gpio_init(PTE24, GPO, 1);
  gpio_init(PTE25, GPO, 1);
  
  LDC1614_init();
  LDC1614_start_meas();
  
  Flash_Init();
  
  key_init();
  
  
  
  set_irq_priority (UART0_IRQn, 0);
  set_irq_priority (PIT_IRQn , 1); 
  pit_init_ms(PIT0,10);
  
  //  sensor_offset();
  
  
  uart_irq_EN(UART0);
  
  
  BZ_OFF; //��ʼ���������رշ�����
  LED_OFF;
}
