/*
 * File:        freedom.h
 * Purpose:     Kinetis Freedom hardware definitions
 *
 * Notes:
 */

#ifndef __FREEDOM_H__
#define __FREEDOM_H__

#include "mcg.h"


extern u32 core_clk_khz;
extern u32 core_clk_mhz;
extern u32 bus_clk_khz;

/********************************************************************/

/* Global defines */
#define DEBUG_PRINT

/* Define the CPU used on this hardware platform */
#define CPU_MKL25Z128LK4

#define EXTAL_IN_MHz            (50)

/* Define the default serial port interface */
#define LANDZO_PORT       UART0
#define LANDZO_BAUD       115200
#undef  HW_FLOW_CONTROL
/*************************************************************************
*                            ������ӹ�����
*
*  ����˵��������ʱ��Ƶ��
*  ��    ע����� MCG_CLK_MHZ ����Ϊ PLLUSR �����ʼ��ϵͳʱ��������Զ�������
*************************************************************************/
//#define NO_PLL_INIT
#define K25_CLK             1           // ʹ���ⲿʱ�Ӳο�Դ
#define REF_CLK             XTAL8       // û�õ�����һЩ�궨����Ҫ��

#define MCG_CLK_MHZ         PLL48      // ����ʱ��Ƶ��
#define MAX_FLASH_CLK       30          // flash���ܳ���25M��������Ϊ������30M



/*********************   �Զ��� ʱ��Ƶ�� ��Ƶ����   ********************/
#include "Fire_kinetis_MCG_CFG.h"   //�ο����ļ����� ѡ�� PRDIV��VDIV ������MCG��Ƶ���� ��
#define PRDIV             11        // MCG_CLK_MHZ = 50u/(PRDIV+1)*(VDIV+24)
#define VDIV              31
#define CORE_DIV          0         //  core = mcg/ ( CORE_DIV  + 1 )
#define BUS_DIV           0         //  bus  = mcg/ ( BUS_DIV   + 1 )
#define FLEX_DIV          0         //  flex = mcg/ ( FLEX_DIV  + 1 )
#define FLASH_DIV         9         //  flash= mcg/ ( FLASH_DIV + 1 )
/***********************************************************************/
#endif /* __FREEDOM_H__ */
