//主函数部分
//DDK 



#include "include.h"

uint8 send_cnt = 0;
uint16 timer_cnt = 0;
vuint16 temp = 0; 

void main (void)
{
  sysinit();
  
  //temp = LDC_READ(0x7F);  
  
  //sensor_offset();//取偏置
  
  LPLD_LPTMR_DelayMs(300);
  
  
  
  
  bz_set(ready);//初始化完毕，蜂鸣器提示
  
  while(1)
  {
    bzled_work();
    LDC1000_read();
    
    //30ms发送一次示波器数据
    if ( send_cnt >= 5 )
    {
//      sendDataToScope();
      send_cnt = 0;
    }
    
  } 
}


void MCNT_isr() // 主系统计时
{
  
  timer_cnt++ ;
  bz_cnt++;
  send_cnt++;
  
  
  
  if (timer_cnt == 1000)//1s
  {
    timer_cnt = 0;
  }
  
}  
