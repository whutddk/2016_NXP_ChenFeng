#include "include.h"
#include "DEV_LDC1000.h"

uint8 orgVal[30] = {0};
void LDC1000_init()
{
  SPI_GPIO_Init();
  SPI_WriteReg(LDC1000_CMD_RPMAX,0x00 );
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_RPMIN,0x3f);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_SENSORFREQ, 0xA9);
  LPLD_SYSTICK_DelayUs(5); //谐振频率计算方法见《浮点科技电轨传感器调试手册》
  SPI_WriteReg(LDC1000_CMD_LDCCONFIG, 0x17);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_CLKCONFIG, 0x00);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_INTCONFIG, 0x02);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_PWRCONFIG, 0x01);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_THRESHILSB, 0x50);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_THRESHIMSB, 0x14);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_THRESLOLSB, 0xC0);
  LPLD_SYSTICK_DelayUs(5);
  SPI_WriteReg(LDC1000_CMD_THRESLOMSB, 0x12);
  LPLD_SYSTICK_DelayUs(5);
  //FLOAT_Singal_SPI_Write(LDC1000_CMD_PWRCONFIG,0x01);	
  SPI_Read_Buf(LDC1000_CMD_REVID,&orgVal[0],12);
}
uint16 result  = 0;
void LDC1000_read()
{
  uint8 temp[2] = {0}; 
  SPI_Read_Buf(LDC1000_CMD_REVID,&orgVal[0],12);
  SPI_Read_Buf(LDC1000_CMD_PROXLSB,&temp[0],2);								 	    		
  result = temp[0]<<8 | temp[1];
}