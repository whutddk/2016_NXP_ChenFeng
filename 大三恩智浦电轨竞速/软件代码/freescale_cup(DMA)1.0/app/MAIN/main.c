//����������
//DDK 



#include "include.h"

uint8 send_cnt = 0;
uint16 timer_cnt = 0;
vuint32 temp1 = 0; 
vuint32 temp2 = 0; 

void main (void)
{
  sysinit();
  
  gpio_init();
  dma_init();
  
  LPLD_LPTMR_DelayMs(300);

  
  bz_set(ready);//��ʼ����ϣ���������ʾ
  
  while(1)
  {
    bzled_work();
    //30ms����һ��ʾ��������
    if ( send_cnt >= 30 )
    {
      sendDataToScope();
    }
  } 
}


void MCNT_isr() // ��ϵͳ��ʱ
{
  timer_cnt++ ;
  bz_cnt++;
  send_cnt++;
  
  if ( timer_cnt % 10 == 0 )
  {
    temp1 = DMA_cntget0();
    temp2 = DMA_cntget1();
  }
  
  if (timer_cnt == 1000)//1s
  {
    timer_cnt = 0;
  }
}  
