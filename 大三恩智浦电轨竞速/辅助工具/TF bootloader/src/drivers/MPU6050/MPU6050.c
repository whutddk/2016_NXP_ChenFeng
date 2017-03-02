#include "MPU6050.h"
#include "arm_math.h"  //DSP库
#include  "i2c.h"


//************************************
/*模拟IIC端口输出输入定义*/
#define SCL_H         GPIO_SET(PORTE,1,1)
#define SCL_L         GPIO_SET(PORTE,1,0)

#define SDA_H         GPIO_SET(PORTE,0,1)
#define SDA_L         GPIO_SET(PORTE,0,0)

#define SCL_read      gpio_get(PORTE,1)
#define SDA_read      gpio_get(PORTE,0)


unsigned char BUF[12];       //接收数据缓存区
char  test=0; 				 //IIC用到
short T_X,T_Y,T_Z;		 //X,Y,Z轴，温度
short G_X,G_Y,G_Z;
//****************************************
//定义类型及变量
//****************************************
int16 temp_acc_y=0,temp_acc_z=0;
float temp_Gry_X=0;				   	//计算倾角中间变量，读出的数据为整形的
float Acc_angle=0.0;	
float angle=0.0;															//加速度的倾角计算得出的结果为浮点类型
float Gry_angle=0,Gry_angle_n_1=0;									//陀螺仪积分当前值，上一次的值；

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
		
   u8 i=60; //这里可以优化速度	，经测试最低到5还能写入
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
	  return FALSE;	//SDA线为低电平则总线忙,退出
	SDA_L;
	I2C_delay();
	if(SDA_read)
	  return FALSE;	//SDA线为高电平则总线出错,退出
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
uint8 I2C_WaitAck(void) 	 //返回为:=1有ACK,=0无ACK
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
void I2C_SendByte(u8 SendByte) //数据从高位到低位//
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
uint8 I2C_RadeByte(void)  //数据从高位到低位//
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
//单字节写入*******************************************

void Single_WriteIIC(uint8 SlaveID,uint8 REG_Address,uint8 REG_data)		     //void
{
  	if(!I2C_Start())
//	  return FALSE;
	  chucuo=1;
    I2C_SendByte(SlaveID);   //发送设备地址+写信号//I2C_SendByte(((REG_Address & 0x0700) >>7) | SlaveAddress & 0xFFFE);//设置高起始地址+器件地址
    if(!I2C_WaitAck())
	{
	  I2C_Stop();
//	  return FALSE;
	  chucuo=60;
	}
    I2C_SendByte(REG_Address );   //设置低起始地址
    I2C_WaitAck();	
    I2C_SendByte(REG_data);
    I2C_WaitAck();
    I2C_Stop();
    delay5ms();
//    return TRUE;
}

