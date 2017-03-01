#include "include.h"

/****����*****/


void AT_init()
{
  
}

/*******************************************************************************
* ������         : void At24c02Write(unsigned char addr,unsigned char dat)
* ��������		   : ��24c02��һ����ַд��һ������
* ����           : ��
* ���         	 : ��
*******************************************************************************/

void At24c02Write(uint8 addr,uint8 dat)
{
  I2C_start();
  I2CSendByte(0xa0);//����д������ַ
  I2CSendByte(addr);//����Ҫд���ڴ��ַ
  I2CSendByte(dat);	//��������
  I2C_stop();
}
/*******************************************************************************
* ������         : unsigned char At24c02Read(unsigned char addr)
* ��������		   : ��ȡ24c02��һ����ַ��һ������
* ����           : ��
* ���         	 : ��
*******************************************************************************/

uint8 At24c02Read(uint8 addr)
{
  uint8 num;
  I2C_start();
  I2CSendByte(0xa0); //����д������ַ
  I2CSendByte(addr); //����Ҫ��ȡ�ĵ�ַ
  I2C_start();
  I2CSendByte(0xa1); //���Ͷ�������ַ
  num = I2CreceiveByte(); //��ȡ����
  //I2Cslave_NOACK();
  I2C_stop();
  return num;	
}