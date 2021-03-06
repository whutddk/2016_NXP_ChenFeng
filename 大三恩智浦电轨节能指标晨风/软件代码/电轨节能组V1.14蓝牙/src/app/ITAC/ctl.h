#ifndef _CTL_H_
#define _CTL_H_

struct _LDC
{
  int32 data[3];
  int32 offset[3];
  int32 measure[3];
  int32 collect[3];
  int32 search[3];
  int32 error[3] ;
  
  int16 max[3];
  int16 min[3];
  
  uint8 IsLeftMiss;
  uint8 IsRigtMiss;
  uint8 IsCross;
  uint8 IsRampUp;
  uint8 IsRampDown;
  uint8 flag_road;
  uint8 flag_lose;
  uint8 flag_road_last;
  uint8 pos_d;
  
  int32 pos;
  int16 pos_last;

};
  
//struct _ADCI
//{
//  uint8 offset[2];
//  int16 measure[2];
//
//};
struct _pid
{
  int32 cur;
  int16 aim;
  double Kp;
  double Ki;
  double Kd;
  
  float Kp_S;
  float Kp_M;
  float Kp_B;
  float Kd_S;
  float Kd_M;
  float Kd_B;
  
  double result;
  double out;
  double error[4];
};

struct _ctl
{
 struct _pid left;
 struct _pid rigt;
 struct _pid ldc;
 uint8 flag_start;
};

extern struct _ctl ctl;
extern struct _LDC LDC;
//extern struct _ADCI ADCI;

extern void speed_get();
extern void sensor_offset();
extern void sensor_isr();
extern void control();
extern void sensor();
extern void del_sensor();
extern void del_sensor_new();
extern void ACR();
extern void ASR();
extern void motor_out();
extern void para_init();
#endif