//单字节读取*****************************************
uint8 Single_ReadIIC(uint8 SlaveID,uint8 REG_Address)
{
    unsigned char REG_data;     	
	if(!I2C_Start())
	  return FALSE;
    I2C_SendByte(SlaveID); //I2C_SendByte(((REG_Address & 0x0700) >>7) | REG_Address & 0xFFFE);//设置高起始地址+器件地址
    if(!I2C_WaitAck())
	{
	  I2C_Stop();
	  test=1;
	  return FALSE;
	}
    I2C_SendByte((u8) REG_Address);   //设置低起始地址
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
//向IIC总线发送一个字节数据
//**************************************
/*void IIC_SendByte(unsigned char dat)
{
    unsigned char i;
    for (i=0; i<8; i++)         //8位计数器
    {
        dat <<= 1;              //移出数据的最高位
        SDA = CY;               //送数据口
        SCL = 1;                //拉高时钟线
        Delay5us();             //延时
        SCL = 0;                //拉低时钟线
        Delay5us();             //延时
    }
    IIC_RecvACK();
}*/
//**************************************
//从IIC总线接收一个字节数据
//**************************************
/*unsigned char IIC_RecvByte()
{
    unsigned char i;
    unsigned char dat = 0;
    SDA = 1;                    //使能内部上拉,准备读取数据,
    for (i=0; i<8; i++)         //8位计数器
    {
        dat <<= 1;
        SCL = 1;                //拉高时钟线
        Delay5us();             //延时
        dat |= SDA;             //读数据
        SCL = 0;                //拉低时钟线
        Delay5us();             //延时
    }
    return dat;
}*/
//**************************************
//向6050写入一个字节数据
//**************************************
/*void Single_WriteIIC(unsigned char REG_Address,unsigned char REG_data)
{
    IIC_Start();                  //起始信号
    IIC_SendByte(SlaveAddress);   //发送设备地址+写信号
    IIC_SendByte(REG_Address);    //内部寄存器地址，
    IIC_SendByte(REG_data);       //内部寄存器数据，
    IIC_Stop();                   //发送停止信号
}*/
//**************************************
//从mpu6050读取一个字节数据
//**************************************
/*unsigned char Single_ReadIIC(unsigned char REG_Address)
{
	unsigned char REG_data;
	IIC_Start();                   //起始信号
	IIC_SendByte(SlaveAddress);    //发送设备地址+写信号
	IIC_SendByte(REG_Address);     //发送存储单元地址，从0开始	
	IIC_Start();                   //起始信号
	IIC_SendByte(SlaveAddress+1);  //发送设备地址+读信号
	REG_data=IIC_RecvByte();       //读出寄存器数据
	IIC_SendACK(1);                //接收应答信号
	IIC_Stop();                    //停止信号
	return REG_data;
}*/

//**************************************
//初始化MPU6050
//**************************************
void InitMPU6050()
{
    gpio_init(PORTE,1,GPO,1);
    gpio_init(PORTE,0,GPO,1);
	Single_WriteIIC(SlaveAddress,PWR_MGMT_1, 0x00);										//电源管理1，解除休眠状态，时钟为内部8MHz
	Single_WriteIIC(SlaveAddress,SMPLRT_DIV, 0x04);										//采样速率125Hz
	Single_WriteIIC(SlaveAddress,CONFIG, 0x06);											//不使能FSYNC,不使用外同步采样速率；DLPF_CFG[2~0],设置任意轴是否通过DLPF，																						//对加速度和陀螺仪都有效，输出频率为1kHz，决定SMPLRT_DIV的频率基准
	Single_WriteIIC(SlaveAddress,GYRO_CONFIG, 0x10);										//不自测，+-1000°/s
	Single_WriteIIC(SlaveAddress,ACCEL_CONFIG, 0x08);									//不自测，+-4g
	       // Single_WriteIIC(0xd0,SMPLRT_DIV,0x07);//1khz
      //  Single_WriteIIC(0xd0,CONFIG,0x03);//44hz滤波
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
   T_X/=16.4; 						   //读取计算X轴数据


   BUF[3]=Single_ReadIIC(SlaveAddress,ACCEL_YOUT_H);
   BUF[2]=Single_ReadIIC(SlaveAddress,ACCEL_YOUT_L);
   T_Y=	(BUF[3]<<8)+BUF[2];
   T_Y/=16.4; 						   //读取计算Y轴数据

   BUF[5]=Single_ReadIIC(SlaveAddress,ACCEL_ZOUT_H);
   BUF[4]=Single_ReadIIC(SlaveAddress,ACCEL_ZOUT_L);
   T_Z=	(BUF[5]<<8)+BUF[4];
   T_Z/=16.4;


   BUF[7]=Single_ReadIIC(SlaveAddress,GYRO_XOUT_H);
   BUF[6]=Single_ReadIIC(SlaveAddress,GYRO_XOUT_L);
   G_X=	(BUF[7]<<8)+BUF[6];
   G_X/=16.4; 						   //读取计算X轴数据


   BUF[9]=Single_ReadIIC(SlaveAddress,GYRO_YOUT_H);
   BUF[8]=Single_ReadIIC(SlaveAddress,GYRO_YOUT_L);
   G_Y=	(BUF[9]<<8)+BUF[8];
   G_Y/=16.4; 						   //读取计算Y轴数据

   BUF[11]=Single_ReadIIC(SlaveAddress,GYRO_ZOUT_H);
   BUF[10]=Single_ReadIIC(SlaveAddress,GYRO_ZOUT_L);
   G_Z=	(BUF[11]<<8)+BUF[10];
   G_Z/=16.4;

//   BUF[6]=Single_ReadIIC(MPU3050_Addr,TMP_L);
//   BUF[7]=Single_ReadIIC(MPU3050_Addr,TMP_H);
 //  T_T=(BUF[7]<<8)|BUF[6];
 //  T_T = 35+ ((double) (T_T + 13200)) / 280;// 读取计算出温度
}


//**************************************
//读取mpu6050内部数据，两个字节，合成数据
//**************************************
int GetData(unsigned char REG_Address)										//返回值为有符号的整形，16位
{
	int H,L;
	H=Single_ReadIIC(SlaveAddress,REG_Address);											//先读高字节，再读低字节
	L=Single_ReadIIC(SlaveAddress,REG_Address+1);
	return (H<<8)+L;   															//合成数据，为有符号整形数
}
//加速度计Y、Z轴的原始数据
void Read_Acc()
{
	temp_acc_y=GetData(ACCEL_YOUT_H)+ACC_Y_offset;															//得到加速度X轴数据（16位的二进制数补码）；
	temp_acc_z=GetData(ACCEL_ZOUT_H)+ACC_Z_offset;															//得到加速度X轴数据（16位的二进制补码）；
}																										            	//读出的数据为整形的		
//反正切计算倾角值
void count_Acc_angel()																					//计算倾角
{
	Read_Acc();
  	if(temp_acc_y>0)
	{
		Acc_angle=atan2((float)temp_acc_y,(float)temp_acc_z)*(180/3.14159265);		   //反正切计算
//		PrintShortIntDec(angle*10);																	//送到串口的值为正直
//		Prints("	");
		Acc_angle=Acc_angle*1;
	}
	if(temp_acc_y<=0)
	{
	   Acc_angle=atan2((float)temp_acc_z,(float)temp_acc_y)*(180/3.14159265)-90;		//反正切计算
//		PrintShortIntDec(-angle*10);																//送到串口的值为负数
//		Prints("	");
	   Acc_angle=(-Acc_angle)*1;
	}
}
//陀螺仪计算X、Y轴的角速度
void Read_Gry_X()
{
  	temp_Gry_X=GetData(GYRO_XOUT_H)+GRY_X_offset;	//读取陀螺仪X轴数据寄存器，得到陀螺仪数据（16位的二进制补码）；
	temp_Gry_X=temp_Gry_X*(0.030517);
}

void Balance_filter()
{
	count_Acc_angel();
	Read_Gry_X();
	angle=(0.98)*(angle+temp_Gry_X*0.005)+(0.02)*Acc_angle;
	
}

//积分计算角度（z轴）
void count_integral_angel()																//陀螺仪积分计算角速
{	
   Read_Gry_X();													
	Gry_angle_n_1=Gry_angle;																//积分所得到后的角度
	Gry_angle=Gry_angle_n_1+temp_Gry_X*0.01;									      //积分时间常数
//	PrintShortIntDec(Gry_angle*0.30517);		   									//发送串口十六进制显示
//	Prints("\n");
}
