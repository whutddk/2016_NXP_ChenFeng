#ifndef _CTL_H_
#define _CTL_H_

struct _pid
{
  int16 sped_cur;
  int16 aim;
  int16 v;
  int16 v_error;
  float Kp;
  float Ki;
  float Kd;
  
  float Kp_S;
  float Kp_M;
  float Kp_B;
  float Kd_S;
  float Kd_M;
  float Kd_B;
  
  float result[2];
  float out;
  float error[4];
  int16 distance;
  int32 ramp;

  float KP;
  float KD;
};

struct _ctl
{
 struct _pid S3010;
 struct _pid motto;
};


extern struct _ctl ctl;

extern uint8 dec_sec ; //定时跑的时间
extern uint8 flag_stop; //急停标志位
extern uint8 flag_bihuan;//开环标志位
extern boolean ramp_Enable;
extern uint8 ramp_cnt;
extern boolean cross_Enable;
extern boolean flag_cross;
extern boolean speed_up_Enable;


void CTL_SEN_init();//控制参数初始化
void S3010_CTL();//方向控制
void safty_check(); //安全检查

void timer_debug();//设定定时时间

void motto_set();//电机最终输出
void ctl_sped(); //速度控制，增量式PI控制
void motto_getsped();//速度采集
int16 abs(float A);


#endif

