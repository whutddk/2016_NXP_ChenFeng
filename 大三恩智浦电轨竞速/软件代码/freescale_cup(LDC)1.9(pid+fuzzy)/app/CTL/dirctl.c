//舵机位置控制
#include "include.h"

//方向控制

/*input(-100 +100)*/
/*output（1400 1575 1750）(-175 ~ +175)  */
void S3010_CTL()
{
   
  if ( line.pos[0] > 100 )
  {
    line.pos[0] =  100;
  }
  if ( line.pos[0] < -100 )
  {
    line.pos[0] = -100;
  }
  
  
  ctl.S3010.error[0] = -line.pos[0];
  
  if ( ctl.S3010.error[0] <= -200 || ctl.S3010.error[0] >= 200)
  {
    bz_set(warn);
    return;
  }
  
#if FUZZY
  ctl.S3010.result[1] = fuzzy_online(ctl.S3010.error[0] , (ctl.S3010.error[0] - ctl.S3010.error[1]) );
  ctl.S3010.result[1] *= 1.75;
  ctl.S3010.error[1] = ctl.S3010.error[0];
#endif
  
#if PID
  PID_out();
#endif
  
  ctl.S3010.out = ctl.S3010.result + 1350;
  if ( ctl.S3010.out > 1650 )
  {
    ctl.S3010.out = 1650;
  }
  if ( ctl.S3010.out < 1050)
  {
    ctl.S3010.out = 1050;
  }
  
    
  LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.out ); 
  
  
  //最后控制结果的输出

}
