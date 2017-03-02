/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��exti.c
 * ����         ��EXTI�ⲿGPIO�ж�����
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#include "common.h"
#include "gpio.h"
#include "exti.h"



/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�port_init
*  ����˵����EXTI�ⲿGPIO�жϳ�ʼ��
*  ����˵����PORTx       �˿ںţ�PORTA,PORTB,PORTC,PORTD,PORTE��
*            n           �˿�����
*            exti_cfg    ����ѡ�����������ѡ��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void  port_init(PORTx portx, u8 n, u32 cfg )
{
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << portx);    //����PORTx�˿�

    PORT_PCR_REG(PORTX[portx], n) = PORT_PCR_MUX(1) | cfg; // ����GPIO , ȷ������ģʽ ,������������������
    GPIO_PDDR_REG(GPIOx[portx]) &= ~(1 << n);       //����ģʽ
    //enable_irq(portx + 87);                         //ʹ��PORT�жϣ�PORTA��ISR�жϺ�Ϊ87
}