#include "include.h"

//降低控制频率，降低控制强度

void motor_out()
{
  if ( ctl.left.core.out > 1000 )
  {
    ctl.left.core.out = 1000;
  }
    if ( ctl.rigt.core.out > 1000 )
  {
    ctl.rigt.core.out = 1000;
  }
    if ( ctl.left.core.out < 0 )
  {
    ctl.left.core.out = 0;
  }
    if ( ctl.rigt.core.out < 0 )
  {
    ctl.rigt.core.out = 0;
  }
  
  
  
  tpm_pwm_init(TPM0, TPM_CH0, 10000,ctl.left.core.out);
  tpm_pwm_init(TPM0, TPM_CH3, 10000,ctl.rigt.core.out);
}

void ACR() 
{
  //这里加入电流输出限幅
  //XXXXXXXXXXXXXXXXXXXXXXXXXXXX
  //
  
  //采集
  ctl.left.core.cur = ADCI.measure[0];
  ctl.rigt.core.cur = ADCI.measure[1];
  ctl.left.core.aim = (int16)(ctl.left.shell.out);
  ctl.rigt.shell.aim = (int16)(ctl.rigt.shell.out);
  
 
 //取偏差
 ctl.left.core.error[0] = ctl.left.core.cur - ctl.left.core.aim;
 ctl.rigt.core.error[0] = ctl.rigt.core.cur - ctl.rigt.core.aim;
 
 //左轮ACR
 ctl.left.core.result =  ctl.left.core.Kp * (ctl.left.core.error[0] - ctl.left.core.error[1]);
 ctl.left.core.result += ctl.left.core.Ki * ctl.left.core.error[0];
 
 //右轮ACR
 ctl.rigt.core.result =  ctl.rigt.core.Kp * (ctl.rigt.core.error[0] - ctl.rigt.core.error[1]);
 ctl.rigt.core.result += ctl.rigt.core.Ki * ctl.rigt.core.error[0];
 
 //保存
 ctl.left.core.error[1] = ctl.left.core.error[0];
 ctl.rigt.core.error[1] = ctl.rigt.core.error[0];
 
 //增量
 ctl.left.core.out += ctl.left.core.result;
 ctl.rigt.core.out += ctl.rigt.core.result;
}

void ASR()
{
  ctl.left.shell.cur = tpm_pulse_get (TPM1);
  ctl.rigt.shell.cur = tpm_pulse_get (TPM2);
  
  ctl.left.shell.error[0] = ctl.left.shell.cur - ctl.left.shell.aim;
  ctl.rigt.shell.error[0] = ctl.rigt.shell.cur - ctl.rigt.shell.aim;
  
  ctl.left.shell.result = ctl.left.shell.Kp * (ctl.left.shell.error[0] - ctl.left.shell.error[1]);
  ctl.rigt.shell.result = ctl.rigt.shell.Ki * ctl.rigt.shell.error[0];
  
  ctl.left.shell.error[1] = ctl.left.shell.error[0];
  ctl.rigt.shell.error[1] = ctl.rigt.shell.error[0];
  
  ctl.left.shell.out += ctl.left.shell.result;
  ctl.rigt.shell.out += ctl.rigt.shell.result;
}
