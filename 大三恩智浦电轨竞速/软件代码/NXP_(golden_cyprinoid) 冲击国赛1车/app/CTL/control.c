//���Ʋ���ͨ�ô���
#include "include.h"

struct _ctl ctl;

void CTL_SEN_init()//���Ʋ�����ʼ��
{
  ctl.S3010.Kp_S = 0.39;
  //  ctl.S3010.Kp_B = 0;
  //  
  ctl.S3010.Kd_S = 0.3;
  //  ctl.S3010.Kd_B = 0;
  
  ctl.motto.Kp_B = 0.75;
  ctl.motto.Kd_B = 10;
  ctl.motto.Kp_S = 0.4;
  ctl.motto.Kd_S = 1.2;
  
  
  ctl.motto.v_error = 0;
  
  ctl.motto.v = 675;
  
  ctl.motto.Kp = 2;
  ctl.motto.Ki = 35;
  
  ctl.motto.out = 0;
   
  line.pos = 0;
  
  sensor.max[0] = 258;
  sensor.max[1] = 253;  
  sensor.max[2] = 252;  

  sensor.min[0] = -273;
  sensor.min[1] = -270;  //249
  sensor.min[2] = -282;
  
  ctl.motto.distance = 5000;
  GUI.para.endline_time = 15 ;
  
}


boolean flag_bihuan = 1;
boolean ramp_Enable = 1;
boolean flag_ramp;
boolean cross_Enable = 1;
boolean flag_cross;


//�����жϺ���
void CTL_isr()//����ϵͳ���� //20ms
{
  //LPLD_GPIO_Output_b(PTD,1,0);
  static uint8 cnt = 0;
  
  cnt++;
  /*LDC_GETDATA*/
  
  
  LDC1614_read_meas();
  
  sensor.data[0] = LDC_data[0] - 1589300;
  sensor.data[0] /= 35;
  sensor.data[0] -= sensor.offset[0];
  
  sensor.data[1] = LDC_data[1] - 1559900;
  sensor.data[1] /= 35;
  sensor.data[1] -= sensor.offset[1];
  
  sensor.data[3] = sensor.data[1] + 15;   //�µ�ʱʹ��
  if(sensor.data[3] < 1)
  {
    sensor.data[3] = 1;
  }
  
  sensor.data[2] = LDC_data[2] - 1570500;
  sensor.data[2] /= 35;
  sensor.data[2] -= sensor.offset[2];
  
  
  temp = LDC_READ(0x08);  
  if(LDC_data[0]==0 && LDC_data[1]==0 && LDC_data[2]==0)
  {
    BZ_ON;
    ctl.motto.v = 300;
    LDC1614_init();
    LDC1614_start_meas();
    LPLD_LPTMR_DelayMs(10);
  }
  
  push(13,temp);
  
  if(cross_Enable == 1)     //ʮ��
  {
    if(sensor.data[0] > 35 && sensor.data[2] > 35)
      flag_cross = 1;
    
    else
    {
      flag_cross = 0;
    }
  }
  
  
  if(ramp_Enable == 1)
  {
    ramp();
  }
  
//  push(13,ramp_cnt);
  push(14,sensor.data[0] );
  push(15,sensor.data[3] );
  push(16,sensor.data[2] );
  
  if(1 == flag_ramp)
  {
    //BZ_ON;
    
    line.flag_lose = 70; //�µ�
    if(sensor.data[3] > 25)
    {
      line.pos = 25*(sensor.data[2] - sensor.data[0])/sensor.data[3];
    }
    else
    {
      
    }
  }
  else
  {
    DateAnalyse();
  }
  
  
  if(line.pos > 210)//ƫ���޷�
    line.pos = 210;
  else if (line.pos < -210)
    line.pos = -210;
  
  push(3,line.pos);  
  
  if ( flag_stop == 0 ) //�޼�ͣ��־
  {
    S3010_CTL();
    
    //20ms�ж���
    if ( cnt >= 4 )
    {
      cnt = 0;
      LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.out ); 
      
    }
    
    motto_getsped();//����
    
    if(1 == flag_bihuan)  //������־λ
    {
      ctl_sped();//�ٶȿ���
    }
    motto_set();//������    
    
  }
  else
  {
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );
        
  }
  //�˴��Ǵ�������
  safty_check();
  
// LPLD_GPIO_Output_b(PTD,1,1);

}