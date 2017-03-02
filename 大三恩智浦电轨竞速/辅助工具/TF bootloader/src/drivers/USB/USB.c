/*
 * 文件名: USB.c
 * 用途: 定义USB底层协议函数和变量
 * 最后修改日期: 20121204
 *
 *
 * 说明:本页代码基于Freescale官方示例代码修改，源代码文件为 USB.c
 *    在本文件中将USB_Init函数移除
 *    将USB_EP_OUT_SizeCheck函数中的获得数据长度部分进行了修改
 *    将USB_Reset_Handler函数中的gu8USB_Toogle_flags变量修改为0xFE，原程序此处有BUG致使端点少接收一个字节
 */
#include "USB.h"
#include "USB_Desc.h"

//设置USB 缓冲区对齐
//USB缓冲区必须是512字节对齐
#pragma data_alignment=512

tBDT tBDTtable[16]; //为16个缓冲区分配缓冲区描述符

//定义端点0缓冲区
UINT8 gu8EP0_OUT_ODD_Buffer[EP0_SIZE];
UINT8 gu8EP0_OUT_EVEN_Buffer[EP0_SIZE];
UINT8 gu8EP0_IN_ODD_Buffer[EP0_SIZE];
UINT8 gu8EP0_IN_EVEN_Buffer[EP0_SIZE];
//定义端点1缓冲区
UINT8 gu8EP1_OUT_ODD_Buffer[EP1_SIZE];
UINT8 gu8EP1_OUT_EVEN_Buffer[EP1_SIZE];
UINT8 gu8EP1_IN_ODD_Buffer[EP1_SIZE];
UINT8 gu8EP1_IN_EVEN_Buffer[EP1_SIZE];
//定义端点2缓冲区
UINT8 gu8EP2_OUT_ODD_Buffer[EP2_SIZE];
UINT8 gu8EP2_OUT_EVEN_Buffer[EP2_SIZE];
UINT8 gu8EP2_IN_ODD_Buffer[EP2_SIZE];
UINT8 gu8EP2_IN_EVEN_Buffer[EP2_SIZE];
//定义端点3缓冲区
UINT8 gu8EP3_OUT_ODD_Buffer[EP3_SIZE];
UINT8 gu8EP3_OUT_EVEN_Buffer[EP3_SIZE];
UINT8 gu8EP3_IN_ODD_Buffer[EP3_SIZE];
UINT8 gu8EP3_IN_EVEN_Buffer[EP3_SIZE];
//定义端点缓冲区指针
UINT8 *BufferPointer[]=
{
    gu8EP0_OUT_ODD_Buffer,
    gu8EP0_OUT_EVEN_Buffer,
    gu8EP0_IN_ODD_Buffer,
    gu8EP0_IN_EVEN_Buffer,
    gu8EP1_OUT_ODD_Buffer,
    gu8EP1_OUT_EVEN_Buffer,
    gu8EP1_IN_ODD_Buffer,
    gu8EP1_IN_EVEN_Buffer,
    gu8EP2_OUT_ODD_Buffer,
    gu8EP2_OUT_EVEN_Buffer,
    gu8EP2_IN_ODD_Buffer,
    gu8EP2_IN_EVEN_Buffer,
    gu8EP3_OUT_ODD_Buffer,
    gu8EP3_OUT_EVEN_Buffer,
    gu8EP3_IN_ODD_Buffer,
    gu8EP3_IN_EVEN_Buffer
};
//定义端点缓冲区长度
const UINT8 cEP_Size[]=
{
    EP0_SIZE,
    EP0_SIZE,
    EP0_SIZE,
    EP0_SIZE,
    EP1_SIZE,
    EP1_SIZE,
    EP1_SIZE,
    EP1_SIZE,
    EP2_SIZE,
    EP2_SIZE,
    EP2_SIZE,
    EP2_SIZE,
    EP3_SIZE,
    EP3_SIZE,
    EP3_SIZE,
    EP3_SIZE
};

const UINT8* String_Table[4]=
{
    String_Descriptor0,
    String_Descriptor1,
    String_Descriptor2,
    String_Descriptor3
};


