//=========================================================================
// 文件名称：hw_usb.c                                                          
// 功能概要：usb构件源文件
// 版权所有: 苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
// 版本更新:     时间                     版本                                       修改
//           2011-12-14     V1.0        USB构件初始版本
//           2011-12-20     V1.1        USB构件优化修改
//=========================================================================
#include "usb.h"
#include "uart.h"
#include "light.h"
//设备描述符
const uint_8 Device_Descriptor[18]= 
{
 	0x12,	   //bLength域，描述符的长度：18字节
	0x01,	   //bDescriptorType域，描述符类型：0x01表示本描述符为设备描述符）
	0x00,0x02, //bcdUSB域，USB规范版本号（采用BCD码）：2.0 
	0x02,	   //bDeviceClass域，设备类代码
	0x00,	   //bDeviceSubClass域，设备子类代码	
	0x00,	   //bDeviceProtocol域，设备协议代码（0x00表示不使用任何设备类协议）			
	0x20,	   //bMaxPacketSize0域，端点0支持最大数据包的长度：32字节
	0xA2,0x15, //idVendor域，供应商ID（VID）
	0x0F,0xA5, //idProduct域，产品ID（PID）
	0x00,0x00, //bcdDevice域，设备版本号（采用BCD码）
	0x01,      //iManufacturer域，供应商的字符串描述符索引：1
	0x02,	   //iProduct域，产品的字符串描述符索引：2
	0x03,	   //iSerialNumber域，设备序号的字符串描述符索引：3
	0x01	   //bNumConfigurations域，该USB设备支持的配置数目：1个
};

//字符串描述符0
const uint_8 String_Descriptor0[4] = 
{
	0x04,		   //bLength域，长度：4字节
	0x03,		   //bDescriptorType域，字符串描述符
	0x09,0x04	   //wLANDID0域，英语
};

//字符串描述符1
const uint_8 String_Descriptor1[] = 
{
	0x12,			//bLength域，长度：18字节
	0x03,		    //bDescriptorType域，字符串描述符
	'S',0x00,	    //                                       
	'U',0x00,	    //
	'D',0x00,	    //
	'A',0x00,	    //
	'-',0x00,	    //
	'F',0x00,	    //
	'S',0x00,	    //
	'L',0x00,	    //
};	 


//字符串描述符2
const uint_8 String_Descriptor2[] = 
{
	0x38,			//bLength域，长度：56字节
	0x03,		    //bDescriptorType域，字符串描述符
	'S',0x00,	    
	'o',0x00,	
	'o',0x00,	
	'c',0x00,
	'h',0x00,	    
	'o',0x00,	
	'w',0x00,
    'U',0x00,       
    'n',0x00,   
    'i',0x00,   
    'v',0x00,
    'e',0x00,       
    'r',0x00,  
    's',0x00,  
    'i',0x00,   
    't',0x00,       
    'y',0x00,   
    '-',0x00,
    'U',0x00,
    'S',0x00,
    'B',0x00,
    'D',0x00,
    'e',0x00,
    'v',0x00,
    'i',0x00,
    'c',0x00,
    'e',0x00,
};	 


//字符串描述符3
const uint_8 String_Descriptor3[] = 
{
	0x14,			//bLength域，长度：20字节
	0x03,		    //bDescriptorType域，字符串描述符
	'T',0x00,	    //
	'E',0x00,	
	'S',0x00,	
	'T',0x00,
	'_',0x00,	    //
    'v',0x00,       //
	'1',0x00,	
	'.',0x00,	
	'1',0x00
};	 


