//ϵͳȫ���ʼ��
//DDK

#include "include.h"

void sysinit()
{
  //���ȳ�ʼ�����������и�λ���
  bzled_init();  
  
  BZ_ON;
  LED_ON;
  
  UART_init();
  PWM_init(); 
  
  //qei_init();
  
  OLED_Init();
  Draw_BMP(0,0,66,7,mushroom); 
  RC_init();
  key_init();
  
  adc_init();
  PIT0_init();//��ϵͳʱ�� //1MS һ���ж�
  
  ctl.POWER = 0; 
  
  NVIC_init();
  
  BZ_OFF; //��ʼ���������رշ�����
  LED_OFF;
}
