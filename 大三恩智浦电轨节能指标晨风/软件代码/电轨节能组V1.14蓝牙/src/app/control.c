#include "include.h"

struct _ctl ctl;
struct _LDC LDC;
//struct _ADCI ADCI;

void para_init()
{
  LDC.max[0] =340;
  LDC.max[1] = 340;  
  LDC.max[2] = 345;  
  
  LDC.min[0] = -330;
  LDC.min[1] = -345;  
  LDC.min[2] = -335;
  
  LDC.offset[0] = 54315;// -901;
  LDC.offset[1] = 39822;//-850;
  LDC.offset[2] = 61987;//-1389;
  
  ctl.left.Kp = 0.75;
  ctl.rigt.Kp = 0.75;
  ctl.left.Ki = 1.75;
  ctl.rigt.Ki = 1.75;
  
  ctl.ldc.Kp = 0.60;
  ctl.ldc.Ki = 0.0;
  ctl.ldc.Kd = 0.0005;
  ctl.ldc.aim = 155;
  
  ctl.flag_start = 0;
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
      ctl.left.aim = (int16)(ctl.ldc.aim - ctl.ldc.out);
      ctl.rigt.aim = (int16)(ctl.ldc.aim + ctl.ldc.out);
}

void control()
{
  if ( ctl.flag_start )
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
  }
  else
  {
    ctl.left.out = 0;
    ctl.rigt.out = 0;
  }
  motor_out();
  
}

