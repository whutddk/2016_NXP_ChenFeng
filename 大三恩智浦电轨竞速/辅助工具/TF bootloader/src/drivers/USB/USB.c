/*
 * �ļ���: USB.c
 * ��;: ����USB�ײ�Э�麯���ͱ���
 * ����޸�����: 20121204
 *
 *
 * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ USB.c
 *    �ڱ��ļ��н�USB_Init�����Ƴ�
 *    ��USB_EP_OUT_SizeCheck�����еĻ�����ݳ��Ȳ��ֽ������޸�
 *    ��USB_Reset_Handler�����е�gu8USB_Toogle_flags�����޸�Ϊ0xFE��ԭ����˴���BUG��ʹ�˵��ٽ���һ���ֽ�
 */
#include "USB.h"
#include "USB_Desc.h"

//����USB ����������
//USB������������512�ֽڶ���
#pragma data_alignment=512

tBDT tBDTtable[16]; //Ϊ16�����������仺����������

//����˵�0������
UINT8 gu8EP0_OUT_ODD_Buffer[EP0_SIZE];
UINT8 gu8EP0_OUT_EVEN_Buffer[EP0_SIZE];
UINT8 gu8EP0_IN_ODD_Buffer[EP0_SIZE];
UINT8 gu8EP0_IN_EVEN_Buffer[EP0_SIZE];
//����˵�1������
UINT8 gu8EP1_OUT_ODD_Buffer[EP1_SIZE];
UINT8 gu8EP1_OUT_EVEN_Buffer[EP1_SIZE];
UINT8 gu8EP1_IN_ODD_Buffer[EP1_SIZE];
UINT8 gu8EP1_IN_EVEN_Buffer[EP1_SIZE];
//����˵�2������
UINT8 gu8EP2_OUT_ODD_Buffer[EP2_SIZE];
UINT8 gu8EP2_OUT_EVEN_Buffer[EP2_SIZE];
UINT8 gu8EP2_IN_ODD_Buffer[EP2_SIZE];
UINT8 gu8EP2_IN_EVEN_Buffer[EP2_SIZE];
//����˵�3������
UINT8 gu8EP3_OUT_ODD_Buffer[EP3_SIZE];
UINT8 gu8EP3_OUT_EVEN_Buffer[EP3_SIZE];
UINT8 gu8EP3_IN_ODD_Buffer[EP3_SIZE];
UINT8 gu8EP3_IN_EVEN_Buffer[EP3_SIZE];
//����˵㻺����ָ��
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
//����˵㻺��������
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
UINT8 gu8USB_Flags;        //USB������ɱ�־λ
UINT8 gu8USBClearFlags;
UINT8 *pu8IN_DataPointer; //USB���뻺����ָ��
UINT8 gu8IN_Counter;
UINT8 gu8USB_Toogle_flags;//USB���ݷ�ת��־λ
UINT8 gu8Dummy;
UINT16 gu8Status;
UINT8 gu8Interface;       //USB�ӿڱ�־λ
UINT8 gu8HALT_EP;         //USB�˵�ֹͣ��־λ
UINT8 gu8USB_State;       //USB���̱�־λ

tUSB_Setup *Setup_Pkt;//����setup���ݰ�ָ��

USB_REV_CALLBACK usb_rev_data_isr;

void USB_Rev_SetIsr(USB_REV_CALLBACK isr)
{
  usb_rev_data_isr = isr;
}

