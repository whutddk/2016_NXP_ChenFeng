#include "include.h"

//���Ϳ���Ƶ�ʣ����Ϳ���ǿ��

void motor_out()
{
  if ( ctl.left.out > 1000 )
  {
    ctl.left.out = 1000;
  }
  if ( ctl.rigt.out > 1000 )
  {
    ctl.rigt.out = 1000;
  }
  if ( ctl.left.out < 0 )
  {
    ctl.left.out = 0;
  }
  if ( ctl.rigt.out < 0 )
  {
    ctl.rigt.out = 0;
  }
  
  tpm_pwm_duty(TPM0, TPM_CH0, (uint32)ctl.left.out);
  tpm_pwm_duty(TPM0, TPM_CH3, (uint32)ctl.rigt.out);
}

//void ACR() 
//{
//  //��������������޷�
//  //XXXXXXXXXXXXXXXXXXXXXXXXXXXX
//  //
//  
//  //�ɼ�
//  ctl.left.core.cur = ADCI.measure[0];
//  ctl.rigt.core.cur = ADCI.measure[1];
//  ctl.left.core.aim = (int16)(ctl.left.shell.out);
//  ctl.rigt.shell.aim = (int16)(ctl.rigt.shell.out);
//  
//  
//  //ȡƫ��
//  ctl.left.core.error[0] = ctl.left.core.cur - ctl.left.core.aim;
//  ctl.rigt.core.error[0] = ctl.rigt.core.cur - ctl.rigt.core.aim;
//  
//  //����ACR
//  ctl.left.core.result =  ctl.left.core.Kp * (ctl.left.core.error[0] - ctl.left.core.error[1]);
//  ctl.left.core.result += ctl.left.core.Ki * ctl.left.core.error[0];
//  
//  //����ACR
//  ctl.rigt.core.result =  ctl.rigt.core.Kp * (ctl.rigt.core.error[0] - ctl.rigt.core.error[1]);
//  ctl.rigt.core.result += ctl.rigt.core.Ki * ctl.rigt.core.error[0];
//  
//  //����
//  ctl.left.core.error[1] = ctl.left.core.error[0];
//  ctl.rigt.core.error[1] = ctl.rigt.core.error[0];
//  
//  //����
//  ctl.left.core.out += ctl.left.core.result;
//  ctl.rigt.core.out += ctl.rigt.core.result;
//}

void ASR()
{
  speed_get();
  
  ctl.left.error[0] = ctl.left.aim - ctl.left.cur ;
  ctl.rigt.error[0] = ctl.rigt.aim - ctl.rigt.cur ;
  
  ctl.left.result = ctl.left.Kp * (ctl.left.error[0] - ctl.left.error[1]);
  ctl.left.result += ctl.left.Ki * ctl.left.error[0];
  ctl.rigt.result = ctl.rigt.Kp * (ctl.rigt.error[0] - ctl.rigt.error[1]);
  ctl.rigt.result += ctl.rigt.Ki * ctl.rigt.error[0];
  
  ctl.left.error[1] = ctl.left.error[0];
  ctl.rigt.error[1] = ctl.rigt.error[0];
  
  ctl.left.out += ctl.left.result;
  ctl.rigt.out += ctl.rigt.result;
  
  
  //�µ�
    if(1 == flag_ramp)     //�µ�δ�����رգ���һ�������ر�
  {
    ctl.ldc.ramp += (ctl.left.cur + ctl.rigt.cur)/2 ;
    
    if(ctl.ldc.ramp > 18000)    //�ƾ���ǿ����0
    {
      flag_ramp = 0;
      BZ_OFF;
      ctl.ldc.ramp = 0;
      ramp_Enable = 0;
      //bz_set(warn);
      //ramp_cnt = 0;
    }
  }
  else if(ramp_Enable == 0)        //����Լ2m�����һ���µ�
  {
    
    ctl.ldc.ramp += (ctl.left.cur + ctl.rigt.cur)/2 ;
    
    if(ctl.ldc.ramp > 18000)
    {
      ctl.ldc.ramp = 0;
      ramp_Enable = 1;
    }
  }
  
//  push(0, ctl.left.cur);
//  push(1, ctl.rigt.cur);
  push(4 ,ctl.left.cur);
  push(5 ,ctl.rigt.cur);
}
