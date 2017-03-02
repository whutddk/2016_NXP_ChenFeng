#ifndef _SENSOR_H_
#define _SENSOR_H_


struct _line
{
  int8 flag_road;
  int8 flag_lose;   //当作布尔标志，丢线

  int16 pos;      //最终处理认定位置 
};


struct _sensor
{
  
  int32 offset[2];
  int16 measure[4];
  
  
  int32 search[2];
  int16 error ;
  
  float max[2];
  
};


extern struct _line line;
extern struct _sensor sensor;

void sensor_isr();

void sensor_offset();
void DateAnalyse();

#endif
