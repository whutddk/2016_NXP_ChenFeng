//主函数部分
//DDK 

#include "include.h"

uint8 send_cnt = 0;
uint16 timer_cnt = 0;
vuint16 temp = 0; 

void main (void)
{
  sysinit();
  
  get_offset();
  
  bz_set(ready);    
  while(1)
  {
    bzled_work();
    
    //30ms发送一次示波器数据
    if ( send_cnt >= 10 )
    {
      sendDataToScope();
      send_cnt = 0;
    }
    
  } 
}

