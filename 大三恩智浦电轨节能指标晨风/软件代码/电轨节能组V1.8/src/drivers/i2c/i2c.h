/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
 * �ļ���       ��i2c.h
 * ����         ��I2Cͷ�ļ�
 * ��ע         ���޸��Թٷ�����
 *
 * ʵ��ƽ̨     ��
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://landzo.taobao.com/
**********************************************************************************/
#ifndef I2C_H_
#define I2C_H_

#include "i2c_cfg.h"

/**
 *  @brief I2Cģ����
 */

typedef enum I2Cn
{
    I2C0  = 0,
    I2C1  = 1
} I2Cn;

/**
 *  @brief ������дģʽѡ��
 */
typedef enum MSmode
{
    MWSR =   0x00,  /* ����дģʽ  */
    MRSW =   0x01   /* ������ģʽ  */
} MSmode;

void iic_init(I2Cn i2cn); 

void  I2C_WriteAddr(I2Cn i2cn, uint8_t SlaveID, uint8_t Addr, uint8_t Data);      //��ȡ��ַ�������
uint8_t    I2C_ReadAddr(I2Cn i2cn, uint8_t SlaveID, uint8_t Addr);                //����ַ��д������
void  I2C_StartTransmission (I2Cn i2cn, uint8_t SlaveID, MSmode);                //��������
//uint8_t iic_read1(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t *Data);
//uint8_t iic_write1(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t Data);
//uint8_t iic_readn(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t Data[], uint8_t N);
//uint8_t iic_writen(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr,uint8_t Data[], uint8_t N);
//
//uint8_t waitflag(I2Cn i2cn, uint8_t x) ;
//void send_signal(I2Cn i2cn, uint8_t Signal);
#endif /* I2C_H_ */