/* Global Variables for USB Handling */
UINT8 gu8USB_Flags;        //USB接收完成标志位
UINT8 gu8USBClearFlags;
UINT8 *pu8IN_DataPointer; //USB输入缓冲区指针
UINT8 gu8IN_Counter;
UINT8 gu8USB_Toogle_flags;//USB数据翻转标志位
UINT8 gu8Dummy;
UINT16 gu8Status;
UINT8 gu8Interface;       //USB接口标志位
UINT8 gu8HALT_EP;         //USB端点停止标志位
UINT8 gu8USB_State;       //USB进程标志位

tUSB_Setup *Setup_Pkt;//定义setup数据包指针

USB_REV_CALLBACK usb_rev_data_isr;

void USB_Rev_SetIsr(USB_REV_CALLBACK isr)
{
  usb_rev_data_isr = isr;
}

/*
* EP_IN_Transfer
*   端点IN传送，在不同USB模式下IN的含义不同
*     在USB主机模式下（USB host）  IN表示  USB Host接收 USB Device的数据包
*     在USB设备模式下（USB Device）IN表示  USB Host向 USB Device发送数据包
*   当前在USB Device模式下，该函数的作用是Device设备发送数据包
*/
void EP_IN_Transfer(UINT8 u8EP,UINT8 *pu8DataPointer,UINT8 u8DataSize)
{
  UINT8 *pu8EPBuffer;
  UINT8 u8EPSize;     //端点的数据长度
  UINT16 u16Lenght=0;
  UINT8 u8EndPointFlag;

  /*调整当前缓冲区的位置*/
  u8EndPointFlag=u8EP;
  if(u8EP)   //如果不是端点0,
    u8EP=(UINT8)(u8EP<<2);
  u8EP+=2; //EP值加2

  pu8EPBuffer=BufferPointer[u8EP];   //将新EP的BUFFER地址给pu8EPBuffer

  if(FLAG_CHK(fIN,gu8USBClearFlags)) //如果gu8USBClearFlags = 1
  {
      pu8IN_DataPointer = pu8DataPointer; //将用户数据存储区的首地址给pu8IN_DataPointer
      gu8IN_Counter = u8DataSize;         //将用户数据长度给gu8IN_Counter

      u16Lenght=(Setup_Pkt->wLength_h<<8)+Setup_Pkt->wLength_l ;//将setup数据的长度给u16Lenght
      if((u16Lenght < u8DataSize) && (u8EP==2)) //如果所发送的数据长度大于setup所设定的长度 同时 端点值 == 2
      {
          gu8IN_Counter=Setup_Pkt->wLength_l; //只发送setup中的低8位长度
      }
  }
  /*检查发送长度*/
  if(gu8IN_Counter > cEP_Size[u8EP]) //如果发送数据包的长度 大于32字节时
  {
      u8EPSize = cEP_Size[u8EP];     //将此时端点的长度限制在端点的默认长度
      gu8IN_Counter-=cEP_Size[u8EP]; //将数据包的长度减少EP_Size
      FLAG_CLR(fIN,gu8USBClearFlags);//将gu8USBClearFlags清零
  }
  else
  {
      u8EPSize = gu8IN_Counter;      //如果小于
      gu8IN_Counter=0;
      FLAG_SET(fIN,gu8USBClearFlags);//将gu8USBClearFlags置一
  }

  /*将用户缓冲的区的值复制到EP 缓冲区中准备发送*/
  tBDTtable[u8EP].Cnt=(u8EPSize);    //复制所要发送的数据长度

  while(u8EPSize--)
       *pu8EPBuffer++=*pu8IN_DataPointer++; //将用户的数据赋值给EP存储区

  if(FLAG_CHK(u8EndPointFlag,gu8USB_Toogle_flags)) //如果相应端点的gu8USB_Toogle_flags == 1
  {
      tBDTtable[u8EP].Stat._byte= kUDATA0;
      FLAG_CLR(u8EndPointFlag,gu8USB_Toogle_flags);//清零相应端点的gu8USB_Toogle_flags
  }
  else
  {
      tBDTtable[u8EP].Stat._byte= kUDATA1;
      FLAG_SET(u8EndPointFlag,gu8USB_Toogle_flags);//置位gu8USB_Toogle_flags
  }
}

