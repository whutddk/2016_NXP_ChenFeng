#include "include.h"

/****索引*****/
//从100KB开始擦除
//0X19000    00 OR FF      00为重新启动  FF为再启动
//0x19400


//uint32 FLASH_BUFF[FLASH_LENTH] ={0} ;

void STATUE_get()
{
  switch(read_key())
  {
    case(2):power_on();break;
    
  default:go_on();break;
  }
}


//void FLASH_CLEAR()
//{
//  Flash_SectorErase(0x19000);
//}

//void FLASH_COPY()
//{
//  Flash_read( 0x19000,FLASH_BUFF,( FLASH_LENTH - 5) *sizeof(uint32));
//}

void power_on()//此次为人工启动
{
  
//  uint8 i = 0;
  //FLASH_CLEAR();

  pit_delay_ms(PIT1,1000);
  
//  for (i = 0;i < FLASH_LENTH;i++ )
//  {
//    *(FLASH_BUFF + i) = i;
//  }
  //Flash_ByteProgram( 0x19000,FLASH_BUFF,FLASH_LENTH * sizeof(uint32) );
  
  bz_set(ready);
}

void go_on()//此次为掉电启动
{
  //FLASH_COPY();
  
  bz_set(goon);
}

