#include "MPU6050.h"
#include "arm_math.h"  //DSP��
#include  "i2c.h"


//************************************
/*ģ��IIC�˿�������붨��*/
#define SCL_H         GPIO_SET(PORTE,1,1)
#define SCL_L         GPIO_SET(PORTE,1,0)

#define SDA_H         GPIO_SET(PORTE,0,1)
#define SDA_L         GPIO_SET(PORTE,0,0)

#define SCL_read      gpio_get(PORTE,1)
#define SDA_read      gpio_get(PORTE,0)


unsigned char BUF[12];       //�������ݻ�����
char  test=0; 				 //IIC�õ�
short T_X,T_Y,T_Z;		 //X,Y,Z�ᣬ�¶�
short G_X,G_Y,G_Z;
//****************************************
//�������ͼ�����
//****************************************
int16 temp_acc_y=0,temp_acc_z=0;
float temp_Gry_X=0;				   	//��������м����������������Ϊ���ε�
float Acc_angle=0.0;	
float angle=0.0;															//���ٶȵ���Ǽ���ó��Ľ��Ϊ��������
float Gry_angle=0,Gry_angle_n_1=0;									//�����ǻ��ֵ�ǰֵ����һ�ε�ֵ��

uint8 chucuo=0;

/*******************************************************************************
* Function Name  : I2C_delay
* Description    : Simulation IIC Timing series delay
* Input          : None
* Output         : None
* Return         : None
****************************************************************************** */
void I2C_delay(void)
{
		
   u8 i=60; //��������Ż��ٶ�	����������͵�5����д��
   while(i)
   {
     i--;
   }
}

void delay5ms(void)
{
		
   int i=10000;
   while(i)
   {
     i--;
   }
}
/*******************************************************************************
* Function Name  : I2C_Start
* Description    : Master Start Simulation IIC Communication
* Input          : None
* Output         : None
* Return         : Wheather	 Start
****************************************************************************** */
uint8 I2C_Start(void)
{
	SDA_H;
	SCL_H;
	I2C_delay();
	if(!SDA_read)
	  return FALSE;	//SDA��Ϊ�͵�ƽ������æ,�˳�
	SDA_L;
	I2C_delay();
	if(SDA_read)
	  return FALSE;	//SDA��Ϊ�ߵ�ƽ�����߳���,�˳�
	SDA_L;
	I2C_delay();
	return TRUE;
}
/*******************************************************************************
* Function Name  : I2C_Stop
* Description    : Master Stop Simulation IIC Communication
* Input          : None
* Output         : None
* Return         : None
****************************************************************************** */
void I2C_Stop(void)
{
	SCL_L;
	I2C_delay();
	SDA_L;
	I2C_delay();
	SCL_H;
	I2C_delay();
	SDA_H;
	I2C_delay();
}
/*******************************************************************************
* Function Name  : I2C_Ack
* Description    : Master Send Acknowledge Single
* Input          : None
* Output         : None
* Return         : None
****************************************************************************** */
void I2C_Ack(void)
{	
	SCL_L;
	I2C_delay();
	SDA_L;
	I2C_delay();
	SCL_H;
	I2C_delay();
	SCL_L;
	I2C_delay();
}
/*******************************************************************************
* Function Name  : I2C_NoAck
* Description    : Master Send No Acknowledge Single
* Input          : None
* Output         : None
* Return         : None
****************************************************************************** */
void I2C_NoAck(void)
{	
	SCL_L;
	I2C_delay();
	SDA_H;
	I2C_delay();
	SCL_H;
	I2C_delay();
	SCL_L;
	I2C_delay();
}
/*******************************************************************************
* Function Name  : I2C_WaitAck
* Description    : Master Reserive Slave Acknowledge Single
* Input          : None
* Output         : None
* Return         : Wheather	 Reserive Slave Acknowledge Single
****************************************************************************** */
uint8 I2C_WaitAck(void) 	 //����Ϊ:=1��ACK,=0��ACK
{
	SCL_L;
	I2C_delay();
	SDA_H;			
	I2C_delay();
	SCL_H;
	I2C_delay();
	if(SDA_read)
	{
      SCL_L;
	  I2C_delay();
      return FALSE;
	}
	SCL_L;
	I2C_delay();
	return TRUE;
}
/*******************************************************************************
* Function Name  : I2C_SendByte
* Description    : Master Send a Byte to Slave
* Input          : Will Send Date
* Output         : None
* Return         : None
****************************************************************************** */
void I2C_SendByte(u8 SendByte) //���ݴӸ�λ����λ//
{
    u8 i=8;
    while(i--)
    {
        SCL_L;
        I2C_delay();
      if(SendByte&0x80)
        SDA_H;
      else
        SDA_L;
      SendByte<<=1;
      I2C_delay();
      SCL_H;
      I2C_delay();
    }
    SCL_L;
}


