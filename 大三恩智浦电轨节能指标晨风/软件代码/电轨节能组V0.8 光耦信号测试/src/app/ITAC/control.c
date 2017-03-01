#include "include.h"

struct _ctl ctl;
struct _LDC LDC;
struct _ADCI ADCI;

void para_init()
{
  LDC.max[0] =577;
  LDC.max[1] = 568;  
  LDC.max[2] = 548;  
  
  LDC.min[0] = -5793;
  LDC.min[1] = -555;  
  LDC.min[2] = -582;
//  
  LDC.offset[0]=-49;// -901;
  LDC.offset[1]= -48;//-850;
  LDC.offset[2]= -1059;//-1389;
  
  ctl.left.shell.Kp = .5;
  ctl.rigt.shell.Kp = .5;
  ctl.left.shell.Ki = 3.;
  ctl.rigt.shell.Ki = 3.;
  

}



double dir_KP = 0.05;
double dir_KD = 0.;
void dir_ctl()
{
  ctl.left.shell.aim = 20 - dir_KP * LDC.pos ;
  ctl.rigt.shell.aim = 20 + dir_KP * LDC.pos ;
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

