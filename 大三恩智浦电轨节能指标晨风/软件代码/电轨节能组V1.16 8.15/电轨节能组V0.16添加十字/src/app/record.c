#include "include.h"

/****索引*****/
//从100KB开始擦除
//0X19000    00 OR FF      00为重新启动  FF为再启动
//0x19400


int32 FLASH_BUFF[FLASH_LENTH] ={0} ;



void record()//此次为人工启动
{
  Flash_SectorErase(0x19000);
  
  pit_delay_ms(PIT1,100);
  FLASH_BUFF[0] = LDC.max[0];
  FLASH_BUFF[1] = LDC.max[1];
  FLASH_BUFF[2] = LDC.max[2];
  FLASH_BUFF[3] = LDC.min[0];
  FLASH_BUFF[4] = LDC.min[1];
  FLASH_BUFF[5] = LDC.min[2];
  FLASH_BUFF[6] = LDC.offset[0];
  FLASH_BUFF[7] = LDC.offset[1];
  FLASH_BUFF[8] = LDC.offset[2];
  
  Flash_ByteProgram( 0x19000,FLASH_BUFF,FLASH_LENTH * sizeof(int32) );
  
  //bz_set(ready);
}

void read_flash()
{
  Flash_read( 0x19000,FLASH_BUFF,FLASH_LENTH *sizeof(int32));
  
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

