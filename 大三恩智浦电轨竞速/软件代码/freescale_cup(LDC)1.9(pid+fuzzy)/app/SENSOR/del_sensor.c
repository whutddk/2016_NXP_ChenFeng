#include "include.h"


struct _line line;
struct _sensor sensor ;

void sensor_isr()
{
 
}


void sensor_offset()//开机取偏差
{
  uint8 i;
  
  LDC1614_read_meas();
  LPLD_LPTMR_DelayMs(10);
  
  sensor.offset[0] = LDC_data[0];
  sensor.offset[1] = LDC_data[1];
  sensor.offset[2] = LDC_data[2];
  
  for ( i = 0 ;i < 100; i++)
  {
    LDC1614_read_meas();
    LPLD_LPTMR_DelayMs(10);
    
    sensor.offset[0] += LDC_data[0];
    sensor.offset[1] += LDC_data[1];
    sensor.offset[2] += LDC_data[2];
    
    sensor.offset[0] /= 2;
    sensor.offset[1] /= 2;
    sensor.offset[2] /= 2;
  }
  
}

void DateAnalyse()
{
  sensor.measure[0] = LDC_data[0] - sensor.offset[0];
  sensor.measure[1] = LDC_data[1] - sensor.offset[1];
  sensor.measure[2] = LDC_data[2] - sensor.offset[2];
  
  //从左往右为    0 2 1
  sensor.error[0] = sensor.measure[1] - sensor.measure[0];
  sensor.error[1] = sensor.measure[1] - sensor.measure[2];
  sensor.error[2] = sensor.measure[2] - sensor.measure[0];
    
  sensor.error[0] /= 100;
  sensor.error[1] /= 100;
  sensor.error[2] /= 100;
  push(35,sensor.error[0]);
  push(36,sensor.error[1]);
  push(37,sensor.error[2]);
  
  //push(37,sensor.measure[0]);
  //push(38,sensor.measure[1]);
  //push(39,sensor.measure[2]);
  
//    if ( ( sensor.error[0] < 6 && sensor.error[0] > -6 ) 
//        || ( sensor.error[1] < 6 && sensor.error[1] > -6 ) 
//          || //( sensor.measure[0] < 200 && sensor.measure[0] > -200))
//  {
//    return;
//  }
//    else
    {
      line.flag1 = 0;
      line.flag2 = 0;
       if ( ! ( (sensor.error[0] < 5 && sensor.error[0] > -1 && sensor.error[2] > 0) ) )
         //不在这段 
      {
        line.pos[1] = 
          150 
            + 123*sensor.error[0] 
              - 203.1*sensor.error[2]
                - 105.6*sensor.error[0]*sensor.error[0] 
                  + 180.5*sensor.error[0]*sensor.error[2]  
                    -175.9*sensor.error[2]*sensor.error[2] 
                      -29.74*sensor.error[0]*sensor.error[0]*sensor.error[0] 
                        +50.59*sensor.error[0]*sensor.error[0]*sensor.error[2]
                          -150.8*sensor.error[0]*sensor.error[2]*sensor.error[2]
                            + 144.4*sensor.error[2]*sensor.error[2]*sensor.error[2];
        
        if ( line.pos[1] > -110 && line.pos[1] < 110 ) //enable
        {
          line.flag1 =1; 
        }
      }
      
      if ( !( (sensor.error[1] < 5 ) && (sensor.error[1] > -1) && ( sensor.error[2] < 0 ) ))
      {
        line.pos[2] =  
        -175 
          -194.3*sensor.error[1] 
            -283*sensor.error[2] 
              + 165.5*sensor.error[1]*sensor.error[1] 
                + 280*sensor.error[1]*sensor.error[2] 
                  + 222.4*sensor.error[2]*sensor.error[2] 
                    + 47.54*sensor.error[1]*sensor.error[1]*sensor.error[1] 
                      + 135.1*sensor.error[1]*sensor.error[1]*sensor.error[2] 
                        + 299*sensor.error[1]*sensor.error[2]*sensor.error[2] 
                          + 222*sensor.error[2]*sensor.error[2]*sensor.error[2];
        if ( line.pos[2] > -110 && line.pos [2] < 110 )
        {
          line.flag2 =1; 
        }
      }
      
      if ( line.flag1 && line.flag2 )
      {
        line.pos[3] = line.pos[0];
        line.pos[0] = ( line.pos[1] +line.pos[2] ) / 2;
      }
      else if ( line.flag1 && !line.flag2 )
      {
        line.pos[3] = line.pos[0];
        line.pos[0] = line.pos[1] ;
      }
      else if ( !line.flag1 && line.flag2 )
      {
        line.pos[3] = line.pos[0];
        line.pos[0] = line.pos[2];
      }
      else if ( !line.flag1 && !line.flag2 )
      {
        line.pos[0] = line.pos[3];
      }
    
           
           
        
///*protest*/      
//      if ( ( line.pos[0] - line.pos[1] ) >= 20 )
//      {
//        line.pos[0] = line.pos[1] + 20;
//      }
//      else if ( ( line.pos[0] - line.pos[1] ) <= -210 )
//      {
//        line.pos[0] = line.pos[1] - 20;
//      }
//      
//      line.pos[1] = line.pos[0];
      
      push(0,line.pos[0]);
    }             
}

