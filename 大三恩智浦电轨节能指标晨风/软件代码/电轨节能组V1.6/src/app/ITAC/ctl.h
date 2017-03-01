#ifndef _CTL_H_
#define _CTL_H_

struct _LDC
{
  int32 offset[3];
  int32 measure[3];
  int32 collect[3];
  int32 search[3];
  int16 error[3] ;
  
  int16 max[3];
  int16 min[3];
};
  
struct _ADCI
{
  uint8 offset[2];
  int16 measure[2];

};
struct _pid
{
  int16 cur;
  int16 aim;
  float Kp;
  float Ki;
  float Kd;
  
  float Kp_S;
  float Kp_M;
  float Kp_B;
  float Kd_S;
  float Kd_M;
  float Kd_B;
  
  float result;
  float out;
  float error[4];
};

struct _loop
{
  struct _pid core;   //电流环
  struct _pid shell;  //速度环
};

struct _ctl
{
 struct _loop left;
 struct _loop rigt;
};

extern struct _ctl ctl;
extern struct _LDC LDC;
extern struct _ADCI ADCI;

extern void control();
extern void sensor();
#endif

