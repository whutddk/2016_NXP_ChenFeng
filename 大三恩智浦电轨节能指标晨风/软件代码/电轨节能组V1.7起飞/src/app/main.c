#include "include.h"

uint8 flag_stop = 0;
uint8 flag_offset = 0;

void main()
{
  DisableInterrupts;
  
  bspinit();
  
  //adc_offset();

  STATUE_get();
  
  LDC.max[0] =592;
  LDC.max[1] = 568;  
  LDC.max[2] = 578;  
  
  LDC.min[0] = -563;
  LDC.min[1] = -580;  
  LDC.min[2] = -572;
   LDC.offset[0]= -901;
   LDC.offset[1]= -850;
   LDC.offset[2]= -1389;
//  while(!flag_offset);
//  sensor_isr();
  
    ctl.left.core.Kp = 7;
  ctl.rigt.core.Kp = 7;
  
  EnableInterrupts;
  while(1)
  {
    bzled_work();
    sendDataToScope();
    
    //一次中断查一次就够了
    wait();//decrease the power
  }
  
  
}