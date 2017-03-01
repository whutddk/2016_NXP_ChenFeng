#include "include.h"

ADC_InitTypeDef adc_init_struct;

void adc_init(void)
{
  //����ADC��������
  adc_init_struct.ADC_Adcx = ADC0;
  adc_init_struct.ADC_DiffMode = ADC_SE;        //���˲ɼ�
  adc_init_struct.ADC_BitMode = SE_16BIT;       //����8λ����
  adc_init_struct.ADC_SampleTimeCfg = SAMTIME_LONG;    //������ʱ��
  adc_init_struct.ADC_LongSampleTimeSel = LSAMTIME_12EX;
  adc_init_struct.ADC_HwAvgSel = HW_32AVG;       //4��Ӳ��ƽ��
  adc_init_struct.ADC_CalEnable = TRUE; //ʹ�ܳ�ʼ��У��
  //��ʼ��ADC
  LPLD_ADC_Init(adc_init_struct);
  //Ϊ�˱�֤���ù��ܲ���ռ�ã����ʹ����ӦADCͨ��
  //RUSH������ĵ�λ��ʹ��DAD1ͨ�����вɼ�
  //����DAD1ͨ��������Ϊ(ADC0_DP1)
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