/*
* EP_IN_Transfer
*   �˵�IN���ͣ��ڲ�ͬUSBģʽ��IN�ĺ��岻ͬ
*     ��USB����ģʽ�£�USB host��  IN��ʾ  USB Host���� USB Device�����ݰ�
*     ��USB�豸ģʽ�£�USB Device��IN��ʾ  USB Host�� USB Device�������ݰ�
*   ��ǰ��USB Deviceģʽ�£��ú�����������Device�豸�������ݰ�
*/
void EP_IN_Transfer(UINT8 u8EP,UINT8 *pu8DataPointer,UINT8 u8DataSize)
{
  UINT8 *pu8EPBuffer;
  UINT8 u8EPSize;     //�˵�����ݳ���
  UINT16 u16Lenght=0;
  UINT8 u8EndPointFlag;

  /*������ǰ��������λ��*/
  u8EndPointFlag=u8EP;
  if(u8EP)   //������Ƕ˵�0,
    u8EP=(UINT8)(u8EP<<2);
  u8EP+=2; //EPֵ��2

  pu8EPBuffer=BufferPointer[u8EP];   //����EP��BUFFER��ַ��pu8EPBuffer

  if(FLAG_CHK(fIN,gu8USBClearFlags)) //���gu8USBClearFlags = 1
  {
      pu8IN_DataPointer = pu8DataPointer; //���û����ݴ洢�����׵�ַ��pu8IN_DataPointer
      gu8IN_Counter = u8DataSize;         //���û����ݳ��ȸ�gu8IN_Counter

      u16Lenght=(Setup_Pkt->wLength_h<<8)+Setup_Pkt->wLength_l ;//��setup���ݵĳ��ȸ�u16Lenght
      if((u16Lenght < u8DataSize) && (u8EP==2)) //��������͵����ݳ��ȴ���setup���趨�ĳ��� ͬʱ �˵�ֵ == 2
      {
          gu8IN_Counter=Setup_Pkt->wLength_l; //ֻ����setup�еĵ�8λ����
      }
  }
  /*��鷢�ͳ���*/
  if(gu8IN_Counter > cEP_Size[u8EP]) //����������ݰ��ĳ��� ����32�ֽ�ʱ
  {
      u8EPSize = cEP_Size[u8EP];     //����ʱ�˵�ĳ��������ڶ˵��Ĭ�ϳ���
      gu8IN_Counter-=cEP_Size[u8EP]; //�����ݰ��ĳ��ȼ���EP_Size
      FLAG_CLR(fIN,gu8USBClearFlags);//��gu8USBClearFlags����
  }
  else
  {
      u8EPSize = gu8IN_Counter;      //���С��
      gu8IN_Counter=0;
      FLAG_SET(fIN,gu8USBClearFlags);//��gu8USBClearFlags��һ
  }

  /*���û����������ֵ���Ƶ�EP ��������׼������*/
  tBDTtable[u8EP].Cnt=(u8EPSize);    //������Ҫ���͵����ݳ���

  while(u8EPSize--)
       *pu8EPBuffer++=*pu8IN_DataPointer++; //���û������ݸ�ֵ��EP�洢��

  if(FLAG_CHK(u8EndPointFlag,gu8USB_Toogle_flags)) //�����Ӧ�˵��gu8USB_Toogle_flags == 1
  {
      tBDTtable[u8EP].Stat._byte= kUDATA0;
      FLAG_CLR(u8EndPointFlag,gu8USB_Toogle_flags);//������Ӧ�˵��gu8USB_Toogle_flags
  }
  else
  {
      tBDTtable[u8EP].Stat._byte= kUDATA1;
      FLAG_SET(u8EndPointFlag,gu8USB_Toogle_flags);//��λgu8USB_Toogle_flags
  }
}

/*
* EP_OUT_Transfer
*   �˵�OUT���ͣ��ڲ�ͬUSBģʽ��OUT�ĺ��岻ͬ
*     ��USB����ģʽ�£�USB host��  OUT��ʾ  USB Host�� USB Device�������ݰ�
*     ��USB�豸ģʽ�£�USB Device��OUT��ʾ  USB Host�� USB Device�������ݰ�
*   ��ǰ��USB Deviceģʽ�£��ú�����������Device�豸�������ݰ�
*   ����ֵ�����ؽ��յ������ݵĳ���
*/
UINT8 EP_OUT_Transfer(UINT8 u8EP,UINT8 *pu8DataPointer)
{
    UINT8 *pu8EPBuffer;
    UINT8 u8EPSize;
    /* ������������λ�� */
    u8EP++;
    /* ������ʵ�EP���壬EP0�ǿ��Ƶ㣬EP1Ϊ�����жϵ㣬EP2������BULK�� */
    pu8EPBuffer=BufferPointer[u8EP];

    u8EPSize=tBDTtable[u8EP].Cnt;
    u8EP=u8EPSize;
    /* ��EP��������ݸ��Ƹ��û��� */
    while(u8EPSize--)
      *pu8DataPointer++=*pu8EPBuffer++;
    return(u8EP);
}

