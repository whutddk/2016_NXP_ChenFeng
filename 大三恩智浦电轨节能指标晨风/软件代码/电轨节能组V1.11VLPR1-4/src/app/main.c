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
  
  OLED_CLS();
  EnableInterrupts;
  while(1)
  {
    bzled_work();
    //sendDataToScope();
//    OLED_P8x16Str(0, 0, "1");
//    OLED_PrintInt16(10, 0, LDC.data[0]);
//    OLED_P8x16Str(0, 2, "2");
//    OLED_PrintInt16(10, 2, LDC.data[1]);
//    OLED_P8x16Str(0, 4, "3");
//    OLED_PrintInt16(10, 4, LDC.data[2]);
//    OLED_P8x16Str(0, 6, "P");
//    OLED_PrintInt16(10, 6, LDC.pos);
    wait();//decrease the power
  }
  
  
}