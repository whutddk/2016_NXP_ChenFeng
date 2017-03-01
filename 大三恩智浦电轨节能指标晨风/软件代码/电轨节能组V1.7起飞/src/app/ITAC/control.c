#include "include.h"

struct _ctl ctl;
struct _LDC LDC;
struct _ADCI ADCI;

void dir_ctl()
{
  ctl.left.core.out = 700 + ctl.left.core.Kp * LDC.pos ;
  ctl.rigt.core.out = 700 - ctl.rigt.core.Kp * LDC.pos ;
}

void control()
{
  dir_ctl();
  motor_out();
}

