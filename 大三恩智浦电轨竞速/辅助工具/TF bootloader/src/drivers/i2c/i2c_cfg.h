/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��i2c_cfg.h
 * ����         ��I2Cͷ�ļ�
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/
#ifndef _I2C_CFG_H_
#define _I2C_CFG_H_

#define MMA7660_I2C_ADDRESS                         0x4C    //MMA7660 ������ٶ�ģ��ĵ�ַ




#define i2c_DisableAck(I2Cn)        I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_TXAK_MASK

//
#define i2c_RepeatedStart(I2Cn)     I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_RSTA_MASK


//�����ź�
#define i2c_Start(I2Cn)             I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_TX_MASK;\
                                    I2C_C1_REG(I2Cx[I2Cn]) |= I2C_C1_MST_MASK

//��ͣ�ź�
#define i2c_Stop(I2Cn)              I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_MST_MASK;\
                                    I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TX_MASK

//�������ģʽ(Ӧ��)
#define i2c_EnterRxMode(I2Cn)       I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TX_MASK;\
                                    I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TXAK_MASK
//�������ģʽ(��Ӧ��)
#define i2c_PutinRxMode(I2Cn)       I2C_C1_REG(I2Cx[I2Cn]) &= ~I2C_C1_TX_MASK

//�ȴ� I2C0_S
#define i2c_Wait(I2Cn)              while(( I2C_S_REG(I2Cx[I2Cn]) & I2C_S_IICIF_MASK)==0) {} \
                                    I2C_S_REG(I2Cx[I2Cn]) |= I2C_S_IICIF_MASK;

//дһ���ֽ�
#define i2c_write_byte(I2Cn,data)   I2C_D_REG(I2Cx[I2Cn]) = data


#endif //_I2C_CFG_H_



