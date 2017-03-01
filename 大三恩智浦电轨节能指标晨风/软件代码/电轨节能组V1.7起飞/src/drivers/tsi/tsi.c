//============================================================================
//�ļ����ƣ�hw_tsi.c
//���ܸ�Ҫ��K60 tsi�ײ����������ļ�
//��Ȩ���У����ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
//�汾���£�2012-11-25  V1.0   ��ʼ�汾
//============================================================================

#include "tsi.h"
#include "common.h"
//============================================================================
//�������ƣ�hw_tsi_init                                                  
//���ܸ�Ҫ����ʼ��TSIģ��                                                  
//����˵����chnlIDs:8λ�޷���������ʾ�ĸ�ͨ������ʹ��                                                                                  
//�������أ� ��                                                               
//============================================================================

void hw_tsi_init(uint_8 chnlID)
{
	//����TSIʱ��
	SIM_SCGC5 |= (SIM_SCGC5_TSI_MASK) | (SIM_SCGC5_PORTA_MASK);
	//ͨ��5ʹ��
	PORTA_PCR4 = PORT_PCR_MUX(0); 
    //����TSIͨ�üĴ���
	 TSI0_GENCS |= (TSI_GENCS_REFCHRG(4)
				| TSI_GENCS_DVOLT(0)
				| TSI_GENCS_EXTCHRG(6)
				| TSI_GENCS_PS(2)
				| TSI_GENCS_NSCN(11)
				| TSI_GENCS_TSIIEN_MASK
				| TSI_GENCS_STPE_MASK
	);
	 
    TSI0_GENCS &= ~TSI_GENCS_ESOR_MASK;
    TSI0_GENCS &= ~TSI_GENCS_STM_MASK;
	//��Խֵ��־λ��ɨ�����λ
	TSI0_GENCS |= (TSI_GENCS_OUTRGF_MASK) | (TSI_GENCS_EOSF_MASK);
	//ѡ��ͨ��
	TSI0_DATA |= (TSI_DATA_TSICH(chnlID)); 
	//TSIʹ��
	TSI0_GENCS |= (TSI_GENCS_TSIEN_MASK);
}


//============================================================================
//�������ƣ�hw_tsi_get_value16                                                  
//���ܸ�Ҫ����ȡTSIͨ���ļ���ֵ                                                  
//����˵����values:16λ�޷�����������ͨ������ֵ��                                                                                    
//�������أ� ��ȡTSIͨ���ļ���ֵ                                                                
//============================================================================
uint_16 hw_tsi_get_value16()
{

	uint_16 value;        
    TSI0_GENCS &= ~TSI_GENCS_TSIIEN_MASK;    
	//��������ж�
	TSI0_DATA |= TSI_DATA_SWTS_MASK;
    //�ȴ�ɨ�����   
	while(!(TSI0_GENCS & TSI_GENCS_EOSF_MASK));
	TSI0_GENCS |= TSI_GENCS_EOSF_MASK;
    //��ȡ�����Ĵ����е�ֵ
	value =  (TSI0_DATA & TSI_DATA_TSICNT_MASK); 
	//�峬����Χ��־λ
    TSI0_GENCS |= TSI_GENCS_OUTRGF_MASK; 
    //��ɨ�������־λ    
    TSI0_GENCS |= TSI_GENCS_EOSF_MASK;
    //TSI�ж�ʹ��
    TSI0_GENCS |= TSI_GENCS_TSIIEN_MASK;      
    return value; 
}


//============================================================================
//�������ƣ�hw_tsi_set_threshold1                                                  
//���ܸ�Ҫ���趨ָ��ͨ������ֵ                                                  
//����˵����     low:   �趨��ֵ����                                              
//           high:   �趨��ֵ����                                                                                      
//�������أ� ��                                                             
//============================================================================
void hw_tsi_set_threshold(uint_16 low, uint_16 high)
{
    uint_32 thresholdValue;
    //��16λΪ���ޣ���16λΪ����
    thresholdValue = high;
    thresholdValue = (thresholdValue<<16)|low;
    TSI0_TSHD = thresholdValue;
}


//=========================================================================
//�������ƣ�tsi_enable
//����˵������
//�������أ���
//���ܸ�Ҫ�������ڽ����ж�
//=========================================================================
void tsi_enable()
{
    TSI0_GENCS |= (TSI_GENCS_TSIIEN_MASK|TSI_GENCS_STM_MASK);
    //���жϿ�����IRQ�ж�
    enable_irq(26);   
}

//=========================================================================
//�������ƣ�tsi_disable
//����˵������
//�������أ���
//���ܸ�Ҫ���ش��ڽ����ж�
//=========================================================================
void tsi_disable()
{
	TSI0_GENCS &= ~(TSI_GENCS_TSIIEN_MASK|TSI_GENCS_STM_MASK);
	//��ֹ�жϿ�����IRQ�ж�
	disable_irq(26);          
}


//=========================================================================
//�������ƣ�tsi_softsearch
//����˵������
//�������أ���
//���ܸ�Ҫ�����������ѯ�жϲ���
//=========================================================================
void tsi_softsearch()
{
    //�����������
	TSI0_GENCS &= ~TSI_GENCS_STM_MASK;
	//��ʼһ�����ɨ��
	TSI0_DATA |= TSI_DATA_SWTS_MASK;
}

