/*!
* \file LDC1614.c
*
* Copyright (c) 2014-2015, Texas Instruments Incorporated - http://www.ti.com
* All rights reserved.
*/

//*****************************************************************************
// #includes
//*****************************************************************************
#include "include.h"


uint32 LDC_data[4] = {0};
uint16 LDC_STATUS = 0;
uint8 LDC_flag[4] = {0};




//*****************************************************************************
// LDC1614 Library functions
//*****************************************************************************
void LDC1614_sleep(void)
{
 
  LDC_SEND(CONFIG,0x3e01);//�ڲ�ʱ�Ӹ�Ϊ�ⲿ�������Գ���ʹ���Զ����У׼0x2301,�ڵ;�����ʹ�ã���ͬ
}

void LDC1614_init(void)
{
  LDC_SEND(REF_COUNT_CH0,0x1700);//ת��ʱ�䣬Conversion Time (tC0) =(CH0_RCOUNT?16)/fREF0
  
  
  LDC_SEND(REF_COUNT_CH1,0x1700);
  
  
  LDC_SEND(REF_COUNT_CH2,0x1700);
  
  
  LDC_SEND(REF_COUNT_CH3,0x0010);
  
  
  LDC_SEND(OFFSET_CH0,0x0000);//Ƶ��ƫ��f offset Ϊ0
  

  LDC_SEND(OFFSET_CH1,0x0000);
  

  LDC_SEND(OFFSET_CH2,0x0000);
  

  LDC_SEND(OFFSET_CH3,0x0000);
  

  
  LDC_SEND(SETTLECOUNT_CH0,0x0400);//0x0080���ִ�֤�ȶ�ʱ�䳤
  

  
  LDC_SEND(SETTLECOUNT_CH1,0x0800);
  

  
  LDC_SEND(SETTLECOUNT_CH2,0x0800);
  

  
  LDC_SEND(SETTLECOUNT_CH3,0x0010);
  

  
  LDC_SEND(CLOCK_DIVIDERS_CH0,0x1001);//��Ƶϵ��n=1��m=8������Ƶ��40MHZ��������Ƶ��0.11MHZ
  

  
  LDC_SEND(CLOCK_DIVIDERS_CH1,0x1001);
  

  
  LDC_SEND(CLOCK_DIVIDERS_CH2,0x1001);/*attention*/  //Ϊʲô���֮ǰ��һ��
  

  
  LDC_SEND(CLOCK_DIVIDERS_CH3,0x1001);
  

  
  LDC_SEND(ERROR_CONFIG,0xF801);//ֻ��
  

  
  LDC_SEND(CONFIG,0x1e01);//0x3601
  

  
  LDC_SEND(MUX_CONFIG,0xa20c);//�޸������˲��������ڴ��������Ƶ��0xc201
  
  LDC_SEND(DRIVE_CURRENT_CH0,0x3180);//��Ȧ105*652940
  

  
  LDC_SEND(DRIVE_CURRENT_CH1,0x31c0);
  

  
  LDC_SEND(DRIVE_CURRENT_CH2,0x2940);
  

  
  LDC_SEND(DRIVE_CURRENT_CH3,0x4200);
  
}

void LDC1614_reset(void)
{
  LDC_SEND(RESET_DEV,0x8000);
}

void LDC1614_start_meas(void)
{
  LDC_SEND(CONFIG,0x1e01);//�ڲ�ʱ�Ӹ�Ϊ�ⲿ
}

void LDC1614_read_meas(void)//���ٶ�ch3
{
  uint16 temp = 0;


  temp = LDC_READ(DATA_MSB_CH0);
  LDC_data[0] = ( (0x0FFF & temp) << 16 );
  LDC_flag[0] = ( 0xF000 & temp ) >> 8;  
  LDC_data[0] |= LDC_READ(DATA_LSB_CH0) ;

  
  temp = LDC_READ(DATA_MSB_CH1);
  LDC_data[1] = ( ( 0x0FFF & temp ) << 16 );
  LDC_flag[1] = ( 0xF000 & temp ) >> 8;
  LDC_data[1] |= LDC_READ(DATA_LSB_CH1) ;


  temp = LDC_READ(DATA_MSB_CH2);
  LDC_data[2] = ( 0x0FFF & temp ) << 16 ;
  LDC_flag[2] = ( 0xF000 & temp ) >> 8;
  LDC_data[2] |= LDC_READ(DATA_LSB_CH2) ;
 
  
//  temp = LDC_READ(DATA_MSB_CH3);
//  LDC_data[3] = ( 0x0FFF & temp ) << 16 ;
//  LDC_flag[3] = ( 0xF000 & temp ) >> 8 ;
//  
//
//  
//  LDC_data[3] |= LDC_READ(DATA_LSB_CH3) ;
  

 //LDC1614_status();
  
}

void LDC1614_status(void)
{
  LDC_STATUS = LDC_READ(0x18);
}







