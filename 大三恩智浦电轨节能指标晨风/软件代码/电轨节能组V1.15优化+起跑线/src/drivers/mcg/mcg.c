/******************** (C) COPYRIGHT 2011������ӹ����� ********************
 * �ļ���       ��mcg.c
 * ����         ������ʱ��ģʽ���ã����໷��
 * ��ע         ���ٷ��������޸�
 *
 * ʵ��ƽ̨     ��
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://landzo.taobao.com/
**********************************************************************************/

#include "common.h"
#include "mcg.h"
#include "mcg_cfg.h"

//ʱ�Ӳ����������ⲿ����
extern u32 core_clk_khz;
extern u32 core_clk_mhz;
extern u32 bus_clk_khz;

//ʱ�ӷ�Ƶ����
struct mcg_div mcg_div = { PRDIV , VDIV , CORE_DIV , BUS_DIV , FLEX_DIV , FLASH_DIV }; //�����ͬʱ����ʼ��


/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�pll_init
*  ����˵�������໷�����������趨Ƶ�ʡ�
*  ����˵����crystal_val ����ѡ�����û�õ�
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע������ ȫ�ֱ��� mcg_div ����ķ�Ƶ��������Ƶ
*************************************************************************/
unsigned char pll_init(clk_option opt)
{
    unsigned char pll_freq;

    if(opt  != PLLUSR ) //�Զ���ģʽ��ֱ�Ӽ���ȫ�ֱ���mcg_div��ֵ
    {
        //����MCGʱ��
        switch(opt)
        {
        case PLL48:
            mcg_div.prdiv       = 24;
            mcg_div.vdiv        = 0;
            break;
        case PLL50:
            mcg_div.prdiv       = 24;
            mcg_div.vdiv        = 1;
            break;
       case PLL80:
            mcg_div.prdiv       = 24;
            mcg_div.vdiv        = 16;
            break;
        case PLL96:
            mcg_div.prdiv       = 24;
            mcg_div.vdiv        = 24;
            break;
        case PLL100:
            mcg_div.prdiv       = 24;
            mcg_div.vdiv        = 26;
            break;
        case PLL110:
            mcg_div.prdiv       = 24;
            mcg_div.vdiv        = 31;
            break;
        case PLL120:
            mcg_div.prdiv       = 19;
            mcg_div.vdiv        = 24;
            break;
        case PLL125:
            mcg_div.prdiv       = 19;
            mcg_div.vdiv        = 26;
            break;
        case PLL130:
            mcg_div.prdiv       = 19;
            mcg_div.vdiv        = 28;
            break;
        case PLL140:
            mcg_div.prdiv       = 14;
            mcg_div.vdiv        = 18;
            break;
        case PLL150:
            mcg_div.prdiv       = 14;
            mcg_div.vdiv        = 21;
            break;
        case PLL160:
            mcg_div.prdiv       = 14;
            mcg_div.vdiv        = 24;
            break;
        case PLL170:
            mcg_div.prdiv       = 14;
            mcg_div.vdiv        = 27;
            break;
        case PLL180:
            mcg_div.prdiv       = 14;
            mcg_div.vdiv        = 30;
            break;
        case PLL200:
            mcg_div.prdiv       = 12;
            mcg_div.vdiv        = 28;
            break;
        case PLL225:
            mcg_div.prdiv       = 11;
            mcg_div.vdiv        = 30;
            break;
        case PLL250:
            mcg_div.prdiv       = 10;
            mcg_div.vdiv        = 31;
            break;
        default:
            return pll_init(PLL100);        //��������ᷢ����
        }

        //���÷�Ƶ
        mcg_div.core_div    = 0;           // core = MCG

        /* ������ʾ���棬���ǰ�ȫ�ģ���Ϊ�˰�ȫ�Ź�����ӽ�ȥ */
        if     (opt <= 1 * MAX_FLASH_CLK)   mcg_div.flash_div = 0; // flash  = MCG
        else if(opt <= 2 * MAX_FLASH_CLK)   mcg_div.flash_div = 1; // flash  = MCG/2
        else if(opt <= 3 * MAX_FLASH_CLK)   mcg_div.flash_div = 2; // flash  = MCG/3
        else if(opt <= 4 * MAX_FLASH_CLK)   mcg_div.flash_div = 3; // flash  = MCG/4
        else if(opt <= 5 * MAX_FLASH_CLK)   mcg_div.flash_div = 4; // flash  = MCG/5
        else if(opt <= 6 * MAX_FLASH_CLK)   mcg_div.flash_div = 5; // flash  = MCG/6
        else if(opt <= 7 * MAX_FLASH_CLK)   mcg_div.flash_div = 6; // flash  = MCG/7
        else                                mcg_div.flash_div = 7; // flash  = MCG/8

    }
    pll_freq = (u8)(( (u16)50 * (u16)( mcg_div.vdiv + 24 )) / (u16)( mcg_div.prdiv + 1 ) );            //  50/ ( prdiv +1 ) * ( mcg_div.vdiv + 24 )

    //�ϵ縴λ�󣬵�Ƭ�����Զ����� FEI ģʽ��ʹ�� �ڲ��ο�ʱ��
    //Ϊ��ʹ���ⲿʱ�Ӳο�Դ������Ҫ�Ƚ��� FBE ģʽ:
#if (defined(K60_CLK) || defined(ASB817))
    MCG_C2 = 0;
#else
    // Enable external oscillator, RANGE=2, HGO=1, EREFS=1, LP=0, IRCS=0
    MCG_C2 = MCG_C2_RANGE0(2) | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK;
#endif

    //��ʼ��������ͷ�����״̬��������GPIO
 //   SIM_SCGC4 |= SIM_SCGC4_LLWU_MASK;
 //   LLWU_CS |= LLWU_CS_ACKISO_MASK;

    // Select external oscilator and Reference Divider and clear IREFS to start ext osc
    // CLKS=2, FRDIV=7, IREFS=0, IRCLKEN=0, IREFSTEN=0
    MCG_C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(7);

    /* if we aren't using an osc input we don't need to wait for the osc to init */
//#if (!defined(Kl25_CLK) && !defined(ASB817))
    while (!(MCG_S & MCG_S_OSCINIT0_MASK)) {};  //�ȴ������ȶ�
//#endif

    while (MCG_S & MCG_S_IREFST_MASK) {}; // wait for Reference clock Status bit to clear

    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2) {}; // Wait for clock status bits to show clock source is ext ref clk

    //����FBEģʽ  ��Ƶ���������� ��2 MHz ~ 4 MHz.
    //    n       (n+1)��Ƶ   50M/(n+1)       nΪ12~24֮��
    MCG_C5 = MCG_C5_PRDIV0(mcg_div.prdiv);   // prdiv +1 ��Ƶ ��2M

    MCG_C6 = 0x0;       // Ensure MCG_C6 is at the reset default of 0. LOLIE disabled, PLL disabled, clk monitor disabled, PLL VCO divider is clear

    // ����ϵͳ��Ƶ����ѡ��
    //MCG=PLL, core = MCG/(mcg_div.core_div + 1), bus = MCG/(mcg_div.bus_div + 1),
    //FlexBus = MCG/(mcg_div.flex_div + 1), Flash clock= MCG/(mcg_div.flash_div + 1)
        // set clock dividers to desired value
    SIM_CLKDIV1 = SIM_CLKDIV1_OUTDIV1(mcg_div.core_div) | SIM_CLKDIV1_OUTDIV4(mcg_div.flash_div);
    
    // Set the VCO divider and enable the PLL for 48MHz, LOLIE=0, PLLS=1, CME=0, VDIV=0
    //   n    (n+24)��Ƶ            nΪ0~31֮��
    MCG_C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(mcg_div.vdiv) ;  //  mcg_div.vdiv + 1 ��Ƶ

    while (!(MCG_S & MCG_S_PLLST_MASK)) {}; // wait for PLL status bit to set

    while (!(MCG_S & MCG_S_LOCK0_MASK)) {}; // Wait for LOCK bit to set

    // �����Ѿ������� PBE ģʽ

    // Transition into PEE by setting CLKS to 0
    // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
    MCG_C1 &= ~MCG_C1_CLKS_MASK;

    // Wait for clock status bits to update
    while (((MCG_S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3) {};

    // �����Ѿ������� PEE ģʽ

    return pll_freq;
} //pll_init








