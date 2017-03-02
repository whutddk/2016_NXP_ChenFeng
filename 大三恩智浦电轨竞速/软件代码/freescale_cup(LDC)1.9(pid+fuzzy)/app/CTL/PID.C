#include "include.h"

#if PID
//=============PD方向调节======
void PID_out()
{
  if( ctl.S3010.error[0] > 70 || ctl.S3010.error[0] < -70 )       //大偏差 电感值小于207
  {  
    ctl.S3010.Kp = UartData[1];
    ctl.S3010.Kd = UartData[2];
  }
  else if( ctl.S3010.error[0] > 40 || ctl.S3010.error[0] < -40 )
  { 
//    ctl.S3010.Kp = 0;
//    ctl.S3010.Kd = 0;  
  }
  else   //直道
  {
//    ctl.S3010.Kp = 0;
//    ctl.S3010.Kd = 0;  
  }
  
  if( ctl.S3010.error[0] > 3 || ctl.S3010.error[0] < -3 ) 
  {
    ctl.S3010.result =(int16) 
      (ctl.S3010.Kp * ctl.S3010.error[0]
       + (ctl.S3010.Kd 
            *(0.6*(ctl.S3010.error[0]-ctl.S3010.error[1])
                 +0.2*(ctl.S3010.error[1]-ctl.S3010.error[2])
                   +0.2*(ctl.S3010.error[2]-ctl.S3010.error[3]))));
    
    ctl.S3010.error[3]=ctl.S3010.error[2];
    ctl.S3010.error[2]=ctl.S3010.error[1];
    ctl.S3010.error[1]=ctl.S3010.error[0];
  }
  else
  { 
    ctl.S3010.result = 0;
  }
  

  if( ctl.S3010.result > 200 )
  {
    ctl.S3010.result = 200;
  }
  
  else if(ctl.S3010.result < -200)
  {
    ctl.S3010.result = -200;
  }

}
#endif