/*******************************************************************************
* Function Name  : I2C_RadeByte
* Description    : Master Reserive a Byte From Slave
* Input          : None
* Output         : None
* Return         : Date From Slave
****************************************************************************** */
uint8 I2C_RadeByte(void)  //���ݴӸ�λ����λ//
{
    u8 i=8;
    u8 ReceiveByte=0;

    SDA_H;				
    while(i--)
    {
      ReceiveByte<<=1;
      SCL_L;
      I2C_delay();
	  SCL_H;
      I2C_delay();	
      if(SDA_read)
      {
        ReceiveByte|=0x01;
      }
    }
    SCL_L;
    return ReceiveByte;
}
//ZRX
//���ֽ�д��*******************************************

void Single_WriteIIC(uint8 SlaveID,uint8 REG_Address,uint8 REG_data)		     //void
{
  	if(!I2C_Start())
//	  return FALSE;
	  chucuo=1;
    I2C_SendByte(SlaveID);   //�����豸��ַ+д�ź�//I2C_SendByte(((REG_Address & 0x0700) >>7) | SlaveAddress & 0xFFFE);//���ø���ʼ��ַ+������ַ
    if(!I2C_WaitAck())
	{
	  I2C_Stop();
//	  return FALSE;
	  chucuo=60;
	}
    I2C_SendByte(REG_Address );   //���õ���ʼ��ַ
    I2C_WaitAck();	
    I2C_SendByte(REG_data);
    I2C_WaitAck();
    I2C_Stop();
    delay5ms();
//    return TRUE;
}

//���ֽڶ�ȡ*****************************************
uint8 Single_ReadIIC(uint8 SlaveID,uint8 REG_Address)
{
    unsigned char REG_data;     	
	if(!I2C_Start())
	  return FALSE;
    I2C_SendByte(SlaveID); //I2C_SendByte(((REG_Address & 0x0700) >>7) | REG_Address & 0xFFFE);//���ø���ʼ��ַ+������ַ
    if(!I2C_WaitAck())
	{
	  I2C_Stop();
	  test=1;
	  return FALSE;
	}
    I2C_SendByte((u8) REG_Address);   //���õ���ʼ��ַ
    I2C_WaitAck();
    I2C_Start();
    I2C_SendByte(SlaveID+1);
    I2C_WaitAck();

	REG_data= I2C_RadeByte();
    I2C_NoAck();
    I2C_Stop();
    //return TRUE;
	return REG_data;

}						





