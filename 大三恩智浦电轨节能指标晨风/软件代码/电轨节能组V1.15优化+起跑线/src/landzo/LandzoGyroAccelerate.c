#include  "LandzoGyroAccelerate.h"

//==========MMA8451 寄存器地址==================//
#define MMA8451_DSR   0x00   // Data Status Register
#define MMA8451_XOUT  0x01   // 14-bit output value X 
#define MMA8451_YOUT  0x03   // 14-bit output value Y 
#define MMA8451_ZOUT  0x05   // 14-bit output value Z
#define MMA8451_CFG   0x0E   //  XYZ_DATA_CFG Register   [1:0]scale value range 
#define MMA8451_SR    0x29   // Auto-Wake/Sleep and 
#define MMA8451_CR1   0x2A   // System Control 1 Registe
//[5:3]bits select the Output Data Rate (ODR) for acceleration samples 

//=========MMA8451 功能参数==================//
#define MMA8451_MODE    0x11     // DR = 50 Hz  F_READ=0   ACTIVE=1
#define MMA8451_SCAL    0x00    // 0x00 2g   0x01  4g   0x10  8g
#define MMA8451_WADDR   0X38    //write address   [7:1]=0x1c   [0]=0   [7:0]=0x38
#define MMA8451_RADDR   0X39    //read address    [7:1]=0x1c   [0]=1    [7:0]=0x39


/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_Delay_ms
*  功能说明：延时程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/

void IIC_MMA8451_Delay_ms(uint8_t ms)
{
  volatile uint16_t ii,jj,n;
  if (ms<1) ms=1;
  for(ii=0;ii<ms;ii++)
    //  for(jj=0;jj<1335;jj++);     //16MHz--1ms
    //for(jj=0;jj<4005;jj++);    //48MHz--1ms  
    //for(jj=0;jj<5341;jj++);    //64MHz--1ms  
    for(jj=0;jj<18200;jj++);     //200MHz--1ms  
} 


/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_Delay_1us
*  功能说明：延时程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/

void IIC_MMA8451_Delay_1us(uint8_t us)                 //1us延时函数
{
  volatile uint8_t i ,j ;
  if(us < 1 )  us = 1 ;
  for(i=0;i<us;i++) 
  {
    for(j = 0 ;j < 15 ;j ++);
    
  }
  
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_Start
*  功能说明：启动I2C总线子程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
void IIC_MMA8451_Start(void)
{ 
  MMA8451_SDAO = 1;  
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时1us 
  MMA8451_CLK = 1;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
  MMA8451_SDAO = 0;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);  
  MMA8451_CLK = 0;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_Stop
*  功能说明：停止I2C总线数据传送子程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
void IIC_MMA8451_Stop(void)
{ 
  MMA8451_SDAO = 0;   	   //时钟保持高，数据线从低到高一次跳变，I2C通信停止
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时1us 
  MMA8451_CLK = 1;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);
  MMA8451_SDAO = 1;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);
  MMA8451_CLK = 0;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_Slave_ACK
*  功能说明：从机发送应答位子程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
void IIC_MMA8451_Slave_ACK(void)
{
  MMA8451_SDAO = 0; 
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
  MMA8451_CLK = 1;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);			
  MMA8451_CLK = 0;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
  MMA8451_SDAO = 1;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_Slave_NOACK
*  功能说明：从机发送非应答位子程序，迫使数据传输过程结束
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
void IIC_MMA8451_Slave_NOACK(void)
{ 
  MMA8451_SDAO = 1;  
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
  MMA8451_CLK = 1;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);
  MMA8451_CLK = 0;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
  MMA8451_SDAO = 0;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_Check_ACK
