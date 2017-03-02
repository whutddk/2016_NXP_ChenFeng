#include "include.h"

//大线圈
struct _line line;
struct _sensor sensor ;


void sensor_isr()
{
  
  uint16 i = 0;
  sensor.max[0] = 0;
  sensor.max[1] = 0;  
  sensor.max[2] = 0;  
  
  sensor.min[0] = 0;
  sensor.min[1] = 0;  
  sensor.min[2] = 0;
  
  
  for(i=0;i<150;i++)
  {
    LPLD_LPTMR_DelayMs(5);
    LDC1614_read_meas();
    
    sensor.data[0] = LDC_data[0] - 1589300;
    sensor.data[0] /= 35;
    sensor.data[0] -= sensor.offset[0];
    
    sensor.data[1] = LDC_data[1] - 1559900;
    sensor.data[1] /= 35;
    sensor.data[1] -= sensor.offset[1];
    
    sensor.data[2] = LDC_data[2] - 1570500;
    sensor.data[2] /= 35;
    sensor.data[2] -= sensor.offset[2];
    
    
    sensor.search[0] = (int32)(sensor.data[1] - sensor.data[2] );
    
    sensor.search[1] = (int32)(sensor.data[1] - sensor.data[0] );
    
    sensor.search[2] = (int32)(sensor.data[0] - sensor.data[2] );

//    if(sensor.search[0] > 200)
//    LPLD_UART_PutChar(FreeCarsUARTPort,sensor.search[0] - 200);
//    if(sensor.search[0] > 200)
//    LPLD_UART_PutChar(FreeCarsUARTPort,sensor.search[1] - 200);
    
    if(sensor.search[0] > sensor.max[0] && sensor.search[0]  < 900)
    {
      sensor.max[0] = sensor.search[0];
      
    }
    else if(sensor.search[0] < sensor.min[0] && sensor.search[0] > -900)
    {
      sensor.min[0] = sensor.search[0];
    }
    
    
    
    if(sensor.search[1] > sensor.max[1] && sensor.search[1]  < 900 )
    {
      sensor.max[1] = sensor.search[1];
      
    }
    else if(sensor.search[1] < sensor.min[1] && sensor.search[1] > -900)
    {
      sensor.min[1] = sensor.search[1];
    }
    
    
    if(sensor.search[2] > sensor.max[2] && sensor.search[2]  < 900)
    {
      sensor.max[2] = sensor.search[2];
      
    }
    else if(sensor.search[2] < sensor.min[2] && sensor.search[2] > -900)
    {
      sensor.min[2] = sensor.search[2];
    }
    
  }
  
  
  
  //BZ is not working here,
  BZ_ON;
  LED_ON;
  LPLD_LPTMR_DelayMs(50);
  BZ_OFF;
  LED_OFF;
  LPLD_LPTMR_DelayMs(100);
  BZ_ON;
  LED_ON;
  LPLD_LPTMR_DelayMs(50);
  BZ_OFF;
  LED_OFF;
  LPLD_LPTMR_DelayMs(100);
  BZ_ON;
  LED_ON;
  LPLD_LPTMR_DelayMs(50);
  BZ_OFF;
  LED_OFF;
  
  
//  LPLD_UART_PutChar(FreeCarsUARTPort,110);
//  LPLD_UART_PutChar(FreeCarsUARTPort,110);
//  
//  LPLD_UART_PutChar(FreeCarsUARTPort,sensor.max[0] - 200);
//  LPLD_UART_PutChar(FreeCarsUARTPort,sensor.max[1] - 200);
}








