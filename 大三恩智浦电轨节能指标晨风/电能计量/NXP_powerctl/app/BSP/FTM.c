//FTM初始化
#include "include.h"

FTM_InitTypeDef ftm_init_struct;

void PWM_init() //双极性PWM
{
  //pwm  
  ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 50;	//PWM频率20000Hz
  ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH01;
  ftm_init_struct.FTM_PwmDeadtimeDiv = DEADTIME_DIV1;
  ftm_init_struct.FTM_PwmDeadtimeVal = 10;
  ftm_init_struct.FTM_PwmDeadtimeVal=0;
  ftm_init_struct.FTM_ToiEnable = FALSE;
  ftm_init_struct.FTM_Isr = NULL;
  LPLD_FTM_Init(ftm_init_struct);
  
  LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
                      FTM_Ch0, //使能Ch0通道
                      0, //初始化DUTY
                      PTC1, //使用Ch0通道的PTC1引脚
                      ALIGN_LEFT        //脉宽左对齐
                        ); 

}

FTM_InitTypeDef qei_init_struct;
void qei_init()  
{   
  //配置正交解码功能参数
  qei_init_struct.FTM_Ftmx = FTM1;              //只有FTM1和FTM2有正交解码功能
  qei_init_struct.FTM_Mode = FTM_MODE_QD;       //正交解码功能
  qei_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB相输入模式
  qei_init_struct.FTM_ToiEnable = FALSE;
  qei_init_struct.FTM_Isr = NULL;
  //初始化FTM
  LPLD_FTM_Init(qei_init_struct);
  //使能AB相输入通道
  //PTB18引脚接A相输入、PTB19引脚接B相输入
  LPLD_FTM_QD_Enable(FTM1, PTA12, PTA13); 
}