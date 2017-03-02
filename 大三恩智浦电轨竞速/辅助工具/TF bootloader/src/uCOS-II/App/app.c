/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��app.c
 * ����         ���û���������Ŀǰֻ��һ����������
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��uC/OS-II V2.92
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#include <app.h>
#include  "ucos_ii.h"  		//uC/OS-IIϵͳ����ͷ�ļ�
#include  "LED.h"
#include  "sysinit.h"          //ϵͳ����
#include <BSP.h>


/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�Task_Start
*  ����˵������������,��ʼ���δ�ʱ��
*  ����˵����p_arg       û��
*  �������أ���
*  �޸�ʱ�䣺2012-2-10
*  ��    ע��
*************************************************************************/
void Task_Start(void *p_arg)
{
    /**************** ��ʼ�� ϵͳ�δ�ʱ�� �����ڶ�ʱ�������****************/
    u32  cnts;
    cnts         = core_clk_mhz * ( (u32)1000000u / (u32)OS_TICKS_PER_SEC );       /* Determine nbr SysTick increments.                    */
    OS_CPU_SysTickInit(cnts);                                                     /* Init uC/OS periodic time src (SysTick).              */


#if (OS_TASK_STAT_EN > 0)
    /*       ����ͳ������           */
    OSStatInit();
#endif


    (void)p_arg;                				// 'p_arg' ��û���õ�����ֹ��������ʾ����

    BSP_Init();                                                 //��ʼ��������

    /******************* �û������� ************************/

    while (1)
    {
        LED_turn(LED0);                                         //LED0��˸
        OSTimeDlyHMSM(0, 0, 0, 100);
    }
}