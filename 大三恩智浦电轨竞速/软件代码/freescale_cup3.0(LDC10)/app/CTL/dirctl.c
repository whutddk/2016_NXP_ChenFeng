//舵机位置控制
#include "include.h"

//方向控制


void S3010_CTL()
{
 
    ctl.S3010.Kp = ctl.S3010.Kp_S;
    ctl.S3010.Kd = ctl.S3010.Kd_S;

    ctl.S3010.error[1] = line.pos - 0;
  
  
  
  ctl.S3010.result[1] = ctl.S3010.Kp * ctl.S3010.error[1];
  ctl.S3010.result[1] += ctl.S3010.Kd * ( ctl.S3010.result[1] - ctl.S3010.result[0] );
  //微分先行
  ctl.S3010.result[0] = ctl.S3010.result[1];
  
 
  ctl.S3010.out = ctl.S3010.result[0] + 1543;
  if ( ctl.S3010.out > 1720 )
  {
    ctl.S3010.out = 1720;
  }
  if ( ctl.S3010.out < 1365)
  {
    ctl.S3010.out = 1365;
  }
  
    
  LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.out ); 
  
  push(15,ctl.S3010.out);
  //最后控制结果的输出

}
