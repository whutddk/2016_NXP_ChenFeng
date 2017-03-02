/**
 * @file DEV_MMA8451.h
 * @version 0.1[By LPLD]
 * @date 2013-09-24
 * @brief MMA8451������ٶȴ������豸��������
 *
 * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
 *
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * http://www.lpld.cn
 * mail:support@lpld.cn
 *
 * @par
 * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
 * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
 * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
 * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
 * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
 * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
 */
#ifndef __DEV_MMA8451_H__
#define __DEV_MMA8451_H__

#include "common.h"
#include "HW_I2C.h"


/********�û����޸�ֵ ��ʼ***********/
//����MMA8451�õ���I2Cͨ��
#define MMA8451_I2CX    (I2C0)

//����MMA8451�õ���SCL����
#define MMA8451_SCLPIN  (PTD8)

//����MMA8451�õ���SDA����
#define MMA8451_SDAPIN  (PTD9)
/********�û����޸�ֵ ����***********/

//==========MMA8451 �Ĵ�����ַ==================//
#define MMA8451_REG_STATUS         0x00    //״̬�Ĵ���
#define MMA8451_REG_OUTX_MSB       0x01    //14λ���������8λ[7:0]
#define MMA8451_REG_OUTX_LSB       0x02    //14λ���������6λ[7:2]
#define MMA8451_REG_OUTY_MSB       0x03    //14λ���������8λ[7:0]
#define MMA8451_REG_OUTY_LSB       0x04    //14λ���������6λ[7:2]
#define MMA8451_REG_OUTZ_MSB       0x05    //14λ���������8λ[7:0]
#define MMA8451_REG_OUTZ_LSB       0x06    //14λ���������6λ[7:2]
#define MMA8451_REG_SYSMOD         0x0B    //��ǰϵͳģʽ
#define MMA8451_REG_WHOAMI         0x0D    //�豸ID�Ĵ���
#define MMA8451_REG_CTRL_REG1      0x2A    //ϵͳ���ƼĴ���1
#define MMA8451_REG_CTRL_REG2      0x2B    //ϵͳ���ƼĴ���2

//=========MMA8451 ���ܲ���==================//
#define MMA8451_DEV_ADDR   0x1D //Normally,can range 0x08 to 0xEF
#define MMA8451_DEV_WRITE  MMA8451_DEV_ADDR<<1 | 0x00
#define MMA8451_DEV_READ   MMA8451_DEV_ADDR<<1 | 0x01
#define MMA8451_DEV_ID     0x1A   //MMA8451�豸ID

//=========MMA8451 STATUS�Ĵ��� �Ĵ���λ==================//
#define MMA8451_STATUS_X_READY   0x01
#define MMA8451_STATUS_Y_READY   0x02
#define MMA8451_STATUS_Z_READY   0x04
#define MMA8451_STATUS_XYZ_READY 0x08
#define MMA8451_STATUS_X_OW      0x10
#define MMA8451_STATUS_Y_OW      0x20
#define MMA8451_STATUS_Z_OW      0x40
#define MMA8451_STATUS_XYZ_OW    0x80

//����SCL Bus Speedȡֵ����������Ϊ50Mhzʱ�ļ�����
#define MMA8451_SCL_50KHZ                   (0x33) 
#define MMA8451_SCL_100KHZ                  (0x2B)  
#define MMA8451_SCL_150KHZ                  (0x28)
#define MMA8451_SCL_200KHZ                  (0x23)
#define MMA8451_SCL_250KHZ                  (0x21)
#define MMA8451_SCL_300KHZ                  (0x20)
#define MMA8451_SCL_400KHZ                  (0x17)  

//��������
uint8 LPLD_MMA8451_Init(void);
void LPLD_MMA8451_WriteReg(uint8, uint8);
uint8 LPLD_MMA8451_ReadReg(uint8);
int16 LPLD_MMA8451_GetResult(uint8, uint8);

#endif 