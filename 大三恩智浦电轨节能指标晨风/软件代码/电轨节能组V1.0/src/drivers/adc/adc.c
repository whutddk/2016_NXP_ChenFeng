/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
* �ļ���       �� adc.c
* ����         ������ģ��ʵ��
*
* ʵ��ƽ̨     ��landzo���ӿ�����
* ��汾       ��
* Ƕ��ϵͳ     ��
*
* ����         ��landzo ������
* �Ա���       ��http://landzo.taobao.com/

**********************************************************************************/
#include "adc.h"

ADC_MemMapPtr ADCN[1] = {ADC0_BASE_PTR}; //����һ��ָ�����鱣�� ADCN �ĵ�ַ

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�adc_init
*  ����˵����AD��ʼ��
*  ����˵����ADCn_Ch_e    ADCͨ��
*  �������أ���
*  �޸�ʱ�䣺2014-9-18
*  ��    ע��
*************************************************************************/
void adc_init(ADCn_Ch_e adcn_ch)
{
  
  uint8_t adcn = adcn_ch >> 5 ; 
  
  switch(adcn)
  {
  case ADC0:       /*   ADC0  */
    SIM_SCGC6 |= (SIM_SCGC6_ADC0_MASK );        //����ADC0ʱ��
    SIM_SOPT7 &= ~(SIM_SOPT7_ADC0ALTTRGEN_MASK  | SIM_SOPT7_ADC0PRETRGSEL_MASK);
    SIM_SOPT7 |= SIM_SOPT7_ADC0TRGSEL(0);
    break;
    
  default:
    ASSERT(0);
  }
  
  switch(adcn_ch)
  {
    
  case ADC0_SE0:
    port_init(PTE20, ALT0);
    break;
  case ADC0_SE1:
    port_init(PTE16, ALT0);
    break;
  case ADC0_SE2:
    port_init(PTE18, ALT0);
    break;
  case ADC0_SE3:
    port_init(PTE22, ALT0);
    break;
  case ADC0_SE4a:
    port_init(PTE21, ALT0);
    break;
  case ADC0_SE5a:
    port_init(PTE17, ALT0);
    break;
  case ADC0_SE6a:
    port_init(PTE19, ALT0);
    break;
  case ADC0_SE7a:
    port_init(PTE23, ALT0);
    break;
  case ADC0_SE8:
    port_init(PTB0, ALT0);
    break;
  case ADC0_SE9:
    port_init(PTB1, ALT0);
    break;
  case ADC0_SE11:
    port_init(PTC2, ALT0);
    break;
  case ADC0_SE12:
    port_init(PTB2, ALT0);
    break;
  case ADC0_SE13:
    port_init(PTB3, ALT0);
    break;
  case ADC0_SE14:
    port_init(PTC0, ALT0);
    break;
  case ADC0_SE15:
    port_init(PTC1, ALT0);
    break;
  case ADC0_SE23:
    port_init(PTE30, ALT0);
    break;
    
    
  case Temp0_Sensor:   // Temperature Sensor,�ڲ��¶Ȳ���������ADC����
    break;   
  case VREFH0:         // �ο��ߵ�ѹ,����ADC���� ,�����Ϊ 2^n-1
    break;
  case VREFL0:         // �ο��͵�ѹ,����ADC���� ,�����Ϊ 0
    break;
    
  default:
    ASSERT(0);      //���ԣ����ݵĹܽŲ�֧�� ADC ��������������뻻 �����ܽ�
    break;
  }
  
  
  
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�adc_init
*  ����˵������ȡADC����ֵ(��֧��Bͨ��)
*  ����˵����ADCn_Ch_e    ADCͨ��
*            ADC_nbit     ADC���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*  �������أ�
*  �޸�ʱ�䣺2014-9-18
*  ��    ע��
*************************************************************************/
uint16_t adc_once(ADCn_Ch_e adcn_ch, ADC_nbit bit) //�ɼ�ĳ·ģ������ADֵ
{
  ADCn_e adcn = (ADCn_e)(adcn_ch >> 5) ;
  
  uint16_t result = 0;
  
  adc_start(adcn_ch, bit);      //����ADCת��
  
  while (( ADC_SC1_REG(ADCN[adcn], 0 ) & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);   //ֻ֧�� Aͨ��
  result = ADC_R_REG(ADCN[adcn], 0);
  ADC_SC1_REG(ADCN[adcn], 0) &= ~ADC_SC1_COCO_MASK;
  return result;
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�ad_SUM
*  ����˵������β�����ȡƽ��ֵ
*  ����˵����ADCx        ģ��ţ� ADC0�� ADC1��
*            ADC_Channel ͨ����
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*            N           ��ֵ�˲�����(��Χ:0~255)
*  �������أ�16λ�޷��Ž��ֵ
*  �޸�ʱ�䣺2014-9-18
*  ��    ע��
*************************************************************************/
uint16_t ad_sum(ADCn_Ch_e adcn_ch, ADC_nbit bit, u8 N) //��������
{
    uint32_t tmp = 0;
    uint8_t  i;    
    ADCn_e adcn = (ADCn_e)(adcn_ch >> 5) ;
    ASSERT( ((adcn == ADC0) && (ch >= AD8 && ch <= AD18)) || ((adcn == ADC1) && (ch >= AD4a && ch <= AD17)) ) ; //ʹ�ö��Լ��ADCn_CHn�Ƿ�����
    adc_start(adcn_ch, bit);	  //����ADCת��
    
    for(i = 0; i < N; i++)
    {
      while (( ADC_SC1_REG(ADCN[adcn], 0 ) & ADC_SC1_COCO_MASK ) != ADC_SC1_COCO_MASK);
      tmp += ADC_R_REG(ADCN[adcn], 0);
      ADC_SC1_REG(ADCN[adcn], 0) &= ~ADC_SC1_COCO_MASK;
    }
    return (u16)tmp;
}
/*************************************************************************
*                             Ұ��Ƕ��ʽ����������\������ӹ�����
*
*  �������ƣ�adc_start
*  ����˵��������ADC�������(��֧��Bͨ��)
*  ����˵����ADCn_Ch_e    ADCͨ��
*            ADC_nbit    ���ȣ� ADC_8bit,ADC_12bit, ADC_10bit, ADC_16bit ��
*  �������أ���
*  �޸�ʱ�䣺2014-9-18
*************************************************************************/
void adc_start(ADCn_Ch_e adcn_ch, ADC_nbit bit)
{
  ADCn_e adcn = (ADCn_e)(adcn_ch >> 5) ;
  uint8_t ch = (uint8)(adcn_ch & 0x1F);
  
  //��ʼ��ADCĬ������
  ADC_CFG1_REG(ADCN[adcn]) = (0
                              //| ADC_CFG1_ADLPC_MASK         //ADC�������ã�0Ϊ�������ģ�1Ϊ�͹���
                              | ADC_CFG1_ADIV(2)              //ʱ�ӷ�Ƶѡ��,��Ƶϵ��Ϊ 2^n,2bit
                              | ADC_CFG1_ADLSMP_MASK          //����ʱ�����ã�0Ϊ�̲���ʱ�䣬1 Ϊ������ʱ��
                              | ADC_CFG1_MODE(bit)
                              | ADC_CFG1_ADICLK(0)            //0Ϊ����ʱ��,1Ϊ����ʱ��/2,2Ϊ����ʱ�ӣ�ALTCLK����3Ϊ �첽ʱ�ӣ�ADACK����
                                      );
  
  
  ADC_CFG2_REG(ADCN[adcn])  = (0
                               //| ADC_CFG2_MUXSEL_MASK       //ADC����ѡ��,0Ϊaͨ����1Ϊbͨ����
                               //| ADC_CFG2_ADACKEN_MASK      //�첽ʱ�����ʹ��,0Ϊ��ֹ��1Ϊʹ�ܡ�
                               | ADC_CFG2_ADHSC_MASK          //��������,0Ϊ����ת�����У�1Ϊ����ת������
                               | ADC_CFG2_ADLSTS(0)           //������ʱ��ѡ��ADCKΪ4+n������ѭ��������ѭ����0Ϊ20��1Ϊ12��2Ϊ6��3Ϊ2
                                   );
  
  //д�� SC1A ����ת��
  ADC_SC1_REG(ADCN[adcn], 0 ) = (0
                                 | ADC_SC1_AIEN_MASK          // ת������ж�,0Ϊ��ֹ��1Ϊʹ��
                                   //| ADC_SC1_DIFF_MASK        // ���ģʽʹ��,0Ϊ���ˣ�1Ϊ���
                                 | ADC_SC1_ADCH( ch )
                                     );
  
  //ADC_SC1_REG(ADCN[adcn], 1 ) = 0;
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������\������ӹ�����
*
*  �������ƣ�adc_stop
*  ����˵����ֹͣADC�������
*  ����˵���� ADCn_e       ADCģ��ţ� ADC0�� ADC1��
*  �������أ���
*  �޸�ʱ�䣺2012-2-10
*  ��    ע���޸����ݴ�ѧ������
*************************************************************************/
void adc_stop(ADCn_e adcn)
{
  ADC_SC1_REG(ADCN[adcn], 0) = (0
                                | ADC_SC1_AIEN_MASK                       // ת������ж�,0Ϊ��ֹ��1Ϊʹ��
                                  //| ADC_SC1_DIFF_MASK                     // ���ģʽʹ��,0Ϊ���ˣ�1Ϊ���
                                | ADC_SC1_ADCH(Module0_Dis)               //����ͨ��ѡ��,�˴�ѡ���ֹͨ��
                                    );
}



uint_16 adc_deal(int channel, uint8_t accurary, enum HardwareAverage N)
{
  uint8_t ADCCfg = 0;
  uint_16 ADCResult = 0;
  
  switch(accurary)
  {
  case 8:
    ADCCfg = ADC_CFG1_MODE(0);
    break;
  case 12:
    ADCCfg = ADC_CFG1_MODE(1);
    break;
  case 10:
    ADCCfg = ADC_CFG1_MODE(2);
    break;
  case 16:
    ADCCfg = ADC_CFG1_MODE(3);
    break;
  default:
    ADCCfg = ADC_CFG1_MODE(0);		
  }
  ADC0_SC3 = 0 | ADC_SC3_AVGE_MASK | ADC_SC3_AVGS((uint8_t)N);   //SC3�Ĵ���Ӳ������
  
  ADCCfg |=  (ADC_CFG1_ADIV(2) | ADC_CFG1_ADICLK(1));
  
  ADC0_CFG1 = ADCCfg;
  
  ADC0_CFG2 = 0 | ADC_CFG2_ADHSC_MASK;
  
  ADC0_SC1A = ADC_SC1_ADCH(channel);
  
  while((ADC0_SC1A & ADC_SC1_COCO_MASK) != ADC_SC1_COCO_MASK)
  {
  }
  
  ADCResult = (uint_16)ADC0_RA;
  
  ADC0_SC1A &= ~ADC_SC1_COCO_MASK;
  
  return ADCResult;
}
