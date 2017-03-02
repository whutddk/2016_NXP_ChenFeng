#ifndef _SPI_H_
#define _SPI_H_

#define SCK_H       LPLD_GPIO_Output_b(PTC, 10, 1)
#define SCK_L       LPLD_GPIO_Output_b(PTC, 10, 0)

#define MISO            LPLD_GPIO_Input_b(PTC, 11)
 
#define MOSI_H          LPLD_GPIO_Output_b(PTC, 15, 1)
#define MOSI_L          LPLD_GPIO_Output_b(PTC, 15, 0)

#define CSN_H        LPLD_GPIO_Output_b(PTC, 16, 1)
#define CSN_L        LPLD_GPIO_Output_b(PTC, 16, 0)

void SPI_GPIO_Init(void);
uint8 SPI_Write_OneByte(uint8 dt);
uint8 SPI_Read_OneByte(uint8 reg);
void SPI_WriteReg(uint8_t addr, uint8_t value);
uint8 SPI_RW(uint8 rwdata);
void SPI_Read_Buf(uint8 reg,uint8 *pBuf,uint8 len);


#endif

