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
  qei_init();
  S3010_init();
   
  key_init();
  OLED_Init();
  
  Draw_BMP(0,0,66,7,mushroom);
  
  //�������
 
  CTL_SEN_init();
  
  
    /*LDC_INIT()*/
  I2C_CLK_INIT();
  I2C_DAT_IN();
  LDC1614_init();
  LDC1614_start_meas();
  
  


  //����ʼ������ʼ����ɼ�����ʼ
 
  PIT1_init();//����ϵͳʱ�� //�ݶ�10ms
  PIT0_init();//��ϵͳʱ�� //1MS һ���ж�

  
  NVIC_init();
  
  BZ_OFF; //��ʼ���������رշ�����
  LED_OFF;
}
