#include "include.h"

/****索引*****/


void AT_init()
{
  
}

/*******************************************************************************
* 函数名         : void At24c02Write(unsigned char addr,unsigned char dat)
* 函数功能		   : 往24c02的一个地址写入一个数据
* 输入           : 无
* 输出         	 : 无
*******************************************************************************/

void At24c02Write(uint8 addr,uint8 dat)
{
  I2C_start();
  I2CSendByte(0xa0);//发送写器件地址
  I2CSendByte(addr);//发送要写入内存地址
  I2CSendByte(dat);	//发送数据
  I2C_stop();
}
/*******************************************************************************
* 函数名         : unsigned char At24c02Read(unsigned char addr)
* 函数功能		   : 读取24c02的一个地址的一个数据
* 输入           : 无
* 输出         	 : 无
*******************************************************************************/

uint8 At24c02Read(uint8 addr)
{
  uint8 num;
  I2C_start();
  I2CSendByte(0xa0); //发送写器件地址
  I2CSendByte(addr); //发送要读取的地址
  I2C_start();
  I2CSendByte(0xa1); //发送读器件地址
  num = I2CreceiveByte(); //读取数据
  //I2Cslave_NOACK();
  I2C_stop();
  return num;	
}