/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��key.c
 * ����         ��key��������
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/


#include "key.h"


PTxn KEY_PTxn[KEY_MAX] = {PTD14, PTD11, PTD12, PTD15, PTD13};

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�key_init
*  ����˵������ʼ��key�˿ڣ�����IO��Ϊ���뷽������
*  ����˵������������
*  �������أ���
*  �޸�ʱ�䣺2012-10-7   �Ѳ���
*  ��    ע��
*************************************************************************/
void    KEY_init(KEY_e key)                                               // KEY��ʼ�� ����
{
    gpio_init((PORTx)(KEY_PTxn[key] >> 5), KEY_PTxn[key] & 0x1F, GPI_UP, 0);
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�key_init
*  ����˵������ʼ��key�˿ڣ�����IO��Ϊ���뷽������
*  ����˵������������
*  �������أ���
*  �޸�ʱ�䣺2012-11-18   �Ѳ���
*  ��    ע��
*************************************************************************/
void    KEY_ALL_init(void)
{
    uint8 key;
    for(key = 0; key < KEY_MAX ; key++)
    {
        gpio_init((PORTx)(KEY_PTxn[key] >> 5), KEY_PTxn[key] & 0x1F, GPI_UP, 0);
    }
}


KEY_STATUS_e key_check(KEY_e key)
{
    u8 keyport = (u8)(KEY_PTxn[key] >> 5);
    u8 keyn    = (u8)(KEY_PTxn[key] & 0x1f);
    if(GPIO_Get(keyport, keyn) == KEY_DOWN)
    {
        DELAY_MS(10);
        if(GPIO_Get(keyport, keyn) == KEY_DOWN)
        {
		    while(GPIO_Get(keyport, keyn) == KEY_DOWN);
            return KEY_DOWN;
        }
		
    }
	
    return KEY_UP;
}



