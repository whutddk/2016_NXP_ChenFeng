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
  
  //qei_init();
  
  OLED_Init();
  Draw_BMP(0,0,66,7,mushroom); 
  RC_init();
  key_init();
  
  adc_init();
  PIT0_init();//主系统时钟 //1MS 一次中断
  
  ctl.POWER = 0; 
  
  NVIC_init();
  
  BZ_OFF; //初始化结束，关闭蜂鸣器
  LED_OFF;
}