//配置描述符
const uint_8 Configuration_Descriptor[0x20]= 
{
	//配置描述符
	0x09,		    //bLength域，配置描述符的长度：9字节
	0x02,		    //bDescriptorType域：0x02表示本描述符为配置描述符
	0x20,0x00,	    //wTotalLength域，配置信息的总长度（包括配置、接口和端点）：32字节
	0x01,		    //bNumInterfaces域，该配置所支持的接口数（至少一个）：1
	0x01,		    //bConfigurationValue域，配置值：1 
	0x00,		    //iConfiguration域，配置字符串描述符索引：0
	0xC0,		    //bmAttibutes域，配置的属性(具有总线供电、自供电及过程唤醒的特性) 
	                //位7：1-必须为1；位6：0-自供电；位5：0-不支持远程唤醒
	0x32,		    //MaxPower域，设备从总线提取的最大电流以2mA为单位：50*2mA＝100mA

	//接口描述符
	0x09,           //bLength域，接口描述符长度：9字节
	0x04,           //bDescriptorType域：0x04表示本描述符为接口描述符
	0x00,           //bInterfaceNumber域，接口号
	0x00,           //bAlternateSetting域，接口的可替换设置值
	0x02,           //bNumEndpoints域，接口使用的端点数（除端点0）：2
	0xFF,           //bInterfaceClass域，接口所属的USB设备类：0xFF表示供应商自定义
	0xFF,           //bInterfaceSubClass域，接口所属的USB设备子类：0xFF表示供应商自定义
	0xFF,           //bInterfaceProtocol域，接口采用的USB设备类协议：0xFF表示供应商自定义
	0x01,           //iInterface域，接口字符串描述符的索引：1

    
    
	 //端点OUT描述符
	0x07,           //bLength域，端点描述符长度：7字节
	0x05,           //bDescriptorType域：0x05表示本描述符为端点描述符
	0x82,           //bEndpointAddress域，端点号和传输方向：端点2、IN
	0x02,           //bmAttributes域，端点特性：数据端点、块传输
	0x20,0x00,      //wMaxPacketSize域，端点支持最大数据包长度：32字节          
	0x00,           //bInterval域，轮询间隔，以ms为单位。



	 //端点IN描述符
	0x07,           //bLength域，端点描述符长度：7字节
	0x05,           //bDescriptorType域：0x05表示本描述符为端点描述符
	0x03,           //bEndpointAddress域，端点号和传输方向：端点3、OUT   
	0x02,           //bmAttributes域，端点特性：数据端点、块传输
	0x20,0x00,      //wMaxPacketSize域，端点支持最大数据包长度：32字节        
	0x00,           //bInterval域，轮询间隔，以ms为单位。
};

//设备限定描述符
const uint_8 Device_Qualifier[10]=
{
        0x0A,
        0x06,
        0x00,0x02,
        0x00,
        0x00,
        0x00,
        0x10,
        0x01,
        0x00
};

//BDT缓冲区，理论上只要申请512字节，但是由于缓冲区地址的低9位必须为0（不然USB模块无法使用）
//所以申请1024从中找出地址低9位为0的缓冲区地址作为首地址。
uint_8 tBDT_unaligned[1024];
tBDT *tBDTtable; // 4个端点的BDT 

uint_8 gu8EP0_OUT_ODD_Buffer[EP0_SIZE];
uint_8 gu8EP0_OUT_EVEN_Buffer[EP0_SIZE];
uint_8 gu8EP0_IN_ODD_Buffer[EP0_SIZE];
uint_8 gu8EP0_IN_EVEN_Buffer[EP0_SIZE];
uint_8 gu8EP1_OUT_ODD_Buffer[EP1_SIZE];
uint_8 gu8EP1_OUT_EVEN_Buffer[EP1_SIZE];
uint_8 gu8EP1_IN_ODD_Buffer[EP1_SIZE];
uint_8 gu8EP1_IN_EVEN_Buffer[EP1_SIZE];
uint_8 gu8EP2_OUT_ODD_Buffer[EP2_SIZE];
uint_8 gu8EP2_OUT_EVEN_Buffer[EP2_SIZE];
uint_8 gu8EP2_IN_ODD_Buffer[EP2_SIZE];
uint_8 gu8EP2_IN_EVEN_Buffer[EP2_SIZE];
uint_8 gu8EP3_OUT_ODD_Buffer[EP3_SIZE];
uint_8 gu8EP3_OUT_EVEN_Buffer[EP3_SIZE];
uint_8 gu8EP3_IN_ODD_Buffer[EP3_SIZE];
uint_8 gu8EP3_IN_EVEN_Buffer[EP3_SIZE];

uint_8 *BufferPointer[]=
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

const uint_8 cEP_Size[]=
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

const uint_8* String_Table[4]=
{
    String_Descriptor0,
    String_Descriptor1,
    String_Descriptor2,
    String_Descriptor3
};

//端点IN(2)状态
uint_8 vEP2State = kUDATA1;
//端点OUT(3)状态
uint_8 vEP3State = kUDATA0;

//保存端点OUT的数据
uint_8 RecDataBuff[EP3_SIZE];
//数据长度
uint_32 RecDataLength;

//USB模块内部全局变量
uint_8 gu8USBClearFlags;
uint_8 *pu8IN_DataPointer;
uint_8 gu8IN_Counter;
uint_8 gu8USB_Toogle_flags;
uint_8 gu8Dummy;
uint_8 gu8HALT_EP;
uint_8 gu8USB_State;                //保存USB端点0的状态
tUSB_Setup *Setup_Pkt;             //指向端点0OUT数据首地址


