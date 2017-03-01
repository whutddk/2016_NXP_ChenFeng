#include "include.h"

uint8 flag_stop = 0;
uint8 flag_offset = 0;

void main()
{
  DisableInterrupts;
  
  bspinit();
  para_init();
  
  
  //按中间键为人工开机，需要取零偏，标定
  //不按键为正在跑的启动，从flash读取零偏代入
  switch(read_key())
  {
    case(2):power_on();break;
    
    default:go_on();break;
  }
  
  //sensor_offset();
  
  //OLED_CLS();
  EnableInterrupts;
  while(1)
  {
    //bzled_work();
    //sendDataToScope();
    //    OLED_P8x16Str(0, 0, "1");
    //    OLED_PrintInt16(10, 0, LDC.error[0]);
    //    OLED_P8x16Str(0, 2, "2");
    //    OLED_PrintInt16(10, 2, LDC.error[1]);
    //    OLED_P8x16Str(0, 4, "3");
    //    OLED_PrintInt16(10, 4, LDC.error[2]);
    //    OLED_P8x16Str(0, 6, "P");
    //    OLED_PrintInt16(10, 6, LDC.pos);
    wait();//decrease the power
  }
  
  
}