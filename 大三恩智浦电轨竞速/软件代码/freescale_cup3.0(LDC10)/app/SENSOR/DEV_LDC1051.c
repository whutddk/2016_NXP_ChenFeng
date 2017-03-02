#include "include.h"
#include "DEV_LDC1051.h"

extern uint8 orgVal[30];
void LDC1051_init()
{
  SPI_GPIO_Init();
  LPLD_SYSTICK_DelayUs(15); 
  SPI_WriteReg(LDC1051_RPMAX,0x15);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1051_RPMIN,0x31);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1051_WATCHDOG, 0x7c);
  LPLD_SYSTICK_DelayUs(5); 
  SPI_WriteReg(LDC1051_LDCCONFIG, 0x12);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1051_INTCONFIG, 0x02);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1051_PWRCONFIG, 0x01);
  LPLD_SYSTICK_DelayUs(5);
  //SPI_WriteReg(LDC1051_THRESHIMSB, 0x14);
  LPLD_SYSTICK_DelayUs(5);
  //SPI_WriteReg(LDC1051_THRESLOMSB, 0x12);
  LPLD_SYSTICK_DelayUs(5);
  SPI_Read_Buf(LDC1051_DEVID,&orgVal[0],12);
}

uint8 LDC1051_result;
uint8 LDC1051_STATUE;
void LDC1051_read()
{
  uint8 temp[2] = {0}; 
  SPI_Read_Buf(LDC1051_DEVID,&orgVal[0],12);
  LPLD_SYSTICK_DelayUs(5);
  SPI_Read_Buf(LDC1051_STATUS,&LDC1051_STATUE,12);
  LPLD_SYSTICK_DelayUs(5);
  SPI_Read_Buf(LDC1051_PROXMSB,&LDC1051_result,1);								 	    		
  //result = temp[0];
}
