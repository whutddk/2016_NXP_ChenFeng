/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��sysinit.c
 * ����         ��k60�ĳ�ʼ������
 * ��ע         ���ڹٷ��������޸�
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/


#include "common.h"
#include "sysinit.h"
#include "uart.h"


/********************************************************************/

/* Actual system clock frequency */
u32 core_clk_khz;       //�ں�ʱ��(KHz)
u32 core_clk_mhz;       //�ں�ʱ��(MHz)
u32 bus_clk_khz;        //��Χ����ʱ��



/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�sysinit
*  ����˵�����������ʼ���������������໷����ʼ��ʱ�� �� printf����
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2012-2-10
*  ��    ע��
*************************************************************************/
void sysinit (void)
{
    /* ʹ�����ж˿�PORTʱ��   */
    SIM_SCGC5 |= (SIM_SCGC5_PORTA_MASK
                  | SIM_SCGC5_PORTB_MASK
                  | SIM_SCGC5_PORTC_MASK
                  | SIM_SCGC5_PORTD_MASK
                  | SIM_SCGC5_PORTE_MASK );

#if defined(NO_PLL_INIT)
    core_clk_mhz = 20;                      //������岻��ʼ�����໷������� FEI mode
#else
    /* ��ǿϵͳƵ��   �������������ó�Ƶ  */
    core_clk_mhz = pll_init(MCG_CLK_MHZ);
#endif

    //ͨ��pll_init�����ķ���ֵ�������ں�ʱ�Ӻ�����ʱ�ӣ��������������ɲ�ѯʱ��Ƶ��
    core_clk_khz = core_clk_mhz * 1000;
    bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> 24) + 1);

    //    trace_clk_init();                       //ʹ�ܸ���ʱ�ӣ����ڵ���
    //    fb_clk_init();                          //FlexBusʱ�ӳ�ʼ��

    uart_init(FIRE_PORT, FIRE_BAUD);    //��ʼ�� printf �������õ��Ĵ���
}



//-------------------------------------------------------------------------*
//������: trace_clk_init                                                   *
//��  ��: ����ʱ�ӳ�ʼ��                                                   *
//��  ��: ��							  	   *
//��  ��: ��                                                               *
//˵  ��: ���ڵ���                                                         *
//-------------------------------------------------------------------------*
void trace_clk_init(void)
{
    /* Set the trace clock to the core clock frequency */
    SIM_SOPT2 |= SIM_SOPT2_TRACECLKSEL_MASK;

    /* Enable the TRACE_CLKOUT pin function on PTA6 (alt7 function) */
    PORTA_PCR6 = ( PORT_PCR_MUX(0x7));
}
/********************************************************************/

//-------------------------------------------------------------------------*
//������: fb_clk_init                                                      *
//��  ��: FlexBusʱ�ӳ�ʼ��                                                *
//��  ��: ��								   *
//��  ��: ��                                                               *
//˵  ��:                                                                  *
//-------------------------------------------------------------------------*
void fb_clk_init(void)
{
    /* Enable the clock to the FlexBus module */
    SIM_SCGC7 |= SIM_SCGC7_FLEXBUS_MASK;

    /* Enable the FB_CLKOUT function on PTC3 (alt5 function) */
    PORTC_PCR3 = ( PORT_PCR_MUX(0x5));
}
/********************************************************************/
