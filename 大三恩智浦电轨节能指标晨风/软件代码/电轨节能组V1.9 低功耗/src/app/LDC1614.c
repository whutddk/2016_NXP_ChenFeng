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
 
  LDC_SEND(CONFIG,0x3e01);//内部时钟改为外部，，可以尝试使用自动振幅校准0x2301,在低精度下使用，下同
}

void LDC1614_init(void)
{
  LDC_SEND(REF_COUNT_CH0,0x1700);//转化时间，Conversion Time (tC0) =(CH0_RCOUNT?16)/fREF0
  
  
  LDC_SEND(REF_COUNT_CH1,0x1700);
  
  
  LDC_SEND(REF_COUNT_CH2,0x1700);
  
  
  LDC_SEND(REF_COUNT_CH3,0x0010);
  
  
  LDC_SEND(OFFSET_CH0,0x0000);//频率偏置f offset 为0
  

  LDC_SEND(OFFSET_CH1,0x0000);
  

  LDC_SEND(OFFSET_CH2,0x0000);
  

  LDC_SEND(OFFSET_CH3,0x0000);
  

  
  LDC_SEND(SETTLECOUNT_CH0,0x0400);//0x0080数字大保证稳定时间长
  

  
  LDC_SEND(SETTLECOUNT_CH1,0x0800);
  

  
  LDC_SEND(SETTLECOUNT_CH2,0x0800);
  

  
  LDC_SEND(SETTLECOUNT_CH3,0x0010);
  

  
  LDC_SEND(CLOCK_DIVIDERS_CH0,0x1001);//分频系数n=1，m=8，晶振频率40MHZ，传感器频率0.11MHZ
  

  
  LDC_SEND(CLOCK_DIVIDERS_CH1,0x1001);
  

  
  LDC_SEND(CLOCK_DIVIDERS_CH2,0x1001);/*attention*/  //为什么这个之前不一样
  

  
  LDC_SEND(CLOCK_DIVIDERS_CH3,0x1001);
  

  
  LDC_SEND(ERROR_CONFIG,0xF801);//只读
  

  
  LDC_SEND(CONFIG,0x1e01);//0x3601
  

  
  LDC_SEND(MUX_CONFIG,0xa20c);//修改脉冲滤波，，大于传感器最大频率0xc201
  
  LDC_SEND(DRIVE_CURRENT_CH0,0x3180);//线圈105*652940
  

  
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
  LDC_SEND(CONFIG,0x1e01);//内部时钟改为外部
}

void LDC1614_read_meas(void)//不再读ch3
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
//  LDC_SEND(CONFIG,0x3e01);//内部时钟改为外部，，可以尝试使用自动振幅校准0x2301,在低精度下使用，下同
//}
//
//void LDC1614_init(void)
//{
//  LDC_SEND(REF_COUNT_CH0,0x1b58);//转化时间，Conversion Time (tC0) =(CH0_RCOUNT?16)/fREF0
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
//  LDC_SEND(OFFSET_CH0,0x0000);//频率偏置f offset 为0
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
//  LDC_SEND(SETTLECOUNT_CH0,0x0400);//0x0080数字大保证稳定时间长
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
//  LDC_SEND(CLOCK_DIVIDERS_CH0,0x1001);//分频系数n=1，m=8，晶振频率40MHZ，传感器频率0.11MHZ
//  
//
//  
//  LDC_SEND(CLOCK_DIVIDERS_CH1,0x1001);
//  
//
//  
//  LDC_SEND(CLOCK_DIVIDERS_CH2,0x1001);/*attention*/  //为什么这个之前不一样
//  
//
//  
//  LDC_SEND(CLOCK_DIVIDERS_CH3,0x1001);
//  
//
//  
//  LDC_SEND(ERROR_CONFIG,0x0001);//只读
//  
//
//  
//  LDC_SEND(CONFIG,0x1e01);//0x3601
//  
//
//  
//  LDC_SEND(MUX_CONFIG,0xa209);//修改脉冲滤波，，大于传感器最大频率0xc201
//  
//  LDC_SEND(DRIVE_CURRENT_CH0,0x3180);//线圈105*652940
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
//  LDC_SEND(CONFIG,0x1e01);//内部时钟改为外部
//}
//
//void LDC1614_read_meas(void)//不再读ch3
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