/*
* USB_EP_OUT_SizeCheck
*   �˵��������ݳ��ȼ��
*
*/
UINT16 USB_EP_OUT_SizeCheck(UINT8 u8EP)
{
  UINT8 u8EPSize;
   /* ��ȡ�������ĳ��� */
  u8EPSize = tBDTtable[u8EP<<2].Cnt;
  //u8EPSize=SWAP16(tBDTtable[u8EP<<2].Cnt);
  return(u8EPSize & 0x03FF);
}

/*
* USB_Set_Interface
*   USB���ö˵㺯��
*
*/
void USB_Set_Interface(void)
{
  /* �˵�Ĵ������� */
  USB0_ENDPT1= EP1_VALUE | USB_ENDPT_EPHSHK_MASK; //���ö˵�1Ϊ�ж϶˵�
  USB0_ENDPT2= EP2_VALUE | USB_ENDPT_EPHSHK_MASK; //���ö˵�2Ϊ���� BULK�˵�
  USB0_ENDPT3= EP3_VALUE | USB_ENDPT_EPHSHK_MASK; //���ö˵�3Ϊ��� BULK�˵�
  USB0_ENDPT4= EP4_VALUE | USB_ENDPT_EPHSHK_MASK; //��ֹ�˵�
  USB0_ENDPT5= EP5_VALUE | USB_ENDPT_EPHSHK_MASK; //��ֹ�˵�
  USB0_ENDPT6= EP6_VALUE | USB_ENDPT_EPHSHK_MASK; //��ֹ�˵�

  /* �˵� 1 BDT ����*/
  tBDTtable[bEP1IN_ODD].Stat._byte= kMCU;//USB-FS ��ר��Ȩ���� BD
                                         //����DATA0�����ͻ��߽���
  tBDTtable[bEP1IN_ODD].Cnt =1;// 0x00;
  tBDTtable[bEP1IN_ODD].Addr =(UINT32)gu8EP1_IN_ODD_Buffer;

  /* �˵� 2 BDT ����*/
  tBDTtable[bEP2IN_ODD].Stat._byte= kMCU;//USB-FS ��ר��Ȩ���� BD
                                         //����DATA0�����ͻ��߽���
  tBDTtable[bEP2IN_ODD].Cnt = 0x00;
  tBDTtable[bEP2IN_ODD].Addr =(UINT32)gu8EP2_IN_ODD_Buffer;

  /* �˵� 3 BDT ����*/
  tBDTtable[bEP3OUT_ODD].Stat._byte= kSIE;//USB-FS ��ר��Ȩ���� BD
                                          //ʹ��USB-FSȥ�������ݷ�תͬ��
                                          //����DATA0�����ͻ��߽���
  tBDTtable[bEP3OUT_ODD].Cnt = 0xFF;
  tBDTtable[bEP3OUT_ODD].Addr =(UINT32)gu8EP3_OUT_ODD_Buffer;
}


/*
* USB_StdReq_Handler
*   ���USB���յ�Setup��������ʽʱ�豸���󣨱�׼������ʽ
*   ���뵽��׼�����жϷ�������
*
*/
void USB_StdReq_Handler(void)
{
  switch(Setup_Pkt->bRequest) //�жϸ�������ʽ�����ݰ��е�����
  {
    case mSET_ADDRESS:          //USB device���õ�ַ����
        EP_IN_Transfer(EP0,0,0);//�˵�0��ʼ�����Լ��ĵ�ַ
        gu8USB_State=uADDRESS;  //��USB��״̬λ��Ϊ�����õ�ַ״̬
        break;

    case mGET_DESC:             //PC���USB��������������
        switch(Setup_Pkt->wValue_h) //�ж�Setup���ݰ��е�Ҫ���͵�������
        {
            case mDEVICE:           //Ҫ��ײ��豸�����豸������
                EP_IN_Transfer(EP0,(UINT8*)Device_Descriptor,sizeof(Device_Descriptor));
                break;

            case mCONFIGURATION:    //Ҫ��������������
                EP_IN_Transfer(EP0,(UINT8*)Configuration_Descriptor,sizeof(Configuration_Descriptor));
                break;

            case mSTRING:           //Ҫ�����ַ���������
                EP_IN_Transfer(EP0,(UINT8*)String_Table[Setup_Pkt->wValue_l],String_Table[Setup_Pkt->wValue_l][0]);
                break;

            default:
                USB_EP0_Stall();   //��������ǣ�תΪ�˵�0 stall��ֹͣ��ģʽ
                break;
        }
        break;

    case mSET_CONFIG:                             //USB device�豸��������
        gu8Dummy=Setup_Pkt->wValue_h+Setup_Pkt->wValue_l; //��ϳ�16λ����
        if(Setup_Pkt->wValue_h+Setup_Pkt->wValue_l)
        {
            USB_Set_Interface();                  // ����USB device���ж϶˵㡢bulk�˵�
            EP_IN_Transfer(EP0,0,0);              // �˵�0��ʼ����
            gu8USB_State=uENUMERATED;             // ����USB��״̬Ϊ�Ա�ö��״̬
        }
        break;

    case mGET_CONFIG:                             //PC���USB���豸��������
        EP_IN_Transfer(EP0,(UINT8*)&gu8Dummy,1);  //�˵�0������϶��ɵ�16λ����
        break;

    case mGET_STATUS:                             //PC���USB��״̬����
        gu8Status=0;                              //����gu8Status = 0
        EP_IN_Transfer(EP0,(UINT8*)&gu8Status,2); //�˵�0����״2���ֽڵ�״̬
        break;

    default:
        USB_EP0_Stall();                          //��������ǣ�תΪ�˵�0 stall��ֹͣ��ģʽ
        break;
  }
}


