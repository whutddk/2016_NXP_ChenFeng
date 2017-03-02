/*
name��  FreeCars��λ��ʾ��������
author��FreeCars����
Date:   2014-10-22
site:   Http://FreeCars.taobao.com
QQȺ��  384273254��149168724
��Ȩ��  �˴���ΪFreeCars��λ��Э����룬��������ʹ�ã�Ҳ����������ҵ��;�����뱣���˶����֣�
tips:   ǿ�ҽ���С�����ʹ��FreeCars��Ʒ������ģ����װ��������λ�������￪ʼ��
*/
#include "include.h"

#define IsSingleLine  0

uint8 uSendBuf[UartDataNum*2]={0};
uint8 FreeCarsDataNum=UartDataNum*2;

double UartData[9] = {0};
SerialPortType SerialPortRx;

/*
��ĳ��ͨ���������������
chanel��ͨ��
data  ������-32768~32767
*/
void push(uint8 chanel,uint16 data)
{
    uSendBuf[chanel*2]=data/256;
    uSendBuf[chanel*2+1]=data%256;
}


void sendDataToScope()
{
  uint8 i,sum=0; 
  
  LPLD_UART_PutChar(FreeCarsUARTPort,251);
  LPLD_UART_PutChar(FreeCarsUARTPort,109);
  LPLD_UART_PutChar(FreeCarsUARTPort,37);
  sum+=(251);     
  sum+=(109);
  sum+=(37);
  for(i=0;i<FreeCarsDataNum;i++)
  {
    LPLD_UART_PutChar(FreeCarsUARTPort,uSendBuf[i]);
    sum+=uSendBuf[i];      
  }
 LPLD_UART_PutChar(FreeCarsUARTPort,sum);
}

void freecars_isr(void)//�����ж�
{
  int i,b,d1;
  uint32 d;
  
  {
    SerialPortRx.Data = LPLD_UART_GetChar(UART0);  
    
    if( SerialPortRx.Stack < UartRxBufferLen )
    {
      SerialPortRx.Buffer[SerialPortRx.Stack++] = SerialPortRx.Data;
      
      if(   SerialPortRx.Stack >= UartRxDataLen 
         && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen]  ==0xff //У����ͷ
           && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+1]==0x55
             && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+2]==0xaa
               && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+3]==0x10 )
      {  
        SerialPortRx.Check = 0;
        b = SerialPortRx.Stack - UartRxDataLen; 
        for(i=b; i<SerialPortRx.Stack-1; i++) 
        {
          SerialPortRx.Check += SerialPortRx.Buffer[i];
        }
        
        if( SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1] )
        {   //У��ɹ����������ݽ���
          for(i = 0; i<9; i++)
          {
            d = SerialPortRx.Buffer[b+i*4+4]*0x1000000L + SerialPortRx.Buffer[b+i*4+5]*0x10000L + SerialPortRx.Buffer[b+i*4+6]*0x100L + SerialPortRx.Buffer[b+i*4+7];
            if(d>0x7FFFFFFF)
            {
              d1 = 0x7FFFFFFF - d;
            }
            else
            {
              d1 = d;
            }
            UartData[i]=d1;
            UartData[i]/=65536.0;
          }
          UartDebug();  //תȥ�������ܵ������ݸ�������
        }
        SerialPortRx.Stack = 0;
      }
      else if(   SerialPortRx.Stack >= UartRxCmdLen //UartRxDataLen����Ϊһ֡
              && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen]  ==0xff
                && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+1]==0x55
                  && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+2]==0xaa
                    && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+3]==0x77 )//cmd
      {
        SerialPortRx.Check = 0;
        b = SerialPortRx.Stack - UartRxCmdLen; //��ʼλ
        for(i=b; i<SerialPortRx.Stack-1; i++)  //��У��λ���λ����У��
        {
          SerialPortRx.Check += SerialPortRx.Buffer[i];//У��
        }
        if( SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1] )
        {   //У��ɹ�
          UartCmd(UartCmdNum,UartCmdData);//������յ����������MCU�������
        }
        SerialPortRx.Stack = 0;
      }
    }
    else
    {
      SerialPortRx.Stack = 0;
    } 
  }
}

/*�������ݴ���*/
uint8 flag_receive = 0;

void UartDebug()
{
//  ctl.S3010.Kp = UartData[0];
//  ctl.S3010.Kd = UartData[1];
//  ctl.left.out = (int32)UartData[2];
//  ctl.rigt.out = (int32)UartData[2];
//  dec_sec = UartData[3];
  //ctl.left.aim = ctl.rigt.aim = UartData[0];
  //ctl.rigt.Kp = UartData[1];
  //ctl.rigt.Ki = UartData[2];
  

  //img.THR = UartData[3];
  //bz_datarec();
  bz_set(datarec);
}

void UartCmd(uint8 cmdnum,uint8 cmddata)///
{
  switch(cmddata)
  {
    case(6):break;//F6
    case(7):break;//F7
    case(8):break;//F8
    case(9):break;//F9
    case(10):break;//F10
    case(11):break;//F11
    case(12):break;//F12
    case(100):break;//PAUSE
    case(101):flag_stop = 0;break;//HOME
    case(102):timer_debug();break;//PG UP
    case(103):break;//PF DN
    case(104):flag_stop = 1;break;//END
  }
  bz_set(datarec);
}


/*
��ѯ������һ֡����
����ʱ�������ݳ����й�
�����Է����ж����������Ե���
CCDSelection:ѡ��ָ�����͵����ĸ�CCD������
CCDData     :���ΪCCDWidth��CCD��������
*/
void sendDataToCCDViewer(uint8 CCDSelection,uint8* CCDData)
{
  uint8 i,sum=0; 
  //ʹ����ѯ�ķ�ʽ�������ݣ�������δ���ͣ�����ͣ�ڴ˴�ֱ���������
  LPLD_UART_PutChar(FreeCarsUARTPort,0xFC);
  LPLD_UART_PutChar(FreeCarsUARTPort,0x07);
  LPLD_UART_PutChar(FreeCarsUARTPort,0xCF);
  LPLD_UART_PutChar(FreeCarsUARTPort,CCDSelection);//��CCD�£�ָ�����͵����ĸ�CCD������
  sum+=(0xFC);      //ȫ�����ݼ���У��
  sum+=(0x07);
  sum+=(0xCF);
  sum+=CCDSelection;
  for(i=0;i < CCDWidth;i++)
  {
    LPLD_UART_PutChar(FreeCarsUARTPort,CCDData[i]);
    sum+=CCDData[i];         //ȫ�����ݼ���У��
  }
  LPLD_UART_PutChar(FreeCarsUARTPort,sum);
}