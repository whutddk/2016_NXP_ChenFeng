/*
 *
 * �ļ���: USB_CDC.c
 * ��;: �ڸ��ļ��ж�����USB CDC���Ӧ�ú���
 *
 * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ USB_CDC.c
 *    �ڱ��ļ��н�CDC_engine����ɾ��
 *    �޸���CDC_InterfaceReq_Handler������SET_LINE_CODING��SET_CONTROL_LINE_STATE�������
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
*   USB CDC���ʼ������
*    ����CDC���״̬
*    ����CDC���ͨѶ����
*    ��ʼ��CDC������ݻ���
*/

void CDC_Init(void)
{
  /*��ʼ��CDC��ͨѶ�Ĳ���*/
  LineCoding.DTERate=LWordSwap(115200);
  LineCoding.CharFormat=0;
  LineCoding.ParityType=0;
  LineCoding.Databits=0x08;

  /*��ʼ��CDC�����ݻ�����*/
  Buffer_Init(CDC_OUT_Data,CDC_BUFFER_SIZE);
}

/*
* CDC_InterfaceReq_Handler
*   ���� CDC��ӿں���
*     ���ú�����ӵ�USB setup�жϷ�������ȥ����
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
