#ifndef _SENSOR_H_
#define _SENSOR_H_


struct _line
{
  boolean flag1;
  boolean flag2;   //当作布尔标志，丢线

  int16 pos[4];      //最终处理认定位置 
};


struct _sensor
{
  
  int32 offset[3];
  int16 measure[3];
  
  int32 search[3];
  int16 error[3] ;
  
  float max[3];
  float min[3];
  
};


extern struct _line line;
extern struct _sensor sensor;

void sensor_isr();

void sensor_offset();
void DateAnalyse();

#endif
