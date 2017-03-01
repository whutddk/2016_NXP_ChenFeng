#include "include.h"

void speed_get()
{
  ctl.left.cur = (int32) (tpm_pulse_get (TPM1));
  tpm_pulse_clean (TPM1);
  
  ctl.rigt.cur = (int32) (tpm_pulse_get (TPM2));
  tpm_pulse_clean (TPM2);
}

void    sensor()
{
  //    LDC检测
  LDC1614_read_meas();
  del_sensor_new();
}

uint8 flag_cross;

void del_sensor_new()
{
  //计算零偏，缩减值
  LDC.data[0] = LDC_data[0] ;//- 2264891;
  LDC.data[0] -= LDC.offset[0];
  LDC.data[0] /= 200;
  
  LDC.data[1] = LDC_data[1] ;//- 2318434;
  LDC.data[1] -= LDC.offset[1];
  LDC.data[1] /= 200;
  
  LDC.data[2] = LDC_data[2] ;//- 2283385;
  LDC.data[2] -= LDC.offset[2];
  LDC.data[2] /= 200;
  
  //Error0→左-右    Error1→右-左
  LDC.error[0] = (int32)( LDC.data[2] - LDC.data[0] );  //中间-左边
  LDC.error[1] = (int32)( LDC.data[0] - LDC.data[2] ); //中间-右边
  
  //丢线
  if(LDC.data[1] < 20 || LDC.data[0] > LDC.data[2]) {LDC.IsLeftMiss = 1;}//左
  if(LDC.data[1] < 20 || LDC.data[0] < LDC.data[2]) {LDC.IsRigtMiss = 1;}//右
  if(LDC.data[1] >= 20) {LDC.IsLeftMiss = 0, LDC.IsRigtMiss = 0;}//解除
  //十字
  if(LDC.data[1] >= 250 && LDC.data[0] > 100 && LDC.data[2] > 100) {LDC.IsCross = 1;} else {LDC.IsCross = 0;}//目前必须保证打正入 简单版
  //坡道
  //if(LDC.data[1] >= 300 && LDC.data[0] >= 200 && LDC.data[2] >= 200) {LDC.IsRampUp = 1;}//简单版 上坡检测
  //if(LDC.IsRampUp && LDC.data[1] <= 300 && LDC.data[0] < 200 && LDC.data[2] < 200) {LDC.IsRampUp = 0; LDC.IsRampDown = 1;}//解除坡上，直接强制认为下坡
  //if(LDC.IsRampDown && LDC.data[1] >= 300 && LDC.data[0] >= 200 && LDC.data[2] >= 200) {LDC.IsRampDown = 0;}//下坡解除
  
  //特殊情况保持打角
  if( LDC.IsRigtMiss || LDC.IsLeftMiss || LDC.IsCross || LDC.IsRampUp || LDC.IsRampDown ) {}
  else
    {
      LDC.pos = (int32)( 0.00001 * LDC.error[0] * LDC.error[0] * LDC.error[0]
          -  0.0001 * LDC.error[0] * LDC.error[0]
          + 1.6577 * LDC.error[0]
          - 20.604);
    }
//  push(2, LDC.data[0]);
//  push(3, LDC.data[2]);
//  push(4, LDC.error[0]);
//  push(5, LDC.pos);
  
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
    LDC.data[0] /= 200;
  
    LDC.data[1] = LDC_data[1] ;//- 2318434;
    LDC.data[1] -= LDC.offset[1];
    LDC.data[1] /= 200;
  
    LDC.data[2] = LDC_data[2] ;//- 2283385;
    LDC.data[2] -= LDC.offset[2];
    LDC.data[2] /= 200;
    
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