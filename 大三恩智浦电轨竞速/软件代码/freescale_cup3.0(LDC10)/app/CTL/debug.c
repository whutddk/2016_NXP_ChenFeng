//�������Դ���
#include "include.h"

uint8 dec_sec = 1; //��ʱ�ܵ�ʱ��

PIT_InitTypeDef debugpit_init_struct;

//��ʱʱ�䵽��ͣ��
void debug_end()
{
  flag_stop = 1;
  LPLD_PIT_Deinit( debugpit_init_struct );
}

//�趨��ʱʱ��
void timer_debug()
{
  debugpit_init_struct.PIT_Pitx = PIT3;
  debugpit_init_struct.PIT_PeriodS = dec_sec;
  debugpit_init_struct.PIT_PeriodMs = 0;
  debugpit_init_struct.PIT_PeriodUs = 0;     
  debugpit_init_struct.PIT_Isr = debug_end;  
 
  LPLD_PIT_Init(debugpit_init_struct);  //��ʼ��PIT0
  
  LPLD_PIT_EnableIrq(debugpit_init_struct);

  flag_stop = 0;
}

//��ȫ���� ��֤������ȫ

uint8 flag_stop = 1; //��ͣ��־λ

void safty_check() //��ȫ���
{
  if ( flag_stop == 1 )
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
   
    LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, 1543 );
  }
}