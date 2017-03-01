/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
 * �ļ���       ��i2c_cfg.h
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
#ifndef _I2C_CFG_H_
#define _I2C_CFG_H_

#include "include.h"

//�����ź�
#define i2c_Start(I2Cn)             I2C_C1_REG(I2Cx[I2Cn]) |= (I2C_C1_TX_MASK );\
                                    I2C_C1_REG(I2Cx[I2Cn]) |= ( I2C_C1_MST_MASK)     //MST ��0��1��������ʼ�źţ�TX = 1 ���뷢��ģʽ

//ֹͣ�ź�
#define i2c_Stop(I2Cn)              I2C_C1_REG(I2Cx[I2Cn]) &= ~(I2C_C1_MST_MASK );\
                                    I2C_C1_REG(I2Cx[I2Cn]) &= ~(I2C_C1_TX_MASK) ;   //MST ��1��0������ֹͣ�źţ�TX = 0 �������ģʽ

//�ظ�����
#define i2c_RepeatedStart(I2Cn)     I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_RSTA_MASK

//�������ģʽ(Ӧ��,��Ҫ���ն�����ݣ��������һ���ֽ�ǰ��Ҫ����Ӧ��i2c_DisableAck)
#define i2c_EnterRxMode(I2Cn)       I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TX_MASK;\
                                    I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TXAK_MASK
                                      
//�������ģʽ(��Ӧ��,ֻ����һ���ֽ�)
#define i2c_PutinRxMode(I2Cn)       I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TX_MASK
                                    //I2C_C1_REG(I2Cx[I2Cn]) |=  I2C_C1_TXAK_MASK

//����Ӧ��(�������һ���ֽ�)
#define i2c_DisableAck(I2Cn)        I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_TXAK_MASK

//�ȴ� I2C_S
#define i2c_Wait(I2Cn)              while(( I2C_S_REG(I2Cx[I2Cn]) & I2C_S_IICIF_MASK)==0) {} \
                                    I2C_S_REG(I2Cx[I2Cn]) |= I2C_S_IICIF_MASK;

//�ж��Ƿ�Ӧ����
#define i2c_IsAsk(I2Cn)             (( I2C_S_REG(I2Cx[I2Cn])  & I2C_S_RXAK_MASK)==0 ? 1:0)

//дһ���ֽ�
#define i2c_write_byte(I2Cn,data)   (I2C_D_REG(I2Cx[I2Cn]) = (data));



#endif