*  功能说明：主机应答位检查子程序，迫使数据传输过程结束
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
uint8_t IIC_MMA8451_Check_ACK(void)
{ 
  uint8_t check ;
  
  MMA8451_SDAO = 1; 
  MMA8451_DDRA = 0 ;
  MMA8451_SDAI = 1 ;
  
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
  MMA8451_CLK = 1;
  check = 0;
  if(MMA8451_SDAI == 1)    // 若BFSDA=1 表明非应答，置位非应答标志F0
    check = 1;
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时1us 
  MMA8451_CLK = 0;     
  MMA8451_DDRA = 1 ;
  MMA8451_SDAO = 1 ;
  return  check ;
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_SendByte
*  功能说明：发送一个字节
*  参数说明：ch
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
void IIC_MMA8451_SendByte(uint8_t ch)
{ 
  uint8_t n=8;     // 向BFSDA上发送一位数据字节，共八位
  MMA8451_DDRA=1;
  while(n--)
  { 
    if((ch&0x80) == 0x80)    // 若要发送的数据最高位为1则发送位1
    {
      MMA8451_SDAO = 1;    // 传送位1
      IIC_MMA8451_Delay_1us(MMA8451_DELAY);
      MMA8451_CLK = 1;
      IIC_MMA8451_Delay_1us(MMA8451_DELAY);
      MMA8451_CLK = 0;  
      IIC_MMA8451_Delay_1us(MMA8451_DELAY);
      
    }
    else
    {  
      MMA8451_SDAO = 0;    // 否则传送位0
      IIC_MMA8451_Delay_1us(MMA8451_DELAY);
      MMA8451_CLK = 1;
      IIC_MMA8451_Delay_1us(MMA8451_DELAY);
      MMA8451_CLK = 0;  
      IIC_MMA8451_Delay_1us(MMA8451_DELAY);
    }
    ch = ch<<1;    // 数据左移一位
  }
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：IIC_MMA8451_ReceiveByte
*  功能说明：接收一字节子程序
*  参数说明： 无
*  函数返回：返回接收的数据
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
uint8_t IIC_MMA8451_ReceiveByte(void)
{
  uint8_t n=8;    // 从BFSDA线上读取一上数据字节，共八位
  uint8_t tdata = 0;
  MMA8451_DDRA = 0 ;
  while(n--)
  {                
    MMA8451_SDAI = 1;
    IIC_MMA8451_Delay_1us(MMA8451_DELAY);
    MMA8451_CLK=0;
    IIC_MMA8451_Delay_1us(MMA8451_DELAY);
    MMA8451_CLK = 1;
    IIC_MMA8451_Delay_1us(MMA8451_DELAY);
    tdata = tdata<<1;    // 左移一位，或_crol_(temp,1)
    if(MMA8451_SDAI == 1)
      tdata = tdata|0x01;    // 若接收到的位为1，则数据的最后一位置1
    else 
      tdata = tdata&0xfe;    // 否则数据的最后一位置0      
  }
  MMA8451_CLK=0;  
  MMA8451_DDRA = 1;
  return(tdata);
}

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：IIC_WriteAddr
*  功能说明：写入一个字节数据到I2C设备指定寄存器地址
*  参数说明：slave_add     8位写从机地址
*            Addr        从机的寄存器地址
*            Data        数据
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/

uint8_t IIC_MMA8451_WriteAddr(u8 slave_add, u8 Addr, u8 Data)
{
  uint8_t check = 1;
  
  IIC_MMA8451_Start();                // 启动I2C
  
  IIC_MMA8451_SendByte(slave_add);     // 发送地址位
  check = IIC_MMA8451_Check_ACK();                // 检查应答位  
  //uart_putchar(UART0,check);
  if(check == 1)
  { 
    return IICEorr;    // 若非应答表明器件错误或已坏，置错误标志位SystemError
  }
  
  IIC_MMA8451_SendByte(Addr);     
  check= IIC_MMA8451_Check_ACK();    // 检查应答位
  if (check == 1)
  {
    return IICEorr;    // 若非应答表明器件错误或已坏，置错误标志位SystemError
  }
  
  IIC_MMA8451_SendByte(Data);     
  check= IIC_MMA8451_Check_ACK();    // 检查应答位
  if (check == 1)
  {
    return IICEorr;    // 若非应答表明器件错误或已坏，置错误标志位SystemError
  }
  
  IIC_MMA8451_Stop();         // 全部发完则停止 
  
  return IICOK;
}

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：I2C_ReadAddr
*  功能说明：读取I2C设备指定地址寄存器的数据
*  参数说明：slave_add     8位写从机地址
*            Addr        从机的寄存器地址
*            *rece_data  接收数据数组
*  函数返回：从机寄存器的数据
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
uint8_t IIC_MMA8451_ReadAddr_byte(uint8_t slave_add, uint8_t Addr, uint8_t *rece_data)
{
  uint8_t check;
  
  IIC_MMA8451_Start();                                       //ST
  IIC_MMA8451_SendByte(MMA8451_WADDR);                        // MMA8451_WADDR  
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
  check =IIC_MMA8451_Check_ACK();
  //uart_putchar(UART0,check);
  if(check == 1)
  {
    return IICEorr ;
  }  
  
  IIC_MMA8451_SendByte(Addr);                                 //REGISTER ADDR             
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时5us 
  check =IIC_MMA8451_Check_ACK();
  if(check == 1)
  {
    return IICEorr ;
  }
  
  IIC_MMA8451_Start();  
  
  IIC_MMA8451_SendByte(slave_add);
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时1us 
  check =IIC_MMA8451_Check_ACK();
  if(check == 1)
  {
    return IICEorr ;
  } 
  
  *rece_data=IIC_MMA8451_ReceiveByte();
  
  IIC_MMA8451_Slave_NOACK();    // 收到最后一个字节后发送一个非应答位
  
  IIC_MMA8451_Stop();
  return IICOK;
  
}

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：I2C_ReadAddr
*  功能说明：读取I2C设备指定地址寄存器的数据
*  参数说明：slave_add     8位读从机地址
*            Addr        从机的寄存器地址
*            *rece_data  接收数据数组
*            n           数据个数
*  函数返回：从机寄存器的数据
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
uint8_t IIC_MMA8451_ReadAddr(uint8_t slave_add, uint8_t Addr, uint8_t *rece_data, uint16_t n)
{
  uint8_t receive_da,check;
  uint16_t i=0;
  uint8_t *rece_data_buff ;
  rece_data_buff = rece_data ;
  
  IIC_MMA8451_Start();                                       //ST
  IIC_MMA8451_SendByte(MMA8451_WADDR);                        // MMA8451_WADDR  
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时1us 
  check =IIC_MMA8451_Check_ACK();
  if(check == 1)
  {
    return IICEorr ;
  }  
  
  IIC_MMA8451_SendByte(Addr);                                 //REGISTER ADDR             
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时1us 
  check =IIC_MMA8451_Check_ACK();
  if(check == 1)
  {
    return IICEorr ;
  }
  
  IIC_MMA8451_Start();  
  
  IIC_MMA8451_SendByte(slave_add);
  IIC_MMA8451_Delay_1us(MMA8451_DELAY);      // 延时1us 
  check =IIC_MMA8451_Check_ACK();
  if(check == 1)
  {
    return IICEorr ;
  } 
  
  for(;n > 1;n--)
  { 
    receive_da=IIC_MMA8451_ReceiveByte();
    rece_data_buff[i++]=receive_da;
    IIC_MMA8451_Slave_ACK();    // 收到一个字节后发送一个应答位    
  }
  
  receive_da=IIC_MMA8451_ReceiveByte();
  rece_data_buff[i++]=receive_da;
  IIC_MMA8451_Slave_NOACK();    // 收到最后一个字节后发送一个非应答位
  
  IIC_MMA8451_Stop();
  return IICOK;
  
}

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：LandzoMMA8451_init
*  功能说明：初始化I2C设备接口
*  参数说明：无
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
uint8_t LandzoMMA8451_init(void)
{
  uint8_t LandzoOK ;
  
  gpio_init (PORTB , 7, GPO,HIGH);
  gpio_init (PORTB , 10, GPO,HIGH);
  
  LandzoOK = IIC_MMA8451_WriteAddr(MMA8451_WADDR, MMA8451_CFG, MMA8451_SCAL);
  IIC_MMA8451_Delay_ms(10) ;                    //延迟100us
  if(!LandzoOK)  return IICEorr; 
  
  LandzoOK = IIC_MMA8451_WriteAddr(MMA8451_WADDR, MMA8451_CR1, MMA8451_MODE);
  IIC_MMA8451_Delay_ms(10) ;                    //延迟100us
  if(!LandzoOK)  return IICEorr; 
  
  return  IICOK ;  
  
}

/*********************************************************** 
函数名称：AngleAcceleration_Digital_init  
函数功能：数字加速度角度传感器初始化程序
入口参数：
出口参数：无 
备 注： 
***********************************************************/
void AngleAcceleration_Digital_init(void)
{
  uint8_t checkflg=0;
  
  adc_init(ADC1, AD10) ;     //PTB4
  adc_init(ADC1, AD11) ;     //PTB5
  adc_init(ADC1, AD12) ;     //PTB6
  gpio_init (PORTB , 7, GPO,HIGH);     //初始化I2C时钟引脚
  gpio_init (PORTB , 10, GPO,HIGH);    //初始化I2C数据引脚
  
  while(checkflg !=1)       //测试灯不闪烁，线未连接，查询硬件
  {
    checkflg = LandzoMMA8451_init();   
    IIC_MMA8451_Delay_1us(100);      // 延时100us
  }
}

/*********************************************************** 
函数名称：AngleAcceleration_AD   
函数功能：加速度角度传感器AD采集
入口参数：*AdColle   返回数据数组
出口参数：无 
备 注： 
***********************************************************/

void AngleAcceleration_Digital_Data(uint16_t *AdColle)
{
  uint8_t checkflg=0;
  uint8_t XYZ_CFG_Data ;
  uint8_t XYZ_Data[6]={0};
  
  while(checkflg !=1)      //测试灯不闪烁，线未连接，查找硬件问题
  {
    checkflg = IIC_MMA8451_ReadAddr_byte(MMA8451_RADDR, MMA8451_DSR, &XYZ_CFG_Data);   
    IIC_MMA8451_Delay_1us(100);      // 延时100us
  }      
  
  if(XYZ_CFG_Data&0x80)
  { 
    checkflg=0;
    while(checkflg !=1)           //测试灯不闪烁，线未连接，查找硬件问题
    {
      checkflg=IIC_MMA8451_ReadAddr(MMA8451_RADDR, MMA8451_XOUT, XYZ_Data, 6);
      IIC_MMA8451_Delay_1us(100);      // 延时100us
    }    
    
    for(int i=0;i<3;i++)
    {
      AdColle[i+3]=( XYZ_Data[i*2]<<8|XYZ_Data[i*2+1] )>>4;    //MMA8451 AD采集14位  向右移4位，数据位一个12位的AD采集精度 
      if(AdColle[i+3]>=0x0800)AdColle[i+3]= 0 - ( ( ~AdColle[i+3] )&0x07ff );
      //数据转换，根据数据手册MMA8451Q  第47页 Table 75. Accelerometer Output Data
      //将数据转化为一个 +-2g的范围    
    }
    
  }   

  AdColle[0] = ad_once(ADC1,AD10, ADC_12bit) ;  //AR2
  AdColle[1] = ad_once(ADC1, AD11, ADC_12bit) ;  //AR1
  AdColle[2] = ad_once(ADC1, AD12, ADC_12bit) ;  //AR3  
}

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：AngleAcceleration_init
*  功能说明：加速度角度传感器初始化程序
*  参数说明：无
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
void AngleAcceleration_init(void)
{
     adc_init(ADC1, AD10) ;     //PTB4
     adc_init(ADC1, AD11) ;     //PTB5
     adc_init(ADC1, AD12) ;     //PTB6
     adc_init(ADC1, AD13) ;     //PTB7
     adc_init(ADC1, AD14) ;     //PTB10
     adc_init(ADC1, AD15) ;     //PTB11  
}

/*********************************************************** 
函数名称：AngleAcceleration_AD   
函数功能：加速度角度传感器AD采集
入口参数：*AdColle       存放采集到的数组

出口参数：无 
备 注： 
***********************************************************/

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：AngleAcceleration_AD
*  功能说明：加速度角度传感器AD采集
*  参数说明：*AdColle       存放采集到的数组
*             Count         采集次数
*  函数返回：无
*  修改时间：2012-1-20
*  备    注：
*************************************************************************/
uint8 AngleAcceleration_AD(uint16_t *AdColle,uint8_t Count)
{
   uint8  BCount ;
   BCount = Count ;      
     AdColle[0] += ad_sum(ADC1,AD10, ADC_12bit, ADCOUT) ;  //AR2
     AdColle[1] += ad_sum(ADC1, AD11, ADC_12bit, ADCOUT) ;  //AR1
     AdColle[2] += ad_sum(ADC1, AD12, ADC_12bit, ADCOUT) ;  //AR3
     AdColle[3] += ad_sum(ADC1,AD13, ADC_12bit, ADCOUT) ;  //ZG源程序
     AdColle[4] += ad_sum(ADC1, AD14, ADC_12bit, ADCOUT) ;  //YG源程序
     AdColle[5] += ad_sum(ADC1, AD15, ADC_12bit, ADCOUT) ;  //xG源程序 
     
     return (BCount+ADCOUT) ;//ADCOUT==5;  
   
}