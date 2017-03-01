/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
* �ļ���       �� adc.c
* ����         ������ģ��ʵ��
*
* ʵ��ƽ̨     ��landzo���ӿ�����
* ��汾       ��
* Ƕ��ϵͳ     ��
*
* ����         ��landzo ������
* �Ա���       ��http://landzo.taobao.com/

**********************************************************************************/

#include  "i2c.h"


volatile struct I2C_MemMap *I2Cx[2] = {I2C0_BASE_PTR, I2C1_BASE_PTR}; //��������ָ�����鱣�� I2Cx �ĵ�ַ



//============================================================================
//�������ƣ�iic_init
//���ܸ�Ҫ����ʼ��IICXģ�顣
//����˵����MoudleNum:ģ���
//�������أ���
//============================================================================
void iic_init(I2Cn i2cn)
{
  uint8_t mult;

  if(i2cn==I2C0)
  {
    SIM_SCGC4 |=SIM_SCGC4_I2C0_MASK;
    /* ���� I2C0���ܵ� GPIO �ӿ� */
    if((I2C0_SCL_PIN == PTB0) || (I2C0_SCL_PIN == PTB2) ||I2C0_SCL_PIN == PTC8 )
      port_init (I2C0_SCL_PIN, ALT2 | PULLUP );
    else
      ASSERT(0);                              //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
    
    if ((I2C0_SDA_PIN == PTB1) ||  (I2C0_SDA_PIN == PTB3) ||I2C0_SDA_PIN == PTC9 )
      port_init (I2C0_SDA_PIN, ALT2 | PULLUP );
    else
      ASSERT(0); 
    
    
    I2C0_C1=0X00;
    I2C0_S=I2C_S_IICIF_MASK;
    
  }
  else
  {
    
    //sclk =  core_clk_khz * 1000;

    SIM_SCGC4 |=SIM_SCGC4_I2C1_MASK;
    /* ���� I2C1���ܵ� GPIO �ӿ� */
    if(I2C1_SCL_PIN == PTE1)
      port_init (I2C1_SCL_PIN, ALT6 | PULLUP );
    else if(I2C1_SCL_PIN == PTC10)
      port_init (I2C1_SCL_PIN, ALT2 | PULLUP );
    else
      ASSERT(0);                          //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
    
    if(I2C1_SDA_PIN == PTE0)
      port_init (I2C1_SDA_PIN, ALT6 | PULLUP );
    else if (I2C1_SDA_PIN == PTC11)
      port_init (I2C1_SDA_PIN, ALT2 | PULLUP );
    else
      ASSERT(0);
    
    I2C1_C1=0X00;
    I2C1_S=I2C_S_IICIF_MASK;
    
  }
  
  
  /* ����Ƶ�� */
  if(bus_clk_khz <= 24*1000)mult = 0;         //bus һ��Ƶ
  else  if(bus_clk_khz <=  48*1000)mult = 1;  //bus ����Ƶ
  else      mult = 2;                       //bus �ķ�Ƶ
  

  I2C_F_REG(I2Cx[i2cn])  = ( 0                        // I2C Frequency Divider register (I2Cx_F)  I2C��Ƶ�Ĵ���   I2C�������Ϊ 400k
                            | I2C_F_MULT(mult)        // �������� mul = MULT + 1
                            | I2C_F_ICR(17)          // ʱ������ = ICR_2_SCL_divider[ICR] ������� ICR �� SCL_divider ӳ���ϵ
                            );

  
  /* ʹ�� IIC1 */
  I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK  ;     //ʹ��I2C
  
  
  
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�I2C_StartTransmission
*  ����˵�������� I2C ����
*  ����˵����I2Cn        ģ��ţ�I2C0��I2C1��
*            SlaveID     7λ�ӻ���ַ
*            MSmode      ��дģʽ�� MWSR �� MRSW ��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void I2C_StartTransmission (I2Cn i2cn, uint8_t SlaveID, MSmode Mode)
{

    //ASSERT(Mode == MWSR || Mode == MRSW);         //ʹ�ö��ԣ���� Mode �Ƿ�Ϊ �� �� д

    SlaveID = ( SlaveID << 1 ) | Mode ;            //ȷ��д��ַ�Ͷ���ַ

    /* send start signal */
    i2c_Start(i2cn);

    /* send ID with W/R bit */
    i2c_write_byte(i2cn, SlaveID);
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�Pause
*  ����˵������ʱ��I2C��д����Ҫ��ʱһ��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ڹٷ�������������ʱ��
*************************************************************************/
void Pause(void)
{
    uint16_t n;
    for(n = 1; n < 20000; n++)      //ע�⣬�������̫С���ᵼ�¶�ȡ����
    {
        asm("nop");
    }
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�I2C_ReadAddr
*  ����˵������ȡI2C�豸ָ����ַ�Ĵ���������
*  ����˵����I2Cn        ģ��ţ�I2C0��I2C1��
*            SlaveID     7λ�ӻ���ַ
*            Addr        �ӻ��ļĴ�����ַ
*  �������أ��ӻ��Ĵ���������
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
uint8_t I2C_ReadAddr(I2Cn i2cn, uint8_t SlaveID, uint8_t Addr)
{
    uint8_t result;

    /* Send Slave Address */
    I2C_StartTransmission (i2cn, SlaveID, MWSR);
    i2c_Wait(i2cn);

    /* Write Register Address */
    i2c_write_byte(i2cn, Addr);
    i2c_Wait(i2cn);

    /* Do a repeated start */
    i2c_RepeatedStart(i2cn);

    /* Send Slave Address */
    i2c_write_byte(i2cn, ( SlaveID << 1) | MRSW );
    i2c_Wait(i2cn);

    /* Put in Rx Mode */
    i2c_PutinRxMode(i2cn);

    /* Turn off ACK since this is second to last byte being read*/
    i2c_DisableAck(i2cn); //��Ӧ��

    /* Dummy read ��ٶ�ȡ*/
    result = I2C_D_REG(I2Cx[i2cn]);
    i2c_Wait(i2cn);

    /* Send stop since about to read last byte */
    i2c_Stop(i2cn);

    /* Read byte */
    result = I2C_D_REG(I2Cx[i2cn]);

    return result;
}


/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�I2C_WriteAddr
*  ����˵����д��һ���ֽ����ݵ�I2C�豸ָ���Ĵ�����ַ
*  ����˵����I2Cn        ģ��ţ�I2C0��I2C1��
*            SlaveID     7λ�ӻ���ַ
*            Addr        �ӻ��ļĴ�����ַ
*            Data        ����
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void I2C_WriteAddr(I2Cn i2cn, uint8_t SlaveID, uint8_t Addr, uint8_t Data)
{
    /* send data to slave */
    I2C_StartTransmission(i2cn, SlaveID, MWSR);    //��������
    i2c_Wait(i2cn);

    i2c_write_byte(i2cn, Addr);                    //д��ַ
    i2c_Wait(i2cn);

    i2c_write_byte(i2cn, Data);                    //д����
    i2c_Wait(i2cn);

    i2c_Stop(i2cn);

    Pause();                                        //��ʱ̫�̵Ļ�������д����
}

////============================================================================
////�������ƣ�send_signal
////���ܸ�Ҫ��������Ҫ������ʼ��ֹͣ�ź�   ��
////����˵����  i2cn:ģ���
////          Signal: 'S'(Start),������ʼ�ź�      'O'(Over),  ����ֹͣ�ź�
////�������أ���
////============================================================================
//void send_signal(I2Cn i2cn, uint8_t Signal)
//{
//
//  if(i2cn==I2C0)
//  {
//    if (Signal == 'S')
//    {
//      //i2c0_c����ģʽѡ��λMST��0��Ϊ1,���Բ�����ʼ�ź�
//      I2C0_C1 |=0x20;
//    }
//    else if (Signal == 'O')
//    {
//      //����ģʽѡ��λMST��1��Ϊ0,���Բ���ֹͣ�ź�
//      I2C0_C1 &=0xdf;
//    }
//  }
//  else if(i2cn==I2C1)
//  {
//    if (Signal == 'S')
//    {
//      //i2c0_c����ģʽѡ��λMST��0��Ϊ1,���Բ�����ʼ�ź�
//      I2C1_C1 |=0x20;
//    }
//    else if (Signal == 'O')
//    {
//      //����ģʽѡ��λMST��1��Ϊ0,���Բ���ֹͣ�ź�
//      I2C1_C1 &=0xdf;
//    }
//  }
//}
////============================================================================
////�������ƣ�waitflag
////���ܸ�Ҫ�� ��ʱ����,ѭ��������Ӧ���־λ,������ɱ�־λ,�ж�MCU
////          �Ƿ���յ�Ӧ���źŻ�һ���ֽ��Ƿ����������ϴ������
////����˵����         i2cn:ģ���
////             x:x = 'A'(Ack),�ȴ�Ӧ��;x = 'T'(Transmission),�ȴ�һ���ֽ�
////                 ���ݴ������
////�������أ�0:�յ�Ӧ���źŻ�һ���ֽڴ������;
////         1:δ�յ�Ӧ���źŻ�һ�� �ֽ�û������
////============================================================================
//
//uint8_t waitflag(I2Cn i2cn, uint8_t x)
//
//{
//  uint16_t ErrTime, i;
//
//  ErrTime = 255*10;            //�����ѯ��ʱʱ��
//  for (i = 0;i < ErrTime;i++)
//  {
//    if (x == 'A')           //�ȴ�Ӧ���ź�
//    {
//      if(( I2C_S_REG(I2Cx[i2cn])  & I2C_S_RXAK_MASK)==0)
//        return 0;      //������һ���ֽں�,�յ��˴ӻ���Ӧ���ź�
//    }
//    else if (x == 'T')      //�ȴ��������һ���ֽ��ź�
//    {
//      if ((I2C_S_REG(I2Cx[i2cn]) & I2C_S_IICIF_MASK) != 0)
//      {
//        (I2C_S_REG(I2Cx[i2cn]) |=(0 | I2C_S_IICIF_MASK));  //��IICIF��־λ
//        return 0;       //�ɹ�������һ���ֽ�
//      }
//    }
//  }
//  if (i >= ErrTime)
//    return 1;               //��ʱ,û���յ�Ӧ���źŻ�����һ���ֽ�
//  return 0; 
//}
////============================================================================
////�������ƣ�iic_read1
////���ܸ�Ҫ���Ӵӻ���1���ֽ�����
////����˵����  i2cn:ģ���
////          DeviceAddr:�豸��ַ
////          AccessAddr:���ʵ�ַ
////          Data:�����յ���һ���ֽ�����
////�������أ�Ϊ0,�ɹ���һ���ֽ�;Ϊ1,��һ���ֽ�ʧ��
////����˵��: �ڲ����� send_signal,wait
////============================================================================
//uint8_t iic_read1(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t *Data)
//{
//  
//  I2C_C1_REG(I2Cx[i2cn])     |= 0x10;           //TX = 1,MCU����Ϊ����ģʽ
//  send_signal(i2cn, 'S');               //���Ϳ�ʼ�ź�
//  I2C_D_REG(I2Cx[i2cn])  = DeviceAddr & 0xfe;   //�����豸��ַ,��֪ͨ�ӻ���������
//  
//  if (waitflag(i2cn, 'T'))                  //�ȴ�һ���ֽ����ݴ������
//  {
//    
//    return 1;                        //û�д��ͳɹ�,��һ���ֽ�ʧ��
//  }
//  if (waitflag(i2cn, 'A'))                 //�ȴ��ӻ�Ӧ���ź�
//  {
//    
//    return 1;                         //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ��
//  }
//  I2C_D_REG(I2Cx[i2cn])  = AccessAddr;        //���ͷ��ʵ�ַ
//  if (waitflag(i2cn, 'T'))                //�ȴ�һ���ֽ����ݴ������
//  {
//    
//    return 1;                        //û�д��ͳɹ�,��һ���ֽ�ʧ��
//  }
//  if (waitflag(i2cn, 'A'))                //�ȴ��ӻ�Ӧ���ź�
//  {
//    
//    return 1;                        //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ��
//  }
//  I2C_C1_REG(I2Cx[i2cn]) |= 0x04;//��MCU������ģ ʽ�£����λд1������һ�����¿�ʼ�ź�
//  I2C_D_REG(I2Cx[i2cn]) = DeviceAddr | 0x01; //֪ͨ�ӻ���Ϊ��������
//  if (waitflag(i2cn, 'T'))               //�ȴ�һ���ֽ����ݴ������
//  {
//    
//    return 1;                       //û�д��ͳɹ�,��һ���ֽ�ʧ��
//  }
//  if (waitflag(i2cn, 'A'))               //�ȴ��ӻ�Ӧ���ź�
//  {
//    
//    return 1;                      //û�еȵ�Ӧ���ź�,��һ���ֽ�ʧ��
//  }
//  I2C_C1_REG(I2Cx[i2cn]) &= 0xef;           //TX = 0,MCU����Ϊ����ģʽ
//  *Data = I2C_D_REG(I2Cx[i2cn]);            //����IIC1D,׼����������
//  if (waitflag(i2cn, 'T'))              //�ȴ�һ���ֽ����ݴ������
//  {
//    
//    return 1;                      //û�д��ͳɹ�,��һ���ֽ�ʧ��
//  }
//  send_signal(i2cn, 'O');           //����ֹͣ�ź�
//  *Data = I2C_D_REG(I2Cx[i2cn]);            //�������յ���һ������
//  
//  return 0;                          //��ȷ���յ�һ���ֽ�����
//  
//  
//}
//
////============================================================================
////�������ƣ�iic_write1
////���ܸ�Ҫ����ӻ�д1���ֽ�����
////����˵����  i2cn:ģ���
////          DeviceAddr:�豸��ַ
////          AccessAddr:���ʵ�ַ
////          Data:Ҫ�����ӻ���1���ֽ�����
////�������أ�Ϊ0,�ɹ�дһ���ֽ�;Ϊ1,дһ���ֽ�ʧ��
////����˵��: �ڲ����� send_signal,wait
////============================================================================
//
//uint8_t iic_write1(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t Data)
//{
//  
//  I2C_C1_REG(I2Cx[i2cn]) |= 0x10;             //TX = 1,MCU����Ϊ����ģʽ
//  send_signal(i2cn, 'S');             //���Ϳ�ʼ�ź�
//  I2C_D_REG(I2Cx[i2cn]) = DeviceAddr & 0xfe;  //�����豸��ַ,��֪ͨ�ӻ���������
//  if (waitflag('T',i2cn))                //�ȴ�һ���ֽ����ݴ������
//    return 1;                        //û�д��ͳɹ�,дһ���ֽ�ʧ��
//  if (waitflag('A',i2cn))               //�ȴ��ӻ�Ӧ���ź�
//    return 1;                       //û�еȵ�Ӧ���ź�,дһ���ֽ�ʧ��
//  I2C_D_REG(I2Cx[i2cn]) = AccessAddr;         //���ͷ��ʵ�ַ
//  if (waitflag('T',i2cn))               //�ȴ�һ���ֽ����ݴ������
//    return 1;                       //û�д��ͳɹ�,дһ���ֽ�ʧ��
//  if (waitflag('A',i2cn))               //�ȴ��ӻ�Ӧ���ź�
//    return 1;                      //û�еȵ�Ӧ���ź�,дһ���ֽ�ʧ��
//  I2C_D_REG(I2Cx[i2cn]) = Data;             //д����
//  if (waitflag('T',i2cn))              //�ȴ�һ���ֽ����ݴ������
//    return 1;                      //û�д��ͳɹ�,дһ���ֽ�ʧ��
//  if (waitflag('A',i2cn))              //�ȴ��ӻ�Ӧ���ź�
//    return 1;                      //û�еȵ�Ӧ���ź�,дһ���ֽ�ʧ��
//  send_signal('O',i2cn);           //����ֹͣ�ź�
//  return 0;
//}
////============================================================================
////�������ƣ� iic_readn
////���ܸ�Ҫ�� �Ӵӻ���N���ֽ�����
////����˵����  i2cn:ģ���
////          DeviceAddr:�豸��ַ
////          AccessAddr:���ʵ�ַ
////          Data:�������ݵĻ�����
////          N:�Ӵӻ������ֽڸ���
////�������أ� Ϊ0,�ɹ���N���ֽ�;Ϊ1,��N���ֽ�ʧ��
////����˵��: �ڲ�����iic_read1
////============================================================================
//uint8_t iic_readn(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr, uint8_t Data[], uint8_t N)
//{
//  uint16_t i, j;
//  for (i = 0;i < N;i++)
//  {
//    for(j = 0;j <15*40 ;j++); //��С��ʱ(���͵�ÿ���ֽ�֮��Ҫ��ʱ����)
//    if (iic_read1(i2cn,DeviceAddr, AccessAddr + i, &Data[i]))
//      return 1;             //����һ���ֽ�û�н��յ�,����ʧ�ܱ�־:1
//  }
//  if (i >= N)
//    return 0;                 //�ɹ�����N������,���سɹ���־:0
//}
//
//
////============================================================================
////�������ƣ� iic_writen
////���ܸ�Ҫ�� ��ӻ�дN���ֽ�����
////����˵����  i2cn:ģ���
////          DeviceAddr:�豸��ַ
////          AccessAddr:���ʵ�ַ
////          Data:Ҫд�������
////          N:�Ӵӻ������ֽڸ���
////�������أ� Ϊ0,�ɹ�дN���ֽ�;Ϊ1,дN���ֽ�ʧ��
////����˵��: �ڲ�����iic_write1
////============================================================================
//uint8_t iic_writen(I2Cn i2cn,uint8_t DeviceAddr, uint8_t AccessAddr,uint8_t Data[], uint8_t N)
//{
//  uint16_t i, j;
//  for (i = 0;i < N;i++)
//  {
//    for(j = 0;j < 15*40;j++); //��С��ʱ(���͵�ÿ���ֽ�֮��Ҫ��ʱ����)
//    if (iic_write1(i2cn,DeviceAddr, AccessAddr + i, Data[i]))
//      return 1;            //����һ���ֽ�û�з��ͳ�ȥ,����ʧ�ܱ�־:1
//  }
//  if (i >= N)
//    return 0;                //�ɹ�����N������,���سɹ���־:0
//}
//
