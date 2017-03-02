//辅助调试代码
#include "include.h"

uint8 dec_sec = 1; //定时跑的时间

PIT_InitTypeDef debugpit_init_struct;

//定时时间到，停车
void debug_end()
{
  flag_stop = 1;
  LPLD_PIT_Deinit( debugpit_init_struct );
}

//设定定时时间
void timer_debug()
{
  debugpit_init_struct.PIT_Pitx = PIT3;
  debugpit_init_struct.PIT_PeriodS = dec_sec;
  debugpit_init_struct.PIT_PeriodMs = 0;
  debugpit_init_struct.PIT_PeriodUs = 0;     
  debugpit_init_struct.PIT_Isr = debug_end;  
 
  LPLD_PIT_Init(debugpit_init_struct);  //初始化PIT0
  
  LPLD_PIT_EnableIrq(debugpit_init_struct);

  flag_stop = 0;
}

//安全程序， 保证车辆安全

uint8 flag_stop = 1; //急停标志位

void safty_check() //安全检查
{
  if ( flag_stop == 1 )
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
   
    LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, 1543 );
  }
}