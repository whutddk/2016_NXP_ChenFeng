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
  
  LDC.offset[0]=0;// -901;
  LDC.offset[1]= 0;//-850;
  LDC.offset[2]= 0;//-1389;
  
  ctl.left.shell.Kp = 1.25;
  ctl.rigt.shell.Kp = 1.25;
  ctl.left.shell.Ki = 0.85;
  ctl.rigt.shell.Ki = 0.85;
}

double dir_KP = 0.085;
double dir_KD = 0.001;
void dir_ctl()
{
  int32 temp = 0;
  temp = dir_KP * ( LDC.pos  );
  if ( temp >= 0 )
  {
  ctl.left.shell.aim = 70 - temp ;
  ctl.rigt.shell.aim = 70 + temp * 0.3 ;
  }
  else
  {
    ctl.left.shell.aim = 70 - temp * 0.3  ;
    ctl.rigt.shell.aim = 70 + temp;
  }
}

void control()
{
  dir_ctl();
  ASR(); 
  
  if( ctl.left.shell.out > 1000  )
  {
    ctl.left.shell.out = 1000;
  }
    if( ctl.left.shell.out < 0  )
  {
    ctl.left.shell.out = 0;
  }
    if( ctl.rigt.shell.out > 1000  )
  {
    ctl.rigt.shell.out = 1000;
  }
    if( ctl.rigt.shell.out < 0  )
  {
    ctl.rigt.shell.out = 0;
  }
  
  ctl.left.core.out = ctl.left.shell.out;
  ctl.rigt.core.out = ctl.rigt.shell.out;
  
  motor_out();
}

