//����������
//DDK 



#include "include.h"

uint8 send_cnt = 0;
uint16 timer_cnt = 0;
vuint16 temp = 0; 

void main (void)
{
  sysinit();
  
  //temp = LDC_READ(0x7F);  
  
  //sensor_offset();//ȡƫ��
  
  LPLD_LPTMR_DelayMs(300);
  
  
  
  
  bz_set(ready);//��ʼ����ϣ���������ʾ
  
  while(1)
  {
    bzled_work();
    LDC1000_read();
    
    //30ms����һ��ʾ��������
    if ( send_cnt >= 5 )
    {
//      sendDataToScope();
      send_cnt = 0;
    }
    
  } 
}


void MCNT_isr() // ��ϵͳ��ʱ
{
  
  timer_cnt++ ;
  bz_cnt++;
  send_cnt++;
  
  
  
  if (timer_cnt == 1000)//1s
  {
    timer_cnt = 0;
  }
  
}  