/*
* EP_OUT_Transfer
*   端点OUT传送，在不同USB模式下OUT的含义不同
*     在USB主机模式下（USB host）  OUT表示  USB Host向 USB Device发送数据包
*     在USB设备模式下（USB Device）OUT表示  USB Host从 USB Device接收数据包
*   当前在USB Device模式下，该函数的作用是Device设备接收数据包
*   返回值，返回接收到的数据的长度
*/
UINT8 EP_OUT_Transfer(UINT8 u8EP,UINT8 *pu8DataPointer)
{
    UINT8 *pu8EPBuffer;
    UINT8 u8EPSize;
    /* 调整缓冲区的位置 */
    u8EP++;
    /* 分配合适的EP缓冲，EP0是控制点，EP1为输入中断点，EP2是输入BULK点 */
    pu8EPBuffer=BufferPointer[u8EP];

    u8EPSize=tBDTtable[u8EP].Cnt;
    u8EP=u8EPSize;
    /* 将EP缓冲的数据复制给用户区 */
    while(u8EPSize--)
      *pu8DataPointer++=*pu8EPBuffer++;
    return(u8EP);
}

/*
* USB_EP_OUT_SizeCheck
*   端点输入数据长度检查
*
*/
UINT16 USB_EP_OUT_SizeCheck(UINT8 u8EP)
{
  UINT8 u8EPSize;
   /* 读取缓冲区的长度 */
  u8EPSize = tBDTtable[u8EP<<2].Cnt;
  //u8EPSize=SWAP16(tBDTtable[u8EP<<2].Cnt);
  return(u8EPSize & 0x03FF);
}

/*
* USB_Set_Interface
*   USB设置端点函数
*
*/
void USB_Set_Interface(void)
{
  /* 端点寄存器设置 */
  USB0_ENDPT1= EP1_VALUE | USB_ENDPT_EPHSHK_MASK; //设置端点1为中断端点
  USB0_ENDPT2= EP2_VALUE | USB_ENDPT_EPHSHK_MASK; //设置端点2为输入 BULK端点
  USB0_ENDPT3= EP3_VALUE | USB_ENDPT_EPHSHK_MASK; //设置端点3为输出 BULK端点
  USB0_ENDPT4= EP4_VALUE | USB_ENDPT_EPHSHK_MASK; //禁止端点
  USB0_ENDPT5= EP5_VALUE | USB_ENDPT_EPHSHK_MASK; //禁止端点
  USB0_ENDPT6= EP6_VALUE | USB_ENDPT_EPHSHK_MASK; //禁止端点

  /* 端点 1 BDT 设置*/
  tBDTtable[bEP1IN_ODD].Stat._byte= kMCU;//USB-FS 有专有权访问 BD
                                         //定义DATA0允许发送或者接收
  tBDTtable[bEP1IN_ODD].Cnt =1;// 0x00;
  tBDTtable[bEP1IN_ODD].Addr =(UINT32)gu8EP1_IN_ODD_Buffer;

  /* 端点 2 BDT 设置*/
  tBDTtable[bEP2IN_ODD].Stat._byte= kMCU;//USB-FS 有专有权访问 BD
                                         //定义DATA0允许发送或者接收
  tBDTtable[bEP2IN_ODD].Cnt = 0x00;
  tBDTtable[bEP2IN_ODD].Addr =(UINT32)gu8EP2_IN_ODD_Buffer;

  /* 端点 3 BDT 设置*/
  tBDTtable[bEP3OUT_ODD].Stat._byte= kSIE;//USB-FS 有专有权访问 BD
                                          //使能USB-FS去扮演数据翻转同步
                                          //定义DATA0允许发送或者接收
  tBDTtable[bEP3OUT_ODD].Cnt = 0xFF;
  tBDTtable[bEP3OUT_ODD].Addr =(UINT32)gu8EP3_OUT_ODD_Buffer;
}


