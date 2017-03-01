/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
* �ļ���       �� lptmr.h
* ����         ������ģ��ʵ��
*
* ʵ��ƽ̨     ��landzo���ӿ�����
* ��汾       ��
* Ƕ��ϵͳ     ��
*
* ����         ��landzo ������
* �Ա���       ��http://landzo.taobao.com/

**********************************************************************************/
#ifndef __lptmr_H__
#define __lptmr_H__


#include "include.h"

//�жϺ�
#define LPTMRLPTMR_irq 28  

/**
 *  @brief LPTMR�����������ܽ�ѡ��
 */
typedef enum
{
    //ֻ��1��2�ܽţ���û��0��3�ܽ�
    LPT0_ALT1 = 1,      // PTA19
    LPT0_ALT2 = 2       // PTC5
} LPT0_ALTn;

/**
 *  @brief LPTMR�������������ʽ
 */
typedef enum LPT_CFG
{
    LPT_Rising  = 0,    //�����ش���
    LPT_Falling = 1     //�½��ش���
} LPT_CFG;

#define LPTMR_Flag_Clear()  (LPTMR0_CSR |= LPTMR_CSR_TCF_MASK)         //���LPT�Ƚϱ�־λ


/*          ������ʱ         */
extern void     lptmr_delay_ms(uint16_t ms);      //��ʱ(ms)
extern void     lptmr_delay_us(uint16_t us);      //��ʱ(us)

/*       ���ڶ�ʱ           */
extern void     lptmr_timing_ms(uint16_t ms);     //��ʱ(ms)
extern void     lptmr_timing_us(uint16_t ms);     //��ʱ(us)

/*        ���ڼ�ʱ           */
extern void     lptmr_time_start_ms(void);      //��ʼ��ʱ(ms)
extern uint32_t   lptmr_time_get_ms(void);        //��ȡ��ʱʱ�� 

extern void     lptmr_time_start_us(void);      //��ʼ��ʱ(ns)
extern uint32_t   lptmr_time_get_us(void);        //��ȡ��ʱʱ�� 

extern void     lptmr_time_close();             //�رռ�ʱ��


/*       �����������        */
extern void     lptmr_count_init  (LPT0_ALTn, uint16_t count, LPT_CFG);   //��������ʼ������
extern uint16_t   lptmr_pulse_get   (void);                               //��ȡ����ֵ
extern void     lptmr_pulse_clean (void);                               //��ռ���ֵ


                                   //�жϸ�λ�����������ο������û�����ʵ�֣�

//============================================================================
//�������ƣ�lptmr_internal_ref_init
//�������أ���
//����˵�����ڲ��ο�ʱ�ӳ�ʼ��
//���ܸ�Ҫ�������ڲ��ο�ʱ�ӣ�PSC=0X0��
//         �ڲ��ο�ʱ��������ʱ��Դ:(1)MCG_C2[IRCS]=0,ʹ�������ڲ�ʱ��(32kHz)
//                                 (2)MCG_C2[IRCS]=1,ʹ�ÿ����ڲ�ʱ��(2Mhz)   
//         �������õ��ǿ���ʱ��Դ������= compare_value/ClkBus/prescale=4��
//         prescale = 2^(8+1)=512,ClkBus=2Mhz,compare_value=15625
//============================================================================
void lptmr_internal_ref_init();

//============================================================================
//�������ƣ�enable_lptmr_int
//�������أ���
//����˵������
//���ܸ�Ҫ������LPT��ʱ���ж�
//============================================================================
void enable_lptmr_int();

//============================================================================
//�������ƣ�disable_lptmr_int
//�������أ���
//����˵������
//���ܸ�Ҫ���ر�LPT��ʱ���ж�
//============================================================================
void disable_lptmr_int();

#endif /* __LPTMR_H__ */
