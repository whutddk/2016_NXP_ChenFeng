//I2C 通用H文件 IO模拟版
//DDK
//2015 5 4

#ifndef _IIC_H_
#define _IIC_H_



#define I2CSDA      PTE25_OUT                      
#define I2CCLK      PTE24_OUT                    
#define I2CSDAI     PTE25_IN                             
#define I2CDDRA     DDRE25                        


//#define IICEorr    (0)
//#define IICOK      (1)

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