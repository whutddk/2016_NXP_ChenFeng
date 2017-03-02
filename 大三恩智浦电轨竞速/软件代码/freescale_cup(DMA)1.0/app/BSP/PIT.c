#include "include.h"

PIT_InitTypeDef pit_init_struct;

//��ϵͳʱ�� //1MS һ���ж�
void PIT0_init()
{
  pit_init_struct.PIT_Pitx = PIT0;
  pit_init_struct.PIT_PeriodS = 0;
  pit_init_struct.PIT_PeriodMs = 1;
  pit_init_struct.PIT_PeriodUs = 0;     //��ʱ����
  pit_init_struct.PIT_Isr = MCNT_isr;  //�����жϺ���
 
  LPLD_PIT_Init(pit_init_struct);  //��ʼ��PIT0
  
  LPLD_PIT_EnableIrq(pit_init_struct);
}

//����ϵͳʱ�� //�ݶ�10ms
void PIT1_init()
{
  //����PIT2����
  pit_init_struct.PIT_Pitx = PIT1;
  pit_init_struct.PIT_PeriodS = 0;
  pit_init_struct.PIT_PeriodMs = 10;
  pit_init_struct.PIT_PeriodUs = 0;     //��ʱ����
  pit_init_struct.PIT_Isr = CTL_isr;  //�����жϺ���
  
  LPLD_PIT_Init(pit_init_struct); //��ʼ��PIT1 
  //LPLD_PIT_EnableIrq(pit_init_struct);
}



