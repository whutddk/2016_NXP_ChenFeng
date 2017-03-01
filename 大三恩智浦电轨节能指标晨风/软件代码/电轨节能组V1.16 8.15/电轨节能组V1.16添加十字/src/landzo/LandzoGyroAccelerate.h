#ifndef _GYROACCELERATE_H_
#define _GYROACCELERATE_H_

#include "include.h"

#define MMA8451_SDAO     PTB10_OUT
#define MMA8451_CLK      PTB7_OUT
#define MMA8451_SDAI     PTB10_IN
#define MMA8451_DDRA     DDRB10 

#define MMA8451_DELAY    2

#define IICEorr    (0)
#define IICOK      (1)


#define  ADCOUT  10

void    IIC_MMA8451_Delay_ms(uint8_t us) ;
void    IIC_MMA8451_Delay_1us(uint8_t ms) ;
void    IIC_MMA8451_Start(void) ;
void    IIC_MMA8451_Stop(void) ;
void    IIC_MMA8451_Slave_ACK(void) ;
void    IIC_MMA8451_Slave_NOACK(void) ;
uint8_t IIC_MMA8451_Check_ACK(void);
void    IIC_MMA8451_SendByte(uint8_t ch) ;
uint8_t IIC_MMA8451_ReceiveByte(void) ;
uint8_t IIC_MMA8451_WriteAddr(u8 slave_add, u8 Addr, u8 Data);
uint8_t IIC_MMA8451_ReadAddr_byte(uint8_t slave_add, uint8_t Addr, uint8_t *rece_data);
uint8_t IIC_MMA8451_ReadAddr(uint8_t slave_add, uint8_t Addr, uint8_t *rece_data, uint16_t n);
uint8_t LandzoMMA8451_init(void) ;

void AngleAcceleration_Digital_init(void);
void AngleAcceleration_Digital_Data(u16 *AdColle);

void AngleAcceleration_init(void);
uint8_t AngleAcceleration_AD(uint16_t *AdColle,uint8_t Count);



#endif