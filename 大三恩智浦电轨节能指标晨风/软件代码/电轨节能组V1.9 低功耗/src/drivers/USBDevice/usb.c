//=========================================================================
// �ļ����ƣ�hw_usb.c                                                          
// ���ܸ�Ҫ��usb����Դ�ļ�
// ��Ȩ����: ���ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
// �汾����:     ʱ��                     �汾                                       �޸�
//           2011-12-14     V1.0        USB������ʼ�汾
//           2011-12-20     V1.1        USB�����Ż��޸�
//=========================================================================
#include "usb.h"
#include "uart.h"
#include "light.h"
//�豸������
const uint_8 Device_Descriptor[18]= 
{
 	0x12,	   //bLength���������ĳ��ȣ�18�ֽ�
	0x01,	   //bDescriptorType�����������ͣ�0x01��ʾ��������Ϊ�豸��������
	0x00,0x02, //bcdUSB��USB�淶�汾�ţ�����BCD�룩��2.0 
	0x02,	   //bDeviceClass���豸�����
	0x00,	   //bDeviceSubClass���豸�������	
	0x00,	   //bDeviceProtocol���豸Э����루0x00��ʾ��ʹ���κ��豸��Э�飩			
	0x20,	   //bMaxPacketSize0�򣬶˵�0֧��������ݰ��ĳ��ȣ�32�ֽ�
	0xA2,0x15, //idVendor�򣬹�Ӧ��ID��VID��
	0x0F,0xA5, //idProduct�򣬲�ƷID��PID��
	0x00,0x00, //bcdDevice���豸�汾�ţ�����BCD�룩
	0x01,      //iManufacturer�򣬹�Ӧ�̵��ַ���������������1
	0x02,	   //iProduct�򣬲�Ʒ���ַ���������������2
	0x03,	   //iSerialNumber���豸��ŵ��ַ���������������3
	0x01	   //bNumConfigurations�򣬸�USB�豸֧�ֵ�������Ŀ��1��
};

//�ַ���������0
const uint_8 String_Descriptor0[4] = 
{
	0x04,		   //bLength�򣬳��ȣ�4�ֽ�
	0x03,		   //bDescriptorType���ַ���������
	0x09,0x04	   //wLANDID0��Ӣ��
};

//�ַ���������1
const uint_8 String_Descriptor1[] = 
{
	0x12,			//bLength�򣬳��ȣ�18�ֽ�
	0x03,		    //bDescriptorType���ַ���������
	'S',0x00,	    //                                       
	'U',0x00,	    //
	'D',0x00,	    //
	'A',0x00,	    //
	'-',0x00,	    //
	'F',0x00,	    //
	'S',0x00,	    //
	'L',0x00,	    //
};	 


