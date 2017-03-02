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

extern uint8 dec_sec ; //��ʱ�ܵ�ʱ��
extern uint8 flag_stop; //��ͣ��־λ
extern uint8 flag_bihuan;//������־λ
extern boolean ramp_Enable;
extern uint8 ramp_cnt;
extern boolean cross_Enable;
extern boolean flag_cross;
extern boolean speed_up_Enable;


void CTL_SEN_init();//���Ʋ�����ʼ��
void S3010_CTL();//�������
void safty_check(); //��ȫ���

void timer_debug();//�趨��ʱʱ��

void motto_set();//����������
void ctl_sped(); //�ٶȿ��ƣ�����ʽPI����
void motto_getsped();//�ٶȲɼ�
int16 abs(float A);


#endif

