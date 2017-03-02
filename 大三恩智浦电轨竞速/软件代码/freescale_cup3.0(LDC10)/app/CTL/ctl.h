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

extern uint8 dec_sec ; //��ʱ�ܵ�ʱ��
extern uint8 flag_stop; //��ͣ��־λ


void CTL_SEN_init();//���Ʋ�����ʼ��
void S3010_CTL();//�������
void safty_check(); //��ȫ���

void timer_debug();//�趨��ʱʱ��

void motto_set();//����������
void ctl_sped(); //�ٶȿ��ƣ�����ʽPI����
void motto_getsped();//�ٶȲɼ�




#endif

