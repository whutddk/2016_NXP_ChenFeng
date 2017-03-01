#include "include.h"

void sensor()
{
  //电流采样
  ADCI.measure[0] = ad_sum(ADC0_SE9, ADC_8bit, 3) - ADCI.offset[0];
  ADCI.measure[1] = ad_sum(ADC0_SE12, ADC_8bit, 3) - ADCI.offset[1];
  
  //    LDC检测
  LDC1614_read_meas();
  
  del_sensor();
}

void record()
{
  //At24c02Write(uint8 addr,uint8 dat);
}


uint8 flag_cross;

void del_sensor()
{
  LDC.max[0] = 233;
  LDC.max[1] = 225;  
  LDC.max[2] = 243;  
  
  LDC.min[0] = -253;
  LDC.min[1] = -231;  
  LDC.min[2] = -236;
  
  LDC.data[0] = LDC_data[0] - 2734500;
  LDC.data[0] /= 50;
  LDC.data[0] -= LDC.offset[0];
  
  LDC.data[1] = LDC_data[1] - 2663900;
  LDC.data[1] /= 50;
  LDC.data[1] -= LDC.offset[1];
  
  LDC.data[2] = LDC_data[2] - 2731200;
  LDC.data[2] /= 50;
  LDC.data[2] -= LDC.offset[2];
  
  
  LDC.error[0]
    = (int32)(LDC.data[1] - LDC.data[2] );  //中间-左边
  
  LDC.error[1]
    = (int32)(LDC.data[1] - LDC.data[0] ); //中间-右边
  
  LDC.error[2]
    = (int32)(LDC.data[0] - LDC.data[2] );  //右边-左边
  
  
  //拟合限幅
  if(LDC.error[0] > 0)
  {
    LDC.error[0] = (int16)(LDC.error[0] * 233.0 / LDC.max[0] );
    
  }
  else
  {
    LDC.error[0] = (int16)(LDC.error[0] * (-253.0) / LDC.min[0] );
  }
  
  if(LDC.error[1] > 0)
  {
    LDC.error[1] = (int16)(LDC.error[1] * 225.0 / LDC.max[1] );
  }
  
  else
  {
    LDC.error[1] = (int16)(LDC.error[1] * (-231.0) / LDC.min[1] );
  }
  if( LDC.error[2] > 0)
  {
    LDC.error[2] = (int16)(LDC.error[2] * 243.0 / LDC.max[2] );
  }
  else
  {
    LDC.error[2] = (int16)(LDC.error[2] * (-263.0) / LDC.min[2] );
  }
  //完全丢线
  if(LDC.error[0] < 8
     && LDC.error[0] > -8 
       && LDC.error[1] < 8 
         && LDC.error[1] > -8
          && (LDC.flag_road == 2||LDC.flag_road == 3))
  {
    LDC.flag_lose = 0;//完全丢线
  }
  //160--80
  else if( LDC.error[1] <=  5  
          && LDC.error[2] < 1 
            && ( LDC.flag_road == 0 || LDC.flag_road == 2 ) )
  {
    LDC.flag_road = 2;
    LDC.flag_lose = 10; //210--105
    
    LDC.pos = (int16)( 0.2848  * LDC.error[0] + 153.39);
    
    if (LDC.pos < 80)
    {
      LDC.pos = 80;
    }
    
  }
  //80--10  
  else if(LDC.error[1] > 5 && LDC.error[2] < -40 
          && (LDC.flag_road == 0||LDC.flag_road == 1 || LDC.flag_road == 2))
    
  {
    LDC.flag_road = 0;
    LDC.flag_lose = 20;//105--0 
    
    LDC.pos = (int16)( -0.000001 * LDC.error[0] * LDC.error[0] * LDC.error[0]
                      + 0.00004 * LDC.error[0]* LDC.error[0]
                        - 0.0865 * LDC.error[0]
                          + 31.083);
    if (LDC.pos > 80)
    {
      LDC.pos = 80;
    }
    
    else if (LDC.pos < 10)
    {
      LDC.pos = 10;
    }    
  }
  
  //10-- -90
  else if(LDC.error[0] > 6  && LDC.error[2] >= -41
          && (LDC.flag_road == 0||LDC.flag_road == 1 || LDC.flag_road == 3))
  {
    
    LDC.flag_road = 1;
    LDC.flag_lose = 30; //0-- -105
    
    LDC.pos = (int16)( 
                      0.000002 * LDC.error[1]  * LDC.error[1] * LDC.error[1]
                        + 0.00001 * LDC.error[1]  * LDC.error[1]
                          + 0.0941 *LDC.error[1]  
                            - 35.978 );
    if (LDC.pos > 10)
    {
      LDC.pos = 10;
    }
    else if (LDC.pos < -80)
    {
      LDC.pos = -80;
    }
  }
  //-90 --  -160
  else if(LDC.error[0] <= 6  && LDC.error[2] > 1 && (LDC.flag_road == 1||LDC.flag_road == 3))
    
  {
    LDC.flag_road = 3;
    LDC.flag_lose = 40;//-105 --  -210
    LDC.pos = (int16)(  -0.2886 * LDC.error[1] - 154.12);
    
    if (LDC.pos > -80)
    {
      LDC.pos = -80;
    }    
  }
  else
  {
    LDC.flag_lose = 50;  //error
    LDC.pos = LDC.pos_last; 
    //bz_set(cross);
  }
  if(flag_cross == 1)   //尝试处理十字
  {
    bz_set(cross);
    LDC.flag_lose = 60; //十字
    
    LDC.flag_road = LDC.flag_road_last;//十字不改变道路类型
    
    if(LDC.pos_last - LDC.pos > 20 || LDC.pos_last - LDC.pos < -20)
      LDC.pos = LDC.pos_last;
  }
  LDC.pos_d = LDC.pos - LDC.pos_last;
  LDC.pos_last = LDC.pos; 
  LDC.flag_road_last = LDC.flag_road;
  
}


