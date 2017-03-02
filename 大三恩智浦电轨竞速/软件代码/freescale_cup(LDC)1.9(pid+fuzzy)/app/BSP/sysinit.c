//系统全体初始化
//DDK

#include "include.h"

void sysinit()
{
  //首先初始化蜂鸣器进行复位检测
  bzled_init();  
  
  BZ_ON;
  LED_ON;
  
  UART_init();
  PWM_init();
  qei_init();
  S3010_init();
   
  key_init();
  OLED_Init();
  
  Draw_BMP(0,0,66,7,mushroom);
  
  //代入参数
 
  CTL_SEN_init();
  
  
    /*LDC_INIT()*/
  I2C_CLK_INIT();
  I2C_DAT_IN();
  LDC1614_init();
  LDC1614_start_meas();
  
  


  //最后初始化，初始化完成即任务开始
 
  PIT1_init();//控制系统时钟 //暂定10ms
  PIT0_init();//主系统时钟 //1MS 一次中断

  
  NVIC_init();
  
  BZ_OFF; //初始化结束，关闭蜂鸣器
  LED_OFF;
}
