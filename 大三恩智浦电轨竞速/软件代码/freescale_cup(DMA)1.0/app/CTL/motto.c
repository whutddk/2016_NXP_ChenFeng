//电机控制
#include "include.h"

void motto_set()
{
  //限幅
  if ( ctl.motto.out > 7000 )
  {
    ctl.motto.out = 7000;
  }
  else if ( ctl.motto.out < -7000 )
  {
    ctl.motto.out = -7000;
  }

    
  if ( ctl.motto.out >= 0.000000  )
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (uint32) ( ctl.motto.out ) );
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) 0 );
  }
  else if ( ctl.motto.out < 0.000000 )
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) ( -ctl.motto.out ) );
  }
  

}

void motto_getsped()
{
  ctl.motto.sped_cur =  LPLD_FTM_GetCounter(FTM2);
  LPLD_FTM_ClearCounter(FTM2);
}

void ctl_sped() //速度控制，增量式PI控制
{
  ctl.motto.error[1] = ctl.motto.sped_cur - ctl.motto.aim;
  
  ctl.motto.result  = -ctl.motto.Kp  * ( ctl.motto.error[1] - ctl.motto.error[0] );
  ctl.motto.result += -ctl.motto.Ki  *   ctl.motto.error[1];
  
  ctl.motto.error[0] = ctl.motto.error[1];  
  ctl.motto.out += ctl.motto.result;
  
}