//**************************************
//��IIC���߷���һ���ֽ�����
//**************************************
/*void IIC_SendByte(unsigned char dat)
{
    unsigned char i;
    for (i=0; i<8; i++)         //8λ������
    {
        dat <<= 1;              //�Ƴ����ݵ����λ
        SDA = CY;               //�����ݿ�
        SCL = 1;                //����ʱ����
        Delay5us();             //��ʱ
        SCL = 0;                //����ʱ����
        Delay5us();             //��ʱ
    }
    IIC_RecvACK();
}*/
//**************************************
//��IIC���߽���һ���ֽ�����
//**************************************
/*unsigned char IIC_RecvByte()
{
    unsigned char i;
    unsigned char dat = 0;
    SDA = 1;                    //ʹ���ڲ�����,׼����ȡ����,
    for (i=0; i<8; i++)         //8λ������
    {
        dat <<= 1;
        SCL = 1;                //����ʱ����
        Delay5us();             //��ʱ
        dat |= SDA;             //������
        SCL = 0;                //����ʱ����
        Delay5us();             //��ʱ
    }
    return dat;
}*/
//**************************************
//��6050д��һ���ֽ�����
//**************************************
/*void Single_WriteIIC(unsigned char REG_Address,unsigned char REG_data)
{
    IIC_Start();                  //��ʼ�ź�
    IIC_SendByte(SlaveAddress);   //�����豸��ַ+д�ź�
    IIC_SendByte(REG_Address);    //�ڲ��Ĵ�����ַ��
    IIC_SendByte(REG_data);       //�ڲ��Ĵ������ݣ�
    IIC_Stop();                   //����ֹͣ�ź�
}*/
//**************************************
//��mpu6050��ȡһ���ֽ�����
//**************************************
/*unsigned char Single_ReadIIC(unsigned char REG_Address)
{
	unsigned char REG_data;
	IIC_Start();                   //��ʼ�ź�
	IIC_SendByte(SlaveAddress);    //�����豸��ַ+д�ź�
	IIC_SendByte(REG_Address);     //���ʹ洢��Ԫ��ַ����0��ʼ	
	IIC_Start();                   //��ʼ�ź�
	IIC_SendByte(SlaveAddress+1);  //�����豸��ַ+���ź�
	REG_data=IIC_RecvByte();       //�����Ĵ�������
	IIC_SendACK(1);                //����Ӧ���ź�
	IIC_Stop();                    //ֹͣ�ź�
	return REG_data;
}*/

//**************************************
//��ʼ��MPU6050
//**************************************
void InitMPU6050()
{
    gpio_init(PORTE,1,GPO,1);
    gpio_init(PORTE,0,GPO,1);
	Single_WriteIIC(SlaveAddress,PWR_MGMT_1, 0x00);										//��Դ����1���������״̬��ʱ��Ϊ�ڲ�8MHz
	Single_WriteIIC(SlaveAddress,SMPLRT_DIV, 0x04);										//��������125Hz
	Single_WriteIIC(SlaveAddress,CONFIG, 0x06);											//��ʹ��FSYNC,��ʹ����ͬ���������ʣ�DLPF_CFG[2~0],�����������Ƿ�ͨ��DLPF��																						//�Լ��ٶȺ������Ƕ���Ч�����Ƶ��Ϊ1kHz������SMPLRT_DIV��Ƶ�ʻ�׼
	Single_WriteIIC(SlaveAddress,GYRO_CONFIG, 0x10);										//���Բ⣬+-1000��/s
	Single_WriteIIC(SlaveAddress,ACCEL_CONFIG, 0x08);									//���Բ⣬+-4g
	       // Single_WriteIIC(0xd0,SMPLRT_DIV,0x07);//1khz
      //  Single_WriteIIC(0xd0,CONFIG,0x03);//44hz�˲�
       // Single_WriteIIC(0xd0,GYRO_CONFIG,0x00);//gyro 250du/s
       // Single_WriteIIC(0xd0,ACCEL_CONFIG,0x08);//acc +-4g
     //  Single_WriteIIC(0xd0,I2C_MST_CTRL,13);//400khz
     //  Single_WriteIIC(0xd0,0x6a,0x00);//mst_en=0
      //  Single_WriteIIC(0xd0,PWR_MGMT_1,0x00);//sleep=0
	//I2C_WriteAddr()
	
	
}

