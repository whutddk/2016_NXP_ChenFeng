#include "include.h"

struct _ctl ctl;
struct _LDC LDC;
struct _ADCI ADCI;

void para_init()
{
  LDC.max[0] =555;
  LDC.max[1] = 553;  
  LDC.max[2] = 575;  
  
  LDC.min[0] = -489;
  LDC.min[1] = -544;  
  LDC.min[2] = -565;
  
  LDC.offset[0]=2264213;// -901;
  LDC.offset[1]= 2318322;//-850;
  LDC.offset[2]= 2281356;//-1389;
  
  ctl.left.shell.Kp = 1.125;
  ctl.rigt.shell.Kp = 1.125;
  ctl.left.shell.Ki = 0.425;
  ctl.rigt.shell.Ki = 0.425;
  
  ctl.ldc.shell.Kp = 0.10;
  ctl.ldc.shell.Ki = 0.0;
  ctl.ldc.shell.Kd = 0.0005;
  ctl.ldc.shell.t = 0.02;
  ctl.ldc.shell.aim = 85;
}

void dir_ctl()
{
  /*增量pid差速*/
    ctl.ldc.shell.error[0] = LDC.pos; 
    ctl.ldc.shell.result = ctl.ldc.shell.Kp *  ctl.ldc.shell.error[0];
    ctl.ldc.shell.result += ctl.ldc.shell.Kd * ( ctl.ldc.shell.error[0] - ctl.ldc.shell.error[1]);
    
    ctl.ldc.shell.error[1] = ctl.ldc.shell.error[0];
    ctl.ldc.shell.out = ctl.ldc.shell.result;
    
  /*输出限幅*/
    if(ctl.ldc.shell.out >= 70) {ctl.ldc.shell.out = 70;}
    if(ctl.ldc.shell.out <=-70) {ctl.ldc.shell.out =-70;}
//    if(ctl.ldc.shell.result >= 70) {ctl.ldc.shell.result = 70;}
//    if(ctl.ldc.shell.result <=-70) {ctl.ldc.shell.result =-70;}
    
  /*并联输出*/
    if(ctl.ldc.shell.out > 0) {ctl.left.shell.aim = ctl.ldc.shell.aim - ctl.ldc.shell.out;}
    if(ctl.ldc.shell.out < 0) {ctl.rigt.shell.aim = ctl.ldc.shell.aim + ctl.ldc.shell.out;}
  
}

void control()
{
  dir_ctl();
  ASR(); 
  
  if( ctl.left.shell.out > 1000  ) {ctl.left.shell.out = 1000;}
  if( ctl.left.shell.out < 0  )    {ctl.left.shell.out = 0;}
  if( ctl.rigt.shell.out > 1000  ) {ctl.rigt.shell.out = 1000;}
  if( ctl.rigt.shell.out < 0  )    {ctl.rigt.shell.out = 0;}
  
  if(LDC.pos >= 1500 || LDC.pos <= -1500) 
  {
    bz_set(warn); 
  }

  ctl.left.core.out = ctl.left.shell.out;
  ctl.rigt.core.out = ctl.rigt.shell.out;
  
  motor_out();
}

