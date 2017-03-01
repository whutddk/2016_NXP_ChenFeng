#include "include.h"

ADC_InitTypeDef adc_init_struct;

void adc_init(void)
{
  //配置ADC采样参数
  adc_init_struct.ADC_Adcx = ADC0;
  adc_init_struct.ADC_DiffMode = ADC_SE;        //单端采集
  adc_init_struct.ADC_BitMode = SE_16BIT;       //单端8位精度
  adc_init_struct.ADC_SampleTimeCfg = SAMTIME_LONG;    //长采样时间
  adc_init_struct.ADC_LongSampleTimeSel = LSAMTIME_12EX;
  adc_init_struct.ADC_HwAvgSel = HW_32AVG;       //4次硬件平均
  adc_init_struct.ADC_CalEnable = TRUE; //使能初始化校验
  //初始化ADC
  LPLD_ADC_Init(adc_init_struct);
  //为了保证复用功能不被占用，最好使能相应ADC通道
  //RUSH开发板的电位器使用DAD1通道进行采集
  //单端DAD1通道的引脚为(ADC0_DP1)
  LPLD_ADC_Chn_Enable(ADC0, AD8); 
}

void get_offset()
{
  uint16 i = 0;
  
  relay_OFF();
  
  ctl.current_offset = LPLD_ADC_Get(ADC0, AD8);
  LPLD_LPTMR_DelayMs(2);
  for ( i = 0;i < 2000; i++)
  {
    ctl.current_offset += LPLD_ADC_Get(ADC0, AD8);
    ctl.current_offset /= 2;
    LPLD_LPTMR_DelayMs(2);
  }
}