//=========================================================================
//函数名: hw_usb_init
//功  能: USB模块初始 
//参  数: 无
//返  回: 无
//=========================================================================
void hw_usb_init(void)
{
	tBDTtable = (tBDT *)((( uint_32 ) tBDT_unaligned & 0xFFFFFE00UL)+ 0x200UL);
    Setup_Pkt=(tUSB_Setup*)BufferPointer[bEP0OUT_ODD];
    gu8USB_State=uPOWER;

    //USB_FMC_ACC_ENABLE;
    USB_REG_SET_ENABLE;
    USB_REG_CLEAR_STDBY;
    
    //MPU_CESR=0;//禁止MPU
    FLAG_SET(SIM_SOPT2_PLLFLLSEL_SHIFT,SIM_SOPT2);  // 使能PLL输出
    FLAG_SET(SIM_SOPT2_USBSRC_SHIFT,SIM_SOPT2);     // 使能PLL/FLL为时钟源
   

    //SIM_CLKDIV2|=USB_FARCTIONAL_VALUE;              //USB分频因子设置
    SIM_SCGC4|=(SIM_SCGC4_USBOTG_MASK);             //USB模块时钟门使能

    enable_irq(USB_INTERRUPT_IRQ);                  //使能USB模块IRQ中断

    //USB模块寄存器配置
    USB0_USBTRC0|=USB_USBTRC0_USBRESET_MASK;        //复位USB模块
    while(FLAG_CHK(USB_USBTRC0_USBRESET_SHIFT,USB0_USBTRC0)){};	
    
    //设置BDT基址寄存器
    //( 低9 位是默认512 字节的偏移) 512 = 16 * 4 * 8 。
    //8 位表示: 4 个字节的控制状态，4 个字节的缓冲区地址 。
    USB0_BDTPAGE1=(uint_8)((uint_32)tBDTtable>>8);
    USB0_BDTPAGE2=(uint_8)((uint_32)tBDTtable>>16);
    USB0_BDTPAGE3=(uint_8)((uint_32)tBDTtable>>24);

    //清除USB模块复位标志
    FLAG_SET(USB_ISTAT_USBRST_MASK,USB0_ISTAT);

    //使能USB模块复位中断
    FLAG_SET(USB_INTEN_USBRSTEN_SHIFT,USB0_INTEN);

    USB0_USBCTRL=0x40;


    USB0_USBTRC0|=0x40;                            //强制设置第6位为1

    USB0_CTL|=0x01;                                //USB模块使能
    
    //上拉使能
    FLAG_SET(USB_CONTROL_DPPULLUPNONOTG_SHIFT,USB0_CONTROL);
}

//=========================================================================
//函数名: hw_usb_ep_in_transfer
//功  能: USB发送IN包 
//参  数: u8EP：端点
//       pu8DataPointer：待发数据所在缓冲区首地址
//       u8DataSize：待发数据长度
//返  回: 无
//=========================================================================
void hw_usb_ep_in_transfer(uint_8 u8EP,uint_8 *pu8DataPointer,uint_8 u8DataSize)
{
    uint_8 *pu8EPBuffer;
    uint_8 u8EPSize; 
    uint_16 u16Lenght=0;    
    uint_8 u8EndPointFlag;    

    //设置端点所对应的端点描述符
    u8EndPointFlag=u8EP;
    if(u8EP)
        u8EP=(uint_8)(u8EP<<2);
    u8EP+=2;
    
    // 指向端点的缓冲区
    pu8EPBuffer=BufferPointer[u8EP];
    
    //检查是否可以发送数据
    if(FLAG_CHK(fIN,gu8USBClearFlags))
    {
        // 待传输的数据
        pu8IN_DataPointer=pu8DataPointer;
        gu8IN_Counter=u8DataSize;       

        u16Lenght=(Setup_Pkt->wLength_h<<8)+Setup_Pkt->wLength_l ;
        if((u16Lenght < u8DataSize) && (u8EP==2))
        {
            gu8IN_Counter=Setup_Pkt->wLength_l;
        }
    }

    // 看看待发送的数据是否大于端点所能发送数据的长度。
    if(gu8IN_Counter > cEP_Size[u8EP])
    {
        u8EPSize = cEP_Size[u8EP];
        gu8IN_Counter-=cEP_Size[u8EP];
        FLAG_CLR(fIN,gu8USBClearFlags);
    }
    else
    {
        u8EPSize = gu8IN_Counter;
        gu8IN_Counter=0;
        FLAG_SET(fIN,gu8USBClearFlags);
    }

    // 把待发数据长度写入BDT 
    tBDTtable[u8EP].Cnt=(u8EPSize);
    
    // 把数据拷贝到BDT 缓冲区
    while(u8EPSize--)
         *pu8EPBuffer++=*pu8IN_DataPointer++;

    // gu8USB_Toogle_flags : 用Data0 和Data1 来跟USB 设备进行同步用的。
    // DATA0/DATA1 交替
    if(FLAG_CHK(u8EndPointFlag,gu8USB_Toogle_flags))
    {
      // gu8USB_Toogle_flags : 表示是DATA0 还是DATA1 。1: 表示发送DATA0, 0: 表示发送DATA1. 
        tBDTtable[u8EP].Stat._byte= kUDATA0;
        FLAG_CLR(u8EndPointFlag,gu8USB_Toogle_flags);
    } 
    else
    {
        tBDTtable[u8EP].Stat._byte= kUDATA1;
        FLAG_SET(u8EndPointFlag,gu8USB_Toogle_flags);
    }
}

