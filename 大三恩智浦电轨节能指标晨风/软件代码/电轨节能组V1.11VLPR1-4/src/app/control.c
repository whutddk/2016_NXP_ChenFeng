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
  
  LDC.offset[0] = 2264213;// -901;
  LDC.offset[1] = 2318322;//-850;
  LDC.offset[2] = 2281356;//-1389;
  
  ctl.left.Kp = 1.125;
  ctl.rigt.Kp = 1.125;
  ctl.left.Ki = 0.425;
  ctl.rigt.Ki = 0.425;
  
  ctl.ldc.Kp = 0.10;
  ctl.ldc.Ki = 0.0;
  ctl.ldc.Kd = 0.0005;
  ctl.ldc.aim = 85;
}

void dir_ctl()
{
  /*增量pid差速*/
    ctl.ldc.error[0] = LDC.pos; 
    ctl.ldc.result = ctl.ldc.Kp *  ctl.ldc.error[0];
    ctl.ldc.result += ctl.ldc.Kd * ( ctl.ldc.error[0] - ctl.ldc.error[1]);
    
    ctl.ldc.error[1] = ctl.ldc.error[0];
    ctl.ldc.out = ctl.ldc.result;
    
  /*输出限幅*/
    if(ctl.ldc.out >= 70) {ctl.ldc.out = 70;}
    if(ctl.ldc.out <=-70) {ctl.ldc.out =-70;}
//    if(ctl.ldc.shell.result >= 70) {ctl.ldc.shell.result = 70;}
//    if(ctl.ldc.shell.result <=-70) {ctl.ldc.shell.result =-70;}
    
  /*并联输出*/
    if(ctl.ldc.out > 0) {ctl.left.aim = (int16)(ctl.ldc.aim - ctl.ldc.out);}
    if(ctl.ldc.out < 0) {ctl.rigt.aim = (int16)(ctl.ldc.aim + ctl.ldc.out);}
  
}

void control()
{
  dir_ctl();
  ASR(); 
  
  if( ctl.left.out > 1000  ) {ctl.left.out = 1000;}
  if( ctl.left.out < 0  )    {ctl.left.out = 0;}
  if( ctl.rigt.out > 1000  ) {ctl.rigt.out = 1000;}
  if( ctl.rigt.out < 0  )    {ctl.rigt.out = 0;}
  
  if(LDC.pos >= 1500 || LDC.pos <= -1500) 
  {
    bz_set(warn); 
  }

  motor_out();
}

