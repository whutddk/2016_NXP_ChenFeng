//�������
#include "include.h"

void motto_set()
{
  //�޷�
  if ( ctl.motto.out > 8000 )
  {
    ctl.motto.out = 8000;
  }
  else if ( ctl.motto.out < -8000 )
  {
    ctl.motto.out = -8000;
  }
  
  
  if ( ctl.motto.out >= 0.000000  )
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) ( ctl.motto.out ) );
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (uint32) 0 );
  }
  else if ( ctl.motto.out < 0.000000 )
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (uint32) ( -ctl.motto.out ) );
  }
  
  
}



//����172mm 5000������

void motto_getsped()
{
  
  ctl.motto.sped_cur =  LPLD_FTM_GetCounter(FTM2)  ;//��ֵ��Ҫ����������
  
  LPLD_FTM_ClearCounter(FTM2);
  

}




int8 Straight_Flag=0;

void ctl_sped() //�ٶȿ��ƣ�����ʽPI����
{
  
  
  
  if(line.pos[0] > 60 || line.pos[0] < -60)
  {
    
    ctl.motto.distance += ctl.motto.sped_cur;
    
    if(ctl.motto.distance >= 5000)
    {
      Straight_Flag = 1;
    }
    
    else
    {
      Straight_Flag =0;  
    }  
    
  }
  
  else
  {
    Straight_Flag = 0;
    ctl.motto.distance = 0;

  }
  
  
  
  if(Straight_Flag == 1)
  {
    ctl.motto.error[1] =   ctl.motto.aim * 1.15 - ctl.motto.sped_cur;
    
  }
  
  else
  {
    ctl.motto.error[1] =   ctl.motto.aim  - ctl.motto.sped_cur;
  }
  
  
  
  ctl.motto.result  = ctl.motto.Kp  * ( ctl.motto.error[1] - ctl.motto.error[0] );
  ctl.motto.result += ctl.motto.Ki  *   ctl.motto.error[1];
  
  ctl.motto.error[0] = ctl.motto.error[1];  
  ctl.motto.out += ctl.motto.result;
  


}