//=========================================================================
//函数名: hw_usb_ep_out_transfer
//功  能: USB发送OUT包 
//参  数: u8EP：端点
//       pu8DataPointer：保存接收到的数据的缓冲区首地址
//返  回: 接收到的数据长度
//=========================================================================
uint_8 hw_usb_ep_out_transfer(uint_8 u8EP,uint_8 *pu8DataPointer)
{
    uint_8 *pu8EPBuffer;
    uint_8 u8EPSize; 
    

    //设置端点所对应的端点描述符
    u8EP++;

    //设置端点所对应的数据缓冲区
    pu8EPBuffer=BufferPointer[u8EP];
    
    //拷贝接收到的数据到用户数据区
    u8EPSize=tBDTtable[u8EP].Cnt;
    u8EP=u8EPSize;
    
    while(u8EPSize--)
         *pu8DataPointer++=*pu8EPBuffer++;
    return(u8EP);
}

//=========================================================================
//函数名: hw_usb_set_interface
//功  能: USB模块的描述符 
//参  数: 无
//返  回: 接收到的数据长度
//=========================================================================
void hw_usb_set_interface(void)
{
    // 使能端点
    // 端点 Register 设置
    USB0_ENDPT1= EP1_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT2= EP2_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT3= EP3_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT4= EP4_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT5= EP5_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT6= EP6_VALUE | USB_ENDPT_EPHSHK_MASK;                         
  
    // 设置 1 BDT 设置
    // 把控制权交给MCU 
    tBDTtable[bEP1IN_ODD].Stat._byte= kUDATA1;
    tBDTtable[bEP1IN_ODD].Cnt = 0x00;
    tBDTtable[bEP1IN_ODD].Addr =(uint_32)gu8EP1_IN_ODD_Buffer;

    // 设置 2 BDT 设置
    // 把控制权交给MCU 
    tBDTtable[bEP2IN_ODD].Stat._byte= kUDATA1;
    tBDTtable[bEP2IN_ODD].Cnt = 0x00;
    tBDTtable[bEP2IN_ODD].Addr =(uint_32)gu8EP2_IN_ODD_Buffer;            

    // 设置 3 BDT 设置
    // 把控制权交给MCU 
    tBDTtable[bEP3OUT_ODD].Stat._byte= kUDATA0;
    tBDTtable[bEP3OUT_ODD].Cnt = 0xFF;
    tBDTtable[bEP3OUT_ODD].Addr =(uint_32)gu8EP3_OUT_ODD_Buffer;            
}


