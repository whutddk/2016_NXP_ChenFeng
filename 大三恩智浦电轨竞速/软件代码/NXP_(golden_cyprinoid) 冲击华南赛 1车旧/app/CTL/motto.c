//电机控制
#include "include.h"

void motto_set()
{
  //限幅
  if ( ctl.motto.out > 9500 )
  {
    ctl.motto.out = 9500;
  }
  else if ( ctl.motto.out < -9500 )
  {
    ctl.motto.out = -9500;
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
  
  push(6,ctl.motto.out);
}



//轮子172mm 5000个脉冲

void motto_getsped()
{
  
  ctl.motto.sped_cur =  -LPLD_FTM_GetCounter(FTM2)  ;//赋值需要不可以连等
  
  LPLD_FTM_ClearCounter(FTM2);
  push(5,ctl.motto.sped_cur);  
}




int8 Straight_Flag=1;
boolean speed_up_Enable;
void ctl_sped() //速度控制，增量式PI控制
{
  
  if(1 == speed_up_Enable)
  {
    if(ctl.motto.v_error > 160)
    {
      ctl.motto.v_error = 160;
    }
    else if(ctl.motto.v_error < 25)
    {
      ctl.motto.v_error = 0;
    }
    
    ctl.motto.v_error = 150 - ctl.motto.v_error;
  }
  
    ctl.motto.aim = ctl.motto.v + ctl.motto.v_error;

    
  if(1 == flag_ramp)     //坡道未正常关闭，则一定距离后关闭
  {
    ctl.motto.ramp += ctl.motto.sped_cur;
    ctl.motto.aim = ctl.motto.v;
    
    if(ctl.motto.ramp > 80000)    //计距离强制置0
    {
      flag_ramp = 0;
      BZ_OFF;
      ctl.motto.ramp = 0;
      ramp_Enable = 0;
      bz_set(warn);
      ramp_cnt = 0;
    }
  }
   else if(ramp_Enable == 0)        //隔大约2m检测下一个坡道
   {
     ctl.motto.ramp += ctl.motto.sped_cur;
     if(ctl.motto.ramp > 80000)
     {
       ctl.motto.ramp = 0;
       ramp_Enable = 1;
     }
   }
  
//  push(11,ctl.motto.ramp/10);
    
 
  
  ctl.motto.error[1] =   ctl.motto.aim  - ctl.motto.sped_cur;
  
  ctl.motto.result[1]  = ctl.motto.Kp  * ( ctl.motto.error[1] - ctl.motto.error[0] );
  ctl.motto.result[1] += ctl.motto.Ki  *   ctl.motto.error[1];
  
  ctl.motto.error[0] = ctl.motto.error[1];  
  ctl.motto.out += ctl.motto.result[1];

  
  
  if(1 == ramp_cnt)
  {
    if(ctl.motto.error[1] < -40)
      if(ctl.motto.out > -1000)
      ctl.motto.out = -1000;
  }
  push(4,ctl.motto.aim);

}



/*
void ctl_sped() //速度控制，增量式PI控制
{
  
  if(line.pos < 50 && line.pos > -50)
  {   
    ctl.motto.distance += ctl.motto.sped_cur;
    
    if(ctl.motto.distance >= 3000)
    {
      Straight_Flag = 1;
      
      if(ctl.motto.distance > 20000)
      {
        ctl.motto.distance = 8000;
      }
    }  
    else
    {
      Straight_Flag = 0;  
    }  
  }
  
  else
  {
    Straight_Flag = 0;
    ctl.motto.distance = 0;
  }
  
  
  
  if(Straight_Flag == 1)
    
  {
    ctl.motto.aim = ctl.motto.v * 1.4;
  // BZ_ON;
  }
  
  else
  {
    ctl.motto.aim = ctl.motto.v;
    //BZ_OFF;
  }
  
  
  ctl.motto.error[1] =   ctl.motto.aim  - ctl.motto.sped_cur;
  
  ctl.motto.result[1]  = (ctl.motto.Kp)  * ( ctl.motto.error[1] - ctl.motto.error[0] );
  ctl.motto.result[1] += (ctl.motto.Ki)  *   ctl.motto.error[1];
  
  ctl.motto.error[0] = ctl.motto.error[1];  
  ctl.motto.out += ctl.motto.result[1];
  
    
  push(4,ctl.motto.aim);

}*/