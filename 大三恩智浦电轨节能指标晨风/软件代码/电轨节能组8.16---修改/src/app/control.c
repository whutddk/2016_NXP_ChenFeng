#include "include.h"

struct _ctl ctl;
struct _LDC LDC;
struct _ADCI ADCI;

uint8 flag_ramp;
uint8 ctl_error;
uint8 speed_down_flag;
uint32 flag_startlinecount = 0;
uint32 flag_stoplinecount = 0;

void para_init()
{
  LDC.max[0] =340;
  LDC.max[1] = 340;  
  LDC.max[2] = 345;  
  
  LDC.min[0] = -330;
  LDC.min[1] = -345;  
  LDC.min[2] = -335;
  
  LDC.offset[0] = 56337;// -901;
  LDC.offset[1] = 40086;//-850;
  LDC.offset[2] = 63890;//-1389;
  
  ctl.left.Kp = 0.65;
  ctl.rigt.Kp = 0.65;
  ctl.left.Ki = 3.15;
  ctl.rigt.Ki = 3.15;
  
//  ctl.ldc.Kp = 0.72;
//  ctl.ldc.Ki = 0.0;
//  ctl.ldc.Kd = 0.00079;
  ctl.ldc.aim = 180;//205;
  GUI.AI=4;
  
  ctl.flag_start = 0;
}

void dir_ctl()
{
  /*增量pid差速*/
    ctl.ldc.error[0] = LDC.pos; 
    switch( GUI.AI )
    {
      case(1):
        ctl.ldc.aim = 225;
        if(ctl.ldc.error[0]>=66||ctl.ldc.error[0]<=-66) 
        {
          ctl.ldc.Kp=0.80;
          ctl.ldc.Kd=0.90;
        }  
        else if(ctl.ldc.error[0]>=35||ctl.ldc.error[0]<=-35) 
        {
          ctl.ldc.Kp=0.75;
          ctl.ldc.Kd=0.85;
        }  
        else 
        {
          
          ctl.ldc.Kp=0.20;
          ctl.ldc.Kd=0.10;
        }  
        if(flag_ramp!=1)
        {
          if(LDC.pos < 30 && LDC.pos > -30)
          {
            ctl_error = 40;
            speed_down_flag = 1;//减速标志
            
          }
          else if(1 == speed_down_flag && LDC.pos < 40 && LDC.pos > -40)
          {
            ctl_error = 40 - (abs(LDC.pos) - 30) * 4;
          }
          else
          {
            
            speed_down_flag = 0;
          }
        }
        else
        {
          ctl_error=0;
        }
        break;
        case(2):
          {
            ctl.ldc.aim = 225;
            ctl_error=0;
            if(ctl.ldc.error[0]>=66||ctl.ldc.error[0]<=-66) 
            {
              ctl.ldc.Kp=0.65;
              ctl.ldc.Kd=0.50;
            }  
            else if(ctl.ldc.error[0]>=35||ctl.ldc.error[0]<=-35) 
            {
              ctl.ldc.Kp=0.55;
              ctl.ldc.Kd=0.40;
            }  
            else 
            {
              
              ctl.ldc.Kp=0.30;
              ctl.ldc.Kd=0.20;
            }  
          }
          break;
          case(3):
            {
              ctl.ldc.aim = 200;
              ctl_error=0;
              if(ctl.ldc.error[0]>=66||ctl.ldc.error[0]<=-66) 
              {
                ctl.ldc.Kp=0.50;
                ctl.ldc.Kd=1.00;
              }  
              else if(ctl.ldc.error[0]>=35||ctl.ldc.error[0]<=-35) 
              {
                ctl.ldc.Kp=0.44;
                ctl.ldc.Kd=0.90;
              }  
              else 
              {
                
                ctl.ldc.Kp=0.25;
                ctl.ldc.Kd=0.10;
              }  
            }
            break;
            case(4):
              {
                ctl.ldc.aim = 180;
                ctl_error=0;
                if(ctl.ldc.error[0]>=66||ctl.ldc.error[0]<=-66) 
                {
                  ctl.ldc.Kp=0.39;
                  ctl.ldc.Kd=1.00;
                }  
                else if(ctl.ldc.error[0]>=35||ctl.ldc.error[0]<=-35) 
                {
                  ctl.ldc.Kp=0.35;
                  ctl.ldc.Kd=0.90;
                }  
                else 
                {
                  
                  ctl.ldc.Kp=0.15;
                  ctl.ldc.Kd=0.20;
                }  
              }
              break;
    default:
      {
        ctl.ldc.aim = 180;
        ctl_error=0;
        if(ctl.ldc.error[0]>=66||ctl.ldc.error[0]<=-66) 
        {
          ctl.ldc.Kp=0.39;
          ctl.ldc.Kd=1.00;
        }  
        else if(ctl.ldc.error[0]>=35||ctl.ldc.error[0]<=-35) 
        {
          ctl.ldc.Kp=0.35;
          ctl.ldc.Kd=0.90;
        }  
        else 
        {
          
          ctl.ldc.Kp=0.15;
          ctl.ldc.Kd=0.20;
        }  
      }
    }
    
    //    ctl.ldc.Kp=1.25;
    //    ctl.ldc.Kd=0.73;//1.2
    ctl.ldc.result = ctl.ldc.Kp *  ctl.ldc.error[0];
    ctl.ldc.result += ctl.ldc.Kd * ( ctl.ldc.error[0] - ctl.ldc.error[1]);
    
    ctl.ldc.error[1] = ctl.ldc.error[0];
    ctl.ldc.out = ctl.ldc.result;
    
    /*输出限幅*/
    //    if(ctl.ldc.out >= 65) {ctl.ldc.out = 65;}
    //    if(ctl.ldc.out <=-65) {ctl.ldc.out =-65;}
    //    if(ctl.ldc.shell.result >= 70) {ctl.ldc.shell.result = 70;}
    //    if(ctl.ldc.shell.result <=-70) {ctl.ldc.shell.result =-70;}
    
    /*并联输出*/
    ctl.left.aim = (int16)(ctl.ldc.aim - ctl.ldc.out + ctl_error);//
    ctl.rigt.aim = (int16)(ctl.ldc.aim + ctl.ldc.out + ctl_error);//
    
    push(3 ,ctl.ldc.error[0]);
    //    push(1, ctl.left.cur);
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
  
  }
  else if(!ctl.flag_start && flag_startlinecount >= 1250)//25s 发车时间没那么长吧？
  {
    flag_stoplinecount++;
  }
  
  //0,4s
  if(flag_stoplinecount >= 20)
  {
    ctl.left.out = 0;
    ctl.rigt.out = 0;
  }
  motor_out();
  
  end_line();
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

void end_line()
{
  if(ctl.flag_start == 1)
  {
    if(flag_startlinecount >= 1250)//10s
    {
      if ( PTD4_IN == 0 || PTD5_IN == 0 )
      {
        ctl.flag_start = 0;
      }
    }
  }
}
