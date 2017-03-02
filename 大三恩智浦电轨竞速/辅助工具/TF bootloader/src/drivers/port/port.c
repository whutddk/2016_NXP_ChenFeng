/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��port.c
 * ����         ��PORT�ⲿGPIO�ж�����
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
#include "port.h"



/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�port_init
*  ����˵����PORT�ⲿGPIO�жϳ�ʼ��
*  ����˵����PTxn        �˿�
*            cfg         �˿��������ã��紥��ѡ�����������ѡ��
*  �������أ���
*  �޸�ʱ�䣺2013-1-19
*  ��    ע��
*************************************************************************/
void  port_init(PTxn ptxn, u32 cfg )
{

    u8 portx = ptxn >> 5;
    u8 n = ptxn & 0x1f;
    volatile u8 i = 0;
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << portx);    //����PORTx�˿�



    PORT_PCR_REG(PORTX[portx], n) = PORT_PCR_MUX(1) | cfg; // ����GPIO , ȷ������ģʽ ,������������������

    //������port����Ҫ��ʱһ�²Ž�����һ����������Ȼ��Ƶʱ�ٶ�̫�죬������Ϸ�
    i++;
    i++;
    i++;
    i++;
    i++;
    i++;
    i++;
    i++;
    i++;             //�˲������壬��ֹ��ƵʱӲ���Ϸö��ѣ���ʱ����

    GPIO_PDDR_REG(GPIOx[portx]) &= ~(1 << n);       //����ģʽ
    //enable_irq(portx + 87);                         //ʹ��PORT�жϣ�PORTA��ISR�жϺ�Ϊ87
}

void  exti_init(PORTx portx, u8 n, exti_cfg cfg)
{
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK << portx);    //����PORTx�˿�

    PORT_PCR_REG(PORTX[portx], n) = PORT_PCR_MUX(1) | PORT_PCR_IRQC(cfg & 0x7f ) | PORT_PCR_PE_MASK | ((cfg & 0x80 ) >> 7); // ����GPIO , ȷ������ģʽ ,������������������
    GPIO_PDDR_REG(GPIOx[portx]) &= ~(1 << n);       //����ģʽ
    enable_irq(portx + 87);                         //ʹ��PORT�жϣ�PORTA��ISR�жϺ�Ϊ87
}