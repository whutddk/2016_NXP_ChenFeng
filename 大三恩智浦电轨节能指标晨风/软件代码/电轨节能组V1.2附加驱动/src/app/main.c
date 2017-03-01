#include "include.h"

uint8 flag_stop = 0;

void main()
{
  DisableInterrupts;
  
  bspinit();
  
  //adc_offset();
  
  pit_delay_ms(PIT1,1000);
  
  bz_set(ready);
  
  EnableInterrupts;
  while(1)
  {
    bzled_work();
    sendDataToScope();
    //一次中断查一次就够了
    wait();//decrease the power
  }
  
  
}