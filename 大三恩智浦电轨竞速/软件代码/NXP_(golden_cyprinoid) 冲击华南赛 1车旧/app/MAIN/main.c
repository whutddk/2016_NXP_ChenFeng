//����������
//DDK 



#include "include.h"

uint8 send_cnt = 0;
uint16 timer_cnt = 0;
vuint16 temp = 0; 

void main (void)
{
  uint16 i,j;
  sysinit();
  
  temp = LDC_READ(0x7F);  
  
  
  read_sw();
  LPLD_LPTMR_DelayMs(300);
  
  
  if ( flag_bihuan == 0 && speed_up_Enable == 1 )//��ֹoled��
  {    
    GUI.para.AI = 2;
    PIT1_init();//����ϵͳʱ�� //�ݶ�10ms
    PIT0_init();//��ϵͳʱ�� //1MS һ���ж�
    NVIC_init();
    
    flag_bihuan = 1;
    speed_up_Enable = 0;  
  
}

  else
  {
    GUI_work();
  }
  star();
  
  while(1)
  {
    bzled_work();
    
    //30ms����һ��ʾ��������
    if ( send_cnt >= 1 )
    {
      sendDataToScope();
      send_cnt = 0;
    }
    
    
    i = GUI.para.endline_time * 1000;
    LPLD_GPIO_ClearIntFlag(PORTD);
    
    j = 0;
    j = PTD1_I + PTD5_I + PTD6_I;
    
    if(j < 2)
    {
      if(1 == GUI.para.endline &&  timer_cnt > i)  //һ���ɵ���ֵ
      {
        flag_bihuan = 0;
        ctl.motto.out = 0;
        timer_cnt = 0;
      }
      bz_set(datarec);
    }

  } 
}


void MCNT_isr() // ��ϵͳ��ʱ
{
  if(0 == flag_stop )
  {
  timer_cnt++ ;
  }
  
  bz_cnt++;
  send_cnt++;
  
  
  
  if (timer_cnt == 65000)  //���65��
  {
    timer_cnt = 0;
  }
  
}
