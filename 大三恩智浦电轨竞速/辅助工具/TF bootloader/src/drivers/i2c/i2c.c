/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��i2c.c
 * ����         ��i2c��������
 * ��ע         ���޸��Թٷ�����
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/


#include "common.h"
#include "i2c.h"


unsigned char MasterTransmission;
unsigned char SlaveID;

volatile struct I2C_MemMap *I2Cx[2] = {I2C0_BASE_PTR, I2C1_BASE_PTR}; //��������ָ�����鱣�� I2Cx �ĵ�ַ


/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�I2C_init
*  ����˵����I2C��ʼ�������ò����ʺ�����I2C
*  ����˵����I2Cn        ģ��ţ�I2C0��I2C1��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void I2C_init(I2Cn i2cn)
{
    u8 mult;
    if(bus_clk_khz <= 50000)mult = 0;         //bus һ��Ƶ
    else  if(bus_clk_khz <= 100000)mult = 1;  //bus ����Ƶ
    else      mult = 2;                       //bus �ķ�Ƶ

    if(i2cn == I2C0)
    {
        /* ����ʱ�� */
        SIM_SCGC4 |= SIM_SCGC4_I2C0_MASK;         //���� I2C0ʱ��

        /* ���� I2C0���ܵ� GPIO �ӿ� */
        if(I2C0_SCL == PTB0)
            PORTB_PCR0 = PORT_PCR_MUX(2);
        else if(I2C0_SCL == PTB2)
            PORTB_PCR2 = PORT_PCR_MUX(2);
        else if(I2C0_SCL == PTD8)
            PORTD_PCR8 = PORT_PCR_MUX(2);
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

        if(I2C0_SDA == PTB1)
            PORTB_PCR1 = PORT_PCR_MUX(2);
        else if(I2C0_SDA == PTB3)
            PORTB_PCR3 = PORT_PCR_MUX(2);
        else if(I2C0_SDA == PTD9)
            PORTD_PCR9 = PORT_PCR_MUX(2);
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����
    }
    else
    {
        /* ����ʱ�� */
        SIM_SCGC4 |= SIM_SCGC4_I2C1_MASK;         //���� I2C1ʱ��

        /* ���� I2C1���ܵ� GPIO �ӿ� */
        if(I2C1_SCL == PTE1)
            PORTE_PCR1 = PORT_PCR_MUX(6);
        else if(I2C1_SCL == PTC10)
            PORTC_PCR10 = PORT_PCR_MUX(2);
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

        if(I2C1_SDA == PTE0)
            PORTE_PCR0 = PORT_PCR_MUX(6);
        else if (I2C1_SDA == PTC11)
            PORTC_PCR11 = PORT_PCR_MUX(2);
        else
            assert_failed(__FILE__, __LINE__);                   //���ùܽ�����

    }

    /* ����Ƶ�� */
    I2C_F_REG(I2Cx[i2cn])  = I2C_F_MULT(mult) | I2C_F_ICR(17) ;  // I2C Frequency Divider register (I2Cx_F)  I2C��Ƶ�Ĵ���   I2C�������Ϊ 400k
    // MULT=00  ��  mul = 1
    // ICR =14  ICRΪClock rateʱ��Ƶ��
    // �ӡ�k16 reference manual.pdf��P1460 �ɵã�
    // ICR    SCL Divider   SDA Hold Value    SCL Hold (Start) Value    SCL Hold (Stop) Value
    //  14        80              17                   34                         41
    //  17       128              21                   58                         65
    // I2C baud rate = bus speed (Hz)/(mul �� SCL divider)  ������ 50MHz/(1 ��128)=390.625kHz
    // SDA hold time = bus period (s) �� mul �� SDA hold value
    // SCL start hold time = bus period (s) �� mul �� SCL start hold value
    // SCL stop hold time = bus period (s) �� mul �� SCL stop hold value

    /* ʹ�� IIC1 */
    I2C_C1_REG(I2Cx[i2cn]) = I2C_C1_IICEN_MASK;
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
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
void I2C_StartTransmission (I2Cn i2cn, u8 SlaveID, MSmode Mode)
{

    //ASSERT(Mode == MWSR || Mode == MRSW);         //ʹ�ö��ԣ���� Mode �Ƿ�Ϊ �� �� д

    SlaveID = ( SlaveID << 1 ) | Mode ;            //ȷ��д��ַ�Ͷ���ַ

    /* send start signal */
    i2c_Start(i2cn);

    /* send ID with W/R bit */
    i2c_write_byte(i2cn, SlaveID);
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
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
    u16 n;
    for(n = 1; n < 50000; n++)      //ע�⣬�������̫С���ᵼ�¶�ȡ����
    {
        asm("nop");
    }
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
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
u8 I2C_ReadAddr(I2Cn i2cn, u8 SlaveID, u8 Addr)
{
    u8 result;

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
*                             Ұ��Ƕ��ʽ����������
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
void I2C_WriteAddr(I2Cn i2cn, u8 SlaveID, u8 Addr, u8 Data)
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