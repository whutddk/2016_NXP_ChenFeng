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

#include "dac.h"               //����DAC��������ͷ�ļ�   

//============================================================================
//�������ƣ�dac_init
//�������أ���
//����˵����ModelNumber��ͨ����0��1��                         
//         RefVoltage���ο���ѹѡ��0=1.2V��1=3.3V��
//���ܸ�Ҫ����ʼ��DACģ���趨��
//============================================================================
void dac_init(uint8_t RefVoltage)
{
    uint8_t VreRF = DAC_SEL_VREFO;
    if(RefVoltage == 1)
    {
        VreRF =  DAC_SEL_VDDA;                 //3.3V 
    }
    
    //SIM_SCGC2 |= SIM_SCGC2_DAC0_MASK ;      //ʹ��DAC 0
      SIM_SCGC6 |=SIM_SCGC6_DAC0_MASK;        //ʹ��DAC0ʱ��
      dac_set(DAC0_BASE_PTR,VreRF);
}
    
//============================================================================
//�������ƣ�dac_convert
//�������أ�DAC��ɱ�־��0=���ʧ�ܣ�1=��ɳɹ� 
//����˵����ModelNumber: ͨ����0��1
//         VReference: �ο���ѹת��ֵ  ��Χ��0~4095��
//���ܸ�Ҫ��ִ��DACת����
//============================================================================   
//uint8_t dac_convert(uint_16 VReference)
//{
//
//    if(VReference != dac_set_buffer(DAC0_BASE_PTR, 0, VReference))
//   {
//      return 0;
//   }
//    else
//    	return 1;
//}
//�ڲ�����

//============================================================================
//�������ƣ�dac_set_buffer
//�������أ����õĻ�������Сֵ
//����˵����dacx_base_ptr��DACx��ָ��      
//          dacindex    ����������
//          buffval      ��������ֵ
//���ܸ�Ҫ������DACx������
//============================================================================ 
//int32_t dac_set_buffer( DAC_MemMapPtr dacx_base_ptr, uint8_t dacindex, int32_t buffval)
//{
//    int32_t temp = 0; 
//    //���û��������ֽ�
//    DAC_DATL_REG(dacx_base_ptr, dacindex)  =   (buffval&0x0ff); 
//    //���û��������ֽ�
//    DAC_DATH_REG(dacx_base_ptr, dacindex)  =   (buffval&0xf00) >>8;                                
//    temp =( DAC_DATL_REG(dacx_base_ptr, dacindex)|( DAC_DATH_REG(dacx_base_ptr, dacindex)<<8));   
//    return temp ;
//}


    
//============================================================================
//�������ƣ�dac_set
//�������أ���
//����˵����dacx_base_ptr��DACx��ָ��
//                VrefSel��      �ο���ѹ
//���ܸ�Ҫ������DACģ��   
//============================================================================  
void dac_set(DAC_MemMapPtr dacx_base_ptr, uint8_t VrefSel)
{
	 //����DAC_C0�Ĵ���
     DAC_C0_REG(dacx_base_ptr)  = (
                                   DAC_BFB_PTR_INT_DISABLE|//�������õ��жϽ�ֹ            
                                   DAC_BFT_PTR_INT_DISABLE|//�������ö��жϽ�ֹ              
                                   //DAC_BFWM_INT_DISABLE   |//ˮӡ�жϽ�ֹ           
                                   DAC_HP_MODE            |//�߹���ģʽ          
                                   DAC_SW_TRIG_STOP       |//������Ч          
                                   DAC_SEL_SW_TRIG        |//ѡ���������      
                                   VrefSel                |//ѡ��ο���ѹ         
                                   DAC_ENABLE              //ʹ��DAC0ģ�� 
                                   );  
  
	 //����DAC_C1�Ĵ���
     DAC_C1_REG(dacx_base_ptr)= ( 
                                 DAC_BF_DISABLE           |//DAC��������ֹ              
                                 DAC_BF_NORMAL_MODE       |//DACѡ����ѡ����������ģʽ         
                                 DAC_DMA_DISABLE           //DMA��ֹ
                                 ) ;
}
    