//--------------------------------------
///*!
//* \file LDC1614.c
//*
//* Copyright (c) 2014-2015, Texas Instruments Incorporated - http://www.ti.com
//* All rights reserved.
//*/
//
////*****************************************************************************
//// #includes
////*****************************************************************************
//#include "include.h"
//
//
//uint32 LDC_data[4] = {0};
//uint16 LDC_STATUS = 0;
//uint8 LDC_flag[4] = {0};
//
//
//
//
////*****************************************************************************
//// LDC1614 Library functions
////*****************************************************************************
//void LDC1614_sleep(void)
//{
// 
//  LDC_SEND(CONFIG,0x3e01);//�ڲ�ʱ�Ӹ�Ϊ�ⲿ�������Գ���ʹ���Զ����У׼0x2301,�ڵ;�����ʹ�ã���ͬ
//}
//
//void LDC1614_init(void)
//{
//  LDC_SEND(REF_COUNT_CH0,0x1b58);//ת��ʱ�䣬Conversion Time (tC0) =(CH0_RCOUNT?16)/fREF0
//  
//  
//  LDC_SEND(REF_COUNT_CH1,0x1b58);
//  
//  
//  LDC_SEND(REF_COUNT_CH2,0x1b58);
//  
//  
//  LDC_SEND(REF_COUNT_CH3,0x0010);
//  
//  
//  LDC_SEND(OFFSET_CH0,0x0000);//Ƶ��ƫ��f offset Ϊ0
//  
//
//  LDC_SEND(OFFSET_CH1,0x0000);
//  
//
//  LDC_SEND(OFFSET_CH2,0x0000);
//  
//
//  LDC_SEND(OFFSET_CH3,0x0000);
//  
//
//  
//  LDC_SEND(SETTLECOUNT_CH0,0x0400);//0x0080���ִ�֤�ȶ�ʱ�䳤
//  
//
//  
//  LDC_SEND(SETTLECOUNT_CH1,0x0400);
//  
//
//  
//  LDC_SEND(SETTLECOUNT_CH2,0x0400);
//  
//
//  
//  LDC_SEND(SETTLECOUNT_CH3,0x0400);
//  
//
//  
//  LDC_SEND(CLOCK_DIVIDERS_CH0,0x1001);//��Ƶϵ��n=1��m=8������Ƶ��40MHZ��������Ƶ��0.11MHZ
//  
//
//  
//  LDC_SEND(CLOCK_DIVIDERS_CH1,0x1001);
//  
//
//  
//  LDC_SEND(CLOCK_DIVIDERS_CH2,0x1001);/*attention*/  //Ϊʲô���֮ǰ��һ��
//  
//
//  
//  LDC_SEND(CLOCK_DIVIDERS_CH3,0x1001);
//  
//
//  
//  LDC_SEND(ERROR_CONFIG,0x0001);//ֻ��
//  
//
//  
//  LDC_SEND(CONFIG,0x1e01);//0x3601
//  
//
//  
//  LDC_SEND(MUX_CONFIG,0xa209);//�޸������˲��������ڴ��������Ƶ��0xc201
//  
//  LDC_SEND(DRIVE_CURRENT_CH0,0x3180);//��Ȧ105*652940
//  
//
//  
//  LDC_SEND(DRIVE_CURRENT_CH1,0x3180);
//  
//
//  
//  LDC_SEND(DRIVE_CURRENT_CH2,0x2940);
//  
//
//  
//  LDC_SEND(DRIVE_CURRENT_CH3,0x2940);
//  
//}
//
//void LDC1614_reset(void)
//{
//  LDC_SEND(RESET_DEV,0x8000);
//}
//
//void LDC1614_start_meas(void)
//{
//  LDC_SEND(CONFIG,0x1e01);//�ڲ�ʱ�Ӹ�Ϊ�ⲿ
//}
//
//void LDC1614_read_meas(void)//���ٶ�ch3
//{
//  uint16 temp = 0;
//
//  temp = LDC_READ(DATA_MSB_CH0);
//  LDC_data[0] = ( (0x0FFF & temp) << 16 );
//  LDC_flag[0] = ( 0xF000 & temp ) >> 8; 
//  
//  LDC_data[0] |= LDC_READ(DATA_LSB_CH0) ;
//  
//
//  
//  temp = LDC_READ(DATA_MSB_CH1);
//  LDC_data[1] = ( ( 0x0FFF & temp ) << 16 );
//  LDC_flag[1] = ( 0xF000 & temp ) >> 8;
//  
//  LDC_data[1] |= LDC_READ(DATA_LSB_CH1) ;
//  
//
//
//  temp = LDC_READ(DATA_MSB_CH2);
//  LDC_data[2] = ( 0x0FFF & temp ) << 16 ;
//  LDC_flag[2] = ( 0xF000 & temp ) >> 8;
//
//  
//  LDC_data[2] |= LDC_READ(DATA_LSB_CH2) ;
// 
//  
//  temp = LDC_READ(DATA_MSB_CH3);
//  LDC_data[3] = ( 0x0FFF & temp ) << 16 ;
//  LDC_flag[3] = ( 0xF000 & temp ) >> 8 ;
//  
//
//  
//  LDC_data[3] |= LDC_READ(DATA_LSB_CH3) ;
//  
//  push(10, LDC_data[0]/1000);
//  push(11, LDC_data[1]/1000);
//  push(12, LDC_data[2]/1000);
// LDC1614_status();
//  
//}
//
//void LDC1614_status(void)
//{
//  LDC_STATUS = LDC_READ(0x18);
//}
