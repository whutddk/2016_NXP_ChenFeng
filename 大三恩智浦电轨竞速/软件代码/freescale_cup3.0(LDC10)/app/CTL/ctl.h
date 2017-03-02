#ifndef _CTL_H_
#define _CTL_H_

struct _pid
{
  int16 sped_cur;
  int16 aim;
  float Kp;
  float Ki;
  float Kd;
  
  float Kp_S;
  float Kp_B;
  float Kd_S;
  float Kd_B;
    
  float result[2];
  float out;
  float error[2];
  int16 distance;
  
  
};

struct _ctl
{
 struct _pid S3010;
 struct _pid motto;
};


extern struct _ctl ctl;

extern uint8 dec_sec ; //定时跑的时间
extern uint8 flag_stop; //急停标志位


void CTL_SEN_init();//控制参数初始化
void S3010_CTL();//方向控制
void safty_check(); //安全检查

void timer_debug();//设定定时时间

void motto_set();//电机最终输出
void ctl_sped(); //速度控制，增量式PI控制
void motto_getsped();//速度采集




#endif

