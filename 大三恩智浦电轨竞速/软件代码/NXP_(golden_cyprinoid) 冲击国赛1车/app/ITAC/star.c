#include "include.h"

void star()
{
  uint8 Flash_Result=0;
  
  if(write_flash_flag == 1)
  {
    DisableInterrupts;
    
    Flash_Result = LPLD_Flash_SectorErase(FLASH_TEST_ADDR);
    while(Flash_Result!=0)
    {
      BZ_ON;
      LPLD_LPTMR_DelayMs(500);
      Flash_Result=LPLD_Flash_SectorErase(FLASH_TEST_ADDR);  
      BZ_OFF;
    }
    
    flash_write(FLASH_TEST_SECTOR,0,GUI.para.endline_time);
    
    flash_write(FLASH_TEST_SECTOR,20,sensor.max[0]);
    flash_write(FLASH_TEST_SECTOR,40,sensor.max[1]);
    flash_write(FLASH_TEST_SECTOR,60,sensor.max[2]);
    flash_write(FLASH_TEST_SECTOR,80,sensor.min[0]);
    flash_write(FLASH_TEST_SECTOR,100,sensor.min[1]);
    flash_write(FLASH_TEST_SECTOR,120,sensor.min[2]);
    
    EnableInterrupts;
    
  }
  
  
  
  
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
      ctl.S3010.Kp_S = Dir_Buff[GUI.para.AI*8-20];
      ctl.S3010.Kd_S = Dir_Buff[GUI.para.AI*8-19];
      
      ctl.S3010.Kp_M1 = Dir_Buff[GUI.para.AI*8-18];
      ctl.S3010.Kd_M1 = Dir_Buff[GUI.para.AI*8-17];
          
      ctl.S3010.Kp_M2 = Dir_Buff[GUI.para.AI*8-16];
      ctl.S3010.Kd_M2 = Dir_Buff[GUI.para.AI*8-15];

      
      ctl.S3010.Kp_B = Dir_Buff[GUI.para.AI*8-14];
      ctl.S3010.Kd_B = Dir_Buff[GUI.para.AI*8-13];
      
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



void portd_isr()
{
  uint16 i,j;
    i = GUI.para.endline_time * 1000;
    LPLD_GPIO_ClearIntFlag(PORTD);
    
    j = 0;
    j = PTD1_I + PTD5_I + PTD6_I + PTD15_I;
    
    if( j < 3)
    {
      if(1 == GUI.para.endline &&  timer_cnt > i)  //一个可调的值
      {
        flag_bihuan = 0;
        ctl.motto.out = 0;
        timer_cnt = 0;
      }
      bz_set(datarec);
    }
}