//=========================================================================
//函数名: hw_usb_stdReq_handler
//功  能: 对标准的SETUP包解包和处理
//参  数: 无  
//返  回: 无
//=========================================================================
void hw_usb_stdReq_handler(void)
{
    uint_16 gu8Status;
    
    switch(Setup_Pkt->bRequest)
    {
        /* 
          1）获取状态 Get Status (00H) 
              A:[To Device]获取设备的状态: 
                  *.位0:自供电(0表示总线供电;1表示自供电).
                  *.位1:远程唤醒(0表示不支持远程唤醒;1表示远程唤醒).
                  *.位2~15:保留.
                  *.一般选择总线供电,不支持远程唤醒,所以返回数据就是0x0000.
              B:[To Interface]获取接口的状态:
                  *.接口状态的16位字节全部保留,所以返回数据就是0x0000.
              C:[To Endpoint]获取端点的状态:
                  *.位0:Halt(0表示端点允许;1表示端点禁止).
                  *.位1~15:保留(复位为0).
    
         2）清除特性 Clear Feature (01H)
              A:[To Device]清除设备的远程唤醒功能,并返回一个空包.
              B:[To Endpoint]解禁端点.
       
         3）设置特性 Set Feature (03H)
              A:[To Device]设置设备的远程唤醒功能,并返回一个空包. 
              B:[To Endpoint]禁止端点.
    
         4）设置地址 Set Address (05H)
               A:设置设备地址.
    
         5）获取描述符 Get Descriptor (06H)
              A:[To Device]获取设备描述符: 
                  *.描述当前USB协议的版本号.设备端点0的FIFO大小.USB设备的ID号等.
              B:[To Configuration]获取配置描述符:
                  *.描述USB设备接口个数及是否有自供电能力等.
              C:[To Interface]获取接口描述符:
                  *.描述端点0以外的物理端点个数等信息.
              D:[To Endpoint]获取端点描述符:
                  *.描述端点0各端点的传输类型和最大信息包大小和端点的传输方向(IN/OUT).
    
         6）设置描述符(可选,无法更新) Set Descriptor (07H)
    
         7）获取配置信息 Get Configuration (08H)
    
         8）设置配置 Set Configuration (09H)
               A:[To Configuration]设置配置描述符.
               B:[To Interface]设置接口描述符.
               C:[To Endpoint]设置端点描述符.
    
          9） 获取接口信息 Get Interface (0AH)     
         10）设置接口 Set Interface (0BH)
    
         11）SYNCH_FRAME(0CH)
                用于设备设置和报告一个端点的同步帧.
        */ 
        // #define mGET_STATUS           0   
        // #define mCLR_FEATURE          1 
        // #define mSET_FEATURE          3 
        // #define mSET_ADDRESS          5 
        // #define mGET_DESC             6 
        // #define mSET_DESC             7 
        // #define mGET_CONFIG           8 
        // #define mSET_CONFIG           9 
        // #define mGET_INTF             10 
        // #define mSET_INTF             11 
        // #define mSYNC_FRAME           12 
      
        // PC 给芯片地址配置
        // #define mSET_ADDRESS          5 
        // 
        case mSET_ADDRESS:
            hw_usb_ep_in_transfer(EP0,0,0);
            gu8USB_State=uADDRESS;
            break;
      
        // PC 从芯片获取描述符
        // define mGET_DESC             6     
        case mGET_DESC:
          //  高字节 : Setup_Pkt->wValue_h 表示描述符类型
          //  低字节 : Setup_Pkt->wValue_l 表示描述符的索引值
            switch(Setup_Pkt->wValue_h) 
            {
                /*
                #define mDEVICE               0x01  //设备描述符
                #define mCONFIGURATION        0x02  //配置描述符
                #define mSTRING               0x03  //字符串描述符
                #define mINTERFACE            0x04  //接口描述符
                #define mENDPOINT             0x05  //端点描述符
                #define	mDEVICE_QUALIFIER		6 
                #define mOTHER_SPEED_CONFIGURATION	7 
                #define mINTERFACE_POWER		8 
                */ 
                case mDEVICE:
                    // 发送设备描述符
                    hw_usb_ep_in_transfer(EP0,(uint_8*)Device_Descriptor,sizeof(Device_Descriptor));
                    break;
                    
                case mCONFIGURATION:
                    // 发送配置描述符
                    hw_usb_ep_in_transfer(EP0,(uint_8*)Configuration_Descriptor,sizeof(Configuration_Descriptor));
                    break;
        
                case mSTRING:
                    // 发送字符串描述符
                    hw_usb_ep_in_transfer(EP0,(uint_8*)String_Table[Setup_Pkt->wValue_l],String_Table[Setup_Pkt->wValue_l][0]);
                    break;

                default:
                    hw_usb_ep0_stall();
                    break;  
            }
            break;
        // 设置配置 Set Configuration 
        // #define mSET_CONFIG           9 
        case mSET_CONFIG:
            // 选择配置值
            gu8Dummy=Setup_Pkt->wValue_h+Setup_Pkt->wValue_l;
            if(Setup_Pkt->wValue_h+Setup_Pkt->wValue_l) 
            {
                //使能1 、2 、3 端点 
                hw_usb_set_interface();
                hw_usb_ep_in_transfer(EP0,0,0);
                gu8USB_State=uENUMERATED;
            }
            break;
        // 获取配置信息 Get Configuration 
        // #define mGET_CONFIG           8 
        case mGET_CONFIG:
            // 获取配置信息
            hw_usb_ep_in_transfer(EP0,(uint_8*)&gu8Dummy,1);
            break;
        // 获取状态 Get Status 
        // #define mGET_STATUS           0 
        case mGET_STATUS:
            // 
            gu8Status=0;
            hw_usb_ep_in_transfer(EP0,(uint_8*)&gu8Status,2);
            break;

        default:
            hw_usb_ep0_stall();
            break;
    }
}

