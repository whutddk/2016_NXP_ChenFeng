#include "LandzoMeasureSpeed.h"


/*************************************************************************
*                           ������ӹ�����
*
*  �������ƣ�MeasureSpeed_one_init
*  ����˵������������ٳ�ʼ������
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-9-11
*  ��    ע��
*************************************************************************/
void MeasureSpeed_one_init(void)
{
  gpio_init (PORTC , 4, GPO,HIGH);                            //���ʹ��
  
  FTM_PWM_init(FTM0 , CH1, 8000,0);       //���ռ�ձ����ó�ʼ��    ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH2, 8000,0);  
  
  lptmr_counter_init(LPT0_ALT2, LIN_COUNT, 2, LPT_Rising)  ;   //��ʼ����������� ��PTC5���벶��ţ�LIN_cout =100��Ԥ����Ϊ2�������ز��� 
  
}

/*************************************************************************
*                           ������ӹ�����
*
*  �������ƣ�MeasureSpeed_double_init
*  ����˵����˫������ٳ�ʼ������
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-9-11
*  ��    ע��
*************************************************************************/
void MeasureSpeed_double_init(void)
{    
  FTM_PWM_init(FTM0 , CH0, 8000,0);       //���ռ�ձ����ó�ʼ��    ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH1, 8000,0);  
  FTM_PWM_init(FTM0 , CH2, 8000,0);       //���ռ�ձ����ó�ʼ��    ռ�ձ� = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH3, 8000,0);
  
  lptmr_counter_init(LPT0_ALT2, LIN_COUNT, 2, LPT_Rising)  ;   //��ʼ����������� ��PTC5���벶��ţ�LIN_cout =100��Ԥ����Ϊ2�������ز��� 
  
}

/*************************************************************************
*                           ������ӹ�����
*
*  �������ƣ�MeasureSpeed_one_test
*  ����˵������������ٳ���
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-9-11
*  ��    ע��
*************************************************************************/
uint16_t MeasureSpeed_one_Count(void)
{
  uint16_t count=0;
  extern uint8_t LPT_INT_count;
  
  FTM_PWM_Duty(FTM0 , CH1,0);
  FTM_PWM_Duty(FTM0 , CH2,20);
  
  count = lptmr_pulse_get();                                                     //�����������������ֵ
  count = LPT_INT_count * LIN_COUNT +  count;                                     
  
  LPT_INT_count = 0; 
  return count;
}

/*************************************************************************
*                           ������ӹ�����
*
*  �������ƣ�MeasureSpeed_double_test
*  ����˵����˫������ٳ���
*  ����˵����
*  �������أ���
*  �޸�ʱ�䣺2014-9-11
*  ��    ע��
*************************************************************************/
void MeasureSpeed_double_Count(uint16_t *Count)
{
  static uint8_t Speed_flag=0;
  extern uint8_t LPT_INT_count;
  uint16_t LeftSpeedC,RightSpeedC;
  
  if(Speed_flag==0)
  {
    Speed_flag=1;
    LeftSpeedC = lptmr_pulse_get();                                                     //�����������������ֵ
    LeftSpeedC = LPT_INT_count * LIN_COUNT +  LeftSpeedC;                              //���10ms���������
    
    Count[0] = LeftSpeedC;
    LPT_INT_count = 0;                                                      //���LPT�жϴ���  
    lptmr_counter_init(LPT0_ALT1, LIN_COUNT, 2, LPT_Rising)  ;   //��ʼ����������� ��PTC5���벶��ţ�LIN_cout =100��Ԥ����Ϊ2�������ز��� 
    
  }
  else if(Speed_flag==1)
  {
    Speed_flag=0;
    RightSpeedC = lptmr_pulse_get();                                                     //�����������������ֵ
    RightSpeedC = LPT_INT_count * LIN_COUNT +  RightSpeedC;                              //���10ms���������
    
    Count[1] = RightSpeedC;
    LPT_INT_count = 0; 
    lptmr_counter_init(LPT0_ALT2, LIN_COUNT, 2, LPT_Rising)  ;   //��ʼ����������� ��PTC5���벶��ţ�LIN_cout =100��Ԥ����Ϊ2�������ز���         
  } 
  
  
  
}