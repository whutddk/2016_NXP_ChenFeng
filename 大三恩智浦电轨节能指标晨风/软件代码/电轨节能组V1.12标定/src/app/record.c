#include "include.h"

/****����*****/
//��100KB��ʼ����
//0X19000    00 OR FF      00Ϊ��������  FFΪ������
//0x19400


uint32 FLASH_BUFF[FLASH_LENTH] ={0} ;



void power_on()//�˴�Ϊ�˹�����
{
  Flash_SectorErase(0x19000);

  FLASH_BUFF[0] = LDC.max[0];
  FLASH_BUFF[1] = LDC.max[1];
  FLASH_BUFF[2] = LDC.max[2];
  FLASH_BUFF[3] = LDC.min[0];
  FLASH_BUFF[4] = LDC.min[1];
  FLASH_BUFF[5] = LDC.min[2];
  FLASH_BUFF[6] = LDC.offset[0];
  FLASH_BUFF[7] = LDC.offset[1];
  FLASH_BUFF[8] = LDC.offset[2];
  
  Flash_ByteProgram( 0x19000,FLASH_BUFF,FLASH_LENTH * sizeof(uint32) );
  
  bz_set(ready);
}

void go_on()//�˴�Ϊ��������
{
  Flash_read( 0x19000,FLASH_BUFF,( FLASH_LENTH - 5) *sizeof(uint32));
  
  LDC.max[0] = FLASH_BUFF[0];
  LDC.max[1] = FLASH_BUFF[1];  
  LDC.max[2] = FLASH_BUFF[2];  
  
  LDC.min[0] = FLASH_BUFF[3];
  LDC.min[1] = FLASH_BUFF[4];  
  LDC.min[2] = FLASH_BUFF[5];
  
  LDC.offset[0] = FLASH_BUFF[6];
  LDC.offset[1] = FLASH_BUFF[7];
  LDC.offset[2] = FLASH_BUFF[8];
  

}