//=========================================================================
//函数名: hw_usb_setup_handler
//功  能: 对SETUP包解包和处理
//参  数: 无  
//返  回: 无
//说  明:
//   (1)只有接收到SETUP包才调用该函数
//   (2)SETUP包中8字节数据
//    bmRequestType:1
//    bRequest:1
//    wValue.H:1 :描述符的类型
//    wValue.L:1 :描述符的索引
//    wIndex:2
//    wLength:2
//=========================================================================
void hw_usb_setup_handler(void)
{
    uint_8 u8State;
    
    // 从DATA0 开始传输。
    FLAG_CLR(0,gu8USB_Toogle_flags);
    switch(Setup_Pkt->bmRequestType & 0x1F)
    {
      /*
      #define STANDARD_REQ    0x00 
      #define SPECIFIC_REQ    0x20 
      #define VENDORSPEC_REQ  0x40 
      #define DEVICE_REQ      0x00 
      #define INTERFACE_REQ   0x01 
      #define ENDPOINT_REQ    0x02 
      */
        // #define DEVICE_REQ      0x00 
        case DEVICE_REQ:
            // 设备
            if((Setup_Pkt->bmRequestType & 0x1F)== STANDARD_REQ)
            {
                //tBDTtable[bEP0IN_ODD].Stat._byte= kUDATA1;
                // USB 设备的标准请求
                hw_usb_stdReq_handler();            
            }
            //#define kUDATA0   0x88 
            //#define kUDATA1   0xC8 
            // 把BDT 的控制权交给USB 模块
            tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
            break;
            
        // #define INTERFACE_REQ   0x01 
        case INTERFACE_REQ:
            // 接口
            /* 
              u8State=USB_InterfaceReq_Handler();    

            if(u8State==uSETUP)
                tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
            else
                tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA1; 
           */
            break;        
        // #define ENDPOINT_REQ    0x02 
        case ENDPOINT_REQ:
            // 端点
        	hw_usb_endpoint_setup_handler();
            tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
            break;        

        default:
            hw_usb_ep0_stall();  
            break;        
    }
        
    //USB_CTL&=!USB_CTL_TXSUSPENDTOKENBUSY_MASK;
      
    //CTL_TXSUSPEND_TOKENBUSY=0;
    // 为0 时: SIE 继续处理令牌
    FLAG_CLR(USB_CTL_TXSUSPENDTOKENBUSY_SHIFT,USB0_CTL);
}

//=========================================================================
//函数名: hw_usb_endpoint_setup_handler
//功  能: 当主机请求接口配置请求时，执行该函数
//参  数: 无  
//返  回: 无
//=========================================================================
void hw_usb_endpoint_setup_handler(void)
{
    uint_16 u16Status;
    

    switch(Setup_Pkt->bRequest)
    {        
        case GET_STATUS:
            if(FLAG_CHK(Setup_Pkt->wIndex_h,gu8HALT_EP))
                u16Status=0x0100;
            else
                u16Status=0x0000;
            
            hw_usb_ep_in_transfer(EP0,(uint_8*)&u16Status,2);
            break;

        case CLEAR_FEATURE:
            FLAG_CLR(Setup_Pkt->wIndex_h,gu8HALT_EP); 
            hw_usb_ep_in_transfer(EP0,0,0);
            break;

        case SET_FEATURE:
            FLAG_SET(Setup_Pkt->wIndex_h,gu8HALT_EP); 
            hw_usb_ep_in_transfer(EP0,0,0);
            break;

        default:
            break;
    }
}

//=========================================================================
//函数名: hw_usb_handler
//功  能: 当收到SETUP包时调用该函数
//参  数: 无  
//返  回: 无
//=========================================================================
void hw_usb_handler(void)
{
    uint_8 u8EndPoint;
    uint_8 u8IN;
    uint_8 stat;
    
    stat=USB0_STAT & 0xF8;
    u8IN=USB0_STAT & 0x08;
    u8EndPoint=USB0_STAT >> 4;
    

    // 端点号 ,非控制端点（数据传输端点）
    // Data EndPoints
    if(u8EndPoint)
    {
        // IN包
        if(stat == mEP2_IN)//数据从机到主机，即USB设备到PC机
        {
        	hw_usb_ep2_in_handler(RecDataBuff,RecDataLength);
        }
        //OUT包
        else if (stat==mEP3_OUT)//数据从PC机到USB设备
        {
            hw_usb_ep3_out_handler();
        }
        else
        {
        	
        }
    }
    // Control EndPoint
    else
    {
      //u8IN 表示是发送还是接收包，0 : 发送包，1 : 接收包。这是对于PC 来说（主机）。 
      if(u8IN)
            hw_usb_ep0_in_handler();
        else
        {
            // 0x0D 表示SETUP 包
            if(tBDTtable[bEP0OUT_ODD].Stat.RecPid.PID == mSETUP_TOKEN)
                hw_usb_setup_handler();
            else
            	hw_usb_ep0_out_handler();
        }

    }
}