//�ַ���������2
const uint_8 String_Descriptor2[] = 
{
	0x38,			//bLength�򣬳��ȣ�56�ֽ�
	0x03,		    //bDescriptorType���ַ���������
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


//�ַ���������3
const uint_8 String_Descriptor3[] = 
{
	0x14,			//bLength�򣬳��ȣ�20�ֽ�
	0x03,		    //bDescriptorType���ַ���������
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


//����������
const uint_8 Configuration_Descriptor[0x20]= 
{
	//����������
	0x09,		    //bLength�������������ĳ��ȣ�9�ֽ�
	0x02,		    //bDescriptorType��0x02��ʾ��������Ϊ����������
	0x20,0x00,	    //wTotalLength��������Ϣ���ܳ��ȣ��������á��ӿںͶ˵㣩��32�ֽ�
	0x01,		    //bNumInterfaces�򣬸�������֧�ֵĽӿ���������һ������1
	0x01,		    //bConfigurationValue������ֵ��1 
	0x00,		    //iConfiguration�������ַ���������������0
	0xC0,		    //bmAttibutes�����õ�����(�������߹��硢�Թ��缰���̻��ѵ�����) 
	                //λ7��1-����Ϊ1��λ6��0-�Թ��磻λ5��0-��֧��Զ�̻���
	0x32,		    //MaxPower���豸��������ȡ����������2mAΪ��λ��50*2mA��100mA

	//�ӿ�������
	0x09,           //bLength�򣬽ӿ����������ȣ�9�ֽ�
	0x04,           //bDescriptorType��0x04��ʾ��������Ϊ�ӿ�������
	0x00,           //bInterfaceNumber�򣬽ӿں�
	0x00,           //bAlternateSetting�򣬽ӿڵĿ��滻����ֵ
	0x02,           //bNumEndpoints�򣬽ӿ�ʹ�õĶ˵��������˵�0����2
	0xFF,           //bInterfaceClass�򣬽ӿ�������USB�豸�ࣺ0xFF��ʾ��Ӧ���Զ���
	0xFF,           //bInterfaceSubClass�򣬽ӿ�������USB�豸���ࣺ0xFF��ʾ��Ӧ���Զ���
	0xFF,           //bInterfaceProtocol�򣬽ӿڲ��õ�USB�豸��Э�飺0xFF��ʾ��Ӧ���Զ���
	0x01,           //iInterface�򣬽ӿ��ַ�����������������1

    
    
	 //�˵�OUT������
	0x07,           //bLength�򣬶˵����������ȣ�7�ֽ�
	0x05,           //bDescriptorType��0x05��ʾ��������Ϊ�˵�������
	0x82,           //bEndpointAddress�򣬶˵�źʹ��䷽�򣺶˵�2��IN
	0x02,           //bmAttributes�򣬶˵����ԣ����ݶ˵㡢�鴫��
	0x20,0x00,      //wMaxPacketSize�򣬶˵�֧��������ݰ����ȣ�32�ֽ�          
	0x00,           //bInterval����ѯ�������msΪ��λ��



	 //�˵�IN������
	0x07,           //bLength�򣬶˵����������ȣ�7�ֽ�
	0x05,           //bDescriptorType��0x05��ʾ��������Ϊ�˵�������
	0x03,           //bEndpointAddress�򣬶˵�źʹ��䷽�򣺶˵�3��OUT   
	0x02,           //bmAttributes�򣬶˵����ԣ����ݶ˵㡢�鴫��
	0x20,0x00,      //wMaxPacketSize�򣬶˵�֧��������ݰ����ȣ�32�ֽ�        
	0x00,           //bInterval����ѯ�������msΪ��λ��
};

//�豸�޶�������
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

//BDT��������������ֻҪ����512�ֽڣ��������ڻ�������ַ�ĵ�9λ����Ϊ0����ȻUSBģ���޷�ʹ�ã�
//��������1024�����ҳ���ַ��9λΪ0�Ļ�������ַ��Ϊ�׵�ַ��
uint_8 tBDT_unaligned[1024];
tBDT *tBDTtable; // 4���˵��BDT 

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

//�˵�IN(2)״̬
uint_8 vEP2State = kUDATA1;
//�˵�OUT(3)״̬
uint_8 vEP3State = kUDATA0;

//����˵�OUT������
uint_8 RecDataBuff[EP3_SIZE];
//���ݳ���
uint_32 RecDataLength;

//USBģ���ڲ�ȫ�ֱ���
uint_8 gu8USBClearFlags;
uint_8 *pu8IN_DataPointer;
uint_8 gu8IN_Counter;
uint_8 gu8USB_Toogle_flags;
uint_8 gu8Dummy;
uint_8 gu8HALT_EP;
uint_8 gu8USB_State;                //����USB�˵�0��״̬
tUSB_Setup *Setup_Pkt;             //ָ��˵�0OUT�����׵�ַ


//=========================================================================
//������: hw_usb_init
//��  ��: USBģ���ʼ 
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_init(void)
{
	tBDTtable = (tBDT *)((( uint_32 ) tBDT_unaligned & 0xFFFFFE00UL)+ 0x200UL);
    Setup_Pkt=(tUSB_Setup*)BufferPointer[bEP0OUT_ODD];
    gu8USB_State=uPOWER;

    //USB_FMC_ACC_ENABLE;
    USB_REG_SET_ENABLE;
    USB_REG_CLEAR_STDBY;
    
    //MPU_CESR=0;//��ֹMPU
    FLAG_SET(SIM_SOPT2_PLLFLLSEL_SHIFT,SIM_SOPT2);  // ʹ��PLL���
    FLAG_SET(SIM_SOPT2_USBSRC_SHIFT,SIM_SOPT2);     // ʹ��PLL/FLLΪʱ��Դ
   

    //SIM_CLKDIV2|=USB_FARCTIONAL_VALUE;              //USB��Ƶ��������
    SIM_SCGC4|=(SIM_SCGC4_USBOTG_MASK);             //USBģ��ʱ����ʹ��

    enable_irq(USB_INTERRUPT_IRQ);                  //ʹ��USBģ��IRQ�ж�

    //USBģ��Ĵ�������
    USB0_USBTRC0|=USB_USBTRC0_USBRESET_MASK;        //��λUSBģ��
    while(FLAG_CHK(USB_USBTRC0_USBRESET_SHIFT,USB0_USBTRC0)){};	
    
    //����BDT��ַ�Ĵ���
    //( ��9 λ��Ĭ��512 �ֽڵ�ƫ��) 512 = 16 * 4 * 8 ��
    //8 λ��ʾ: 4 ���ֽڵĿ���״̬��4 ���ֽڵĻ�������ַ ��
    USB0_BDTPAGE1=(uint_8)((uint_32)tBDTtable>>8);
    USB0_BDTPAGE2=(uint_8)((uint_32)tBDTtable>>16);
    USB0_BDTPAGE3=(uint_8)((uint_32)tBDTtable>>24);

    //���USBģ�鸴λ��־
    FLAG_SET(USB_ISTAT_USBRST_MASK,USB0_ISTAT);

    //ʹ��USBģ�鸴λ�ж�
    FLAG_SET(USB_INTEN_USBRSTEN_SHIFT,USB0_INTEN);

    USB0_USBCTRL=0x40;


    USB0_USBTRC0|=0x40;                            //ǿ�����õ�6λΪ1

    USB0_CTL|=0x01;                                //USBģ��ʹ��
    
    //����ʹ��
    FLAG_SET(USB_CONTROL_DPPULLUPNONOTG_SHIFT,USB0_CONTROL);
}

//=========================================================================
//������: hw_usb_ep_in_transfer
//��  ��: USB����IN�� 
//��  ��: u8EP���˵�
//       pu8DataPointer�������������ڻ������׵�ַ
//       u8DataSize���������ݳ���
//��  ��: ��
//=========================================================================
void hw_usb_ep_in_transfer(uint_8 u8EP,uint_8 *pu8DataPointer,uint_8 u8DataSize)
{
    uint_8 *pu8EPBuffer;
    uint_8 u8EPSize; 
    uint_16 u16Lenght=0;    
    uint_8 u8EndPointFlag;    

    //���ö˵�����Ӧ�Ķ˵�������
    u8EndPointFlag=u8EP;
    if(u8EP)
        u8EP=(uint_8)(u8EP<<2);
    u8EP+=2;
    
    // ָ��˵�Ļ�����
    pu8EPBuffer=BufferPointer[u8EP];
    
    //����Ƿ���Է�������
    if(FLAG_CHK(fIN,gu8USBClearFlags))
    {
        // �����������
        pu8IN_DataPointer=pu8DataPointer;
        gu8IN_Counter=u8DataSize;       

        u16Lenght=(Setup_Pkt->wLength_h<<8)+Setup_Pkt->wLength_l ;
        if((u16Lenght < u8DataSize) && (u8EP==2))
        {
            gu8IN_Counter=Setup_Pkt->wLength_l;
        }
    }

    // ���������͵������Ƿ���ڶ˵����ܷ������ݵĳ��ȡ�
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

    // �Ѵ������ݳ���д��BDT 
    tBDTtable[u8EP].Cnt=(u8EPSize);
    
    // �����ݿ�����BDT ������
    while(u8EPSize--)
         *pu8EPBuffer++=*pu8IN_DataPointer++;

    // gu8USB_Toogle_flags : ��Data0 ��Data1 ����USB �豸����ͬ���õġ�
    // DATA0/DATA1 ����
    if(FLAG_CHK(u8EndPointFlag,gu8USB_Toogle_flags))
    {
      // gu8USB_Toogle_flags : ��ʾ��DATA0 ����DATA1 ��1: ��ʾ����DATA0, 0: ��ʾ����DATA1. 
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
//������: hw_usb_ep_out_transfer
//��  ��: USB����OUT�� 
//��  ��: u8EP���˵�
//       pu8DataPointer��������յ������ݵĻ������׵�ַ
//��  ��: ���յ������ݳ���
//=========================================================================
uint_8 hw_usb_ep_out_transfer(uint_8 u8EP,uint_8 *pu8DataPointer)
{
    uint_8 *pu8EPBuffer;
    uint_8 u8EPSize; 
    

    //���ö˵�����Ӧ�Ķ˵�������
    u8EP++;

    //���ö˵�����Ӧ�����ݻ�����
    pu8EPBuffer=BufferPointer[u8EP];
    
    //�������յ������ݵ��û�������
    u8EPSize=tBDTtable[u8EP].Cnt;
    u8EP=u8EPSize;
    
    while(u8EPSize--)
         *pu8DataPointer++=*pu8EPBuffer++;
    return(u8EP);
}

//=========================================================================
//������: hw_usb_set_interface
//��  ��: USBģ��������� 
//��  ��: ��
//��  ��: ���յ������ݳ���
//=========================================================================
void hw_usb_set_interface(void)
{
    // ʹ�ܶ˵�
    // �˵� Register ����
    USB0_ENDPT1= EP1_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT2= EP2_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT3= EP3_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT4= EP4_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT5= EP5_VALUE | USB_ENDPT_EPHSHK_MASK;                         
    USB0_ENDPT6= EP6_VALUE | USB_ENDPT_EPHSHK_MASK;                         
  
    // ���� 1 BDT ����
    // �ѿ���Ȩ����MCU 
    tBDTtable[bEP1IN_ODD].Stat._byte= kUDATA1;
    tBDTtable[bEP1IN_ODD].Cnt = 0x00;
    tBDTtable[bEP1IN_ODD].Addr =(uint_32)gu8EP1_IN_ODD_Buffer;

    // ���� 2 BDT ����
    // �ѿ���Ȩ����MCU 
    tBDTtable[bEP2IN_ODD].Stat._byte= kUDATA1;
    tBDTtable[bEP2IN_ODD].Cnt = 0x00;
    tBDTtable[bEP2IN_ODD].Addr =(uint_32)gu8EP2_IN_ODD_Buffer;            

    // ���� 3 BDT ����
    // �ѿ���Ȩ����MCU 
    tBDTtable[bEP3OUT_ODD].Stat._byte= kUDATA0;
    tBDTtable[bEP3OUT_ODD].Cnt = 0xFF;
    tBDTtable[bEP3OUT_ODD].Addr =(uint_32)gu8EP3_OUT_ODD_Buffer;            
}


//=========================================================================
//������: hw_usb_stdReq_handler
//��  ��: �Ա�׼��SETUP������ʹ���
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_stdReq_handler(void)
{
    uint_16 gu8Status;
    
    switch(Setup_Pkt->bRequest)
    {
        /* 
          1����ȡ״̬ Get Status (00H) 
              A:[To Device]��ȡ�豸��״̬: 
                  *.λ0:�Թ���(0��ʾ���߹���;1��ʾ�Թ���).
                  *.λ1:Զ�̻���(0��ʾ��֧��Զ�̻���;1��ʾԶ�̻���).
                  *.λ2~15:����.
                  *.һ��ѡ�����߹���,��֧��Զ�̻���,���Է������ݾ���0x0000.
              B:[To Interface]��ȡ�ӿڵ�״̬:
                  *.�ӿ�״̬��16λ�ֽ�ȫ������,���Է������ݾ���0x0000.
              C:[To Endpoint]��ȡ�˵��״̬:
                  *.λ0:Halt(0��ʾ�˵�����;1��ʾ�˵��ֹ).
                  *.λ1~15:����(��λΪ0).
    
         2��������� Clear Feature (01H)
              A:[To Device]����豸��Զ�̻��ѹ���,������һ���հ�.
              B:[To Endpoint]����˵�.
       
         3���������� Set Feature (03H)
              A:[To Device]�����豸��Զ�̻��ѹ���,������һ���հ�. 
              B:[To Endpoint]��ֹ�˵�.
    
         4�����õ�ַ Set Address (05H)
               A:�����豸��ַ.
    
         5����ȡ������ Get Descriptor (06H)
              A:[To Device]��ȡ�豸������: 
                  *.������ǰUSBЭ��İ汾��.�豸�˵�0��FIFO��С.USB�豸��ID�ŵ�.
              B:[To Configuration]��ȡ����������:
                  *.����USB�豸�ӿڸ������Ƿ����Թ���������.
              C:[To Interface]��ȡ�ӿ�������:
                  *.�����˵�0���������˵��������Ϣ.
              D:[To Endpoint]��ȡ�˵�������:
                  *.�����˵�0���˵�Ĵ������ͺ������Ϣ����С�Ͷ˵�Ĵ��䷽��(IN/OUT).
    
         6������������(��ѡ,�޷�����) Set Descriptor (07H)
    
         7����ȡ������Ϣ Get Configuration (08H)
    
         8���������� Set Configuration (09H)
               A:[To Configuration]��������������.
               B:[To Interface]���ýӿ�������.
               C:[To Endpoint]���ö˵�������.
    
          9�� ��ȡ�ӿ���Ϣ Get Interface (0AH)     
         10�����ýӿ� Set Interface (0BH)
    
         11��SYNCH_FRAME(0CH)
                �����豸���úͱ���һ���˵��ͬ��֡.
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
      
        // PC ��оƬ��ַ����
        // #define mSET_ADDRESS          5 
        // 
        case mSET_ADDRESS:
            hw_usb_ep_in_transfer(EP0,0,0);
            gu8USB_State=uADDRESS;
            break;
      
        // PC ��оƬ��ȡ������
        // define mGET_DESC             6     
        case mGET_DESC:
          //  ���ֽ� : Setup_Pkt->wValue_h ��ʾ����������
          //  ���ֽ� : Setup_Pkt->wValue_l ��ʾ������������ֵ
            switch(Setup_Pkt->wValue_h) 
            {
                /*
                #define mDEVICE               0x01  //�豸������
                #define mCONFIGURATION        0x02  //����������
                #define mSTRING               0x03  //�ַ���������
                #define mINTERFACE            0x04  //�ӿ�������
                #define mENDPOINT             0x05  //�˵�������
                #define	mDEVICE_QUALIFIER		6 
                #define mOTHER_SPEED_CONFIGURATION	7 
                #define mINTERFACE_POWER		8 
                */ 
                case mDEVICE:
                    // �����豸������
                    hw_usb_ep_in_transfer(EP0,(uint_8*)Device_Descriptor,sizeof(Device_Descriptor));
                    break;
                    
                case mCONFIGURATION:
                    // ��������������
                    hw_usb_ep_in_transfer(EP0,(uint_8*)Configuration_Descriptor,sizeof(Configuration_Descriptor));
                    break;
        
                case mSTRING:
                    // �����ַ���������
                    hw_usb_ep_in_transfer(EP0,(uint_8*)String_Table[Setup_Pkt->wValue_l],String_Table[Setup_Pkt->wValue_l][0]);
                    break;

                default:
                    hw_usb_ep0_stall();
                    break;  
            }
            break;
        // �������� Set Configuration 
        // #define mSET_CONFIG           9 
        case mSET_CONFIG:
            // ѡ������ֵ
            gu8Dummy=Setup_Pkt->wValue_h+Setup_Pkt->wValue_l;
            if(Setup_Pkt->wValue_h+Setup_Pkt->wValue_l) 
            {
                //ʹ��1 ��2 ��3 �˵� 
                hw_usb_set_interface();
                hw_usb_ep_in_transfer(EP0,0,0);
                gu8USB_State=uENUMERATED;
            }
            break;
        // ��ȡ������Ϣ Get Configuration 
        // #define mGET_CONFIG           8 
        case mGET_CONFIG:
            // ��ȡ������Ϣ
            hw_usb_ep_in_transfer(EP0,(uint_8*)&gu8Dummy,1);
            break;
        // ��ȡ״̬ Get Status 
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
//������: hw_usb_setup_handler
//��  ��: ��SETUP������ʹ���
//��  ��: ��  
//��  ��: ��
//˵  ��:
//   (1)ֻ�н��յ�SETUP���ŵ��øú���
//   (2)SETUP����8�ֽ�����
//    bmRequestType:1
//    bRequest:1
//    wValue.H:1 :������������
//    wValue.L:1 :������������
//    wIndex:2
//    wLength:2
//=========================================================================
void hw_usb_setup_handler(void)
{
    uint_8 u8State;
    
    // ��DATA0 ��ʼ���䡣
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
            // �豸
            if((Setup_Pkt->bmRequestType & 0x1F)== STANDARD_REQ)
            {
                //tBDTtable[bEP0IN_ODD].Stat._byte= kUDATA1;
                // USB �豸�ı�׼����
                hw_usb_stdReq_handler();            
            }
            //#define kUDATA0   0x88 
            //#define kUDATA1   0xC8 
            // ��BDT �Ŀ���Ȩ����USB ģ��
            tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
            break;
            
        // #define INTERFACE_REQ   0x01 
        case INTERFACE_REQ:
            // �ӿ�
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
            // �˵�
        	hw_usb_endpoint_setup_handler();
            tBDTtable[bEP0OUT_ODD].Stat._byte= kUDATA0;
            break;        

        default:
            hw_usb_ep0_stall();  
            break;        
    }
        
    //USB_CTL&=!USB_CTL_TXSUSPENDTOKENBUSY_MASK;
      
    //CTL_TXSUSPEND_TOKENBUSY=0;
    // Ϊ0 ʱ: SIE ������������
    FLAG_CLR(USB_CTL_TXSUSPENDTOKENBUSY_SHIFT,USB0_CTL);
}

//=========================================================================
//������: hw_usb_endpoint_setup_handler
//��  ��: ����������ӿ���������ʱ��ִ�иú���
//��  ��: ��  
//��  ��: ��
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
//������: hw_usb_handler
//��  ��: ���յ�SETUP��ʱ���øú���
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_handler(void)
{
    uint_8 u8EndPoint;
    uint_8 u8IN;
    uint_8 stat;
    
    stat=USB0_STAT & 0xF8;
    u8IN=USB0_STAT & 0x08;
    u8EndPoint=USB0_STAT >> 4;
    

    // �˵�� ,�ǿ��ƶ˵㣨���ݴ���˵㣩
    // Data EndPoints
    if(u8EndPoint)
    {
        // IN��
        if(stat == mEP2_IN)//���ݴӻ�����������USB�豸��PC��
        {
        	hw_usb_ep2_in_handler(RecDataBuff,RecDataLength);
        }
        //OUT��
        else if (stat==mEP3_OUT)//���ݴ�PC����USB�豸
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
      //u8IN ��ʾ�Ƿ��ͻ��ǽ��հ���0 : ���Ͱ���1 : ���հ������Ƕ���PC ��˵���������� 
      if(u8IN)
            hw_usb_ep0_in_handler();
        else
        {
            // 0x0D ��ʾSETUP ��
            if(tBDTtable[bEP0OUT_ODD].Stat.RecPid.PID == mSETUP_TOKEN)
                hw_usb_setup_handler();
            else
            	hw_usb_ep0_out_handler();
        }

    }
}

//=========================================================================
//������: hw_usb_ep0_in_handler
//��  ��: �˵�0����IN��
//��  ��: ��  
//��  ��: ��
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
//������: hw_usb_ep0_stall
//��  ��: �˵�0����һ��STALL��
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_ep0_stall(void)
{
    // ����һ��STALL��  
    FLAG_SET(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);
    //ENDPT0_EP_STALL = 1;                      
    tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0; 
    tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;       
}

//=========================================================================
//������: hw_usb_ep0_out_handler
//��  ��: �˵�0����OUT��
//��  ��: ��  
//��  ��: ��
//=========================================================================
void hw_usb_ep0_out_handler(void)
{
    //tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE; 
    tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA0;
    //tBDTtable[bEP0IN].Stat._byte = kUDATA1;      
    
}

//=========================================================================
//������: hw_usb_ep2_in_handler
//��  ��: �˵�2����IN��
//��  ��: SendBuff���������ݻ�����
//       DataLenght���������ݳ���  
//��  ��: ��
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
//������: hw_usb_ep3_out_handler
//��  ��: �˵�3����OUT��
//��  ��: ��
//��  ��: ��
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
//������: hw_usb_stall_handler
//��  ��: ����stall�ж�
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_stall_handler(void) 
{
    if(FLAG_CHK(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0))
        FLAG_CLR(USB_ENDPT_EPSTALL_SHIFT,USB0_ENDPT0);
    FLAG_SET(USB_ISTAT_STALL_SHIFT,USB0_ISTAT);
}

//=========================================================================
//������: hw_usb_reset_handler
//��  ��: ����λ�ж�
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_reset_handler(void)
{      
    //���־
    gu8USBClearFlags=0xFF;
    gu8USB_Toogle_flags=0;
    
    //��ֹ���ж˵�
    USB0_ENDPT1=0x00;
    USB0_ENDPT2=0x00;
    USB0_ENDPT3=0x00;
    USB0_ENDPT4=0x00;
    USB0_ENDPT5=0x00;
    USB0_ENDPT6=0x00;

    // EP0 BDT Setup
    // EP0 OUT BDT ����
    tBDTtable[bEP0OUT_ODD].Cnt = EP0_SIZE;
    tBDTtable[bEP0OUT_ODD].Addr =(uint_32)gu8EP0_OUT_ODD_Buffer;
    tBDTtable[bEP0OUT_ODD].Stat._byte = kUDATA1;         
    // EP0 OUT BDT ����
    tBDTtable[bEP0OUT_EVEN].Cnt = EP0_SIZE;
    tBDTtable[bEP0OUT_EVEN].Addr =(uint_32)gu8EP0_OUT_EVEN_Buffer;
    tBDTtable[bEP0OUT_EVEN].Stat._byte = kUDATA1;         
    // EP0 IN BDT ���� 
    tBDTtable[bEP0IN_ODD].Cnt = EP0_SIZE;              
    tBDTtable[bEP0IN_ODD].Addr =(uint_32)gu8EP0_IN_ODD_Buffer;      
    tBDTtable[bEP0IN_ODD].Stat._byte = kUDATA0;   
    // EP0 IN BDT ���� 
    tBDTtable[bEP0IN_EVEN].Cnt = (EP0_SIZE);              
    tBDTtable[bEP0IN_EVEN].Addr =(uint_32)gu8EP0_IN_EVEN_Buffer;      
    tBDTtable[bEP0IN_EVEN].Stat._byte = kUDATA0;        

    // ʹ�� EP0
    USB0_ENDPT0=0x0D;

    // ������еĴ���
    USB0_ERRSTAT=0xFF;
    
    // ������е��жϱ�־
    USB0_ISTAT=0xFF;

    // USB�豸��ַ
    USB0_ADDR=0x00;

    // ʹ�����еĴ����ж�
    USB0_ERREN=0xFF;

    // USBģ���ж�ʹ��
    FLAG_SET(USB_INTEN_TOKDNEEN_SHIFT,USB0_INTEN);
    FLAG_SET(USB_INTEN_SOFTOKEN_SHIFT,USB0_INTEN);
    FLAG_SET(USB_INTEN_ERROREN_SHIFT,USB0_INTEN); 
    FLAG_SET(USB_INTEN_USBRSTEN_SHIFT,USB0_INTEN);    
}

//=========================================================================
//������: hw_usb_isr
//��  ��: ����λ�ж�
//��  ��: ��
//��  ��: ��
//=========================================================================
void hw_usb_isr(void)
{
    // ���USB ģ���Ƿ��������Ч�ĸ�λ��
    if(FLAG_CHK(USB_ISTAT_USBRST_SHIFT,USB0_ISTAT)) 
    {
        hw_usb_reset_handler();
        return;
    }
    
    
    if(FLAG_CHK(USB_ISTAT_SOFTOK_SHIFT,USB0_ISTAT)) 
    {
        USB0_ISTAT = USB_ISTAT_SOFTOK_MASK;   
    }
    
    
    // ���STALL
    if(FLAG_CHK(USB_ISTAT_STALL_SHIFT,USB0_ISTAT))
    {
        hw_usb_stall_handler();
    }
    
    
    // ��������ж�
    if(FLAG_CHK(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT)) 
    {
        FLAG_SET(USB_CTL_ODDRST_SHIFT,USB0_CTL);
        // USB ������
        hw_usb_handler();
        // �����������ж�
        FLAG_SET(USB_ISTAT_TOKDNE_SHIFT,USB0_ISTAT);
    }
    
    // SLEEP 
    if(FLAG_CHK(USB_ISTAT_SLEEP_SHIFT,USB0_ISTAT)) 
    {
        // ���SLEEP�ж�
        FLAG_SET(USB_ISTAT_SLEEP_SHIFT,USB0_ISTAT);        
    }
    
    // ����
    if(FLAG_CHK(USB_ISTAT_ERROR_SHIFT,USB0_ISTAT))
    {
        FLAG_SET(USB_ISTAT_ERROR_SHIFT,USB0_ISTAT);
    }
}
