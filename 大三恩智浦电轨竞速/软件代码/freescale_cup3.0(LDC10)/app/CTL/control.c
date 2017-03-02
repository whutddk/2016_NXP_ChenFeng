//���Ʋ���ͨ�ô���
#include "include.h"

struct _ctl ctl;

void CTL_SEN_init()//���Ʋ�����ʼ��
{
  ctl.S3010.Kp_S = 0;
  ctl.S3010.Kp_B = 0;
  
  ctl.S3010.Kd_S = 0;
  ctl.S3010.Kd_B = 0;
  
  ctl.motto.aim = 0;
  
  ctl.motto.Kp = 2.25;
  ctl.motto.Ki = 0.6;
  
  ctl.motto.out = 0;
   
  line.pos = 0;
  sensor.max[0] = 128;  
  sensor.max[1] = 120;
}


//�����жϺ���
void CTL_isr()//����ϵͳ���� //10ms
{
  
  static uint8 cnt = 0;
  
  cnt++;
  

  DateAnalyse();
  
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
    
    
    LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, 1543 );
    
  }
  //�˴��Ǵ�������
  safty_check();
  
      sendDataToScope();
}