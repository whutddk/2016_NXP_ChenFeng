/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
* �ļ���       �� gpio.c
* ����         ������ģ��ʵ��
*
* ʵ��ƽ̨     ��landzo���ӿ�����
* ��汾       ��
* Ƕ��ϵͳ     ��
*
* ����         ��landzo ������
* �Ա���       ��http://landzo.taobao.com/

**********************************************************************************/
#include "gpio.h"   //����������ͷ�ļ�

//���˿ڻ���ַ���볣��������PORTX[0]~PORTX[4]��
volatile struct PORT_MemMap *PORTX[5]={PORTA_BASE_PTR,PORTB_BASE_PTR,
PORTC_BASE_PTR,PORTD_BASE_PTR,PORTE_BASE_PTR};
//GPIO�ڻ���ַ���볣��������GPIOx[0]~GPIOx[4]��
volatile struct GPIO_MemMap *GPIOx[5]={PTA_BASE_PTR,PTB_BASE_PTR,
PTC_BASE_PTR,PTD_BASE_PTR,PTE_BASE_PTR};

/*************************************************************************
*                             ������ӿƼ����޹�˾
*
*  �������ƣ�gpio_Interrupt_init
*  ����˵������ʼ��gpio
*  ����˵����PTxn      �˿ںţ�PORTA,PORTD��
*            IO          ���ŷ���,0=����,1=������������״̬����
*            mode        �ж�ģʽ
*  �������أ���
*  �޸�ʱ�䣺2012-9-15   �Ѳ���
*  ��    ע��
*************************************************************************/
void gpio_Interrupt_init(PTxn ptxn, GPIO_CFG cfg, GPIO_INP mode)
{
  ASSERT( (PTn(ptxn) < 32u)  );           //ʹ�ö��Լ�����롢��ƽ �Ƿ�Ϊ1bit
  
  //ѡ���ܽ� PORTx_PCRx ��ÿ���˿ڶ��и��Ĵ��� PORTx_PCRx 
  
  PORT_PCR_REG(PORTX_BASE(ptxn), PTn(ptxn)) = (0 | PORT_PCR_MUX(1) | cfg | PORT_PCR_IRQC(mode) );
  //ѡ���ܽ� PORTx_PCRx ��ÿ���˿ڶ����ж�ģ��
  
//  PORT_DFER_REG(PORTX_BASE(ptxn)) = PORT_DFER_DFE( 1<<PTn(ptxn));
  
  //�˿ڷ���������뻹�����
  if( ( (cfg & 0x01) == GPI) || (cfg == GPI_UP) ||     (cfg == GPI_UP_PF) 
     || (cfg == GPI_DOWN) ||     (cfg == GPI_DOWN_PF)     )
    //   ���λΪ0������   ||   ��������ģʽ  ||   ��������������Դ�˲���
  {
    GPIO_PDDR_REG(GPIOX_BASE(ptxn)) &= ~(1 << PTn(ptxn));  //���ö˿ڷ���Ϊ����
  }
  
  if(PTX(ptxn)==0)
    enable_irq(PortA_irq_no);
  else if(PTX(ptxn)==3)
    enable_irq(PortD_irq_no);
  
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�gpio_init
*  ����˵������ʼ��gpio
*  ����˵����port���˿ںţ�gpio.h�к궨�壬�ֱ�ΪPORTA~PORTE=0~4)
*            dir�����ŷ���0=���룬1=�����
*            state�����ų�ʼ״̬��0=�͵�ƽ��1=�ߵ�ƽ��
*  �������أ���
*  �޸�ʱ�䣺2014-9-18   �Ѳ���
*  ��    ע��
*************************************************************************/
void gpio_init(PTxn ptxn, uint8_t dir, uint8_t state)
{	
  //���ݴ������pin,ָ�������Ź���ΪGPIO���ܣ��������ſ��ƼĴ�����MUX=0b001��
  PORT_PCR_REG(PORTX_BASE(ptxn), PTn(ptxn))= PORT_PCR_MUX(1);
  
  //���ݴ������dir����������Ϊ�����������
  if (1 == dir)   //ϣ��Ϊ���
  {
    GPIO_PDDR_REG(GPIOX_BASE(ptxn)) |= (1 << PTn(ptxn));    //���ö˿ڷ���Ϊ���
    gpio_set(ptxn , state);   //����gpio_set�������趨���ų�ʼ״̬
  }
  else         //ϣ��Ϊ����
    GPIO_PDDR_REG(GPIOX_BASE(ptxn)) &= ~(1 << PTn(ptxn));  //���ö˿ڷ���Ϊ����
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�gpio_set
*  ����˵������������״̬
*  ����˵����ptxn���˿ںţ�gpio.h�к궨��,gpio_cfg.h)
*            state        �����ʼ״̬,0=�͵�ƽ,1=�ߵ�ƽ
*  �������أ���
*  �޸�ʱ�䣺2012-1-16   �Ѳ���
*  ��    ע��
*************************************************************************/
void gpio_set(PTxn ptxn, uint8_t state)
{        
  GPIO_SET(PTX(ptxn), PTn(ptxn), 1);
}


/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�gpio_get
*  ����˵����ָ�����ŵ�״̬��1��0��
*  ����˵����ptxn���˿ںţ�gpio.h�к궨��,gpio_cfg.h)
*  �������أ���
*  �޸�ʱ�䣺2014-9-18  �Ѳ���
*  ��    ע��
*************************************************************************/
uint8_t gpio_get(PTxn ptxn)
{	
  //�������ŵ�״̬
  return GPIO_Get(PTX(ptxn),PTn(ptxn)) ;
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�gpio_turn
*  ����˵����ָ�����ŵ�״̬��1��0��
*  ����˵����ptxn���˿ںţ�gpio.h�к궨��,gpio_cfg.h)
*  �������أ���
*  �޸�ʱ�䣺2014-9-18  �Ѳ���
*  ��    ע��
*************************************************************************/
void gpio_turn(PTxn ptxn)
{
  GPIO_TURN(PTX(ptxn), PTn(ptxn));
}


