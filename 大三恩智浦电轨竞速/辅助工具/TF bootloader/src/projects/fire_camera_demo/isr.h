/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��isr.h
 * ����         �����º궨���жϺţ���ӳ���ж�����������жϺ�����ַ��
 *                ʹ��ָ��������������жϷ������������жϷ�����
 *                ���棺ֻ����"vectors.c"���������ұ�����"vectors.h"�����ĺ��棡����
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/



#ifndef __ISR_H
#define __ISR_H 1

#include  "include.h"

/*                          ���¶����ж�������
 *  ��ȡ��Ĭ�ϵ��ж�����Ԫ�غ궨��       #undef  VECTOR_xxx
 *  �����¶��嵽�Լ���д���жϺ���       #define VECTOR_xxx    xxx_IRQHandler
 *  ���磺
 *       #undef  VECTOR_003
 *       #define VECTOR_003    HardFault_Handler    ���¶���Ӳ���Ϸ��жϷ�����
 */
#undef  VECTOR_014
#undef  VECTOR_015
#if     USOC_EN > 0u    //�����������ucosϵͳ  ��ucos�ĵδ�ʱ���жϷ�����
#define VECTOR_014    OS_CPU_PendSVHandler
#define VECTOR_015    OS_CPU_SysTickHandler
#else
#define VECTOR_014    PendSV_Handler
#define VECTOR_015    SysTick_Handler   //�δ�ʱ��  OS�õõ�
#endif

#undef  VECTOR_003
#define VECTOR_003    HardFault_Handler   //����Ӳ���Ϸ� �����ǳ����ܷ��ˣ�     �Ƽ����Գ���ʱ���ø�LED��ʾ��ָʾ�����ܷ���

#undef  VECTOR_063                        //Ҫ��ȡ���ˣ���Ϊ��vectors.h��Ĭ���Ƕ���Ϊ default_isr
#define VECTOR_063    USART1_IRQHandler   //���¶���63���жϵ�ISR��UART1��Single interrupt vector for UART status sources

#undef  VECTOR_071                        //Ҫ��ȡ���ˣ���Ϊ��vectors.h��Ĭ���Ƕ���Ϊ default_isr
#define VECTOR_071    USART5_IRQHandler   //���¶���63���жϵ�ISR��UART1��Single interrupt vector for UART status sources

#undef  VECTOR_067                        //Ҫ��ȡ���ˣ���Ϊ��vectors.h��Ĭ���Ƕ���Ϊ default_isr
#define VECTOR_067    USART3_IRQHandler   //���¶���63���жϵ�ISR��UART1��Single interrupt vector for UART status sources

#undef  VECTOR_078
#define VECTOR_078    FTM0_IRQHandler     //FTM0���벶׽�ж�

#undef  VECTOR_079
#define VECTOR_079    FTM1_IRQHandler     //FTM0���벶׽�ж�

#undef  VECTOR_084
#define VECTOR_084    PIT0_IRQHandler     //���¶���84���ж�ΪPIT0_IRQHandler�ж�

#undef  VECTOR_085
#define VECTOR_085    PIT1_IRQHandler//key_IRQHandler     //���¶���84���ж�Ϊkey_IRQHandler�жϣ�PIT1

#undef  VECTOR_101
#define VECTOR_101    LPT_Handler

#undef  VECTOR_103
#define VECTOR_103    PORTA_IRQHandler    //PORTA�ж�

#undef  VECTOR_104
#define VECTOR_104    PORTB_IRQHandler    //PORTB�ж�

#undef  VECTOR_105
#define VECTOR_105    PORTC_IRQHandler    //PORTC�ж�

#undef  VECTOR_106
#define VECTOR_106    PORTD_IRQHandler    //PORTD�ж�

#undef  VECTOR_107
#define VECTOR_107    PORTE_IRQHandler    //PORTE�ж�




extern void PendSV_Handler(void);         //�������ϵͳ�����жϷ�����
extern void HardFault_Handler(void);      //����Ӳ���Ϸã������ܷɣ�
extern void SysTick_Handler(void);        //�δ�ʱ��(os �õ�)
extern void USART1_IRQHandler();          //����1 �жϽ��պ���
extern void USART3_IRQHandler();          //����1 �жϽ��պ���
extern void USART5_IRQHandler();          //����1 �жϽ��պ���
extern void PIT0_IRQHandler();            //PIT0 ��ʱ�жϷ�����
extern void PIT1_IRQHandler();            //PIT1 ��ʱ�жϷ�����
extern void PORTA_IRQHandler();           //PORTA�жϷ�����
extern void PORTB_IRQHandler();           //PORTB�жϷ�����
extern void PORTC_IRQHandler();           //PORTC�жϷ�����
extern void PORTD_IRQHandler();           //PORTD�жϷ�����
extern void PORTE_IRQHandler();           //PORTE�жϷ�����
extern void FTM0_IRQHandler();            //FTM0���벶׽�ж�
extern void FTM1_IRQHandler();            //FTM0���벶׽�ж�
extern void LPT_Handler();

#endif  //__ISR_H

/* End of "isr.h" */
