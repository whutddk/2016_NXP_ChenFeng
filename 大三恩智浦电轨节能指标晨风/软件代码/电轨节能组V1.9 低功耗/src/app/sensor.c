#include "include.h"

void speed_get()
{
  ctl.left.shell.cur = (int32) (tpm_pulse_get (TPM1));
  tpm_pulse_clean (TPM1);
  
  ctl.rigt.shell.cur = (int32) (tpm_pulse_get (TPM2));
  tpm_pulse_clean (TPM2);
}

void    sensor()
{
  //    LDC���
  LDC1614_read_meas();
  del_sensor_new();
}

void record()
{
  //At24c02Write(uint8 addr,uint8 dat);
}


uint8 flag_cross;

void del_sensor_new()
{
  //������ƫ������ֵ
  LDC.data[0] = LDC_data[0] ;//- 2264891;
  LDC.data[0] -= LDC.offset[0];
  LDC.data[0] /= 200;
  
  LDC.data[1] = LDC_data[1] ;//- 2318434;
  LDC.data[1] -= LDC.offset[1];
  LDC.data[1] /= 200;
  
  LDC.data[2] = LDC_data[2] ;//- 2283385;
  LDC.data[2] -= LDC.offset[2];
  LDC.data[2] /= 200;
  
  //Error0����-��    Error1����-��
  LDC.error[0]= (int32)(LDC.data[2] - LDC.data[0] );  //�м�-���
  LDC.error[1]= (int32)(LDC.data[0] - LDC.data[2] ); //�м�-�ұ�
  
  //����
  if(LDC.data[1] < 20 || LDC.data[0] > LDC.data[2]) {LDC.IsLeftMiss = 1;}//��
  if(LDC.data[1] < 20 || LDC.data[0] < LDC.data[2]) {LDC.IsRigtMiss = 1;}//��
  if(LDC.data[1] >= 20) {LDC.IsLeftMiss = 0, LDC.IsRigtMiss = 0;}//���
  //ʮ��
  if(LDC.data[1] >= 250 && LDC.data[0] > 100 && LDC.data[2] > 100) {LDC.IsCross = 1;} else {LDC.IsCross = 0;}//Ŀǰ���뱣֤������ �򵥰�
  //�µ�
  //if(LDC.data[1] >= 300 && LDC.data[0] >= 200 && LDC.data[2] >= 200) {LDC.IsRampUp = 1;}//�򵥰� ���¼��
  //if(LDC.IsRampUp && LDC.data[1] <= 300 && LDC.data[0] < 200 && LDC.data[2] < 200) {LDC.IsRampUp = 0; LDC.IsRampDown = 1;}//������ϣ�ֱ��ǿ����Ϊ����
  //if(LDC.IsRampDown && LDC.data[1] >= 300 && LDC.data[0] >= 200 && LDC.data[2] >= 200) {LDC.IsRampDown = 0;}//���½��
  
  //����������ִ��
  if(LDC.IsRigtMiss || LDC.IsLeftMiss || LDC.IsCross || LDC.IsRampUp || LDC.IsRampDown) {}
  else
    {
      LDC.pos = (int32)( 0.00001 * LDC.error[0] * LDC.error[0] * LDC.error[0] 
          -  0.0001 * LDC.error[0] * LDC.error[0]
          + 1.6577 * LDC.error[0] 
          - 20.604);
    }
  push(2, LDC.data[0]);
  push(3, LDC.data[2]);
  push(4, LDC.error[0]);
  push(5, LDC.pos);
  
}

