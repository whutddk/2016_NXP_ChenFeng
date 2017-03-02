//FTM��ʼ��
#include "include.h"

FTM_InitTypeDef ftm_init_struct;
FTM_InitTypeDef qei_init_struct;

void PWM_init()
{
  //pwm
  ftm_init_struct.FTM_Ftmx = FTM0;	//ʹ��FTM0ͨ��
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//ʹ��PWMģʽ
  ftm_init_struct.FTM_PwmFreq = 700000;	//PWMƵ��20000Hz
  ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH23;
  ftm_init_struct.FTM_PwmDeadtimeVal=0;
  LPLD_FTM_Init(ftm_init_struct);
  
  LPLD_FTM_PWM_Enable(FTM0, //ʹ��FTM0
                      FTM_Ch0, //ʹ��Ch0ͨ��
                      5000, //��ʼ��DUTY
                      PTC1, //ʹ��Ch0ͨ����PTC1����
                      ALIGN_LEFT        //���������
                        ); 
  LPLD_FTM_PWM_Enable(FTM0, //ʹ��FTM0
                      FTM_Ch2, //ʹ��Ch1ͨ��
                      5000, //��ʼ��DUTY
                      PTC3, //ʹ��Ch1ͨ����PTC2����
                      ALIGN_LEFT        //���������
                        ); 

}


void S3010_init()
{
  //pwm
  ftm_init_struct.FTM_Ftmx = FTM1;	//ʹ��FTM0ͨ��
  ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//ʹ��PWMģʽ
  ftm_init_struct.FTM_PwmFreq = 100;	//PWMƵ��100Hz
  ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH23;
  ftm_init_struct.FTM_PwmDeadtimeVal=0;
  LPLD_FTM_Init(ftm_init_struct);
  
  LPLD_FTM_PWM_Enable(FTM1, //ʹ��FTM1
                      FTM_Ch0, //ʹ��Ch0ͨ��
                      1520, //��ʼ��DUTY
                      PTA8, //ʹ��Ch0ͨ����PTC1����
                      ALIGN_LEFT        //���������
                        ); 
  
}

void qei_init()
{   
  //�����������빦�ܲ���
  
  qei_init_struct.FTM_Ftmx = FTM2;              //ֻ��FTM1��FTM2���������빦��
  qei_init_struct.FTM_Mode = FTM_MODE_QD;       //�������빦��
  qei_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB������ģʽ
  //��ʼ��FTM
  LPLD_FTM_Init(qei_init_struct);
  //ʹ��AB������ͨ��
  //PTB18���Ž�A�����롢PTB19���Ž�B������
  LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);
  
}