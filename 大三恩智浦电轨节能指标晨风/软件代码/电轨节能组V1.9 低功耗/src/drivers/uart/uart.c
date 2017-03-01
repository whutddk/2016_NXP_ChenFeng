/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
* �ļ���       �� adc.c
* ����         ������ģ��ʵ��
*
* ʵ��ƽ̨     ��landzo���ӿ�����
* ��汾       ��
* Ƕ��ϵͳ     ��
*
* ����         ��landzo ������
* �Ա���       ��http://landzo.taobao.com/

**********************************************************************************/
#include "common.h"   //��������Ҫ��ͷ�ļ�
#include "uart.h"
#include "freedom.h"

//����1��2�ŵ�ַӳ��
const UART_MemMapPtr UART_ARR[] = {UART1_BASE_PTR, UART2_BASE_PTR};

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_init
*  ����˵������ʼ��uartģ��
*  ����˵����UARTn       ģ��ţ�UART0~UART2��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ٷ����̣�printf������⺯��
*************************************************************************/
void uart_init (UARTn uratn,uint32_t baud_rate)
{
  //�ֲ���������
  register uint_16 sbr;
  uint8_t temp;
  uint16_t  clk_kh ;
  UARTLP_MemMapPtr uartch1=UART0_BASE_PTR;//����uartch1ΪUARTLP_MemMapPtr�ṹ������ָ��
  UART_MemMapPtr uartch2;     //����uartch2ΪUART_MemMapPtr�ṹ������ָ��
  uartch2 = UART_ARR[uratn-1]; //���UART1��2ģ����Ӧ�ڻ���ַ
  
  //���ݴ������uartNo�����ֲ�����uartch1��ֵ
  
  if(uratn==0)
  {
    
    
    SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;      //ʹ�� UART0 ʱ��
    
    if(UART0_RX == PTA1)
    {
      port_init( UART0_RX, ALT2);
    }
    else if((UART0_RX == PTA15)  || (UART0_RX == PTB16) || (UART0_RX == PTD6) )
    {
      port_init( UART0_RX, ALT3);
    }
    else
    {
      ASSERT(0);                           //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
    }
    
    if(UART0_TX == PTA2)
    {
      port_init( UART0_TX, ALT2);
    }
    else if((UART0_TX == PTA14)  || (UART0_TX == PTB17) || (UART0_TX == PTD7) )
    {
      port_init( UART0_TX, ALT3);
    }
    else
    {
      ASSERT(0);                           //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
    }
    
    SIM_SOPT2 |= SIM_SOPT2_UART0SRC(1);   //UART0ѡ��MCGFLLCLK_khz=48000Khzʱ��Դ
    SIM_SOPT2 |= SIM_SOPT2_PLLFLLSEL_MASK;
    
    //��ʱ�رմ���0��������չ���
    uartch1->C2 &= ~(UART_C2_TE_MASK | UART_C2_RE_MASK);
    
    //���ô��ڹ���ģʽ:8λ��У��ģʽ
    clk_kh = core_clk_khz/2 ;
    sbr = (uint_16)((clk_kh*1000)/(baud_rate * 16));
    temp = UART_BDH_REG(uartch1) & ~(UART_BDH_SBR(0x1F));
    UART_BDH_REG(uartch1) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
    UART_BDL_REG(uartch1) = (uint8_t)(sbr & UART_BDL_SBR_MASK);
    
    //��ʼ�����ƼĴ��������־λ
    UART0_C4 = 0x0F;
    UART0_C1 = 0x00;
    UART0_C3 = 0x00;
    UART0_MA1 = 0x00;
    UART0_MA2 = 0x00;
    UART0_S1 |= 0x1F;
    UART0_S2 |= 0xC0;
    
    //�������ͽ���
    uartch1->C2 |= (UART_C2_TE_MASK | UART_C2_RE_MASK);
  }
  else
  {
    switch (uratn)
    {
    case UART1:
      SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
      
      if((UART1_RX == PTA18) || (UART1_RX == PTC3) || (UART1_RX == PTE1) )
      {
        port_init( UART1_RX, ALT3);
      }
      else
      {
        ASSERT(0);                           //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
      }		         
      if((UART1_TX == PTA19)  || (UART1_TX == PTC4) || (UART1_TX == PTE0) )
      {
        port_init( UART1_TX, ALT3);
      }
      else
      {
        ASSERT(0);                           //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
      }
      
      break ;
      
    case UART2:
      
      SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;
      
      if((UART2_RX == PTD2) || (UART2_RX == PTD4) || (UART2_RX == PTE17))
      {
        port_init( UART2_RX, ALT3);
      }
      else if(UART2_RX == PTE23)
      {
        port_init( UART2_RX, ALT4);
      }
      else
      {
        ASSERT(0);                           //���������������㣬ֱ�Ӷ���ʧ���ˣ����ùܽ�����
      }
      
      if((UART2_TX == PTD3) || (UART2_TX == PTD5) || (UART2_TX == PTE16))
      {
        port_init( UART2_TX, ALT3);
      }
      else if(UART2_TX == PTE22)
      {
        port_init( UART2_TX, ALT4);
      }
      break;
    default:  break;
    }
    
    //��ʱ�رմ���1��2��������չ���
    uartch2->C2 &= ~(UART_C2_TE_MASK | UART_C2_RE_MASK);
    
    //���ò�����,KL25����1��2ʱ��Ƶ��ֻ��ʹ�� Bus clock = 24M ����ʱ��
    //���ô��ڹ���ģʽ,8λ��У��ģʽ
    uartch2->C1 = 0;
    sbr = (uint_16)((bus_clk_khz*1000)/(baud_rate * 16));
    temp = UART_BDH_REG(uartch2) & ~(UART_BDH_SBR(0x1F));
    UART_BDH_REG(uartch2) = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
    UART_BDL_REG(uartch2) = (uint8_t)(sbr & UART_BDL_SBR_MASK);
    
    //��ʼ�����ƼĴ��������־λ
    uartch2->C1 = 0x00;
    uartch2->C3 = 0x00;
    uartch2->S1 = 0x1F;
    uartch2->S2 = 0x00;
    //�������ͽ���
    uartch2->C2 |= (UART_C2_TE_MASK | UART_C2_RE_MASK);
  }
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_getchar
*  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ٷ�����
*************************************************************************/
char uart_getchar (UARTn uratn)
{
  UARTLP_MemMapPtr uartch1=UART0_BASE_PTR;
  UART_MemMapPtr uartch2 = UART_ARR[uratn-1];
  if(0==uratn)
  {
    /* Wait until character has been received */
    while (!((uartch1->S1) & UARTLP_S1_RDRF_MASK ));
    
    /* Return the 8-bit data from the receiver */
    return uartch1->D;
  }
  else
  {
    /* Wait until character has been received */
    while (!((uartch2->S1) & UART_S1_RDRF_MASK));
    
    /* Return the 8-bit data from the receiver */
    return uartch2->D;
    
  }
  
}
/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_pendchar
*  ����˵��������ʱ��ȴ����ڽ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
uint8_t uart_pendchar (UARTn uratn, uint8_t *fp)
{
  uint32_t t;
  uint8_t  dat;
  UARTLP_MemMapPtr uartch1=UART0_BASE_PTR;
  UART_MemMapPtr uartch2 = UART_ARR[uratn-1];
  
  for (t = 0; t < 0xFBBB; t++)//��ѯָ������
  {
    if(0==uratn)
    {
      //�жϽ��ջ������Ƿ���
      if ((uartch1->S1) & UART_S1_RDRF_MASK )
      {
        dat = uartch1->D;
        *fp= 0;  //�յ�����
        break;
      }
    }
    else
    {
      //�жϽ��ջ������Ƿ���
      if ((uartch2->S1) & UART_S1_RDRF_MASK )
      {
        dat = uartch2->D;
        *fp= 0;  //�յ�����
        break;
      }
    }
    
  }//end for
  if(t >= 0xFBBB)
  {
    dat = 0xFF;
    *fp = 1;  //δ�յ�����
  }
  return dat;    //���ؽ��յ�������
  
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_pendstr
*  ����˵��������ʱ��ȴ����ڽ����ַ���
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ����յ����ֽ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
uint8_t uart_pendstr (UARTn uratn, uint8_t *str)
{
    uint32_t i = 0;
    while(uart_pendchar(uratn, str + i++));

    return (i <= 1 ? 0 : 1);
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_query
*  ����˵������ѯ�Ƿ���ܵ�һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ�1           ���յ�һ���ֽ���
*            0           û�н��յ�
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ٷ�����
*************************************************************************/
int uart_query (UARTn uratn)
{
  UARTLP_MemMapPtr uartch1=UART0_BASE_PTR;
  UART_MemMapPtr uartch2 = UART_ARR[uratn-1];
  
  if(0==uratn)
  {
    return ((uartch1->S1) & UARTLP_S1_RDRF_MASK );
  }
  else
  {
   return ((uartch2->S1) & UARTLP_S1_RDRF_MASK);
  }  
    
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_putchar
*  ����˵�������ڷ���һ���ֽ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ٷ����̣�printf������⺯��
*************************************************************************/
void uart_putchar (UARTn uratn, char ch)
{
  UARTLP_MemMapPtr uartch1=UART0_BASE_PTR;
  UART_MemMapPtr uartch2 = UART_ARR[uratn-1];
  
  if(0==uratn)
  {
    //�ȴ����ͻ�������
    while(!((uartch1->S1) & UARTLP_S1_TDRE_MASK));
    //��������
    uartch1->D = ch;
  }
  else
  {
    //�ȴ����ͻ�������
    while(!((uartch2->S1) & UART_S1_TDRE_MASK));
    //��������
    uartch2->D = ch;
    
  }
   
}


/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_sendN
*  ����˵�������� ����ָ��len���ֽڳ����ַ��� ������ NULL Ҳ�ᷢ�ͣ�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*            buff        ���ͻ�����
*            len         ���ͳ���
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void uart_sendN (UARTn uratn, uint8_t *buff, uint16_t len)
{
    int i;
    for(i = 0; i < len; i++)
    {
        uart_putchar(uratn, buff[i]);
    }
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_sendStr
*  ����˵�������з����ַ���
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*            str         �ַ���
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void uart_sendStr (UARTn uratn, const uint8_t *str)
{
    while(*str)
    {
        uart_putchar(uratn, *str++);
    }
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_irq_EN
*  ����˵���������ڽ����ж�
*  ����˵����UARTn       ģ��ţ�UART0~UART2��
*  �������أ���
*  �޸�ʱ�䣺2014-9-17
*  ��    ע��
*************************************************************************/
void uart_irq_EN(UARTn uratn)
{
  UARTLP_MemMapPtr uartch1=UART0_BASE_PTR;
  UART_MemMapPtr uartch2 = UART_ARR[uratn-1];
  if(0==uratn)
    uartch1->C2 |= UART_C2_RIE_MASK;        //����UART�����ж�
  else
    uartch2->C2 |= UART_C2_RIE_MASK;        //����UART�����ж�
  enable_irq( uratn+12 );   //���жϿ�����IRQ�ж�
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�uart_irq_DIS
*  ����˵�����ش��ڽ����ж�
*  ����˵����UARTn       ģ��ţ�UART0~UART2��
*  �������أ���
*  �޸�ʱ�䣺2014-9-17
*  ��    ע��
*************************************************************************/
void uart_irq_DIS(UARTn uratn)
{
  UARTLP_MemMapPtr uartch1=UART0_BASE_PTR;
  UART_MemMapPtr uartch2 = UART_ARR[uratn-1];
  if(0==uratn)
    uartch1->C2 &= ~UART_C2_RIE_MASK;               //��ֹUART�����ж�
  else
    uartch2->C2 &= ~UART_C2_RIE_MASK;               //��ֹUART�����ж�
  disable_irq( uratn+12 );          //��ֹ�жϿ�����IRQ�ж�
}










