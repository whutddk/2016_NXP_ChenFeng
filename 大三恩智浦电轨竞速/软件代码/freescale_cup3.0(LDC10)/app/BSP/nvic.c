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
  
  
  //��λ���Ľ����ж�Ӧ�����
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
      
  nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn; //1ms���ȣ��ڲ�ֻ�м���
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
  nvic_init_struct.NVIC_IRQChannel = PIT1_IRQn;//����ϵͳ���ȣ���Ӧ����CCD��ȡ��PID_ctl
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
}
