#include "common.h"
#include "gpio.h"
#include "SCCB.h"

#define DEV_ADR  ADDR_OV7725 			 /*�豸��ַ����*/

/*******************************************************************************
* Function Name  : SCCB_delay
* Description    : �ӳ�ʱ��
* Input          : None
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
static void SCCB_delay(volatile u16 i)
{
    while(i)
    {
        i--;
    }
}


/********************************************************************
 * ��������SCCB_Configuration
 * ����  ��SCCB�ܽ�����
 * ����  ����
 * ���  ����
 * ע��  ����
 ********************************************************************/
void SCCB_GPIO_init(void)
{
    gpio_init  (PORTB, 10, GPO, 0); //��ʼ��SCL
    gpio_init  (PORTB, 11, GPO, 0); //��ʼ��SDA
}


/********************************************************************
 * ��������SCCB_Start
 * ����  ��SCCB��ʼ�ź�
 * ����  ����
 * ���  ����
 * ע��  ���ڲ�����
 ********************************************************************/
static u8 SCCB_Start(void)
{
    SDA_H();
    SCL_H();
    SCCB_DELAY();

    SDA_DDR_IN();
    if(!SDA_IN())
    {
        SDA_DDR_OUT();
        return 0;	/* SDA��Ϊ�͵�ƽ������æ,�˳� */
    }
    SDA_DDR_OUT();
    SDA_L();

    SCCB_DELAY();

    SDA_DDR_IN();
    if(SDA_IN())
    {
        SDA_DDR_OUT();
        return 0;	/* SDA��Ϊ�ߵ�ƽ�����߳���,�˳� */
    }
    SDA_DDR_OUT();
    SDA_L();
    //SCCB_delay();
    return 1;
}



/********************************************************************
 * ��������SCCB_Stop
 * ����  ��SCCBֹͣ�ź�
 * ����  ����
 * ���  ����
 * ע��  ���ڲ�����
 ********************************************************************/
static void SCCB_Stop(void)
{
    SCL_L();
    //SCCB_DELAY();
    SDA_L();
    SCCB_DELAY();
    SCL_H();
    //SCCB_DELAY();
    SDA_H();
    SCCB_DELAY();
}



/********************************************************************
 * ��������SCCB_Ack
 * ����  ��SCCBӦ��ʽ
 * ����  ����
 * ���  ����
 * ע��  ���ڲ�����
 ********************************************************************/
static void SCCB_Ack(void)
{
    SCL_L();
    SCCB_DELAY();
    SDA_L();
    SCCB_DELAY();
    SCL_H();
    SCCB_DELAY();
    SCL_L();
    SCCB_DELAY();
}



/********************************************************************
 * ��������SCCB_NoAck
 * ����  ��SCCB ��Ӧ��ʽ
 * ����  ����
 * ���  ����
 * ע��  ���ڲ�����
 ********************************************************************/
static void SCCB_NoAck(void)
{
    SCL_L();
    SCCB_DELAY();
    SDA_H();
    SCCB_DELAY();
    SCL_H();
    SCCB_DELAY();
    SCL_L();
    SCCB_DELAY();
}




/********************************************************************
 * ��������SCCB_WaitAck
 * ����  ��SCCB �ȴ�Ӧ��
 * ����  ����
 * ���  ������Ϊ:=1��ACK,=0��ACK
 * ע��  ���ڲ�����
 ********************************************************************/
static int SCCB_WaitAck(void)
{
    SCL_L();
    SCCB_DELAY();
    SDA_H();
    SCCB_DELAY();

    SCL_H();

    SDA_DDR_IN();
    SCCB_DELAY();

    if(SDA_IN())
    {
        SDA_DDR_OUT();
        SCL_L();
        return 0;
    }
    SDA_DDR_OUT();
    SCL_L();
    return 1;
}



/*******************************************************************
* ��������SCCB_SendByte
* ����  �����ݴӸ�λ����λ
* ����  ��SendByte: ���͵�����
* ���  ����
* ע��  ���ڲ�����
*********************************************************************/
static void SCCB_SendByte(u8 SendByte)
{
    u8 i = 8;
    while(i--)
    {
        SCL_L();
        SCCB_DELAY();
        if(SendByte & 0x80)
        {
            SDA_H();
        }
        else
        {
            SDA_L();
        }
        SendByte <<= 1;
        SCCB_DELAY();
        SCL_H();
        SCCB_DELAY();
    }
    SCL_L();
}




/******************************************************************
* ��������SCCB_ReceiveByte
* ����  �����ݴӸ�λ����λ
* ����  ����
* ���  ��SCCB���߷��ص�����
* ע��  ���ڲ�����
*******************************************************************/
static int SCCB_ReceiveByte(void)
{
    u8 i = 8;
    u8 ReceiveByte = 0;

    SDA_H();
    SCCB_DELAY();
    SDA_DDR_IN();

    while(i--)
    {
        ReceiveByte <<= 1;
        SCL_L();
        SCCB_DELAY();
        SCL_H();
        SCCB_DELAY();

        if(SDA_IN())
        {
            ReceiveByte |= 0x01;
        }

    }
    SDA_DDR_OUT();
    SCL_L();
    return ReceiveByte;
}





/*****************************************************************************************
* ��������SCCB_WriteByte
* ����  ��дһ�ֽ�����
* ����  ��- WriteAddress: ��д���ַ 	- SendByte: ��д������	- DeviceAddress: ��������
* ���  ������Ϊ:=1�ɹ�д��,=0ʧ��
* ע��  ����
*****************************************************************************************/
int SCCB_WriteByte( u16 WriteAddress , u8 SendByte )
{
    if(!SCCB_Start())
    {
        return 0;
    }
    SCCB_SendByte( DEV_ADR );                    /* ������ַ */
    if( !SCCB_WaitAck() )
    {
        SCCB_Stop();
        return 0;
    }
    SCCB_SendByte((u8)(WriteAddress & 0x00FF));   /* ���õ���ʼ��ַ */
    SCCB_WaitAck();
    SCCB_SendByte(SendByte);
    SCCB_WaitAck();
    SCCB_Stop();
    return 1;
}




/******************************************************************************************************************
 * ��������SCCB_ReadByte
 * ����  ����ȡһ������
 * ����  ��- pBuffer: ��Ŷ������� 	- length: ����������	- ReadAddress: ��������ַ		 - DeviceAddress: ��������
 * ���  ������Ϊ:=1�ɹ�����,=0ʧ��
 * ע��  ����
 **********************************************************************************************************************/
int SCCB_ReadByte(u8 *pBuffer,   u16 length,   u8 ReadAddress)
{
    if(!SCCB_Start())
    {
        return 0;
    }
    SCCB_SendByte( DEV_ADR );         /* ������ַ */
    if( !SCCB_WaitAck() )
    {
        SCCB_Stop();
        return 0;
    }
    SCCB_SendByte( ReadAddress );           /* ���õ���ʼ��ַ */
    SCCB_WaitAck();
    SCCB_Stop();

    if(!SCCB_Start())
    {
        return 0;
    }
    SCCB_SendByte( DEV_ADR + 1 );               /* ������ַ */
    if(!SCCB_WaitAck())
    {
        SCCB_Stop();
        return 0;
    }
    while(length)
    {
        *pBuffer = SCCB_ReceiveByte();
        if(length == 1)
        {
            SCCB_NoAck();
        }
        else
        {
            SCCB_Ack();
        }
        pBuffer++;
        length--;
    }
    SCCB_Stop();
    return 1;
}