/*
* USB_StdReq_Handler
*   如果USB接收的Setup的请求形式时设备请求（标准请求）形式
*   进入到标准请求中断服务函数中
*
*/
void USB_StdReq_Handler(void)
{
  switch(Setup_Pkt->bRequest) //判断该请求形式下数据包中的命令
  {
    case mSET_ADDRESS:          //USB device设置地址命令
        EP_IN_Transfer(EP0,0,0);//端点0开始发送自己的地址
        gu8USB_State=uADDRESS;  //将USB的状态位改为已设置地址状态
        break;

    case mGET_DESC:             //PC获得USB设置描述符命令
        switch(Setup_Pkt->wValue_h) //判断Setup数据包中的要发送的描述符
        {
            case mDEVICE:           //要求底层设备发送设备描述符
                EP_IN_Transfer(EP0,(UINT8*)Device_Descriptor,sizeof(Device_Descriptor));
                break;

            case mCONFIGURATION:    //要求发送配置描述符
                EP_IN_Transfer(EP0,(UINT8*)Configuration_Descriptor,sizeof(Configuration_Descriptor));
                break;

            case mSTRING:           //要求发送字符串描述符
                EP_IN_Transfer(EP0,(UINT8*)String_Table[Setup_Pkt->wValue_l],String_Table[Setup_Pkt->wValue_l][0]);
                break;

            default:
                USB_EP0_Stall();   //如果都不是，转为端点0 stall（停止）模式
                break;
        }
        break;

    case mSET_CONFIG:                             //USB device设备配置命令
        gu8Dummy=Setup_Pkt->wValue_h+Setup_Pkt->wValue_l; //组合成16位数据
        if(Setup_Pkt->wValue_h+Setup_Pkt->wValue_l)
        {
            USB_Set_Interface();                  // 配置USB device的中断端点、bulk端点
            EP_IN_Transfer(EP0,0,0);              // 端点0开始传输
            gu8USB_State=uENUMERATED;             // 设置USB的状态为以被枚举状态
        }
        break;

    case mGET_CONFIG:                             //PC获得USB的设备配置命令
        EP_IN_Transfer(EP0,(UINT8*)&gu8Dummy,1);  //端点0发送组合而成的16位数据
        break;

    case mGET_STATUS:                             //PC获得USB的状态命令
        gu8Status=0;                              //设置gu8Status = 0
        EP_IN_Transfer(EP0,(UINT8*)&gu8Status,2); //端点0发送状2个字节的状态
        break;

    default:
        USB_EP0_Stall();                          //如果都不是，转为端点0 stall（停止）模式
        break;
  }
}


/*
* USB_Setup_Handler
*  USB SETUP中断，表示一次控制传输的开始。
*  SETUP是控制传输的第一阶段，
*  并用来把一个请求从系统发往目标USB设备。
*/
void USB_Setup_Handler(void)
{
  UINT8 u8State;
  FLAG_CLR(0,gu8USB_Toogle_flags);        //将gu8USB_Toogle_flags = 0
  switch(Setup_Pkt->bmRequestType & 0x1F) //判断Setup数据包中请求的形式
  {
      case DEVICE_REQ: //如果是设备请求形式
          if((Setup_Pkt->bmRequestType & 0x1F)== STANDARD_REQ) //设备请求形式等于标准请求形式
          {
              USB_StdReq_Handler(); //标准请求中断服务函数
          }
          tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
          break;

      case INTERFACE_REQ://如果是接口请求形式
          u8State = USB_InterfaceReq_Handler(); //当前接口请求为CDC类请求

          if(u8State==uSETUP)
              tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
          else
              tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA1;
          break;

      case ENDPOINT_REQ://如果是端点请求
          USB_Endpoint_Setup_Handler();
          tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
          break;

      default:
          USB_EP0_Stall();  //stall请求
          break;
  }
  FLAG_CLR(USB_CTL_TXSUSPENDTOKENBUSY_SHIFT,USB0_CTL);
}


/*
* USB_Endpoint_Setup_Handler
*   USB端点Setup中断处理函数
*
*/
void USB_Endpoint_Setup_Handler(void)
{
  UINT16 u16Status;
  switch(Setup_Pkt->bRequest)
  {
    case GET_STATUS: //获取当前状态
        if(FLAG_CHK(Setup_Pkt->wIndex_h,gu8HALT_EP))//判断gu8HALT_EP端点HALT是否为1
            u16Status=0x0100;
        else
            u16Status=0x0000;

        EP_IN_Transfer(EP0,(UINT8*)&u16Status,2); //通过端点0向PC发送状态
        break;

    case CLEAR_FEATURE:
        FLAG_CLR(Setup_Pkt->wIndex_h,gu8HALT_EP); //gu8HALT_EP = 0
        EP_IN_Transfer(EP0,0,0);
        break;

    case SET_FEATURE:
        FLAG_SET(Setup_Pkt->wIndex_h,gu8HALT_EP); //gu8HALT_EP = 1
        EP_IN_Transfer(EP0,0,0);
        break;

    default:
        break;
  }
}


