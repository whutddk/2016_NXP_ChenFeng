/*
 * --------------"拉普兰德K60底层库"-----------------
 *
 * 测试硬件平台:LPLD_K60 Card
 * 版权所有:北京拉普兰德电子技术有限公司
 * 网络销售:http://laplenden.taobao.com
 * 公司门户:http://www.lpld.cn
 *
 * 文件名: HAL_USB_Device.c
 * 用途: 在该文件中定义了USB设备模式下的应用函数
 *          此时USB的工作类型为CDC类
 *
 * 开发者使用协议:
 *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
 *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
 *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
 */
#include "common.h"     /* Common definitions */
#include "USB_CDC.h"    /* USB CDC support */
#include "HAL_USB_Device.h"

/*
 *******需用到USB中断，请在isr.h中粘贴一下代码:*********

//USB模块中断服务定义
#undef  VECTOR_089
#define VECTOR_089 LPLD_USB_Device_Isr
//以下函数在LPLD_Kinetis底层包，不必修改
extern void LPLD_USB_Device_Isr(void);

 ***********************代码结束*************************/



//用户自定义中断服务函数数组
USB_ISR_CALLBACK USB_ISR[1];

/*
* LPLD_USB_Init
*   K60 USB模块初始化函数
*
*/


void LPLD_USB_Init(void)
{
  Setup_Pkt=(tUSB_Setup*)BufferPointer[bEP0OUT_ODD];//将gu8EP0_OUT_ODD_Buffer的地址付给Setup_Pkt
  gu8USB_State = uPOWER;
  /* MPU 配置 */
  MPU_CESR=0;                                     // MPU is disable. All accesses from all bus masters are allowed
  /* SIM 配置 */
  #ifdef USB_CLOCK_CLKIN
  SIM_SCGC5 |=SIM_SCGC5_PORTE_MASK;
  PORTE_PCR26=(0|PORT_PCR_MUX(7));                // Enabling PTE26 as CLK input
  #endif

  #ifdef USB_CLOCK_PLL
  SIM_SOPT2 |=SIM_SOPT2_PLLFLLSEL_MASK;           //用PLL作为USB的时钟源，此时的PLL的频率为96Mhz
  #endif

  #ifndef USB_CLOCK_CLKIN
  SIM_SOPT2 |=SIM_SOPT2_USBSRC_MASK;              //选择PLL/FLL作为时钟源
  #endif

  //SIM_CLKDIV2|=USB_FARCTIONAL_VALUE;              //USB Freq Divider
                                                  //设置USB的分频值2,由PLL除以2所得，当前USB的频率为48Mhz
  SIM_CLKDIV2=SIM_CLKDIV2_USBDIV(2)|SIM_CLKDIV2_USBFRAC_MASK;
  SIM_SCGC4|= SIM_SCGC4_USBOTG_MASK;              //USB Clock Gating
                                                  //开启USB模块的时钟源
  /* NVIC模块配置 */
  enable_irq(73);                                 //使能NVIC中的USB OTG中断
  USB_ISR[0] = USB_Protocol_Handler;              //将USB协议处理函数添加到中断处理函数数组中

  /* USB模块配置 */
  USB0_USBTRC0|=USB_USBTRC0_USBRESET_MASK;          //复位USB模块
  while(USB0_USBTRC0 & USB_USBTRC0_USBRESET_MASK){};//等待USB复位完成
  USB0_BDTPAGE1=(UINT8)((UINT32)tBDTtable>>8);     //配置当前缓冲描述符表BDT
  USB0_BDTPAGE2=(UINT8)((UINT32)tBDTtable>>16);
  USB0_BDTPAGE3=(UINT8)((UINT32)tBDTtable>>24);
  USB0_ISTAT |= USB_ISTAT_USBRST_MASK;             //清除复位标志
  USB0_INTEN |= USB_INTEN_USBRSTEN_MASK;           //使能USB复位中断
  USB0_USBCTRL =0x40;                              //使能弱下拉
  USB0_USBTRC0|=0x40;                              //使能异步恢复中断
  USB0_CTL|=0x01;                                  //使能USB模块
  USB0_CONTROL |=USB_CONTROL_DPPULLUPNONOTG_MASK;  //在非USB OTG模式下，使能上拉功能
}

/*
*  LPLD_USB_Device_Init
*    USB设备模式初始化函数
*       在该函数中初始化USB稳压模块
*       并停用USB稳压模块的Standby模式
*       初始化USB的CDC模式
*/
void LPLD_USB_Device_Init(void)
{
  SIM_SOPT1 |= SIM_SOPT1_USBREGEN_MASK;  //使能USB稳压模块
  SIM_SOPT1 &= (~SIM_SOPT1_USBSTBY_MASK);//停止USB稳压模块的standby模式
  LPLD_USB_Init(); //初始化USB模块

#if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
  CDC_Init(); //初始化USB CDC模式
#endif
}

/*
* LPLD_USB_Device_Enumed
*   判断当前CDC设备是否被主机枚举
*/
void LPLD_USB_Device_Enumed(void)
{
  while(gu8USB_State != uENUMERATED);//等待USB设备被枚举
}

/*
*  LPLD_USB_VirtualCom_Rx
*    将USB CDC类模式虚拟成串口模式，该函数是串口接收函数
*    参数
*      |__*rx_buf 指向用户数据存储区，用于储存接收到的数据
*    返回值：接收数据的长度，以字节为单位
*/
uint8_t LPLD_USB_VirtualCom_Rx(uint8_t *rx_buf)
{
  uint8_t len;
  uint8_t temp=0;
  uint8_t *pu8EPBuffer;

  if(FLAG_CHK(EP_OUT,gu8USB_Flags))// 如果有数据到来
  {
    len = USB_EP_OUT_SizeCheck(EP_OUT);
    temp= len;
    pu8EPBuffer = gu8EP3_OUT_ODD_Buffer;

    while(len--)
      *rx_buf++=*pu8EPBuffer++;

    usbEP_Reset(EP_OUT);
    usbSIE_CONTROL(EP_OUT);
    FLAG_CLR(EP_OUT,gu8USB_Flags);
  }
  return temp;
}

/*
*  LPLD_USB_VirtualCom_Tx
*    将USB CDC类模式虚拟成串口模式，该函数是串口发送函数
*    参数
*      |__*tx_buf 指向用户数据存储区，用于储存要发送的数据
*      |__len 要发送的数据长度
*/
void LPLD_USB_VirtualCom_Tx(uint8_t *tx_buf,uint8_t len)
{
   EP_IN_Transfer(EP2,tx_buf,len);
}


/*
*  LPLD_USB_SetRevIsr
*    添加USB接收数据中断服务函数
*  无
*  无
*/
void LPLD_USB_SetRevIsr(USB_REV_ISR_CALLBACK isr)
{
  USB_Rev_SetIsr(isr);
}




/*
*  LPLD_USB_Device_Isr
*    USB中断处理函数
*/
void LPLD_USB_Device_Isr(void)
{
  #define USB_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 USB_Isr_Num = USB_VECTORNUM - 89;
  //调用用户自定义中断服务
  //usb_rev();
  USB_ISR[USB_Isr_Num]();
}