void sensor_offset()//开机取偏差
{
  
  
  uint8 i;
  
  LDC1614_read_meas();
  LPLD_LPTMR_DelayMs(5);
  
  sensor.collect[0] = LDC_data[0];
  sensor.collect[1] = LDC_data[1];
  sensor.collect[2] = LDC_data[2];
  
  for ( i = 0 ;i < 15; i++)
  {
    LDC1614_read_meas();
    LPLD_LPTMR_DelayMs(5);
    
    sensor.collect[0] += LDC_data[0];
    sensor.collect[1] += LDC_data[1];
    sensor.collect[2] += LDC_data[2];
    
    sensor.collect[0] /= 2;
    sensor.collect[1] /= 2;
    sensor.collect[2] /= 2;
  }
  
  
  
  sensor.offset[0] = sensor.collect[0] - 1589300;
  sensor.offset[0] = sensor.offset[0] / 35;
  
  sensor.offset[1] = sensor.collect[1] - 1559900;
  sensor.offset[1] = sensor.offset[1] / 35;
  
  
  sensor.offset[2] = sensor.collect[2] - 1570500;
  sensor.offset[2] = sensor.offset[2] / 35;
  
}


uint8 ramp_cnt;

void ramp()
{
  uint8 i,j,k;
  uint16 temp_threshold;
  j = 0;
  k = 0;
  for(i=5;i>0;i--)
  {
    sensor.data_buff[i] = sensor.data_buff[i-1];
  }
  
  
  if(sensor.data[2] - sensor.data[0]> 0)
    
    sensor.data_sum = sensor.data[3] + sensor.data[2] - sensor.data[0];
  else
    sensor.data_sum = sensor.data[3] + sensor.data[0] - sensor.data[2];
  
  sensor.data_buff[0] = sensor.data_sum;
  
  //  push(12,sensor.data_sum);
  
  temp_threshold = ((sensor.max[0] + sensor.max[1])/ 2 ) * 3;
  
  if(sensor.data_buff[i] > temp_threshold && sensor.data_buff[i]<5000)
    for(i=0;i<6;i++)
    {
      if(sensor.data_buff[i] > (temp_threshold - 100)  && sensor.data[3] > (sensor.max[0] * 1.5))
        j++;
    }
  else if(sensor.data_buff[i] < sensor.max[0] + 80)
    for(i=0;i<6;i++)
    {
      if(sensor.data_buff[i] < (sensor.max[0] + 180))
        k++;
    }
  
  
  
  if(j>5)
  {
    flag_ramp = 1;
    BZ_ON;
    
    if(ramp_cnt == 2)
      ramp_cnt = 3;  //下坡
    else if(ramp_cnt == 0)
      ramp_cnt = 1;  //上坡
  }
  
  if(flag_ramp == 1)
  {
    if(k>5)
    {
      if(ramp_cnt == 3)  //坡道正常完成
      {
        flag_ramp = 0;
        BZ_OFF;
        ramp_cnt = 0;
        ctl.motto.ramp = 0;
        ramp_Enable = 0;//坡道检测使能关闭，一定距离后开启
        
      }
      else if(ramp_cnt == 1)
        ramp_cnt = 2;
      
    }
  }
}




