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
    //һ���жϲ�һ�ξ͹���
    wait();//decrease the power
  }
  
  
}