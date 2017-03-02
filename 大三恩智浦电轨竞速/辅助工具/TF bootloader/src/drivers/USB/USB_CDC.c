/*
 *
 * 文件名: USB_CDC.c
 * 用途: 在该文件中定义了USB CDC类的应用函数
 *
 * 说明:本页代码基于Freescale官方示例代码修改，源代码文件为 USB_CDC.c
 *    在本文件中将CDC_engine函数删除
 *    修改了CDC_InterfaceReq_Handler函数中SET_LINE_CODING和SET_CONTROL_LINE_STATE处理过程
 */
#include"USB_CDC.h"
/* CDC Global Structures */
CDC_Line_Coding LineCoding;
UINT8 CDC_OUT_Data[CDC_BUFFER_SIZE];

/* USB Variables & Flags */
extern UINT8 gu8USB_Flags; 
extern UINT8 gu8USB_State;              
extern tUSB_Setup *Setup_Pkt;
extern UINT8 gu8EP2_IN_ODD_Buffer[];
extern UINT8 gu8EP3_OUT_ODD_Buffer[];


extern tBDT tBDTtable[];
extern UINT8 gu8Interface;


/*
* LPLD_CDC_Init
*   USB CDC类初始化函数
*    设置CDC类的状态
*    设置CDC类的通讯参数
*    初始化CDC类的数据缓冲
*/

void CDC_Init(void)
{
  /*初始化CDC类通讯的参数*/
  LineCoding.DTERate=LWordSwap(115200);
  LineCoding.CharFormat=0;
  LineCoding.ParityType=0;
  LineCoding.Databits=0x08;

  /*初始化CDC类数据缓冲区*/
  Buffer_Init(CDC_OUT_Data,CDC_BUFFER_SIZE);
}

/*
* CDC_InterfaceReq_Handler
*   设置 CDC类接口函数
*     将该函数添加到USB setup中断服务函数中去处理
*/
UINT8 CDC_InterfaceReq_Handler(void)
{
    UINT8 u8State=uSETUP;
    
    switch(Setup_Pkt->bRequest)
    {        
        case GET_INTERFACE:
            EP_IN_Transfer(EP0,&gu8Interface,1);
            break;

        case GET_LINE_CODING:
            EP_IN_Transfer(EP0,(UINT8*)&LineCoding,7);
            break;

        case SET_LINE_CODING:
            u8State=uDATA;
            if(FLAG_CHK(EP0,gu8USB_Flags))//
            {
              FLAG_CLR(EP0,gu8USB_Flags);
              (void)EP_OUT_Transfer(EP0,(UINT8*)&LineCoding);
              EP_IN_Transfer(EP0,0,0);       
            }//
            break;

        case SET_CONTROL_LINE_STATE:
            u8State=uSETUP;
            EP_IN_Transfer(EP0,0,0);//
            break;

        case LOADER_MODE:
            Buffer_Init(CDC_OUT_Data,CDC_BUFFER_SIZE);
            FLAG_SET(LOADER,gu8USB_Flags);
            CDC_OUT_Data[0]=0xFF;
            break;
       default:break;
    }
    return(u8State);
}


/**********************************************************/
UINT32 LWordSwap(UINT32 u32DataSwap)
{
    UINT32 u32Temp;
    u32Temp= (u32DataSwap & 0xFF000000) >> 24;
    u32Temp+=(u32DataSwap & 0xFF0000)   >> 8;
    u32Temp+=(u32DataSwap & 0xFF00)     << 8;
    u32Temp+=(u32DataSwap & 0xFF)       << 24;
    return(u32Temp);    
}