void DateAnalyse()
{
  
  sensor.error[0]
    = (int32)(sensor.data[1] - sensor.data[2] );  //中间-左边
  
  sensor.error[1]
    = (int32)(sensor.data[1] - sensor.data[0] ); //中间-右边
  
  sensor.error[2]
    = (int32)(sensor.data[0] - sensor.data[2] );  //右边-左边
  
  
  
//  push(14,sensor.error[0]);
//  push(15,sensor.error[1]);
//  push(16,sensor.error[2]);
  
  
  
  //拟合限幅
  if(sensor.error[0] > 0)
  {
    sensor.error[0] = (int16)(sensor.error[0] * 258.0 / sensor.max[0] );
    
  }
  
  else
  {
    sensor.error[0] = (int16)(sensor.error[0] * (-273.0) / sensor.min[0] );
  }
  
  
  
  
  if(sensor.error[1] > 0)
  {
    sensor.error[1] = (int16)(sensor.error[1] * 253.0 / sensor.max[1] );
    
    
  }
  
  else
  {
    sensor.error[1] = (int16)(sensor.error[1] * (-270.0) / sensor.min[1] );
  }
  
  
  
  
  
  if(sensor.error[2] > 0)
  {
    sensor.error[2] = (int16)(sensor.error[2] * 252.0 / sensor.max[2] );
    
  }
  
  else
  {
    sensor.error[2] = (int16)(sensor.error[2] * (-282.0) / sensor.min[2] );
  }
  

  push(0,sensor.error[0]);
  push(1,sensor.error[1]);
  push(2,sensor.error[2]);
  
  
  
  
  //完全丢线
  if(sensor.error[0] < 10 && sensor.error[0] > -10 && sensor.error[1] < 10 && sensor.error[1] > -10
     && (line.flag_road == 2||line.flag_road == 3))
    
  {
    line.flag_lose = 0;//完全丢线
  }
  
  
  
  //210--105
  else if( sensor.error[1] <=  6  && sensor.error[2] < -5 && (line.flag_road == 0||line.flag_road == 2))
  {
    line.flag_road = 2;
    line.flag_lose = 10; //210--105
    
    line.pos = (int16)( 0.3549  * sensor.error[0] + 208.76);
    
    if (line.pos < 105)
    {
      line.pos = 105;
    }
    
  }
  
  
  
  
  //105--0  
  else if(sensor.error[1] > 6 && sensor.error[2] < 0 
          && (line.flag_road == 0||line.flag_road == 1 || line.flag_road == 2))
    
  {
    line.flag_road = 0;
    line.flag_lose = 20;//105--0 
    
    line.pos = (int16)( -0.0000007 * sensor.error[0] * sensor.error[0] * sensor.error[0]
                       + 0.00002 * sensor.error[0]* sensor.error[0]
                         - 0.1388 * sensor.error[0]
                           + 50.151);
    if (line.pos > 105)   //限幅
    {
      line.pos = 105;
    }
    
    else if (line.pos < 0)
    {
      line.pos = 0;
    }
            
  }
  
  
  
  
  //0-- -105
  else if(sensor.error[0] > 6  && sensor.error[2] >= 0
          && (line.flag_road == 0||line.flag_road == 1 || line.flag_road == 3))
  {
    
    line.flag_road = 1;
    line.flag_lose = 30; //0-- -105
    
    line.pos = (int16)( 
                       0.000001 * sensor.error[1]  * sensor.error[1] * sensor.error[1]
                         + 0.00004 * sensor.error[1]  *sensor.error[1]
                           + 0.1466 * sensor.error[1]  
                             - 59.245 );
    if (line.pos > 0)   //限幅
    {
      line.pos = 0;
    }
    else if (line.pos < -105)
    {
      line.pos = -105;
    }
        
  }
  
  
  
  //-105 --  -210
  else if(sensor.error[0] <= 6  && sensor.error[2] > 1 && (line.flag_road == 1||line.flag_road == 3))
    
  {
    line.flag_road = 3;
    line.flag_lose = 40;//-105 --  -210
    
    
    line.pos = (int16)(  -0.3649 * sensor.error[1] - 208.76);
    
    if (line.pos > -105)     //限幅
    {
      line.pos = -105;
    }
    
  }
  
  
  
  else
  {
    line.flag_lose = 50;  //error
    line.pos = line.pos_last; 
    
    //bz_set(cross);
  }
  
  if(flag_cross == 1)   //尝试处理十字
  {
//    bz_set(cross);
     line.flag_lose = 60; //十字
     
     line.flag_road = line.flag_road_last;//十字不改变道路类型
     
    if(line.pos_last - line.pos > 20 || line.pos_last - line.pos < -20)
      line.pos = line.pos_last;
  }
  
  
  line.pos_last = line.pos; 
  line.flag_road_last = line.flag_road;
  
  push(8,line.flag_lose);
  push(9,line.flag_road);
  push(10,line.pos_d);

  
}