void READ_MPU6050()
{

   BUF[1]=Single_ReadIIC(SlaveAddress,ACCEL_XOUT_H);
   BUF[0]=Single_ReadIIC(SlaveAddress,ACCEL_XOUT_L);
   T_X=	(BUF[1]<<8)+BUF[0];
   T_X/=16.4; 						   //��ȡ����X������


   BUF[3]=Single_ReadIIC(SlaveAddress,ACCEL_YOUT_H);
   BUF[2]=Single_ReadIIC(SlaveAddress,ACCEL_YOUT_L);
   T_Y=	(BUF[3]<<8)+BUF[2];
   T_Y/=16.4; 						   //��ȡ����Y������

   BUF[5]=Single_ReadIIC(SlaveAddress,ACCEL_ZOUT_H);
   BUF[4]=Single_ReadIIC(SlaveAddress,ACCEL_ZOUT_L);
   T_Z=	(BUF[5]<<8)+BUF[4];
   T_Z/=16.4;


   BUF[7]=Single_ReadIIC(SlaveAddress,GYRO_XOUT_H);
   BUF[6]=Single_ReadIIC(SlaveAddress,GYRO_XOUT_L);
   G_X=	(BUF[7]<<8)+BUF[6];
   G_X/=16.4; 						   //��ȡ����X������


   BUF[9]=Single_ReadIIC(SlaveAddress,GYRO_YOUT_H);
   BUF[8]=Single_ReadIIC(SlaveAddress,GYRO_YOUT_L);
   G_Y=	(BUF[9]<<8)+BUF[8];
   G_Y/=16.4; 						   //��ȡ����Y������

   BUF[11]=Single_ReadIIC(SlaveAddress,GYRO_ZOUT_H);
   BUF[10]=Single_ReadIIC(SlaveAddress,GYRO_ZOUT_L);
   G_Z=	(BUF[11]<<8)+BUF[10];
   G_Z/=16.4;

//   BUF[6]=Single_ReadIIC(MPU3050_Addr,TMP_L);
//   BUF[7]=Single_ReadIIC(MPU3050_Addr,TMP_H);
 //  T_T=(BUF[7]<<8)|BUF[6];
 //  T_T = 35+ ((double) (T_T + 13200)) / 280;// ��ȡ������¶�
}


//**************************************
//��ȡmpu6050�ڲ����ݣ������ֽڣ��ϳ�����
//**************************************
int GetData(unsigned char REG_Address)										//����ֵΪ�з��ŵ����Σ�16λ
{
	int H,L;
	H=Single_ReadIIC(SlaveAddress,REG_Address);											//�ȶ����ֽڣ��ٶ����ֽ�
	L=Single_ReadIIC(SlaveAddress,REG_Address+1);
	return (H<<8)+L;   															//�ϳ����ݣ�Ϊ�з���������
}
//���ٶȼ�Y��Z���ԭʼ����
void Read_Acc()
{
	temp_acc_y=GetData(ACCEL_YOUT_H)+ACC_Y_offset;															//�õ����ٶ�X�����ݣ�16λ�Ķ����������룩��
	temp_acc_z=GetData(ACCEL_ZOUT_H)+ACC_Z_offset;															//�õ����ٶ�X�����ݣ�16λ�Ķ����Ʋ��룩��
}																										            	//����������Ϊ���ε�		
//�����м������ֵ
void count_Acc_angel()																					//�������
{
	Read_Acc();
  	if(temp_acc_y>0)
	{
		Acc_angle=atan2((float)temp_acc_y,(float)temp_acc_z)*(180/3.14159265);		   //�����м���
//		PrintShortIntDec(angle*10);																	//�͵����ڵ�ֵΪ��ֱ
//		Prints("	");
		Acc_angle=Acc_angle*1;
	}
	if(temp_acc_y<=0)
	{
	   Acc_angle=atan2((float)temp_acc_z,(float)temp_acc_y)*(180/3.14159265)-90;		//�����м���
//		PrintShortIntDec(-angle*10);																//�͵����ڵ�ֵΪ����
//		Prints("	");
	   Acc_angle=(-Acc_angle)*1;
	}
}
//�����Ǽ���X��Y��Ľ��ٶ�
void Read_Gry_X()
{
  	temp_Gry_X=GetData(GYRO_XOUT_H)+GRY_X_offset;	//��ȡ������X�����ݼĴ������õ����������ݣ�16λ�Ķ����Ʋ��룩��
	temp_Gry_X=temp_Gry_X*(0.030517);
}

void Balance_filter()
{
	count_Acc_angel();
	Read_Gry_X();
	angle=(0.98)*(angle+temp_Gry_X*0.005)+(0.02)*Acc_angle;
	
}

//���ּ���Ƕȣ�z�ᣩ
void count_integral_angel()																//�����ǻ��ּ������
{	
   Read_Gry_X();													
	Gry_angle_n_1=Gry_angle;																//�������õ���ĽǶ�
	Gry_angle=Gry_angle_n_1+temp_Gry_X*0.01;									      //����ʱ�䳣��
//	PrintShortIntDec(Gry_angle*0.30517);		   									//���ʹ���ʮ��������ʾ
//	Prints("\n");
}
