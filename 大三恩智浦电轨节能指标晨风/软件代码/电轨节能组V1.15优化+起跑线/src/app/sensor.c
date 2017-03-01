#include "include.h"

void speed_get()
{
  ctl.left.cur = (int32) (tpm_pulse_get (TPM1));
  tpm_pulse_clean (TPM1);
  
  ctl.rigt.cur = (int32) (tpm_pulse_get (TPM2));
  tpm_pulse_clean (TPM2);
}

void sensor()
{
  //    LDC检测
  
  del_sensor_new();
}

uint8 flag_cross;

void del_sensor_new()
{
  //计算零偏，缩减值
  LDC.data[0] = LDC_data[0] ;//- 2264891;
  LDC.data[0] -= LDC.offset[0];
  LDC.data[0] /= 50;
  
  LDC.data[1] = LDC_data[1] ;//- 2318434;
  LDC.data[1] -= LDC.offset[1];
  LDC.data[1] /= 50;
  
   LDC.data[3] = LDC.data[1] + 15;   //坡道时使用
  if(LDC.data[3] < 1)
  {
    LDC.data[3] = 1;
  }
  
  LDC.data[2] = LDC_data[2] ;//- 2283385;
  LDC.data[2] -= LDC.offset[2];
  LDC.data[2] /= 50;
  
  LDC.error[0]= (int32)(LDC.data[1] - LDC.data[2] );  //中间-左边
  LDC.error[1]= (int32)(LDC.data[1] - LDC.data[0] ); //中间-右边
  LDC.error[2]= (int32)(LDC.data[0] - LDC.data[2] );  //右边-左边
  
  
  //拟合限幅
  if(LDC.error[0] > 0){LDC.error[0] = (int16)(LDC.error[0] * 340.0 / LDC.max[0] );}
  else{LDC.error[0] = (int16)(LDC.error[0] * (-330.0) / LDC.min[0] );}

  if(LDC.error[1] > 0){LDC.error[1] = (int16)(LDC.error[1] * 340.0 / LDC.max[1] );}
  else{LDC.error[1] = (int16)(LDC.error[1] * (-345.0) / LDC.min[1] );}
   
  if(LDC.error[2] > 0){LDC.error[2] = (int16)(LDC.error[2] * 345.0 / LDC.max[2] );}
  else{LDC.error[2] = (int16)(LDC.error[2] * (-335.0) / LDC.min[2] );}
  
   //完全丢线
  if(LDC.error[0] <5 && LDC.error[0] > -5 && LDC.error[1] < 5 && LDC.error[1] > -5
     && (LDC.flag_road == 2||LDC.flag_road == 3))
  {
    LDC.flag_lose = 0;//完全丢线
  }
  
  //210--110
  else if( LDC.error[1] <=  6  && LDC.error[2] < -5 && (LDC.flag_road == 0||LDC .flag_road == 2))
  {
    LDC.flag_road = 2;
    LDC.flag_lose = 10; //210--110
    LDC.pos = (int16)( 0.2897  * LDC.error[0] + 208.69);
    if (LDC.pos < 110){LDC.pos = 110;}
  }
  //110--0  
  else if(LDC.error[1] > 6 && LDC.error[2] < 0 
          && (LDC.flag_road == 0||LDC.flag_road == 1 || LDC.flag_road == 2))
  {
    LDC.flag_road = 0;
    LDC.flag_lose = 20;//105--0 
    LDC.pos = (int16)(-0.0000005 * LDC.error[0] * LDC.error[0] * LDC.error[0]
                       + 0.00001 * LDC.error[0]* LDC.error[0]
                       - 0.1052 * LDC.error[0]
                       + 53.722);
    if (LDC.pos > 110)  {LDC.pos = 110;}
    else if (LDC.pos < 0){LDC.pos = 0;}       
  }
  //0-- -110
  else if(LDC.error[0] > 3  && LDC.error[2] >= 0
          && (LDC.flag_road == 0||LDC.flag_road == 1 || LDC.flag_road == 3))
  {
    
    LDC.flag_road = 1;
    LDC.flag_lose = 30; //0-- -105
    LDC.pos = (int16)( 0.0000004 * LDC.error[1]  * LDC.error[1] * LDC.error[1]
                         + 0.00006 * LDC.error[1]  *LDC.error[1]
                           + 0.111 * LDC.error[1]  
                             - 60.925 );
    if (LDC.pos > 0) {LDC.pos = 0;}
    else if (LDC.pos < -110){LDC.pos = -110;}
        
  }
  
    //-110 --  -210
  else if(LDC.error[0] <= 3  && LDC.error[2] > 1 && (LDC.flag_road == 1||LDC.flag_road == 3))
  {
    LDC.flag_road = 3;
    LDC.flag_lose = 40;//-105 --  -210
    LDC.pos = (int16)(  -0.2721 * LDC.error[1] - 208.64);
    if (LDC.pos > -110)   {LDC.pos = -110;}
  }
  
  else
  {
    LDC.flag_lose = 50;  //error
    LDC.pos = LDC.pos_last; 
    //bz_set(cross);
  }
  
  if(flag_cross == 1)   //尝试处理十字
  {
  //    bz_set(cross);
     LDC.flag_lose = 60; //十字
     LDC.flag_road = LDC.flag_road_last;//十字不改变道路类型
     if(LDC.pos_last - LDC.pos > 20 || LDC.pos_last - LDC.pos < -20) LDC.pos = LDC.pos_last;
  }
  
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
    
    LDC.data[0] = LDC_data[0] ;//- 2264891;
    LDC.data[0] -= LDC.offset[0];
    LDC.data[0] /= 50;
  
    LDC.data[1] = LDC_data[1] ;//- 2318434;
    LDC.data[1] -= LDC.offset[1];
    LDC.data[1] /= 50;
  
    LDC.data[2] = LDC_data[2] ;//- 2283385;
    LDC.data[2] -= LDC.offset[2];
    LDC.data[2] /= 50;
    
    LDC.search[0] = (int32)(LDC.data[1] - LDC.data[2] );
    LDC.search[1] = (int32)(LDC.data[1] - LDC.data[0] );
    LDC.search[2] = (int32)(LDC.data[0] - LDC.data[2] );
    
    if(LDC.search[0] > LDC.max[0] && LDC.search[0]  < 600){ LDC.max[0] = LDC.search[0]; }
else if(LDC.search[0] < LDC.min[0] && LDC.search[0] > -600){ LDC.min[0] = LDC.search[0]; }
    
    if(LDC.search[1] > LDC.max[1] && LDC.search[1]  < 600 ){ LDC.max[1] = LDC.search[1]; }
else if(LDC.search[1] < LDC.min[1] && LDC.search[1] > -600){ LDC.min[1] = LDC.search[1]; }
    
    if(LDC.search[2] > LDC.max[2] && LDC.search[2]  < 600){ LDC.max[2] = LDC.search[2]; }
else if(LDC.search[2] < LDC.min[2] && LDC.search[2] > -600){ LDC.min[2] = LDC.search[2]; }
    
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
  
  for ( i = 0 ;i < 100; i++)
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

  
  LDC.offset[0] = LDC.collect[0] ;
  //LDC.offset[0] = LDC.offset[0] / 200;
  
  LDC.offset[1] = LDC.collect[1] ;
  //LDC.offset[1] = LDC.offset[1] / 200;
  
  
  LDC.offset[2] = LDC.collect[2] ;
  //LDC.offset[2] = LDC.offset[2] / 200;
  
}

uint8 ramp_cnt;
uint8 ramp_Enable = 1;
void ramp()
{
  uint8 i,j,k;
  j = 0;
  k = 0;
  for(i=5;i>0;i--)
  {
    LDC.data_buff[i] = LDC.data_buff[i-1];
  }
  
  
  if(LDC.data[2] - LDC.data[0]> 0)
    
    LDC.data_sum = LDC.data[3] + LDC.data[2] - LDC.data[0];
  else
    LDC.data_sum = LDC.data[3] + LDC.data[0] - LDC.data[2];
  
  LDC.data_buff[0] = LDC.data_sum;
  
  push(12,LDC.data_sum);
  
  if(LDC.data_buff[i]>700 && LDC.data_buff[i]<4000)
    for(i=0;i<6;i++)
    {
      if(LDC.data_buff[i]>750 && LDC.data[3] > 600)
        j++;
    }
  else if(LDC.data_buff[i] < 400)
    for(i=0;i<6;i++)
    {
      if(LDC.data_buff[i] < 500)
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
        //ctl.motto.ramp = 0;
        ramp_Enable = 0;//坡道检测使能关闭，一定距离后开启
        
      }
      else if(ramp_cnt == 1)
        ramp_cnt = 2;
      
    }
  }
}
