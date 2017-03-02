/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��lptmr.c
 * ����         ��lptmr�����Ķ�ʱ����Ŀǰֻ��һ����ʱ����ʱ����
 * ��ע         ���ٷ�����
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ����˼������˾
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#include "common.h"
#include "lptmr.h"

#define LPTMR_irq     85u

//============================================================================
//�������ƣ�lptmr_counter_init
//�������أ���
//����˵����pin_select:ѡ������ţ���1,2��
//���ܸ�Ҫ�������ۼӼ����ж�
//
//============================================================================
void lptmr_counter_init(LPT0_ALTn altn, u16 count, u8 PrescaleValue, LPT_CFG cfg)
{

    if(PrescaleValue > 0x0f)PrescaleValue = 0x0f;

    //��������ܽ�
    if(altn == LPT0_ALT1)
    {
        SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK;  //�� PORTA ʱ��
        PORTA_PCR19 = PORT_PCR_MUX(0x6);    //��PTA19��ʹ�� ALT6
    }
    else if(altn == LPT0_ALT2)
    {
        SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;  //ʹ�� PORTC ʱ��
        PORTC_PCR5 = PORT_PCR_MUX(0x4);     //��PTC5��ʹ�� ALT4
    }
    else                                    //�����ܷ����¼�
    {
        assert_failed(__FILE__, __LINE__);  //���ùܽ�����
    }

    /* ����ģ��ʱ�� */
    SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;    //ʹ��LPTģ��ʱ��

    /* ��״̬�Ĵ��� */
    LPTMR0_CSR = 0x00;                      //�ȹ���LPT��������������ʱ�ӷ�Ƶ��

    /* �����ۼӼ���ֵ  */
    LPTMR_CMR_REG(LPTMR0_BASE_PTR)  =   LPTMR_CMR_COMPARE(count);                       //���ñȽ�ֵ

    /* ʱ��ѡ�� */
    LPTMR_PSR_REG(LPTMR0_BASE_PTR)  =   LPTMR_PSR_PCS(0x1) | LPTMR_PSR_PBYP_MASK  |  LPTMR_PSR_PRESCALE(PrescaleValue);        //ʹ�� LPO clock �� bypass glitch filter
    //                                                        ���������������˲�����2^n��ʱ�������ز�ʶ��

    /* �ܽ����á�ʹ���ж�  */
    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  =   LPTMR_CSR_TPS(altn) | LPTMR_CSR_TMS_MASK  | ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  | LPTMR_CSR_TEN_MASK  | LPTMR_CSR_TIE_MASK  ;
    //                                       ѡ������ܽ�        ѡ���������                                   �½���       ������           ʹ��LPT
    // TFC = 0��������ֵ���ڱȽ�ֵʱ������ֵ��λ

    enable_irq(LPTMR_irq);	                //�����ŵ�IRQ�ж�
}
/*
//��ռ���
void lptmr_counter_clean(void)
{
    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  &= ~LPTMR_CSR_TEN_MASK;     //����LPT��ʱ��ͻ��Զ����������ֵ
    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  |=LPTMR_CSR_TEN_MASK;
}*/



/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�time_delay_ms
*  ����˵������ʱ������ʹ�ö����Ķ�ʱ����ʱ��׼ȷ
*  ����˵����ms   ��ʱʱ�䣬��λΪms
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע���ٷ������Դ�
*************************************************************************/
void time_delay_ms(uint32 ms)
{
    /* Make sure the clock to the LPTMR is enabled */
    SIM_SCGC5 |= SIM_SCGC5_LPTIMER_MASK;

    /* Set the compare value to the number of ms to delay */
    LPTMR0_CMR = ms;

    /* Set up LPTMR to use 1kHz LPO with no prescaler as its clock source */
    LPTMR0_PSR = LPTMR_PSR_PCS(1) | LPTMR_PSR_PBYP_MASK;

    /* Start the timer */
    LPTMR0_CSR = LPTMR_CSR_TEN_MASK;

    /* Wait for counter to reach compare value */
    while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK));

    /* Clear Timer Compare Flag */
    LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;

    return;
}



