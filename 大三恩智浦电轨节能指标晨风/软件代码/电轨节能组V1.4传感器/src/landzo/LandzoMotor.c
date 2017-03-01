#include  "Landzomotor.h"

/*************************************************************************
*                           ������ӹ�����
*
*  �������ƣ�Motor_one_PWM_Init
*  ����˵�������������ʼ������
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-9-11
*  ��    ע��
*************************************************************************/

void Motor_one_PWM_init(void)
{    
  gpio_init (PORTC , 4, GPO,HIGH);                             //���ʹ��
  FTM_PWM_init(FTM0 , CH1, 80000,0);                        //���ռ�ձ����ó�ʼ��   MOD =313 ;  ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH2, 80000,0);                        //���ռ�ձ����ó�ʼ��   MOD =313 ;  ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  
}

/*************************************************************************
*                           ������ӹ�����
*
*  �������ƣ�Motor_double_PWM_Init
*  ����˵�������������ʼ������
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-9-5
*  ��    ע��
*************************************************************************/

void Motor_double_PWM_init(void)
{    
  FTM_PWM_init(FTM0 , CH0, 80000,0);                        //���ռ�ձ����ó�ʼ��   MOD =313 ;  ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH1, 80000,0);                        //���ռ�ձ����ó�ʼ��   MOD =313 ;  ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH2, 80000,0);                        //���ռ�ձ����ó�ʼ��   MOD =313 ;  ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH3, 80000,0);                        //���ռ�ձ����ó�ʼ��   MOD =313 ;  ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
}

/*************************************************************************
*                           ������ӹ�����
*
*  �������ƣ�Motor_one_test
*  ����˵�������������ʼ������
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-9-11
*  ��    ע��
*************************************************************************/

void Motor_one_test(void)
{
  uint8_t count=0;
  if( count == 3 )
  {
    count = 2 ;
    FTM_PWM_Duty(FTM0 , CH1,40);
    FTM_PWM_Duty(FTM0 , CH2,0);
  }
  else if(count == 2)
  {
    
    count = 1 ;
    FTM_PWM_Duty(FTM0 , CH1,0);
    FTM_PWM_Duty(FTM0 , CH2,0);
    
  }
  else if(count == 1)
  {
    
    count = 0 ;
    
    FTM_PWM_Duty(FTM0 , CH1,0);
    FTM_PWM_Duty(FTM0 , CH2,40);
    
  }
  else if(count == 0)
  {    
    count = 3 ;
    FTM_PWM_Duty(FTM0 , CH1,0);
    FTM_PWM_Duty(FTM0 , CH2,0);
    
  }
}
/*************************************************************************
*                           ������ӹ�����
*
*  �������ƣ�Motor_double_test
*  ����˵�������������ʼ������
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-9-11
*  ��    ע��
*************************************************************************/
void Motor_double_test(void)
{
  uint8_t count=0;
  if( count == 3 )
  {
    count = 2 ;
    FTM_PWM_Duty(FTM0 , CH0,40);
    FTM_PWM_Duty(FTM0 , CH1,0);
    FTM_PWM_Duty(FTM0 , CH2,40);
    FTM_PWM_Duty(FTM0 , CH3,0);
  } 
  else if(count == 2)
  {
    
    count = 1 ;
    FTM_PWM_Duty(FTM0 , CH1,0);
    FTM_PWM_Duty(FTM0 , CH2,0);
    FTM_PWM_Duty(FTM0 , CH1,0);
    FTM_PWM_Duty(FTM0 , CH2,0);
    
  }
  else if(count == 1)
  {
    
    count = 0 ;
    
    FTM_PWM_Duty(FTM0 , CH0,0);
    FTM_PWM_Duty(FTM0 , CH1,40);
    FTM_PWM_Duty(FTM0 , CH2,0);
    FTM_PWM_Duty(FTM0 , CH3,40);
    
  } 
  else if(count == 0)
  {
    
    count = 3 ;
    FTM_PWM_Duty(FTM0 , CH1,0);
    FTM_PWM_Duty(FTM0 , CH2,0);
    FTM_PWM_Duty(FTM0 , CH1,0);
    FTM_PWM_Duty(FTM0 , CH2,0);
    
  }
}


