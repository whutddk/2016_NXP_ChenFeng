//FTM初始化
#include "include.h"

FTM_InitTypeDef ftm_init_struct;
FTM_InitTypeDef qei_init_struct;

void PWM_init()
{
  //pwm
  ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 700000;	//PWM频率20000Hz
  ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH23;
  ftm_init_struct.FTM_PwmDeadtimeVal=0;
  LPLD_FTM_Init(ftm_init_struct);
  
  LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
                      FTM_Ch0, //使能Ch0通道
                      5000, //初始化DUTY
                      PTC1, //使用Ch0通道的PTC1引脚
                      ALIGN_LEFT        //脉宽左对齐
                        ); 
  LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
                      FTM_Ch2, //使能Ch1通道
                      5000, //初始化DUTY
                      PTC3, //使用Ch1通道的PTC2引脚
                      ALIGN_LEFT        //脉宽左对齐
                        ); 

}


void S3010_init()
{
  //pwm
  ftm_init_struct.FTM_Ftmx = FTM1;	//使能FTM0通道
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
  ftm_init_struct.FTM_PwmFreq = 100;	//PWM频率100Hz
  ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH23;
  ftm_init_struct.FTM_PwmDeadtimeVal=0;
  LPLD_FTM_Init(ftm_init_struct);
  
  LPLD_FTM_PWM_Enable(FTM1, //使用FTM1
                      FTM_Ch0, //使能Ch0通道
                      1520, //初始化DUTY
                      PTA8, //使用Ch0通道的PTC1引脚
                      ALIGN_LEFT        //脉宽左对齐
                        ); 
  
}

void qei_init()
{   
  //配置正交解码功能参数
  
  qei_init_struct.FTM_Ftmx = FTM2;              //只有FTM1和FTM2有正交解码功能
  qei_init_struct.FTM_Mode = FTM_MODE_QD;       //正交解码功能
  qei_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB相输入模式
  //初始化FTM
  LPLD_FTM_Init(qei_init_struct);
  //使能AB相输入通道
  //PTB18引脚接A相输入、PTB19引脚接B相输入
  LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);
  
}