#include "include.h"

#define END_PTX  PTC
#define END_PINS GPIO_Pin15
#define END_IRQN PORTC_IRQn 
#define END_PORT PORTC


void complete();



void endline_init()
{
  GPIO_InitTypeDef endline_inittype;
  endline_inittype.GPIO_PTx = END_PTX;
  endline_inittype.GPIO_Pins = END_PINS;
  endline_inittype.GPIO_PinControl = INPUT_PULL_DIS | IRQC_FA;//Ӳ���������ڲ��������½����ж�
  endline_inittype.GPIO_Dir = DIR_INPUT;
  endline_inittype.GPIO_Output = OUTPUT_H;
  endline_inittype.GPIO_Isr = complete;
  LPLD_GPIO_Init(endline_inittype);
  
  //��ʹ���ж� 
}

void end_enable()
{
  nvic_init_struct.NVIC_IRQChannel = END_IRQN;
  nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
  nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
  nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
  nvic_init_struct.NVIC_IRQChannelEnable = FALSE;
  LPLD_NVIC_Init(nvic_init_struct);
}


void complete()
{
    if  ( LPLD_GPIO_IsPinxExt(END_PORT, END_PINS) ) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(END_PORT);//���жϱ�־
    
    //����
    
    return;
  }
}

/*
����NVIC
*/
