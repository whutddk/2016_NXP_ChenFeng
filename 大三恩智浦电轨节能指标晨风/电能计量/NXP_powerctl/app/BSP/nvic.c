#include "include.h"

NVIC_InitTypeDef nvic_init_struct;

void NVIC_init()
{ 
  //��λ���Ľ����ж�Ӧ�����
  
  nvic_init_struct.NVIC_IRQChannel = PORTD_IRQn; //1ms���ȣ��ڲ�ֻ�м���
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
  nvic_init_struct.NVIC_IRQChannel = PORTE_IRQn; //1ms���ȣ��ڲ�ֻ�м���
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
  nvic_init_struct.NVIC_IRQChannel = UART5_RX_TX_IRQn;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
  nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn; //1ms���ȣ��ڲ�ֻ�м���
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 3;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
  LPLD_NVIC_Init(nvic_init_struct);
  
  
}
