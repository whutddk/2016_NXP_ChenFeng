//===========================================================================
//�ļ����ƣ�tick_timer.c
//���ܸ�Ҫ���δ�ʱ������Դ�ļ�
//��Ȩ���У����ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
//���¼�¼��2013-01-29   V1.0
//===========================================================================

#include "tick_timer.h"

//===========================================================================
//�������ƣ�tick_timer_start
//�������أ���
//����˵����timer_ptr�������ʱ��ָ��
//          time_off���趨��ʱʱ�䳤�ȣ��Եδ�Ϊ��λ
//���ܸ�Ҫ�����������ʱ����ָ����ʱʱ�䳤��
//===========================================================================
void tick_timer_start(TICKS_TIMER_PTR timer_ptr, uint_32 time_off)
{
    timer_ptr->FLAG = 1;
    timer_ptr->LAST_TICK = systicks;
    timer_ptr->TIME_OFF = time_off;
}

//===========================================================================
//�������ƣ�tick_timer_is_out
//�������أ���ʱ����ʱ��ʶ
//          TRUE��1�� - ��ʱʱ�䵽�� FALSE��0�� - ��ʱʱ��δ��
//����˵����timer_ptr�������ʱ��ָ��
//���ܸ�Ҫ���鿴��ʱʱ���Ƿ���
//===========================================================================
uint_8 tick_timer_is_out(TICKS_TIMER_PTR timer_ptr)
{
    uint_8 bRet = 0;
    uint_32 tmp = timer_ptr->LAST_TICK + timer_ptr->TIME_OFF;
    
    if (timer_ptr->FLAG)
    {
        if(timer_ptr->LAST_TICK > systicks) //TICKS�ѻ�ͷ
        {
            tmp = 0xFFFFFFFF - timer_ptr->LAST_TICK + systicks;
            if(tmp >= timer_ptr->TIME_OFF)
            {
                bRet = 1;
            }
        }
        else if(tmp <= systicks)
        {
		        bRet = 1;
		    }
    } // end_if
    
    return bRet;
}

//===========================================================================
//�������ƣ�tick_timer_stop
//�������أ���
//����˵����timer_ptr�������ʱ��ָ��
//���ܸ�Ҫ��ͣ�������ʱ��
//===========================================================================
void tick_timer_stop(TICKS_TIMER_PTR timer_ptr)
{
    timer_ptr->FLAG = 0; 
}
