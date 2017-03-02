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
  //DMA参数配置
  ICDMA_init.DMA_CHx = DMA_CH0;    //CH0通道
  ICDMA_init.DMA_Req = PORTA_DMAREQ;       //PORTE为请求源
  ICDMA_init.DMA_MajorLoopCnt = 0x7fff; //主循环计数值：行采集点数，宽度
  ICDMA_init.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  ICDMA_init.DMA_SourceAddr = (uint32)&trick[0];        //源地址：PTD8~15
  ICDMA_init.DMA_DestAddr =  (uint32)&trick[1];      //目的地址：存放图像的数组
  ICDMA_init.DMA_DestAddrOffset = 0;       //目的地址偏移：每次读入增加1
  ICDMA_init.DMA_AutoDisableReq = TRUE;    //自动禁用请求
  
  //初始化DMA
  LPLD_DMA_Init(ICDMA_init);
  
    //DMA参数配置
  ICDMA_init.DMA_CHx = DMA_CH1;    //CH0通道
  ICDMA_init.DMA_Req = PORTB_DMAREQ;       //PORTE为请求源
  ICDMA_init.DMA_MajorLoopCnt = 0x7fff; //主循环计数值：行采集点数，宽度
  ICDMA_init.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
  ICDMA_init.DMA_SourceAddr = (uint32)&trick[0];        //源地址：PTD8~15
  ICDMA_init.DMA_DestAddr =  (uint32)&trick[1];      //目的地址：存放图像的数组
  ICDMA_init.DMA_DestAddrOffset = 0;       //目的地址偏移：每次读入增加1
  ICDMA_init.DMA_AutoDisableReq = TRUE;    //自动禁用请求
  
  LPLD_DMA_Init(ICDMA_init);
  
  //检测到场开始信号，加载目的地址
    LPLD_DMA_LoadDstAddr(DMA_CH0,&trick[1]);
    LPLD_DMA_EnableReq(DMA_CH0);  
    
      //检测到场开始信号，加载目的地址
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