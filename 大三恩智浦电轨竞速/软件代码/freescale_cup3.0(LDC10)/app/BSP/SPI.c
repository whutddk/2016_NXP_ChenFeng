#include "include.h"
GPIO_InitTypeDef SPI_inittypedef;
void SPI_GPIO_Init(void)
{
  /***** LDC_CS LDC_SCL MOSI 配置为输出模式*****/
  
  SPI_inittypedef.GPIO_PTx = PTC;
  SPI_inittypedef.GPIO_Pins = GPIO_Pin10 | GPIO_Pin16 | GPIO_Pin15;
  SPI_inittypedef.GPIO_Dir = DIR_OUTPUT;
  SPI_inittypedef.GPIO_PinControl = IRQC_DIS;
  SPI_inittypedef.GPIO_Output = OUTPUT_H;
  LPLD_GPIO_Init(SPI_inittypedef);
  
  /********* MISO 配置为输入模式********/
  SPI_inittypedef.GPIO_PTx = PTC;
  SPI_inittypedef.GPIO_Pins = GPIO_Pin11;
  SPI_inittypedef.GPIO_Dir = DIR_INPUT;
  SPI_inittypedef.GPIO_PinControl = IRQC_DIS;
  SPI_inittypedef.GPIO_Output = OUTPUT_H;
  
  LPLD_GPIO_Init(SPI_inittypedef);
  
  CSN_H;
  SCK_L;
  MOSI_L;
  
}
///******上升沿写据******/
uint8 SPI_Write_OneByte(uint8 dt)
{
  uint8 i;  
  uint8 temp = 0;
  for ( i = 8;i > 0;i --)  
  {  
    if ( dt & 0x80 )//MOSI准备数据位  
    {
      MOSI_H;  
    }
    else 
    {
      MOSI_L;  
    }
    dt <<= 1;   //左移抛弃已经输出的最高位
    temp <<= 1;

    SCK_L;   
    LPLD_SYSTICK_DelayUs(2);  
    if (MISO)
    {
      temp |=1;
    }

    SCK_H;   //LDC_SCL恢复为低电平，并保持一段时间  
    LPLD_SYSTICK_DelayUs(2);   
  }  	
  return (temp);
}
//
/****** 下降沿读数据，每次读取 1 bit ******/
uint8 SPI_Read_OneByte(uint8 reg)
{
  uint8 i;  
  uint8 temp=0;
  LPLD_SYSTICK_DelayUs(2);

  for(i=8;i>0;i--) 
  {
    temp<<=1;        //读取MISO 8次输入的值，存入temp
    SCK_H;  
    LPLD_SYSTICK_DelayUs(2);   
    if(MISO)
    {
      temp++;  //读取最后1byte的最后一位之后，不能再左移了
    }
    SCK_L;  
    LPLD_SYSTICK_DelayUs(2);   
  }  	
  return temp;		
}

void SPI_WriteReg(uint8_t addr, uint8_t value) 
{  
  CSN_L;                  //LDC_CS片选拉低      
  SPI_Write_OneByte(addr|0X00);      //SPI写地址  以及  写信号    1=读出,0=写入
  SPI_Write_OneByte(value|0X00);     //SPI写数据   
  CSN_H;                   //LDC_CS片选拉高 
}


uint8 SPI_RW(uint8 rwdata) 
{
  uint8 spi_rw_i=0; 
  uint8 temp=0; 
  
  for( spi_rw_i = 0;spi_rw_i < 8;spi_rw_i++ ) //output8-bit 
  { /***preparethewritedataofreadbeforethecomingofrisingup******/ 
    if( rwdata & 0x80 ) 
    {
      MOSI_H; 
    }
    else
    {
      MOSI_L; 
    }
    rwdata <<= 1; //shiftnextbittoMSB 
    temp <<= 1; 
    
    LPLD_SYSTICK_DelayUs(2);
    SCK_L; //SetSCKhigh Risingup 
    if(MISO) 
    {
      temp|=1; 
    }
    
    SCK_H; //set SCKlow Fallingdown 
  }
  
  return(temp); //returnreadbyte
}

//uint8 Singal_SPI_Read(uint8 reg) 
//{ 
//  uint8 rdata; 
//  CSN_L; 
//  LPLD_SYSTICK_DelayUs(2); 
//  reg = reg | 0x80;//read 
//  SPI_RW(reg); //Selectregistertoreadfrom.. 
//  asm("nop"); asm("nop"); asm("nop"); asm("nop"); 
//  asm("nop");asm("nop");asm("nop"); asm("nop");
//  asm("nop");asm("nop"); asm("nop"); asm("nop"); 
//  asm("nop"); asm("nop");asm("nop"); asm("nop");
//  asm("nop"); asm("nop"); asm("nop"); asm("nop"); 
//  rdata = SPI_RW(0); 
//  LPLD_SYSTICK_DelayUs(1700);
//  CSN_H; 
//  return rdata; 
//} 

//void SPI_Write(uint8 reg,uint8 wdata) 
//{ 
//  CSN_L;
//  LPLD_SYSTICK_DelayUs(5);//2us 
//  //reg= reg &~0x80; 
//  SPI_RW(reg); 
//  asm("nop"); asm("nop"); asm("nop"); asm("nop");
//  asm("nop"); asm("nop"); asm("nop"); asm("nop");
//  asm("nop"); asm("nop"); asm("nop"); asm("nop"); 
//  asm("nop"); asm("nop"); asm("nop"); asm("nop"); 
//  asm("nop"); asm("nop"); asm("nop"); asm("nop");
//  asm("nop"); 
//  SPI_RW(wdata); 
//  LPLD_SYSTICK_DelayUs(1875);//875us 
//  CSN_H;
//} 

void SPI_Read_Buf(uint8 reg,uint8 *pBuf,uint8 len) 
{ 
  uint8 spi_rw_i; 
  CSN_L;  
  reg = reg|0x80;
  SPI_RW(reg); 
  for ( spi_rw_i = 0;spi_rw_i < len; spi_rw_i++ )
  { 
    pBuf[spi_rw_i]=SPI_RW(NULL); // 
  } 
  LPLD_SYSTICK_DelayUs(2);
  CSN_H;
} 