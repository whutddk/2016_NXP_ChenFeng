/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
 * �ļ���       ��isr.h
 * ����         �����º궨���жϺţ���ӳ���ж�����������жϺ�����ַ��
 *                ʹ��ָ��������������жϷ������������жϷ�����
 *                ���棺ֻ����"vectors.c"���������ұ�����"vectors.h"�����ĺ��棡����
 *
 * ʵ��ƽ̨     ��
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��������ӹ�����
 * �Ա���       ��http://landzo.taobao.com/
**********************************************************************************/

#ifndef __ISR_H
#define __ISR_H 

#include  "include.h"


#undef  VECTOR_038
#define VECTOR_038    PIT_IRQHandler

#undef  VECTOR_028
#define VECTOR_028    freecars_isr

extern void PIT_IRQHandler(void) ;
extern void freecars_isr(void);

#endif
