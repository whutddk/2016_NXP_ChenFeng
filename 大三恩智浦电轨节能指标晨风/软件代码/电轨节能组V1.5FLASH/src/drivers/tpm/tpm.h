//===========================================================================
//�ļ����ƣ�tpm.h
//���ܸ�Ҫ��tpm�ײ���������ͷ�ļ�
//��Ȩ���У����ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
//���¼�¼��2013-3-9   V2.0 ����
//===========================================================================
#ifndef TPM_H_
#define TPM_H_

#include "common.h"

#define tpm0_irq_no 17
#define tpm1_irq_no 18
#define tpm2_irq_no 19
//����TPMģ���
typedef enum
{
    TPM0,
    TPM1,
    TPM2,

    TPM_MAX,
} TPMn_e;

//����TPM ͨ����
typedef enum
{

    TPM_CH0,
    TPM_CH1,
    TPM_CH2,
    TPM_CH3,
    TPM_CH4,
    TPM_CH5,
    TPM_CH6,
    TPM_CH7,

} TPM_CHn_e;

typedef enum
{
    TPM_CLKIN0,
    TPM_CLKIN1,
} TPM_CLKIN_e;

//��Ƶϵ��
typedef enum
{
    TPM_PS_1,
    TPM_PS_2,
    TPM_PS_4,
    TPM_PS_8,
    TPM_PS_16,
    TPM_PS_32,
    TPM_PS_64,
    TPM_PS_128,

    TPM_PS_MAX,
}TPM_PS_e;

//���ڿ�ʼ���� ���� ���ؼ���
typedef enum
{
    EXTRG_IN,       //�ⲿ����
    CMP0_OUT,       //CMP0 ���

    TRG_CFG_RES0,   //����
    TRG_CFG_RES1,   //����

    PIT0_TRG,       //PIT0 ����
    PIT1_TRG,       //PIT0 ����

    TRG_CFG_RES2,   //����
    TRG_CFG_RES3,   //����

    TPM0_OVER,      //TPM0���
    TPM1_OVER,      //TPM1���
    TPM2_OVER,      //TPM2���

    TRG_CFG_RES4,   //����

    RTC_ALARM,      //RTC����
    RTC_SEC,        //RTC���ж�

    LPTMR_TRG,      //LPTMR ����

    TRG_CFG_RES5,   //����


}TPMx_TRG_CFG_e;


/*********************** PWM **************************/

#define TPM0_PRECISON 100u     //����ռ�ձȾ��ȣ�100������Ϊ1%��1000u�򾫶�Ϊ0.1%������ռ�ձ� duty �βδ��룬��ռ�ձ�Ϊ duty/TPM_PRECISON
#define TPM1_PRECISON 100u     //����ռ�ձȾ��ȣ�100������Ϊ1%��1000u�򾫶�Ϊ0.1%������ռ�ձ� duty �βδ��룬��ռ�ձ�Ϊ duty/TPM_PRECISON
#define TPM2_PRECISON 100u     //����ռ�ձȾ��ȣ�100������Ϊ1%��1000u�򾫶�Ϊ0.1%������ռ�ձ� duty �βδ��룬��ռ�ձ�Ϊ duty/TPM_PRECISON

//=========================================================================
//�������ƣ�tpm_enable_int                                                        
//���ܸ�Ҫ��ʹ��tpmģ���жϡ�                                                
//����˵����tpmModule:ģ��ţ�0��1��2                                                                                
//�������أ���
//=========================================================================
void tpm_enable_int(uint8_t tpmModule);
//=========================================================================
//�������ƣ�tpm_disable_int                                                        
//���ܸ�Ҫ����ֹtpmģ���ʼ����                                                
//����˵����tpmModule:ģ��ţ�0��1��2                                                                             
//�������أ���
//=========================================================================
void tpm_disable_int(uint8_t tpmModule);
//=========================================================================
//�������ƣ�tpm_init                                                        
//���ܸ�Ҫ����ʼ��tpmģ�顣                                                
//����˵����uartNo:���ںţ�0��1��2                                                                                
//�������أ�����ִ��״̬��0=��������0=�쳣
//=========================================================================
extern void  tpm_pwm_init(TPMn_e, TPM_CHn_e, uint32_t freq, uint32_t duty);  //��ʼ��TPM��PWM���ܲ�����Ƶ�ʡ�ռ�ձȡ�����ͨ�����ռ�ձȡ�ͬһ��TPM����ͨ����PWMƵ����һ���ģ���3��TPM

//=========================================================================
//�������ƣ�tpm_stop                                                        
//���ܸ�Ҫ����ֹtpmģ�顣                                        
//����˵����uartNo:���ںţ�0��1��2                                                                                
//�������أ���
//=========================================================================
void tpm_stop(uint8_t tpmModule);


extern void  tpm_pwm_duty(TPMn_e, TPM_CHn_e,              uint32_t duty);  //����ͨ��ռ�ձ�,ռ�ձ�Ϊ ��duty * ���ȣ� % ����� TPM_PRECISON ����Ϊ 1000 ��duty = 100 ����ռ�ձ� 100*0.1%=10%
extern void  tpm_pwm_freq(TPMn_e,            uint32_t freq);               //����TPM��Ƶ�ʣ���Ƶ�ʺ���Ҫ��������ռ�ձȣ�



extern void     tpm_pulse_init(TPMn_e tpmn,TPM_CLKIN_e clkin,TPM_PS_e ps);
extern void     tpm_pulse_clean (TPMn_e tpmn);
extern uint16_t    tpm_pulse_get (TPMn_e tpmn);

#endif 
