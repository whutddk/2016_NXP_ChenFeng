/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
 * �ļ���       ��isr.c
 * ����         ���жϴ�������
 *
 * ʵ��ƽ̨     ��
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��������ӹ�����
 * �Ա���       ��http://landzo.taobao.com/
**********************************************************************************/

//#include "isr.h"

#include "common.h"
#include "include.h"




/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�PIT0_IRQHandler
*  ����˵����PIT0 ��ʱ�жϷ�����
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-18    �Ѳ���
*  ��    ע��
*************************************************************************/

void PIT_IRQHandler(void)
{
  PIT_Flag_Clear(PIT0);       //���жϱ�־λ
  if(ctl.flag_start) flag_startlinecount++;
  bz_cnt++;
  LDC1614_read_meas();
  sensor();
  if(1 == flag_ramp)
  {
    BZ_ON;
    
    LDC.flag_lose = 70; //�µ�
    if(LDC.data[3] > 25)
    {
      LDC.pos = 25*(LDC.data[2] - LDC.data[0])/LDC.data[3];
    }
    else
    {
      
    }
  }
  else
  {
    sensor();
  }
  
  
  if(ramp_Enable == 1 && flag_cross == 0)
  {
    ramp();
  }
  control();
  ramp_Enable = 1;

}
    
