#include "include.h"

uint8 flag_stop = 0;

void main()
{
  DisableInterrupts;
  
  bspinit();
  
  
  

  
  EnableInterrupts;
  while(1)
  {
    bzled_work();
    sendDataToScope();
    
    //һ���жϲ�һ�ξ͹���
    wait();//decrease the power
  }
  
  
}