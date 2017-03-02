//舵机位置控制
#include "include.h"

//方向控制


void S3010_CTL()
{
  int i;
  if(ctl.motto.v > 375 && 1 == flag_bihuan)
  {
    if(line.pos > 140 || line.pos < -140)     //大偏差
    {
      ctl.S3010.Kp = ctl.S3010.Kp_B;
      ctl.S3010.Kd = ctl.S3010.Kd_B;
    }
    else if(line.pos > 85 || line.pos < -85)     //大偏差
    {
      ctl.S3010.Kp = ctl.S3010.Kp_M2;
      ctl.S3010.Kd = ctl.S3010.Kp_M2;
    }
    else if(line.pos > 35 || line.pos < -35)  //中偏差
    {
      ctl.S3010.Kp = ctl.S3010.Kp_M1;
      ctl.S3010.Kd = ctl.S3010.Kd_M1;
    }
    else                                       //小偏差
    {
      ctl.S3010.Kp = ctl.S3010.Kp_S;
      ctl.S3010.Kd = ctl.S3010.Kd_S;
    }
    
  }
  
  else
  {
    ctl.S3010.Kp = ctl.S3010.Kp_S;
    ctl.S3010.Kd = ctl.S3010.Kd_S;
  }
  
  
  
  ctl.S3010.error[0] = line.pos ;
  
  ctl.S3010.result[0] = ctl.S3010.Kp * ctl.S3010.error[0];
  
  
  
  ctl.S3010.KD[0] = ctl.S3010.error[0] - ctl.S3010.error[1];
  
  for(i=0;i<3;i++)
  {
    ctl.S3010.KD[i] = ctl.S3010.error[i] - ctl.S3010.error[i+1];
    
    if(ctl.S3010.KD[i] > 20)
    {
      ctl.S3010.KD[i] = 20;
    }
    else if(ctl.S3010.KD[i] < -20)
    {
      ctl.S3010.KD[i] = -20;
    }
  }

  ctl.S3010.result[1] = ctl.S3010.Kd * (0.6*(float)(ctl.S3010.KD[0])+0.2*(float)(ctl.S3010.KD[0])+0.2*(float)(ctl.S3010.KD[0]));
  ctl.S3010.result[0] += ctl.S3010.result[1];
  
  
  ctl.S3010.error[3]= ctl.S3010.error[2];
  ctl.S3010.error[2]= ctl.S3010.error[1];
  ctl.S3010.error[1]= ctl.S3010.error[0];
  
  
  ctl.S3010.out = ctl.S3010.result[0] + 750;
  if ( ctl.S3010.out > 839 )
  {
    ctl.S3010.out = 839;
  }
  if ( ctl.S3010.out < 661)
  {
    ctl.S3010.out = 661;
  }
  
  
  //最后控制结果的输出
  push(7,(ctl.S3010.out - 750 ));
//  push(12,ctl.S3010.result[1]);
  
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
