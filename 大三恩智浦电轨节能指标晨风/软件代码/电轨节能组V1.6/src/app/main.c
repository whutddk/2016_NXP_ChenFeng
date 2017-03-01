#include "include.h"

uint8 flag_stop = 0;

void main()
{
  DisableInterrupts;
  
  bspinit();
  
  //adc_offset();

  STATUE_get();
  
  EnableInterrupts;
  while(1)
  {
    bzled_work();
    sendDataToScope();
    
    //一次中断查一次就够了
    wait();//decrease the power
  }
  
  
}