/*
* USB_Setup_Handler
*  USB SETUP�жϣ���ʾһ�ο��ƴ���Ŀ�ʼ��
*  SETUP�ǿ��ƴ���ĵ�һ�׶Σ�
*  ��������һ�������ϵͳ����Ŀ��USB�豸��
*/
void USB_Setup_Handler(void)
{
  UINT8 u8State;
  FLAG_CLR(0,gu8USB_Toogle_flags);        //��gu8USB_Toogle_flags = 0
  switch(Setup_Pkt->bmRequestType & 0x1F) //�ж�Setup���ݰ����������ʽ
  {
      case DEVICE_REQ: //������豸������ʽ
          if((Setup_Pkt->bmRequestType & 0x1F)== STANDARD_REQ) //�豸������ʽ���ڱ�׼������ʽ
          {
              USB_StdReq_Handler(); //��׼�����жϷ�����
          }
          tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
          break;

      case INTERFACE_REQ://����ǽӿ�������ʽ
          u8State = USB_InterfaceReq_Handler(); //��ǰ�ӿ�����ΪCDC������

          if(u8State==uSETUP)
              tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
          else
              tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA1;
          break;

      case ENDPOINT_REQ://����Ƕ˵�����
          USB_Endpoint_Setup_Handler();
          tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
          break;

      default:
          USB_EP0_Stall();  //stall����
          break;
  }
  FLAG_CLR(USB_CTL_TXSUSPENDTOKENBUSY_SHIFT,USB0_CTL);
}