/*
* USB_Handler
*  USB令牌中断服务函数
*
*/
void USB_Handler(void)
{
  UINT8 u8EndPoint;
  UINT8 u8IN;

  u8IN = USB0_STAT & 0x08;    //获得当前的传输状态，1发送；0接收
  u8EndPoint = USB0_STAT >> 4;//获得当前接收令牌的端点地址

  //端点发送PC接收模式表示有目标设备发送到PC上
  //端点接收PC发送模式表示PC发送目标设备接收

  /* Data EndPoints */
  if(u8EndPoint) //如果非零表示是数据端点，因为端点0作为控制端点
  {
    if(!u8IN)    //如果是端点接收模式
    {
      usbMCU_CONTROL(u8EndPoint);         //转换成单片机访问BDT
      FLAG_SET(u8EndPoint,gu8USB_Flags);  //设置 gu8USB_Flags = 1

      if(usb_rev_data_isr !=(USB_REV_CALLBACK)0)
        usb_rev_data_isr();
    }
  }
  /* Control EndPoint */
  else       //如果是端点0，端点0作为控制端点
  {
    if(u8IN)    //如果是端点发送PC接收
    {
      USB_EP0_IN_Handler();
    }
    else       //如果是端点接收PC发送模式
    {
      if(tBDTtable[bEP0OUT_ODD].Stat.RecPid.PID == mSETUP_TOKEN) //如果接收的是启动令牌
          USB_Setup_Handler();
      else     //如果接收的不是启动令牌
          USB_EP0_OUT_Handler();
    }
  }
}


/*
* USB_EP0_IN_Handler
*   端点0发送PC接收模式中断服务函数，此时端点0是控制端点，
*
*/
void USB_EP0_IN_Handler(void)
{
  if(gu8USB_State == uADDRESS)        //如果当前USB处于地址状态
  {
    USB0_ADDR = Setup_Pkt->wValue_l; //将Setup_Pkt的值给USB地址寄存器
    gu8USB_State = uREADY;           //改变当前USB状态
    FLAG_SET(fIN,gu8USBClearFlags);  //将gu8USBClearFlags设置为1
  }
  EP_IN_Transfer(0,0,0);             //端点0开始传输
}

/*
* USB_EP0_Stall
*   端点0 stall停止处理
*
*/
void USB_EP0_Stall(void)
{
  FLAG_SET(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);  // USB0_ENDPT0的 STALL =1
  tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0;    // USB-FS 有专有权访问 BD
                                                  //使能USB-FS去扮演数据翻转同步
                                                  //定义DATA1允许发送或者接收
  tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;          //设置EP0的长度32字节
}


/*
* USB_EP0_OUT_Handler
*   端点0接收PC接收数据中断服务函数
*
*/
void USB_EP0_OUT_Handler(void)
{
  FLAG_SET(0,gu8USB_Flags);   //将EP0的gu8USB_Flags置1
  tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0;   //USB-FS 有专有权访问 BD
                                                 //使能USB-FS去扮演数据翻转同步
                                                 //定义DATA1允许发送或者接收
}


/*
*   USB_Stall_Handler
*     如果USB工作在Device模式，如果获得stall证明表明其不能完成传输。
*/
void USB_Stall_Handler(void)
{
  if(FLAG_CHK(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0)) //检查USB的端点0的stall位是否置位
      FLAG_CLR(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);//清空端点0的stall位
  FLAG_SET(USB_ISTAT_STALL_SHIFT,USB0_ISTAT);       //清空全局状态寄存器中的Stall位
}


