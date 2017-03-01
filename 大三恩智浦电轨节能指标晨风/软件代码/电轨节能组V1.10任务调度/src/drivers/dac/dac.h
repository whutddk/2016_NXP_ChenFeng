//===========================================================================
//�ļ����ƣ�dac.h
//���ܸ�Ҫ��dac�ײ���������ͷ�ļ�
//��Ȩ���У����ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
//���¼�¼��2013-01-12   V1.0
//===========================================================================

#ifndef DAC_H_
#define DAC_H_

#include "common.h"

// 2.2 DAC���ƼĴ���0 λ���� 
#define DAC_DISABLE   0x00                            //��ֹDAC
#define DAC_ENABLE    DAC_C0_DACEN_MASK               //ʹ��DAC

#define DAC_SEL_VREFO  0x00                           //�ο���ѹ1ѡ��
#define DAC_SEL_VDDA   DAC_C0_DACRFS_MASK             //�ο���ѹ2ѡ��

#define DAC_SEL_PDB_HW_TRIG  0x00                     //Ӳ������
#define DAC_SEL_SW_TRIG  DAC_C0_DACTRGSEL_MASK        //�������

#define DAC_SW_TRIG_STOP 0x00                         //������Ч
#define DAC_SW_TRIG_NEXT  DAC_C0_DACSWTRG_MASK        //������Ч

#define DAC_HP_MODE  0x00                             //�߹���ģʽ
#define DAC_LP_MODE  DAC_C0_LPEN_MASK                 //�͹���ģʽ  

//#define DAC_BFWM_INT_DISABLE  0x00                    //��ֹ��������ж�
//#define DAC_BFWM_INT_ENABLE   DAC_C0_DACBWIEN_MASK    //ʹ�ܻ�������ж�

#define DAC_BFT_PTR_INT_DISABLE 0x00                  //��ֹ�����ȡ��ָ�����
#define DAC_BFT_PTR_INT_ENABLE DAC_C0_DACBTIEN_MASK   //ʹ�ܻ����ȡ��ָ�����

#define DAC_BFB_PTR_INT_DISABLE 0x00                  //��ֹ�����ȡ��ָ�����
#define DAC_BFB_PTR_INT_ENABLE DAC_C0_DACBBIEN_MASK   //ʹ�ܻ����ȡ��ָ�����

// 2.3 DAC���ƼĴ���1 λ����
#define DAC_DMA_DISABLE  0x00                         //��ֹDMA
#define DAC_DMA_ENABLE DAC_C1_DMAEN_MASK              //ʹ��DMA
#define DAC_BF_NORMAL_MODE 0x00
//#define 
#define DAC_BF_DISABLE      0x00

//3 �����ӿ�����

//============================================================================
//�������ƣ�dac_init
//�������أ���
//����˵���� VreReference���ο���ѹѡ��0=1.75V��1=3V��
//���ܸ�Ҫ����ʼ��DACģ���趨��
//============================================================================
void dac_init(uint8_t VreReference);

//============================================================================
//�������ƣ�dac_convert
//�������أ�DAC��ɱ�־��0=���ʧ�ܣ�1=��ɳɹ� 
//����˵����VReference: �ο���ѹת��ֵ  ��Χ��0~4095��
//���ܸ�Ҫ��ִ��DACת����
//============================================================================ 
//uint8_t dac_convert(uint_16 VReference);


//============================================================================
//�������ƣ�dac_set_buffer
//�������أ����õĻ�������Сֵ
//����˵����dacx_base_ptr��DACx��ָ��      
//          dacindex
//          buffval      ��������ֵ
//���ܸ�Ҫ������DACx������
//============================================================================
//int32_t dac_set_buffer(DAC_MemMapPtr dacx_base_ptr, uint8_t dacindex, int32_t buffval);


//============================================================================
//�������ƣ�dac_set
//�������أ���
//����˵����dacx_base_ptr��DACx��ָ��
//                VrefSel��      �ο���ѹ
//���ܸ�Ҫ��DAC�������   
//============================================================================  
void dac_set(DAC_MemMapPtr dacx_base_ptr, uint8_t VrefSel);

#endif