/*
* USB_Endpoint_Setup_Handler
*   USB�˵�Setup�жϴ�����
*
*/
void USB_Endpoint_Setup_Handler(void)
{
  UINT16 u16Status;
  switch(Setup_Pkt->bRequest)
  {
    case GET_STATUS: //��ȡ��ǰ״̬
        if(FLAG_CHK(Setup_Pkt->wIndex_h,gu8HALT_EP))//�ж�gu8HALT_EP�˵�HALT�Ƿ�Ϊ1
            u16Status=0x0100;
        else
            u16Status=0x0000;

        EP_IN_Transfer(EP0,(UINT8*)&u16Status,2); //ͨ���˵�0��PC����״̬
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
*  USB�����жϷ�����
*
*/
void USB_Handler(void)
{
  UINT8 u8EndPoint;
  UINT8 u8IN;

  u8IN = USB0_STAT & 0x08;    //��õ�ǰ�Ĵ���״̬��1���ͣ�0����
  u8EndPoint = USB0_STAT >> 4;//��õ�ǰ�������ƵĶ˵��ַ

  //�˵㷢��PC����ģʽ��ʾ��Ŀ���豸���͵�PC��
  //�˵����PC����ģʽ��ʾPC����Ŀ���豸����

  /* Data EndPoints */
  if(u8EndPoint) //��������ʾ�����ݶ˵㣬��Ϊ�˵�0��Ϊ���ƶ˵�
  {
    if(!u8IN)    //����Ƕ˵����ģʽ
    {
      usbMCU_CONTROL(u8EndPoint);         //ת���ɵ�Ƭ������BDT
      FLAG_SET(u8EndPoint,gu8USB_Flags);  //���� gu8USB_Flags = 1

      if(usb_rev_data_isr !=(USB_REV_CALLBACK)0)
        usb_rev_data_isr();
    }
  }
  /* Control EndPoint */
  else       //����Ƕ˵�0���˵�0��Ϊ���ƶ˵�
  {
    if(u8IN)    //����Ƕ˵㷢��PC����
    {
      USB_EP0_IN_Handler();
    }
    else       //����Ƕ˵����PC����ģʽ
    {
      if(tBDTtable[bEP0OUT_ODD].Stat.RecPid.PID == mSETUP_TOKEN) //������յ�����������
          USB_Setup_Handler();
      else     //������յĲ�����������
          USB_EP0_OUT_Handler();
    }
  }
}


/*
* USB_EP0_IN_Handler
*   �˵�0����PC����ģʽ�жϷ���������ʱ�˵�0�ǿ��ƶ˵㣬
*
*/
void USB_EP0_IN_Handler(void)
{
  if(gu8USB_State == uADDRESS)        //�����ǰUSB���ڵ�ַ״̬
  {
    USB0_ADDR = Setup_Pkt->wValue_l; //��Setup_Pkt��ֵ��USB��ַ�Ĵ���
    gu8USB_State = uREADY;           //�ı䵱ǰUSB״̬
    FLAG_SET(fIN,gu8USBClearFlags);  //��gu8USBClearFlags����Ϊ1
  }
  EP_IN_Transfer(0,0,0);             //�˵�0��ʼ����
}

/*
* USB_EP0_Stall
*   �˵�0 stallֹͣ����
*
*/
void USB_EP0_Stall(void)
{
  FLAG_SET(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);  // USB0_ENDPT0�� STALL =1
  tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0;    // USB-FS ��ר��Ȩ���� BD
                                                  //ʹ��USB-FSȥ�������ݷ�תͬ��
                                                  //����DATA1�����ͻ��߽���
  tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;          //����EP0�ĳ���32�ֽ�
}


/*
* USB_EP0_OUT_Handler
*   �˵�0����PC���������жϷ�����
*
*/
void USB_EP0_OUT_Handler(void)
{
  FLAG_SET(0,gu8USB_Flags);   //��EP0��gu8USB_Flags��1
  tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0;   //USB-FS ��ר��Ȩ���� BD
                                                 //ʹ��USB-FSȥ�������ݷ�תͬ��
                                                 //����DATA1�����ͻ��߽���
}


/*
*   USB_Stall_Handler
*     ���USB������Deviceģʽ��������stall֤�������䲻����ɴ��䡣
*/
void USB_Stall_Handler(void)
{
  if(FLAG_CHK(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0)) //���USB�Ķ˵�0��stallλ�Ƿ���λ
      FLAG_CLR(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);//��ն˵�0��stallλ
  FLAG_SET(USB_ISTAT_STALL_SHIFT,USB0_ISTAT);       //���ȫ��״̬�Ĵ����е�Stallλ
}


/*
*   USB_Reset_Handler
*     USB��λ�жϷ�����,�ڸú����н������������־λ��
*   ��ֹ����EP(�˵�Ĵ���)��ͬʱ��EP0��ʼΪ���ƶ˵�
*   ����EP0�����롢�����ż������г�ʼ����
*   ����USB�����жϡ�USB��һ֡�����жϡ�USB�����жϡ�USB��λ�ж�
*/
void USB_Reset_Handler(void)
{
  /*���������־λ*/
  gu8USBClearFlags=0xFF;
  gu8USB_Toogle_flags=0xFE;

  /*��ֹ����EP�Ĵ���*/
  USB0_ENDPT1=0x00;
  USB0_ENDPT2=0x00;
  USB0_ENDPT3=0x00;
  USB0_ENDPT4=0x00;
  USB0_ENDPT5=0x00;
  USB0_ENDPT6=0x00;

  /*�˵�0 BDT �����˵�����*/
  tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;   // EP0 OUT BDT ����
  tBDTtable[bEP0OUT_ODD].Addr =(UINT32)gu8EP0_OUT_ODD_Buffer;
  tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA1;//USB-FS ��ר��Ȩ���� BD
                                              //ʹ��USB-FSȥ�������ݷ�תͬ��
                                              //����DATA1�����ͻ��߽���

  tBDTtable[bEP0OUT_EVEN].Cnt = EP0_SIZE; // EP0 OUT BDT ����
  tBDTtable[bEP0OUT_EVEN].Addr =(UINT32)gu8EP0_OUT_EVEN_Buffer;
  tBDTtable[bEP0OUT_EVEN].Stat._byte = kUDATA1;//USB-FS ��ר��Ȩ���� BD
                                               //ʹ��USB-FSȥ�������ݷ�תͬ��
                                               //����DATA1�����ͻ��߽���

  tBDTtable[bEP0IN_ODD].Cnt = EP0_SIZE;   // EP0 IN BDT ����
  tBDTtable[bEP0IN_ODD].Addr =(UINT32)gu8EP0_IN_ODD_Buffer;
  tBDTtable[bEP0IN_ODD].Stat._byte = kUDATA0;//USB-FS ��ר��Ȩ���� BD
                                             //ʹ��USB-FSȥ�������ݷ�תͬ��
                                             //����DATA0�����ͻ��߽���

  tBDTtable[bEP0IN_EVEN].Cnt = EP0_SIZE;  // EP0 IN BDT ����
  tBDTtable[bEP0IN_EVEN].Addr =(UINT32)gu8EP0_IN_EVEN_Buffer;
  tBDTtable[bEP0IN_EVEN].Stat._byte = kUDATA0;//USB-FS ��ר��Ȩ���� BD
                                              //ʹ��USB-FSȥ�������ݷ�תͬ��
                                              //����DATA0�����ͻ��߽���

  USB0_ENDPT0=0x0D; //ʹ�ܶ˵�0

  USB0_ERRSTAT=0xFF;//������д����־λ

  USB0_ISTAT=0xFF;  //�������USB�жϱ�־λ

  USB0_ADDR=0x00;   // ����USBȱʡ��ֵΪ0

  USB0_ERREN=0xFF;  // ʹ�����д����ж�Դ

  /*ʹ��USB�ж�*/
  FLAG_SET(USB_INTEN_TOKDNEEN_SHIFT,USB0_INTEN);  //ʹ��USB TOKDNE�ж�
  FLAG_SET(USB_INTEN_SOFTOKEN_SHIFT,USB0_INTEN);  //ʹ��USB SOFTOK�ж�
  FLAG_SET(USB_INTEN_ERROREN_SHIFT,USB0_INTEN);   //ʹ��USB�����ж�
  FLAG_SET(USB_INTEN_USBRSTEN_SHIFT,USB0_INTEN);  //ʹ��USB��λ�ж�
}


/*
* USB_Protocol_Handler
*   USBЭ���жϷ�����
*      �ڸú����е���USB�ĵײ�Э��
*/
void USB_Protocol_Handler(void)
{
  uint8 err;
  FLAG_SET(1,GPIOC_PDOR);
  /*USB �����ʼ��������Ƚ��븴λ�ж� */
  if(FLAG_CHK(USB_ISTAT_USBRST_SHIFT,USB0_ISTAT))//����USB��λ�ж�
  {
    USB_Reset_Handler();                         //����USB��λ�жϷ�����
    return;
  }
  if(FLAG_CHK(USB_ISTAT_SOFTOK_SHIFT,USB0_ISTAT))//����USB SOFTOK�ж�
  {
    USB0_ISTAT = USB_ISTAT_SOFTOK_MASK;          //���SOFTOK��־λ
  }
  if(FLAG_CHK(USB_ISTAT_STALL_SHIFT,USB0_ISTAT)) //����USBֹͣ�����ݴ���
  {
    USB_Stall_Handler();                         //����Stall�жϷ�����
  }
  if(FLAG_CHK(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT))//����USB�����ж�
  {
    FLAG_SET(USB_CTL_ODDRST_SHIFT,USB0_CTL);     //��λ����BDT ODD��Ȼ���������EVEN BDT
    USB_Handler();
    FLAG_SET(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT); //����USB���Ʊ�־λ
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

