//舵机位置控制
#include "include.h"

//方向控制

void S3010_CTL()
{
  ctl.S3010.error[1] = line.pos - 0;
  ctl.S3010.result = ctl.S3010.Kp * ctl.S3010.error[1];
  ctl.S3010.result += ctl.S3010.Kd * ( ctl.S3010.error[1] - ctl.S3010.error[0] );
  
  ctl.S3010.error[0] = ctl.S3010.error[1];
  
  ctl.S3010.result += 1520;
  if ( ctl.S3010.result > 1800 )
  {
    ctl.S3010.result = 1800;
  }
  if ( ctl.S3010.result < 900 )
  {
    ctl.S3010.result = 900;
  }
  
  LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.result ); ; //最后控制结果的输出
}