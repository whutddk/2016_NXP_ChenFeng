#ifndef _CTL_H_
#define _CTL_H_

struct _LDC
{
  int32 data[4];
  int32 offset[3];
  int32 measure[3];
  int32 collect[3];
  int32 search[3];
  int32 error[3] ;
  int16 data_buff[6];
  int16 data_sum;
  
  int16 max[3];
  int16 min[3];
  

  uint8 flag_road;
  uint8 flag_lose;
  uint8 flag_road_last;
  uint8 pos_d;

  
  int32 pos;
  int16 pos_last;
  
  
  
};
  
struct _ADCI
{
  uint8 offset[2];
  int16 measure[2];

};
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
  int32 ramp;
  
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
extern struct _ADCI ADCI;
extern uint8 ramp_Enable;
extern uint8 flag_ramp;
extern uint8 flag_cross;
extern uint8 ctl_error;
extern uint8 speed_down_flag;
extern uint32 flag_startlinecount;
extern uint32 flag_stoplinecount;

void speed_get();
extern void sensor_offset();
void sensor_isr();
extern void control();
extern void sensor();;
void del_sensor();
void del_sensor_new();
void ACR() ;
void ASR();
void motor_out();
void para_init();
void ramp();
int16 abs(float A);
void end_line();
#endif

