#include "include.h"

NVIC_InitTypeDef nvic_init_struct;

void NVIC_init()
{
//  nvic_init_struct.NVIC_IRQChannel = PORTE_IRQn;
//  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
//  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
//  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
//  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
//  LPLD_NVIC_Init(nvic_init_struct);
  
  
  //上位机的接收中断应该最高
#if USE_UART5
  nvic_init_struct.NVIC_IRQChannel = UART5_RX_TX_IRQn;
#else
  nvic_init_struct.NVIC_IRQChannel = UART0_RX_TX_IRQn;
#endif
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
      
  nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn; //1ms调度，内部只有计数
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
  nvic_init_struct.NVIC_IRQChannel = PIT1_IRQn;//控制系统调度，理应包括CCD读取和PID_ctl
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
}