/*
*   USB_Reset_Handler
*     USB复位中断服务函数,在该函数中进行设置软件标志位、
*   禁止所有EP(端点寄存器)，同时将EP0初始为控制端点
*   并对EP0的输入、输出奇偶缓冲进行初始化，
*   开启USB令牌中断、USB第一帧传输中断、USB错误中断、USB复位中断
*/
void USB_Reset_Handler(void)
{
  /*设置软件标志位*/
  gu8USBClearFlags=0xFF;
  gu8USB_Toogle_flags=0xFE;

  /*禁止所有EP寄存器*/
  USB0_ENDPT1=0x00;
  USB0_ENDPT2=0x00;
  USB0_ENDPT3=0x00;
  USB0_ENDPT4=0x00;
  USB0_ENDPT5=0x00;
  USB0_ENDPT6=0x00;

  /*端点0 BDT 启动端点设置*/
  tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;   // EP0 OUT BDT 设置
  tBDTtable[bEP0OUT_ODD].Addr =(UINT32)gu8EP0_OUT_ODD_Buffer;
  tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA1;//USB-FS 有专有权访问 BD
                                              //使能USB-FS去扮演数据翻转同步
                                              //定义DATA1允许发送或者接收

  tBDTtable[bEP0OUT_EVEN].Cnt = EP0_SIZE; // EP0 OUT BDT 设置
  tBDTtable[bEP0OUT_EVEN].Addr =(UINT32)gu8EP0_OUT_EVEN_Buffer;
  tBDTtable[bEP0OUT_EVEN].Stat._byte = kUDATA1;//USB-FS 有专有权访问 BD
                                               //使能USB-FS去扮演数据翻转同步
                                               //定义DATA1允许发送或者接收

  tBDTtable[bEP0IN_ODD].Cnt = EP0_SIZE;   // EP0 IN BDT 设置
  tBDTtable[bEP0IN_ODD].Addr =(UINT32)gu8EP0_IN_ODD_Buffer;
  tBDTtable[bEP0IN_ODD].Stat._byte = kUDATA0;//USB-FS 有专有权访问 BD
                                             //使能USB-FS去扮演数据翻转同步
                                             //定义DATA0允许发送或者接收

  tBDTtable[bEP0IN_EVEN].Cnt = EP0_SIZE;  // EP0 IN BDT 设置
  tBDTtable[bEP0IN_EVEN].Addr =(UINT32)gu8EP0_IN_EVEN_Buffer;
  tBDTtable[bEP0IN_EVEN].Stat._byte = kUDATA0;//USB-FS 有专有权访问 BD
                                              //使能USB-FS去扮演数据翻转同步
                                              //定义DATA0允许发送或者接收

  USB0_ENDPT0=0x0D; //使能端点0

  USB0_ERRSTAT=0xFF;//清空所有错误标志位

  USB0_ISTAT=0xFF;  //清空所有USB中断标志位

  USB0_ADDR=0x00;   // 设置USB缺省定值为0

  USB0_ERREN=0xFF;  // 使能所有错误中断源

  /*使能USB中断*/
  FLAG_SET(USB_INTEN_TOKDNEEN_SHIFT,USB0_INTEN);  //使能USB TOKDNE中断
  FLAG_SET(USB_INTEN_SOFTOKEN_SHIFT,USB0_INTEN);  //使能USB SOFTOK中断
  FLAG_SET(USB_INTEN_ERROREN_SHIFT,USB0_INTEN);   //使能USB错误中断
  FLAG_SET(USB_INTEN_USBRSTEN_SHIFT,USB0_INTEN);  //使能USB复位中断
}


/*
* USB_Protocol_Handler
*   USB协议中断服务函数
*      在该函数中调用USB的底层协议
*/
void USB_Protocol_Handler(void)
{
  uint8 err;
  FLAG_SET(1,GPIOC_PDOR);
  /*USB 程序初始化后会首先进入复位中断 */
  if(FLAG_CHK(USB_ISTAT_USBRST_SHIFT,USB0_ISTAT))//产生USB复位中断
  {
    USB_Reset_Handler();                         //进入USB复位中断服务函数
    return;
  }
  if(FLAG_CHK(USB_ISTAT_SOFTOK_SHIFT,USB0_ISTAT))//产生USB SOFTOK中断
  {
    USB0_ISTAT = USB_ISTAT_SOFTOK_MASK;          //清空SOFTOK标志位
  }
  if(FLAG_CHK(USB_ISTAT_STALL_SHIFT,USB0_ISTAT)) //接收USB停止包数据处理
  {
    USB_Stall_Handler();                         //进入Stall中断服务函数
  }
  if(FLAG_CHK(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT))//产生USB令牌中断
  {
    FLAG_SET(USB_CTL_ODDRST_SHIFT,USB0_CTL);     //复位所有BDT ODD，然后可以配置EVEN BDT
    USB_Handler();
    FLAG_SET(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT); //清零USB令牌标志位
  }
  if(FLAG_CHK(USB_ISTAT_SLEEP_SHIFT,USB0_ISTAT))
  {
    FLAG_SET(USB_ISTAT_SLEEP_SHIFT,USB0_ISTAT);
  }
  if(FLAG_CHK(USB_ISTAT_ERROR_SHIFT,USB0_ISTAT))
  {
    err = USB0_ERRSTAT;
    if(err==0)
      asm("nop");
    FLAG_CHK(USB_ISTAT_ERROR_SHIFT,USB0_ISTAT);
  }
}

