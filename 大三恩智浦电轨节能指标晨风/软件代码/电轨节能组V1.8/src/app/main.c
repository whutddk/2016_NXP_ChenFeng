#include "include.h"

uint8 flag_stop = 0;
uint8 flag_offset = 0;

void main()
{
  DisableInterrupts;
  
  bspinit();
  
  //adc_offset();
  
  STATUE_get();
  
  para_init();
  
//    while(!flag_offset);
//    sensor_isr();
  
  EnableInterrupts;
  //uart_getchar(FreeCarsUARTPort);
  while(1)
  {
    
    bzled_work();
    sendDataToScope();
    //一次中断查一次就够了
    wait();//decrease the power
  }
  
  
}