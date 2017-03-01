#include "include.h"

void adc_offset()
{
  uint8 i ;

  ADCI.offset[0] = ad_sum(ADC0_SE9, ADC_8bit, 10);
  ADCI.offset[1] = ad_sum(ADC0_SE12, ADC_8bit, 10);
  for ( i = 0; i < 100;i++ )
  {
    ADCI.offset[0] += ad_sum(ADC0_SE9, ADC_8bit, 10);
    ADCI.offset[1] += ad_sum(ADC0_SE12, ADC_8bit, 10);
    
    ADCI.offset[0] /= 2;
    ADCI.offset[1] /= 2;
    
    pit_delay_ms(PIT1,1);
  }
  
}