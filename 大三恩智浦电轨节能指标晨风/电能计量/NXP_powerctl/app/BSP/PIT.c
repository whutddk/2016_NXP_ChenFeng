#include "include.h"

PIT_InitTypeDef pit_init_struct;

//主系统时钟 //1MS 一次中断
void PIT0_init()
{
  pit_init_struct.PIT_Pitx = PIT0;
  pit_init_struct.PIT_PeriodS = 0;
  pit_init_struct.PIT_PeriodMs = 1;
  pit_init_struct.PIT_PeriodUs = 0;     //定时周期
  pit_init_struct.PIT_Isr = CTL_isr;  //设置中断函数
 
  LPLD_PIT_Init(pit_init_struct);  //初始化PIT0
  
  //LPLD_PIT_EnableIrq(pit_init_struct);
}



