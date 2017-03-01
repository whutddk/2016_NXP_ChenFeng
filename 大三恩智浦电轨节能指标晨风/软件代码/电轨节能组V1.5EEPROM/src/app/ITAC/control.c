#include "include.h"

struct _ctl ctl;
struct _LDC LDC;
struct _ADCI ADCI;

void sensor()
{
  //电流采样
//  ADCI.measure[0] = ad_sum(ADC0_SE9, ADC_8bit, 3) - ADCI.offset[0];
//  ADCI.measure[1] = ad_sum(ADC0_SE12, ADC_8bit, 3) - ADCI.offset[1];
//
//  //    LDC检测
  //LDC1614_read_meas();
}

void record()
{
  //At24c02Write(uint8 addr,uint8 dat);
}


void control()
{
 
}