//=========================================================================
//函数名: hw_usb_ep0_in_handler
//功  能: 端点0处理IN包
//参  数: 无  
//返  回: 无
//=========================================================================
void hw_usb_ep0_in_handler(void)
{
    if(gu8USB_State==uADDRESS)
    {
        USB0_ADDR = Setup_Pkt->wValue_l;
        gu8USB_State=uREADY;
        FLAG_SET(fIN,gu8USBClearFlags);
    }
    hw_usb_ep_in_transfer(0,0,0);    
}

//=========================================================================
//函数名: hw_usb_ep0_stall
//功  能: 端点0产生一个STALL包
//参  数: 无  
//返  回: 无
//=========================================================================
void hw_usb_ep0_stall(void)
{
    // 产生一个STALL包  
    FLAG_SET(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);
    //ENDPT0_EP_STALL = 1;                      
    tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0; 
    tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;       
}

//=========================================================================
//函数名: hw_usb_ep0_out_handler
//功  能: 端点0处理OUT包
//参  数: 无  
//返  回: 无
//=========================================================================
void hw_usb_ep0_out_handler(void)
{
    //tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE; 
    tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0;
    //tBDTtable[bEP0IN].Stat._byte = kUDATA1;      
    
}

//=========================================================================
//函数名: hw_usb_ep2_in_handler
//功  能: 端点2处理IN包
//参  数: SendBuff：待发数据缓冲区
//       DataLenght：待发数据长度  
//返  回: 无
//=========================================================================
void hw_usb_ep2_in_handler(uint_8 *SendBuff,uint_32 DataLenght)
{
    uint_8 i,counter;
    uint_8 *pBuffer;
    uint_32 vEP2Idx = 0;
    pBuffer = gu8EP2_IN_ODD_Buffer;
    //for(;DataLenght > 0;)
    {
		if(DataLenght > EP2_SIZE)
		  counter = EP2_SIZE;
		else
		  counter = (uint_8)DataLenght;
		
		for(i=0;i<counter;i++,vEP2Idx++)
		  pBuffer[i]=SendBuff[vEP2Idx] + 1;

		tBDTtable[bEP2IN_ODD].Cnt = counter;
		vEP2State ^=0x40;
		tBDTtable[bEP2IN_ODD].Stat._byte= vEP2State;
		
		DataLenght = DataLenght - counter;
		RecDataLength = RecDataLength - counter;
		  //light_change(LIGHT_PORT, LIGHT_PIN_2);
		for(i = 0;i < RecDataLength;i++)
		{
			SendBuff[i] = SendBuff[i + counter];
		}
    }
}

//=========================================================================
//函数名: hw_usb_ep3_out_handler
//功  能: 端点3处理OUT包
//参  数: 无
//返  回: 无
//=========================================================================
void hw_usb_ep3_out_handler(void)
{
    uint_8 i;
    uint_8 *pBuffer;
    //light_change(LIGHT_PORT, LIGHT_PIN_2);
    pBuffer = gu8EP3_OUT_ODD_Buffer;
    //uart_sendN(1,5,pBuffer);
    
    if(tBDTtable[bEP3OUT_ODD].Cnt != 0)
    {   
    	//light_change(LIGHT_PORT, LIGHT_PIN_2);
    	for(i = 0;i < tBDTtable[bEP3OUT_ODD].Cnt;i++)
    	{ 
    		//RecDataBuff[RecDataLength++] = pBuffer[i];
    		RecDataBuff[i] = pBuffer[i];
    		RecDataLength=i+1;
    	}
    }
    vEP3State ^=0x40;
    tBDTtable[bEP3OUT_ODD].Stat._byte=vEP3State;
    tBDTtable[bEP3OUT_ODD].Cnt = EP3_SIZE;
    //light_change(LIGHT_PORT, LIGHT_PIN_2);
}


