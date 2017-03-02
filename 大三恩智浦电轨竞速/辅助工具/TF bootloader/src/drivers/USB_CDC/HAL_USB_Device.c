/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_USB_Device.c
 * ��;: �ڸ��ļ��ж�����USB�豸ģʽ�µ�Ӧ�ú���
 *          ��ʱUSB�Ĺ�������ΪCDC��
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#include "common.h"     /* Common definitions */
#include "USB_CDC.h"    /* USB CDC support */
#include "HAL_USB_Device.h"

/*
 *******���õ�USB�жϣ�����isr.h��ճ��һ�´���:*********

//USBģ���жϷ�����
#undef  VECTOR_089
#define VECTOR_089 LPLD_USB_Device_Isr
//���º�����LPLD_Kinetis�ײ���������޸�
extern void LPLD_USB_Device_Isr(void);

 ***********************�������*************************/



//�û��Զ����жϷ���������
USB_ISR_CALLBACK USB_ISR[1];

/*
* LPLD_USB_Init
*   K60 USBģ���ʼ������
*
*/


void LPLD_USB_Init(void)
{
  Setup_Pkt=(tUSB_Setup*)BufferPointer[bEP0OUT_ODD];//��gu8EP0_OUT_ODD_Buffer�ĵ�ַ����Setup_Pkt
  gu8USB_State = uPOWER;
  /* MPU ���� */
  MPU_CESR=0;                                     // MPU is disable. All accesses from all bus masters are allowed
  /* SIM ���� */
  #ifdef USB_CLOCK_CLKIN
  SIM_SCGC5 |=SIM_SCGC5_PORTE_MASK;
  PORTE_PCR26=(0|PORT_PCR_MUX(7));                // Enabling PTE26 as CLK input
  #endif

  #ifdef USB_CLOCK_PLL
  SIM_SOPT2 |=SIM_SOPT2_PLLFLLSEL_MASK;           //��PLL��ΪUSB��ʱ��Դ����ʱ��PLL��Ƶ��Ϊ96Mhz
  #endif

  #ifndef USB_CLOCK_CLKIN
  SIM_SOPT2 |=SIM_SOPT2_USBSRC_MASK;              //ѡ��PLL/FLL��Ϊʱ��Դ
  #endif

  //SIM_CLKDIV2|=USB_FARCTIONAL_VALUE;              //USB Freq Divider
                                                  //����USB�ķ�Ƶֵ2,��PLL����2���ã���ǰUSB��Ƶ��Ϊ48Mhz
  SIM_CLKDIV2=SIM_CLKDIV2_USBDIV(2)|SIM_CLKDIV2_USBFRAC_MASK;
  SIM_SCGC4|= SIM_SCGC4_USBOTG_MASK;              //USB Clock Gating
                                                  //����USBģ���ʱ��Դ
  /* NVICģ������ */
  enable_irq(73);                                 //ʹ��NVIC�е�USB OTG�ж�
  USB_ISR[0] = USB_Protocol_Handler;              //��USBЭ�鴦������ӵ��жϴ�����������

  /* USBģ������ */
  USB0_USBTRC0|=USB_USBTRC0_USBRESET_MASK;          //��λUSBģ��
  while(USB0_USBTRC0 & USB_USBTRC0_USBRESET_MASK){};//�ȴ�USB��λ���
  USB0_BDTPAGE1=(UINT8)((UINT32)tBDTtable>>8);     //���õ�ǰ������������BDT
  USB0_BDTPAGE2=(UINT8)((UINT32)tBDTtable>>16);
  USB0_BDTPAGE3=(UINT8)((UINT32)tBDTtable>>24);
  USB0_ISTAT |= USB_ISTAT_USBRST_MASK;             //�����λ��־
  USB0_INTEN |= USB_INTEN_USBRSTEN_MASK;           //ʹ��USB��λ�ж�
  USB0_USBCTRL =0x40;                              //ʹ��������
  USB0_USBTRC0|=0x40;                              //ʹ���첽�ָ��ж�
  USB0_CTL|=0x01;                                  //ʹ��USBģ��
  USB0_CONTROL |=USB_CONTROL_DPPULLUPNONOTG_MASK;  //�ڷ�USB OTGģʽ�£�ʹ����������
}

/*
*  LPLD_USB_Device_Init
*    USB�豸ģʽ��ʼ������
*       �ڸú����г�ʼ��USB��ѹģ��
*       ��ͣ��USB��ѹģ���Standbyģʽ
*       ��ʼ��USB��CDCģʽ
*/
void LPLD_USB_Device_Init(void)
{
  SIM_SOPT1 |= SIM_SOPT1_USBREGEN_MASK;  //ʹ��USB��ѹģ��
  SIM_SOPT1 &= (~SIM_SOPT1_USBSTBY_MASK);//ֹͣUSB��ѹģ���standbyģʽ
  LPLD_USB_Init(); //��ʼ��USBģ��

#if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
  CDC_Init(); //��ʼ��USB CDCģʽ
#endif
}

/*
* LPLD_USB_Device_Enumed
*   �жϵ�ǰCDC�豸�Ƿ�����ö��
*/
void LPLD_USB_Device_Enumed(void)
{
  while(gu8USB_State != uENUMERATED);//�ȴ�USB�豸��ö��
}

/*
*  LPLD_USB_VirtualCom_Rx
*    ��USB CDC��ģʽ����ɴ���ģʽ���ú����Ǵ��ڽ��պ���
*    ����
*      |__*rx_buf ָ���û����ݴ洢�������ڴ�����յ�������
*    ����ֵ���������ݵĳ��ȣ����ֽ�Ϊ��λ
*/
uint8_t LPLD_USB_VirtualCom_Rx(uint8_t *rx_buf)
{
  uint8_t len;
  uint8_t temp=0;
  uint8_t *pu8EPBuffer;

  if(FLAG_CHK(EP_OUT,gu8USB_Flags))// ��������ݵ���
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
*    ��USB CDC��ģʽ����ɴ���ģʽ���ú����Ǵ��ڷ��ͺ���
*    ����
*      |__*tx_buf ָ���û����ݴ洢�������ڴ���Ҫ���͵�����
*      |__len Ҫ���͵����ݳ���
*/
void LPLD_USB_VirtualCom_Tx(uint8_t *tx_buf,uint8_t len)
{
   EP_IN_Transfer(EP2,tx_buf,len);
}


/*
*  LPLD_USB_SetRevIsr
*    ���USB���������жϷ�����
*  ��
*  ��
*/
void LPLD_USB_SetRevIsr(USB_REV_ISR_CALLBACK isr)
{
  USB_Rev_SetIsr(isr);
}




/*
*  LPLD_USB_Device_Isr
*    USB�жϴ�����
*/
void LPLD_USB_Device_Isr(void)
{
  #define USB_VECTORNUM   (*(volatile uint8*)(0xE000ED04))
  uint8 USB_Isr_Num = USB_VECTORNUM - 89;
  //�����û��Զ����жϷ���
  //usb_rev();
  USB_ISR[USB_Isr_Num]();
}


