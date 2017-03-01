#include "include.h"

uint8 flag_stop = 0;

void main()
{
  DisableInterrupts;
  
  bspinit();
  
  bz_set(ready);
  
  EnableInterrupts;
  while(1)
  {
    bzled_work();
  }
  
  
}