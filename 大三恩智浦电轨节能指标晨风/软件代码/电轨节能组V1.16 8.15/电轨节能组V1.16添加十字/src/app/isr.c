/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：isr.c
 * 描述         ：中断处理例程
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：蓝宙电子工作室
 * 淘宝店       ：http://landzo.taobao.com/
**********************************************************************************/

//#include "isr.h"

#include "common.h"
#include "include.h"




/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：PIT0_IRQHandler
*  功能说明：PIT0 定时中断服务函数
*  参数说明：无
*  函数返回：无
*  修改时间：2012-2-18    已测试
*  备    注：
*************************************************************************/

void PIT_IRQHandler(void)
{
  PIT_Flag_Clear(PIT0);       //清中断标志位
  
  bz_cnt++;
  LDC1614_read_meas();
  sensor();
  if(1 == flag_ramp)
  {
    BZ_ON;
    
    LDC.flag_lose = 70; //坡道
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
  
    if(LDC.data[0] > 35 && LDC.data[2] > 35)
    {
      flag_cross = 1;
      BZ_ON;
    }
    else
    {
      flag_cross = 0;
      BZ_OFF;
    }
  
  if(ramp_Enable == 1 && flag_cross == 0)
  {
    ramp();
  }
  
  control();
  ramp_Enable = 1;

}
    
