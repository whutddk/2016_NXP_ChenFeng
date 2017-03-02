#ifndef _SENSOR_H_
#define _SENSOR_H_

#include "I2C.h"

struct _line
{
  int8 flag_road;
  int8 flag_road_last;
  
  int8 flag_lose;  //函数标志
  
  boolean flag_ramp;
  uint8 ramp;
  
  int16 pos_d;
  int16 pos_last;
  int16 pos;      //最终处理认定位置 
};


struct _sensor
{
  
  int32 offset[4];
  int32 measure[3];
  int32 collect[3];
  int32 search[3];
  int32 data[4];
  int16 error[3] ;
  int16 data_sum;
  
  int16 max[3];
  int16 min[3];
  int16 data_buff[6];
  
  
};

extern boolean flag_ramp;

extern struct _line line;
extern struct _sensor sensor;

void sensor_isr();

void sensor_offset();
void DateAnalyse();
void ramp();
#endif
