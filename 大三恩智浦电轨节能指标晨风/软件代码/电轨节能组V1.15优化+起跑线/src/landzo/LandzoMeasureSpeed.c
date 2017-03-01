#include "LandzoMeasureSpeed.h"


/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：MeasureSpeed_one_init
*  功能说明：单电机测速初始化程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-11
*  备    注：
*************************************************************************/
void MeasureSpeed_one_init(void)
{
  gpio_init (PORTC , 4, GPO,HIGH);                            //电机使能
  
  FTM_PWM_init(FTM0 , CH1, 8000,0);       //电机占空比设置初始化    占空比 = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH2, 8000,0);  
  
  lptmr_counter_init(LPT0_ALT2, LIN_COUNT, 2, LPT_Rising)  ;   //初始化脉冲计数器 ，PTC5输入捕获脚，LIN_cout =100，预处理为2，上升沿捕获 
  
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：MeasureSpeed_double_init
*  功能说明：双电机测速初始化程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-11
*  备    注：
*************************************************************************/
void MeasureSpeed_double_init(void)
{    
  FTM_PWM_init(FTM0 , CH0, 8000,0);       //电机占空比设置初始化    占空比 = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH1, 8000,0);  
  FTM_PWM_init(FTM0 , CH2, 8000,0);       //电机占空比设置初始化    占空比 = duty /(MOD +1 ) ;FTM_CnV_REG(FTMx[ftmn], ch) = cv;
  FTM_PWM_init(FTM0 , CH3, 8000,0);
  
  lptmr_counter_init(LPT0_ALT2, LIN_COUNT, 2, LPT_Rising)  ;   //初始化脉冲计数器 ，PTC5输入捕获脚，LIN_cout =100，预处理为2，上升沿捕获 
  
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：MeasureSpeed_one_test
*  功能说明：单电机测速程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-11
*  备    注：
*************************************************************************/
uint16_t MeasureSpeed_one_Count(void)
{
  uint16_t count=0;
  extern uint8_t LPT_INT_count;
  
  FTM_PWM_Duty(FTM0 , CH1,0);
  FTM_PWM_Duty(FTM0 , CH2,20);
  
  count = lptmr_pulse_get();                                                     //保存脉冲计数器计算值
  count = LPT_INT_count * LIN_COUNT +  count;                                     
  
  LPT_INT_count = 0; 
  return count;
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：MeasureSpeed_double_test
*  功能说明：双电机测速程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-11
*  备    注：
*************************************************************************/
void MeasureSpeed_double_Count(uint16_t *Count)
{
  static uint8_t Speed_flag=0;
  extern uint8_t LPT_INT_count;
  uint16_t LeftSpeedC,RightSpeedC;
  
  if(Speed_flag==0)
  {
    Speed_flag=1;
    LeftSpeedC = lptmr_pulse_get();                                                     //保存脉冲计数器计算值
    LeftSpeedC = LPT_INT_count * LIN_COUNT +  LeftSpeedC;                              //间隔10ms的脉冲次数
    
    Count[0] = LeftSpeedC;
    LPT_INT_count = 0;                                                      //清空LPT中断次数  
    lptmr_counter_init(LPT0_ALT1, LIN_COUNT, 2, LPT_Rising)  ;   //初始化脉冲计数器 ，PTC5输入捕获脚，LIN_cout =100，预处理为2，上升沿捕获 
    
  }
  else if(Speed_flag==1)
  {
    Speed_flag=0;
    RightSpeedC = lptmr_pulse_get();                                                     //保存脉冲计数器计算值
    RightSpeedC = LPT_INT_count * LIN_COUNT +  RightSpeedC;                              //间隔10ms的脉冲次数
    
    Count[1] = RightSpeedC;
    LPT_INT_count = 0; 
    lptmr_counter_init(LPT0_ALT2, LIN_COUNT, 2, LPT_Rising)  ;   //初始化脉冲计数器 ，PTC5输入捕获脚，LIN_cout =100，预处理为2，上升沿捕获         
  } 
  
  
  
}