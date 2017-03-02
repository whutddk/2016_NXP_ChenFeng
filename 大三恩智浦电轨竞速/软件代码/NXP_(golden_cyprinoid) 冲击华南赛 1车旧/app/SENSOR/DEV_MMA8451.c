/**
 * @file DEV_MMA8451.c
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
#include "DEV_MMA8451.h"

static void MMA8451_Delay(void);

/*
 *   LPLD_MMA8451_Init
 *   ��ʼ��MMA8451��������ʼ��8451�����I2C�ӿ��Լ�8451�ļĴ���
 *
 *   ������
 *    ��
 *
 *   ����ֵ
 *      �豸ID
 */
uint8 LPLD_MMA8451_Init(void)
{
  I2C_InitTypeDef i2c_init_param;
  uint8 device_id;
    
  //��ʼ��MMA8451_I2CX
  i2c_init_param.I2C_I2Cx = MMA8451_I2CX;       //��DEV_MMA8451.h���޸ĸ�ֵ
  i2c_init_param.I2C_IntEnable = FALSE;
  i2c_init_param.I2C_ICR = MMA8451_SCL_200KHZ;  //�ɸ���ʵ�ʵ�·����SCLƵ��
  i2c_init_param.I2C_SclPin = MMA8451_SCLPIN;   //��DEV_MMA8451.h���޸ĸ�ֵ
  i2c_init_param.I2C_SdaPin = MMA8451_SDAPIN;   //��DEV_MMA8451.h���޸ĸ�ֵ
  i2c_init_param.I2C_Isr = NULL;
  
  LPLD_I2C_Init(i2c_init_param);
  
  //��ȡ�豸ID
  device_id = LPLD_MMA8451_ReadReg(MMA8451_REG_WHOAMI);

  //���мĴ�������
  LPLD_MMA8451_WriteReg(MMA8451_REG_SYSMOD, 0x00);       //Ĭ��ģʽStandby Mode
  LPLD_MMA8451_WriteReg(MMA8451_REG_CTRL_REG2, 0x02);    //High Resolution
  LPLD_MMA8451_WriteReg(MMA8451_REG_CTRL_REG1, 0x01);    //����ģʽ,800HZ
  
  return device_id;
}

/*
 *   LPLD_MMA8451_WriteReg
 *   �ú�����������MMA8451�ļĴ���
 *
 *   ������
 *   RegisterAddress 
 *    |__ MMA8451�Ĵ�����ַ
 *   Data
 *    |__ ����д����ֽ������� 
 */
void LPLD_MMA8451_WriteReg(uint8 RegisterAddress, uint8 Data)
{
  //���ʹӻ���ַ
  LPLD_I2C_StartTrans(MMA8451_I2CX, MMA8451_DEV_ADDR, I2C_MWSR);
  LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
  
  //дMMA8451�Ĵ�����ַ
  LPLD_I2C_WriteByte(MMA8451_I2CX, RegisterAddress);
  LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
  
  //��Ĵ�����д��������
  LPLD_I2C_WriteByte(MMA8451_I2CX, Data);
  LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);

  LPLD_I2C_Stop(MMA8451_I2CX);

  //MMA8451_Delay();
}

/*
 *   LPLD_MMA8451_WriteReg
 *   �ú������ڶ�ȡMMA8451������
 *
 *   ������
 *     RegisterAddress 
 *        |__ MMA8451�Ĵ�����ַ
 *   ����ֵ
 *      ���ٴ������Ĳ���ֵ
 */
uint8 LPLD_MMA8451_ReadReg(uint8 RegisterAddress)
{
  uint8 result;

  //���ʹӻ���ַ
  LPLD_I2C_StartTrans(MMA8451_I2CX, MMA8451_DEV_ADDR, I2C_MWSR);
  LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);

  //дMMA8451�Ĵ�����ַ
  LPLD_I2C_WriteByte(MMA8451_I2CX, RegisterAddress);
  LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);

  //�ٴβ�����ʼ�ź�
  LPLD_I2C_ReStart(MMA8451_I2CX);

  //���ʹӻ���ַ�Ͷ�ȡλ
  LPLD_I2C_WriteByte(MMA8451_I2CX, MMA8451_DEV_READ);
  LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);

  //ת������ģʽΪ��
  LPLD_I2C_SetMasterWR(MMA8451_I2CX, I2C_MRSW);

  //�ر�Ӧ��ACK
  LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_OFF);//�ر�ACK

  //��IIC����
  result =LPLD_I2C_ReadByte(MMA8451_I2CX);
  LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);

  //����ֹͣ�ź�
  LPLD_I2C_Stop(MMA8451_I2CX);

   //��IIC����
  result = LPLD_I2C_ReadByte(MMA8451_I2CX);
  
  MMA8451_Delay();

  return result;
}

/*
 * �������ܣ���MAA8451���ٶ����
 * �����w
 *       Status - ���ݼĴ���״̬
 *       Regs_Addr - ���ݼĴ�����ַ
 * ��������ֵ�����ٶ�ֵ��int16��
 */   
int16 LPLD_MMA8451_GetResult(uint8 Status, uint8 Regs_Addr) 
{
  uint8 ret=0;
  uint16 cnt=0;
  int16 result,temp;
  
  if(Regs_Addr>MMA8451_REG_OUTZ_LSB)
    return 0;
  
  // �ȴ�ת����ɲ�ȡ��ֵ 
  while(!(ret&Status)) 
  {
    ret = LPLD_MMA8451_ReadReg( MMA8451_REG_STATUS);
    if(++cnt>500)
      break;
  }
  
  result= LPLD_MMA8451_ReadReg( Regs_Addr);
  temp  = LPLD_MMA8451_ReadReg( Regs_Addr+1);
  result=result<<8;
  result=result|temp;
  
  return result>>2;
}


/*
 * ��ʱ����
 */
static void MMA8451_Delay(void){
  int n;
  for(n=1;n<200;n++) {
    asm("nop");
  }
}