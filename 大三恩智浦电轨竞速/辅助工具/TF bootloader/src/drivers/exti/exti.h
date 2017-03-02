/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��exti.h
 * ����         ���ⲿ�жϺ�������ͷ�ļ�
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#ifndef _EXTI_H_
#define _EXTI_H_

typedef enum
{


    //�жϷ�ʽѡ��
    IRQ_ZERO     = 0x08 << 16,   //�͵�ƽ����
    IRQ_RISING   = 0x09 << 16,   //�����ش���
    IRQ_FALLING  = 0x0A << 16,   //�½��ش���
    IRQ_EITHER   = 0x0B << 16,   //�����ش���
    IRQ_ONE      = 0x0C << 16,   //�ߵ�ƽ����

    //DMA��ʽ
    DMA_RISING   = 0x01 << 16,   //�����ش���
    DMA_FALLING  = 0x02 << 16,   //�½��ش���
    DMA_EITHER   = 0x03 << 16,   //�����ش���

    HDS          = 0x01 << 6,    //�������������
    ODO          = 0x01 << 5,    //©�����
    PF           = 0x01 << 4,    //����Դ�˲���
    SSR          = 0x01 << 2,    //������仯��          Slow slew rate

    //��������ѡ��
    PULLDOWN     = 0x02 << 0,      //����
    PULLUP       = 0x03 << 0,      //����

} port_cfg;

void  port_init(PORTx, u8 n, u32 cfg );


#endif
