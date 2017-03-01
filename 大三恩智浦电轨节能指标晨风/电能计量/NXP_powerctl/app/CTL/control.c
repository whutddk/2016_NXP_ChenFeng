//控制部分通用代码
#include "include.h"
#include "math.h"
struct _ctl ctl;




//控制中断函数
void CTL_isr()//控制系统调度 //1ms
{
  {
    timer_cnt++ ;
    bz_cnt++;
    send_cnt++;
    
    
    if (timer_cnt == 1000)//1s
    {
      timer_cnt = 0;
    }
  }
  
  {
    if ( ctl.flag_on == 1 )
    {
      relay_ON();
    }
    else
    {
      relay_OFF();
    }
    if ( ctl.flag_start == 1)
    {
      meterage();
    }
    
  }
}

void relay_ON()
{
  LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 9999);
}

void relay_OFF()
{
   LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
}

void meterage()
{
  static uint8 cnt = 0;
  ctl.current = LPLD_ADC_Get(ADC0, AD8) ;
  if (  ctl.current > ctl.current_offset  )
  {
    ctl.current_sum += ( ctl.current - ctl.current_offset );
  }
  else
  {
    ctl.current_sum -= ( ctl.current - ctl.current_offset );
  }
  
  ctl.POWER = ( ctl.current_sum / 32768. * 5 ) * 2    
    * 12. * 0.001 ;
  cnt++;
  if ( cnt == 100 )
  {
    cnt = 0;
    show();
  }
}

void show()
{
  OLED_CLS();
  OLED_P8x16Str(0,0,"WUT");
  
  OLED_PrintInt16( 0,2,(int16)( (ctl.current - ctl.current_offset) / 32768. * 5000.) *2 );
  OLED_P8x16Str(80,2 ,"mA" );
  
  OLED_PrintInt16( 0,4,(int16)( ctl.POWER ));
  OLED_P8x16Str(80,4 ,"W*s" );
}

