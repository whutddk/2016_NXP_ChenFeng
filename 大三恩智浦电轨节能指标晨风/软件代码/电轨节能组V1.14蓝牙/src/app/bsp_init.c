//ϵͳȫ���ʼ��
//DDK

#include "include.h"
void bspinit()
{
//      /*����VLPR*/
//  SMC_PMPROT =  SMC_PMPROT | SMC_PMPROT_AVLP_MASK;
//  SMC_PMCTRL =  SMC_PMCTRL | SMC_PMCTRL_RUNM(2);
//  while(SMC_PMSTAT != 0x04);//����VLPR
  
  
  //���ȳ�ʼ�����������и�λ���
  bzled_init();  
  
  BZ_ON;
  LED_ON;
  
  /*LDC_INIT()*/
  gpio_init(PTE24, GPO, 1);
  gpio_init(PTE25, GPO, 1);
  LDC1614_init();
  LDC1614_start_meas();
  
  //���ڳ�ʼ��
  uart_init(UART0,9600);
  //gpio_init(PTD5, GPO, 0);
  //��ʼ��PWM
  tpm_pwm_init(TPM0, TPM_CH0, 5000,0); //5000Ϊ10KHZ
  tpm_pwm_init(TPM0, TPM_CH1, 5000,0);//5000Ϊ10KHZ
  tpm_pwm_init(TPM0, TPM_CH2, 5000,0);//5000Ϊ10KHZ
  tpm_pwm_init(TPM0, TPM_CH3, 5000,0);//5000Ϊ10KHZ
  
  //��ʼ�������ۼ�
  tpm_pulse_init(TPM1,TPM_CLKIN0,TPM_PS_1);
  tpm_pulse_init(TPM2,TPM_CLKIN1,TPM_PS_1);
   
  //sensor_offset();
  Flash_Init();
  
  key_init();

//  set_irq_priority (UART0_IRQn, 0);
  set_irq_priority (PIT_IRQn , 0); 
  pit_init_ms(PIT0,20);
  
  BZ_OFF; //��ʼ���������رշ�����
  LED_OFF;
}