//void del_sensor()
//{
//
//    
//  
//  LDC.data[0] = LDC_data[0] - 2263091;
//  LDC.data[0] /= 50;
//  LDC.data[0] -= LDC.offset[0];
//  
//  LDC.data[1] = LDC_data[1] - 2316234;
//  LDC.data[1] /= 50;
//  LDC.data[1] -= LDC.offset[1];
//  
//  LDC.data[2] = LDC_data[2] - 2280585;
//  LDC.data[2] /= 50;
//  LDC.data[2] -= LDC.offset[2];
//  
//  push(4, LDC.data[0]);
//  push(5, LDC.data[1]);
//  push(6, LDC.data[2]);
//  
//  push(7, LDC.data[0] - LDC.data[1]);
//  push(8, LDC.data[2] - LDC.data[1]);
//  
//  LDC.error[0]
//    = (int32)(LDC.data[1] - LDC.data[2] );  //�м�-���
//  
//  LDC.error[1]
//    = (int32)(LDC.data[1] - LDC.data[0] ); //�м�-�ұ�
//  
//  LDC.error[2]
//    = (int32)(LDC.data[0] - LDC.data[2] );  //�ұ�-���
//  
//  
//  //����޷�
//  if(LDC.error[0] > 0)
//  {
//    LDC.error[0] = (int16)(LDC.error[0] * 233.0 / LDC.max[0] );
//    
//  }
//  else
//  {
//    LDC.error[0] = (int16)(LDC.error[0] * (-253.0) / LDC.min[0] );
//  }
//  
//  if(LDC.error[1] > 0)
//  {
//    LDC.error[1] = (int16)(LDC.error[1] * 225.0 / LDC.max[1] );
//  }
//  
//  else
//  {
//    LDC.error[1] = (int16)(LDC.error[1] * (-231.0) / LDC.min[1] );
//  }
//  if( LDC.error[2] > 0)
//  {
//    LDC.error[2] = (int16)(LDC.error[2] * 243.0 / LDC.max[2] );
//  }
//  else
//  {
//    LDC.error[2] = (int16)(LDC.error[2] * (-263.0) / LDC.min[2] );
//  }
//  //��ȫ����
//  if(LDC.error[0] < 8
//     && LDC.error[0] > -8 
//       && LDC.error[1] < 8 
//         && LDC.error[1] > -8
//          && (LDC.flag_road == 2||LDC.flag_road == 3))
//  {
//    LDC.flag_lose = 0;//��ȫ����
//  }
//  //160--80
//  else if( LDC.error[1] <=  5  
//          && LDC.error[2] < 1 
//            && ( LDC.flag_road == 0 || LDC.flag_road == 2 ) )
//  {
//    LDC.flag_road = 2;
//    LDC.flag_lose = 10; //210--105
//    
//    LDC.pos = (int16)( 0.2848  * LDC.error[0] + 153.39);
//    
//    if (LDC.pos < 80)
//    {
//      LDC.pos = 80;
//    }
//    
//  }
//  //80--10  
//  else if(LDC.error[1] > 5 && LDC.error[2] < -40 
//          && (LDC.flag_road == 0||LDC.flag_road == 1 || LDC.flag_road == 2))
//    
//  {
//    LDC.flag_road = 0;
//    LDC.flag_lose = 20;//105--0 
//    
//    LDC.pos = (int16)( -0.000001 * LDC.error[0] * LDC.error[0] * LDC.error[0]
//                      + 0.00004 * LDC.error[0]* LDC.error[0]
//                        - 0.0865 * LDC.error[0]
//                          + 31.083);
//    if (LDC.pos > 80)
//    {
//      LDC.pos = 80;
//    }
//    
//    else if (LDC.pos < 10)
//    {
//      LDC.pos = 10;
//    }    
//  }
//  
//  //10-- -90
//  else if(LDC.error[0] > 6  && LDC.error[2] >= -41
//          && (LDC.flag_road == 0||LDC.flag_road == 1 || LDC.flag_road == 3))
//  {
//    
//    LDC.flag_road = 1;
//    LDC.flag_lose = 30; //0-- -105
//    
//    LDC.pos = (int16)( 
//                      0.000002 * LDC.error[1]  * LDC.error[1] * LDC.error[1]
//                        + 0.00001 * LDC.error[1]  * LDC.error[1]
//                          + 0.0941 *LDC.error[1]  
//                            - 35.978 );
//    if (LDC.pos > 10)
//    {
//      LDC.pos = 10;
//    }
//    else if (LDC.pos < -80)
//    {
//      LDC.pos = -80;
//    }
//  }
//  //-90 --  -160
//  else if(LDC.error[0] <= 6  && LDC.error[2] > 1 && (LDC.flag_road == 1||LDC.flag_road == 3))
//    
//  {
//    LDC.flag_road = 3;
//    LDC.flag_lose = 40;//-105 --  -210
//    LDC.pos = (int16)(  -0.2886 * LDC.error[1] - 154.12);
//    
//    if (LDC.pos > -80)
//    {
//      LDC.pos = -80;
//    }    
//  }
//  else
//  {
//    LDC.flag_lose = 50;  //error
//    LDC.pos = LDC.pos_last; 
//    //bz_set(cross);
//  }
//  if(flag_cross == 1)   //���Դ���ʮ��
//  {
//    bz_set(cross);
//    LDC.flag_lose = 60; //ʮ��
//    
//    LDC.flag_road = LDC.flag_road_last;//ʮ�ֲ��ı��·����
//    
//    if(LDC.pos_last - LDC.pos > 20 || LDC.pos_last - LDC.pos < -20)
//      LDC.pos = LDC.pos_last;
//  }
//  LDC.pos_d = LDC.pos - LDC.pos_last;
//  LDC.pos_last = LDC.pos; 
//  LDC.flag_road_last = LDC.flag_road;
//  
//}


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


void sensor_offset()//����ȡƫ��
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