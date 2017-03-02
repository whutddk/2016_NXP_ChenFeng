/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��mcg.h
 * ����         �����໷ͷ�ļ�
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#ifndef __MCG_H__
#define __MCG_H__


enum crystal_val
{
    XTAL2,
    XTAL4,
    XTAL6,
    XTAL8,
    XTAL10,
    XTAL12,
    XTAL14,
    XTAL16,
    XTAL18,
    XTAL20,
    XTAL22,
    XTAL24,
    XTAL26,
    XTAL28,
    XTAL30,
    XTAL32
};


typedef enum clk_option
{
    PLLUSR      ,  //�Զ������÷�Ƶϵ��ģʽ��ֱ�Ӽ��� ȫ�ֱ��� mcg_div ��ֵ
    PLL48    = 48,
    PLL50    = 50,
    PLL96    = 96,
    PLL100   = 100,
    PLL110   = 110,
    PLL120   = 120,
    PLL125   = 125,
    PLL130   = 130,
    PLL140   = 140,
    PLL150   = 150,
    PLL160   = 160,
    PLL170   = 170,
    PLL180   = 180,
    PLL200   = 200, //���󲿷�оƬ���ɳ�������̶�
    PLL225   = 225, //��ͬоƬ����ͬ���ӣ���Ƶ������һ������һ��ȫ�����ܳ������ˮƽ
    PLL250   = 250
} clk_option;


//ʱ�ӷ�Ƶ����
struct mcg_div
{
    u8 prdiv;       //�ⲿ�����Ƶ����ѡ��
    u8 vdiv;        //�ⲿ����Ƶ����ѡ��
    u8 core_div;    //�ں�ʱ�ӷ�Ƶ����
    u8 bus_div;     //����ʱ�ӷ�Ƶ����
    u8 flex_div;    //flexʱ�ӷ�Ƶ����
    u8 flash_div;   //flashʱ�ӷ�Ƶ����
};

extern struct mcg_div  mcg_div;


unsigned char pll_init(clk_option);         //���໷��ʼ��



/********************** �ڲ��� �� ������  **************************/

__RAMFUN void set_sys_dividers(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4);




/********************************************************************/
#endif /* __MCG_H__ */
