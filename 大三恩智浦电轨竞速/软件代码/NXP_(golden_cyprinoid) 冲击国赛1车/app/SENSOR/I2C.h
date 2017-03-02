//I2C 通用H文件 IO模拟版
//DDK
//2015 5 4

#ifndef _I2C_H_
#define _I2C_H_

#define I2C_CLK_PT PTC
#define I2C_DAT_PT PTC
#define I2C_CLK_PIN GPIO_Pin10
#define I2C_DAT_PIN GPIO_Pin11

#define I2C_CLK_NUM 10
#define I2C_DAT_NUM 11


#define I2CSDA      PTC11_O                       
#define I2CCLK      PTC10_O                      
#define I2CSDAI     PTC11_I                             
#define I2CDDRA     DDRC11                        


//#define IICEorr    (0)
//#define IICOK      (1)

void I2C_CLK_INIT();
void I2C_DAT_OUT();
void I2C_DAT_IN();
void I2C_start(void) ;
void I2C_stop(void) ;
void I2Cslave_ACK(void) ;
void I2Cslave_NOACK(void) ;
uint8 I2Ccheck_ACK(void);
void I2CSendByte(uint8 ch) ;
uint8 I2CreceiveByte(void) ;
void LDC_SEND(uint8 addr,uint16 dat);
uint16 LDC_READ(uint8 addr);
//****************************************

#endif