#include "include.h"

//DMA 
GPIO_InitTypeDef ICGPIO_init;
DMA_InitTypeDef ICDMA_init;

uint8 trick[2] = {0,0};

void gpio_init()
{
  ICGPIO_init.GPIO_PTx = PTA;
  ICGPIO_init.GPIO_Pins = GPIO_Pin19;
  ICGPIO_init.GPIO_Dir = DIR_INPUT;
  ICGPIO_init.GPIO_PinControl = IRQC_DMAFA | INPUT_PULL_UP; //
  LPLD_GPIO_Init(ICGPIO_init); 
  
  ICGPIO_init.GPIO_PTx = PTB;
  ICGPIO_init.GPIO_Pins = GPIO_Pin0;
  ICGPIO_init.GPIO_Dir = DIR_INPUT;
  ICGPIO_init.GPIO_PinControl = IRQC_DMAFA | INPUT_PULL_UP; //
  LPLD_GPIO_Init(ICGPIO_init); 
}

void dma_init()
{
  //DMA��������
  ICDMA_init.DMA_CHx = DMA_CH0;    //CH0ͨ��
  ICDMA_init.DMA_Req = PORTA_DMAREQ;       //PORTEΪ����Դ
  ICDMA_init.DMA_MajorLoopCnt = 0x7fff; //��ѭ������ֵ���вɼ����������
  ICDMA_init.DMA_MinorByteCnt = 1; //��ѭ���ֽڼ�����ÿ�ζ���1�ֽ�
  ICDMA_init.DMA_SourceAddr = (uint32)&trick[0];        //Դ��ַ��PTD8~15
  ICDMA_init.DMA_DestAddr =  (uint32)&trick[1];      //Ŀ�ĵ�ַ�����ͼ�������
  ICDMA_init.DMA_DestAddrOffset = 0;       //Ŀ�ĵ�ַƫ�ƣ�ÿ�ζ�������1
  ICDMA_init.DMA_AutoDisableReq = TRUE;    //�Զ���������
  
  //��ʼ��DMA
  LPLD_DMA_Init(ICDMA_init);
  
    //DMA��������
  ICDMA_init.DMA_CHx = DMA_CH1;    //CH0ͨ��
  ICDMA_init.DMA_Req = PORTB_DMAREQ;       //PORTEΪ����Դ
  ICDMA_init.DMA_MajorLoopCnt = 0x7fff; //��ѭ������ֵ���вɼ����������
  ICDMA_init.DMA_MinorByteCnt = 1; //��ѭ���ֽڼ�����ÿ�ζ���1�ֽ�
  ICDMA_init.DMA_SourceAddr = (uint32)&trick[0];        //Դ��ַ��PTD8~15
  ICDMA_init.DMA_DestAddr =  (uint32)&trick[1];      //Ŀ�ĵ�ַ�����ͼ�������
  ICDMA_init.DMA_DestAddrOffset = 0;       //Ŀ�ĵ�ַƫ�ƣ�ÿ�ζ�������1
  ICDMA_init.DMA_AutoDisableReq = TRUE;    //�Զ���������
  
  LPLD_DMA_Init(ICDMA_init);
  
  //��⵽����ʼ�źţ�����Ŀ�ĵ�ַ
    LPLD_DMA_LoadDstAddr(DMA_CH0,&trick[1]);
    LPLD_DMA_EnableReq(DMA_CH0);  
    
      //��⵽����ʼ�źţ�����Ŀ�ĵ�ַ
    LPLD_DMA_LoadDstAddr(DMA_CH1,&trick[1]);
    LPLD_DMA_EnableReq(DMA_CH1);  
}


uint32 count_init = 0x7fff;

uint32 DMA_cntget0()
{
  uint32 temp ;
  temp = count_init - DMA0->TCD[0].CITER_ELINKNO;
    DMA0->TCD[0].CITER_ELINKNO = 0x7fff;
    LPLD_DMA_LoadDstAddr(DMA_CH0,&trick[1]);
    LPLD_DMA_EnableReq(DMA_CH0);  
  return  temp;
}

uint32 DMA_cntget1()
{
  uint32 temp ;
  temp = count_init - DMA0->TCD[1].CITER_ELINKNO;
    DMA0->TCD[1].CITER_ELINKNO = 0x7fff;
    LPLD_DMA_LoadDstAddr(DMA_CH1,&trick[1]);
    LPLD_DMA_EnableReq(DMA_CH1);  
  return  temp;
}