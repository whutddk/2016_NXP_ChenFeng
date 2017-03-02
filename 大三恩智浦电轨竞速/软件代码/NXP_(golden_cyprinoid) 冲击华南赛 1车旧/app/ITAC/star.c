#include "include.h"

void star()
{
  if(1 == flag_bihuan)     //闭环参数
  {
    if(GUI.para.AI > 0 && GUI.para.AI < 3)
    {
      ctl.motto.v = AIM_Buff[GUI.para.AI-1];
      ctl.S3010.Kp_S = Dir_Buff[GUI.para.AI*2-2];
      ctl.S3010.Kd_S = Dir_Buff[GUI.para.AI*2-1];
      
    }
    else if(GUI.para.AI >= 3)       //高速转向参数分段
    {
      ctl.motto.v = AIM_Buff[GUI.para.AI-1];
      ctl.S3010.Kp_S = Dir_Buff[GUI.para.AI*6-14];
      ctl.S3010.Kd_S = Dir_Buff[GUI.para.AI*6-13];
      
      ctl.S3010.Kp_M = Dir_Buff[GUI.para.AI*6-12];
      ctl.S3010.Kd_M = Dir_Buff[GUI.para.AI*6-11];
      
      ctl.S3010.Kp_B = Dir_Buff[GUI.para.AI*6-10];
      ctl.S3010.Kd_B = Dir_Buff[GUI.para.AI*6-9];
      
    }
    
    else  // AI = 0
    {
      
    }
  }
  
  else                      //开环参数
  {
    switch(GUI.para.AI)
    {
      case(1):
        ctl.motto.out = kaihuan_Buff[0];
        ctl.S3010.Kp_S = 0.39;
        ctl.S3010.Kd_S = 0.5;
        break;
        
        case(2):
          ctl.motto.out = kaihuan_Buff[1];
          ctl.S3010.Kp_S = 0.4;
          ctl.S3010.Kd_S = 1.2;
          break;
          
          case(3):
            ctl.motto.out = kaihuan_Buff[2];
            ctl.S3010.Kp_S = 0.41;
            ctl.S3010.Kd_S = 1.5;
            break;
            
            
    default: ;
    }
  }
  
  
  LPLD_LPTMR_DelayMs(1500);
  bz_set(ready);//初始化完毕，蜂鸣器提示
  
  if(1 == debug_Enable)
  {
    timer_debug();
  }
  
  flag_stop = 0;
  
}


/*
void portc_isr()
{
  uint16 i,j;
  i = GUI.para.endline_time * 1000;
  
  j = LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin15);
  if( j > 0)
  {
    LPLD_GPIO_ClearIntFlag(PORTD);
  
  if(1 == GUI.para.endline &&  timer_cnt > i)  //一个可调的值
  {
    flag_bihuan = 0;
    ctl.motto.out = 0;
    timer_cnt = 0;
  }
  bz_set(datarec);
  }
}*/
