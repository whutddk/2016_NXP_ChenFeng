//舵机位置控制
#include "include.h"

//方向控制


void S3010_CTL()
{
  
  if(ctl.motto.v > 375 && 1 == flag_bihuan)
  {
    //155
    if(line.pos > 110 || line.pos < -110)     //大偏差
    {
      ctl.S3010.Kp = ctl.S3010.Kp_B;
      ctl.S3010.Kd = ctl.S3010.Kd_B;
      
      ctl.motto.KP = ctl.motto.Kp_B;
      ctl.motto.KD = ctl.motto.Kd_B;

    }
    else if(line.pos > 35 || line.pos < -35)  //中偏差
    {
      ctl.S3010.Kp = ctl.S3010.Kp_M;
      ctl.S3010.Kd = ctl.S3010.Kd_M;
      
      ctl.motto.KP = ctl.motto.Kp_B;
      ctl.motto.KD = ctl.motto.Kd_B;

    }
    else                                       //小偏差
    {
      ctl.S3010.Kp = ctl.S3010.Kp_S;
      ctl.S3010.Kd = ctl.S3010.Kd_S;
      
      
      ctl.motto.KP = ctl.motto.Kp_S;
      ctl.motto.KD = ctl.motto.Kd_S;
    }
    
  }
  
  else
  {
    ctl.S3010.Kp = ctl.S3010.Kp_S;
    ctl.S3010.Kd = ctl.S3010.Kd_S;
  }
  
  ctl.S3010.error[0] = line.pos ;
  
  ctl.S3010.result[0] = ctl.S3010.Kp * ctl.S3010.error[0];
  
  ctl.S3010.result[0] += ctl.S3010.Kd * (0.6*(float)(ctl.S3010.error[0]-ctl.S3010.error[1])+0.2*(float)(ctl.S3010.error[1]-ctl.S3010.error[2])+0.2*(float)(ctl.S3010.error[2]-ctl.S3010.error[3]));
  
  if(1 == speed_up_Enable)
  {
    ctl.motto.v_error = abs(ctl.motto.KP * ctl.S3010.error[0]);
    ctl.motto.v_error += abs(ctl.motto.KD * (0.6*(float)(ctl.S3010.error[0]-ctl.S3010.error[1])+0.2*(float)(ctl.S3010.error[1]-ctl.S3010.error[2])+0.2*(float)(ctl.S3010.error[2]-ctl.S3010.error[3])));
  }
  
  
  ctl.S3010.error[3]= ctl.S3010.error[2];
  ctl.S3010.error[2]= ctl.S3010.error[1];
  ctl.S3010.error[1]= ctl.S3010.error[0];
  
  
  ctl.S3010.out = ctl.S3010.result[0] + 753;
  if ( ctl.S3010.out > 842 )
  {
    ctl.S3010.out = 842;
  }
  if ( ctl.S3010.out < 664)
  {
    ctl.S3010.out = 664;
  }
  
  
  //最后控制结果的输出
  push(7,(ctl.S3010.out - 753 ));
//  push(16,ctl.motto.v_error);

  
}



int16 abs(float A)

{
  int16 B;
  if(A >= 0)
    B = A;
  else
    B = -A;
  
  return B;
}