void sensor_isr()
{
  
  uint16 i = 0;
  LDC.max[0] = 0;
  LDC.max[1] = 0;  
  LDC.max[2] = 0;  
  
  LDC.min[0] = 0;
  LDC.min[1] = 0;  
  LDC.min[2] = 0;
  
  
  for(i=0;i<150;i++)
  {
    pit_delay_ms(PIT1,10);
    LDC1614_read_meas();
    
    LDC.data[0] = LDC_data[0] - 2734500;
    LDC.data[0] /= 50;
    LDC.data[0] -= LDC.offset[0];
    
    LDC.data[1] = LDC_data[1] - 2663900;
    LDC.data[1] /= 50;
    LDC.data[1] -= LDC.offset[1];
    
    LDC.data[2] = LDC_data[2] - 2731200;
    LDC.data[2] /= 50;
    LDC.data[2] -= LDC.offset[2];
    
    
    LDC.search[0] = (int32)(LDC.data[1] - LDC.data[2] );
    
    LDC.search[1] = (int32)(LDC.data[1] - LDC.data[0] );
    
    LDC.search[2] = (int32)(LDC.data[0] - LDC.data[2] );
    
    if(LDC.search[0] > LDC.max[0] && LDC.search[0]  < 600)
    {
      LDC.max[0] = LDC.search[0];
      
    }
    else if(LDC.search[0] < LDC.min[0] && LDC.search[0] > -600)
    {
      LDC.min[0] = LDC.search[0];
    }
    
    
    
    if(LDC.search[1] > LDC.max[1] && LDC.search[1]  < 600 )
    {
      LDC.max[1] = LDC.search[1];
      
    }
    else if(LDC.search[1] < LDC.min[1] && LDC.search[1] > -600)
    {
      LDC.min[1] = LDC.search[1];
    }
    
    
    if(LDC.search[2] > LDC.max[2] && LDC.search[2]  < 600)
    {
      LDC.max[2] = LDC.search[2];
      
    }
    else if(LDC.search[2] < LDC.min[2] && LDC.search[2] > -600)
    {
      LDC.min[2] = LDC.search[2];
    }
    
  }

  //BZ is not working here,
  BZ_ON;
  LED_ON;
  pit_delay_ms(PIT1,50);
  BZ_OFF;
  LED_OFF;
  pit_delay_ms(PIT1,100);
  BZ_ON;
  LED_ON;
  pit_delay_ms(PIT1,50);
  BZ_OFF;
  LED_OFF;
  pit_delay_ms(PIT1,100);
  BZ_ON;
  LED_ON;
  pit_delay_ms(PIT1,50);
  BZ_OFF;
  LED_OFF;
}


void sensor_offset()//开机取偏差
{
  uint8 i;
  
  LDC1614_read_meas();
  pit_delay_ms(PIT1,10);
  
  LDC.collect[0] = LDC_data[0];
  LDC.collect[1] = LDC_data[1];
  LDC.collect[2] = LDC_data[2];
  
  for ( i = 0 ;i < 15; i++)
  {
    LDC1614_read_meas();
    pit_delay_ms(PIT1,10);
    
    LDC.collect[0] += LDC_data[0];
    LDC.collect[1] += LDC_data[1];
    LDC.collect[2] += LDC_data[2];
    
    LDC.collect[0] /= 2;
    LDC.collect[1] /= 2;
    LDC.collect[2] /= 2;
  }
  
  
  
  LDC.offset[0] = LDC.collect[0] - 2734500;
  LDC.offset[0] = LDC.offset[0] / 50;
  
  LDC.offset[1] = LDC.collect[1] - 2663900;
  LDC.offset[1] = LDC.offset[1] / 50;
  
  
  LDC.offset[2] = LDC.collect[2] - 2731200;
  LDC.offset[2] = LDC.offset[2] / 50;
  
}