//���Ʋ���ͨ�ô���
#include "include.h"

struct _ctl ctl;

void CTL_SEN_init()//���Ʋ�����ʼ��
{
  ctl.S3010.Kp = 0;
  ctl.S3010.Ki = 0;
  ctl.S3010.Kd = 0;
  
  ctl.motto.aim = 0;
  
  ctl.motto.Kp = 1.1;
  ctl.motto.Ki = 0.3;
  ctl.motto.Kd = 0;
  

  
  ctl.motto.out = 0;
  
  line.lose_cnt = 0;
  line.Hight = 0;
  line.flag_lose = 0;
  line.final = 0;
  line.cross = 0;
  line.pos = 0;
}


//�����жϺ���
void CTL_isr()//����ϵͳ���� //10ms
{
  static uint8 cnt = 0;

  cnt++;

  
  if ( flag_stop == 0 ) //�޼�ͣ��־
  {
    S3010_CTL();
    
    //20ms�ж���
    if ( cnt >= 2 )
    {
      cnt = 0;
      
      motto_getsped();//����
      ctl_sped();//�ٶȿ���
      motto_set();//������    
    }
    
  }
  else
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );

    
    LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, 1520 );
    
  }
  //�˴��Ǵ�������
  safty_check();
}