//=========================================================================
//函数名: hw_usb_stall_handler
//功  能: 处理stall中断
//参  数: 无
//返  回: 无
//=========================================================================
void hw_usb_stall_handler(void) 
{
    if(FLAG_CHK(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0))
        FLAG_CLR(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);
    FLAG_SET(USB_ISTAT_STALL_SHIFT,USB0_ISTAT);
}

//=========================================================================
//函数名: hw_usb_reset_handler
//功  能: 处理复位中断
//参  数: 无
//返  回: 无
//=========================================================================
void hw_usb_reset_handler(void)
{      
    //清标志
    gu8USBClearFlags=0xFF;
    gu8USB_Toogle_flags=0;
    
    //禁止所有端点
    USB0_ENDPT1=0x00;
    USB0_ENDPT2=0x00;
    USB0_ENDPT3=0x00;
    USB0_ENDPT4=0x00;
    USB0_ENDPT5=0x00;
    USB0_ENDPT6=0x00;

    // EP0 BDT Setup
    // EP0 OUT BDT 设置
    tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;
    tBDTtable[bEP0OUT_ODD].Addr =(uint_32)gu8EP0_OUT_ODD_Buffer;
    tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA1;         
    // EP0 OUT BDT 设置
    tBDTtable[bEP0OUT_EVEN].Cnt = EP0_SIZE;
    tBDTtable[bEP0OUT_EVEN].Addr =(uint_32)gu8EP0_OUT_EVEN_Buffer;
    tBDTtable[bEP0OUT_EVEN].Stat._byte = kUDATA1;         
    // EP0 IN BDT 设置 
    tBDTtable[bEP0IN_ODD].Cnt = EP0_SIZE;              
    tBDTtable[bEP0IN_ODD].Addr =(uint_32)gu8EP0_IN_ODD_Buffer;      
    tBDTtable[bEP0IN_ODD].Stat._byte = kUDATA0;   
    // EP0 IN BDT 设置 
    tBDTtable[bEP0IN_EVEN].Cnt = (EP0_SIZE);              
    tBDTtable[bEP0IN_EVEN].Addr =(uint_32)gu8EP0_IN_EVEN_Buffer;      
    tBDTtable[bEP0IN_EVEN].Stat._byte = kUDATA0;        

    // 使能 EP0
    USB0_ENDPT0=0x0D;

    // 清除所有的错误
    USB0_ERRSTAT=0xFF;
    
    // 清除所有的中断标志
    USB0_ISTAT=0xFF;

    // USB设备地址
    USB0_ADDR=0x00;

    // 使能所有的错误中断
    USB0_ERREN=0xFF;

    // USB模块中断使能
    FLAG_SET(USB_INTEN_TOKDNEEN_SHIFT,USB0_INTEN);
    FLAG_SET(USB_INTEN_SOFTOKEN_SHIFT,USB0_INTEN);
    FLAG_SET(USB_INTEN_ERROREN_SHIFT,USB0_INTEN); 
    FLAG_SET(USB_INTEN_USBRSTEN_SHIFT,USB0_INTEN);    
}

//=========================================================================
//函数名: hw_usb_isr
//功  能: 处理复位中断
//参  数: 无
//返  回: 无
//=========================================================================
void hw_usb_isr(void)
{
    // 检测USB 模块是否解析到有效的复位。
    if(FLAG_CHK(USB_ISTAT_USBRST_SHIFT,USB0_ISTAT)) 
    {
        hw_usb_reset_handler();
        return;
    }
    
    
    if(FLAG_CHK(USB_ISTAT_SOFTOK_SHIFT,USB0_ISTAT)) 
    {
        USB0_ISTAT = USB_ISTAT_SOFTOK_MASK;   
    }
    
    
    // 检测STALL
    if(FLAG_CHK(USB_ISTAT_STALL_SHIFT,USB0_ISTAT))
    {
        hw_usb_stall_handler();
    }
    
    
    // 令牌完成中断
    if(FLAG_CHK(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT)) 
    {
        FLAG_SET(USB_CTL_ODDRST_SHIFT,USB0_CTL);
        // USB 处理函数
        hw_usb_handler();
        // 清除令牌完成中断
        FLAG_SET(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT);
    }
    
    // SLEEP 
    if(FLAG_CHK(USB_ISTAT_SLEEP_SHIFT,USB0_ISTAT)) 
    {
        // 清除SLEEP中断
        FLAG_SET(USB_ISTAT_SLEEP_SHIFT,USB0_ISTAT);        
    }
    
    // 错误
    if(FLAG_CHK(USB_ISTAT_ERROR_SHIFT,USB0_ISTAT))
    {
        FLAG_SET(USB_ISTAT_ERROR_SHIFT,USB0_ISTAT);
    }
}
