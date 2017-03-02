/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��fire_drivers_cfg.h
 * ����         ��K60���ùܼ�����
 * ��ע         ��Ұ����˺ܾ�ʱ�����������ϣ������Ұ����Ͷ��ɹ���ע��Ұ��ԭ������
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#ifndef _FIRE_DRIVERS_CFG_H_
#define _FIRE_DRIVERS_CFG_H_

#include "gpio_cfg.h"


/**********************************  UART   ***************************************/

//      ģ��ͨ��    �˿�          ��ѡ��Χ                          ����
#define UART0_RX    PTD6        //PTA1��PTA15��PTB16��PTD6          PTA1��Ҫ�ã���Jtag��ͻ��
#define UART0_TX    PTD7        //PTA2��PTA14��PTB17��PTD7          PTA2��Ҫ�ã���Jtag��ͻ��

#define UART1_RX    PTC3        //PTC3��PTE1
#define UART1_TX    PTC4        //PTC4��PTE0

#define UART2_RX    PTD2        //PTD2
#define UART2_TX    PTD3        //PTD3

#define UART3_RX    PTB10       //PTB10��PTC16��PTE5
#define UART3_TX    PTB11       //PTB11��PTC17��PTE4

#define UART4_RX    PTE25       //PTC14��PTE25
#define UART4_TX    PTE24       //PTC15��PTE24

#define UART5_RX    PTE9        //PTD8��PTE9
#define UART5_TX    PTE8        //PTD9��PTE8

/**********************************  FTM    ***************************************/

//      ģ��ͨ��    �˿�          ��ѡ��Χ              ����
#define FTM0_CH0    PTC1        //PTC1��PTA3            PTA3��Ҫ�ã���Jtag��SWD��ͻ��
#define FTM0_CH1    PTC2        //PTC2��PTA4
#define FTM0_CH2    PTC3        //PTC3��PTA5
#define FTM0_CH3    PTC4        //PTC4��PTA6
#define FTM0_CH4    PTD4        //PTD4��PTA7
#define FTM0_CH5    PTD5        //PTD5��PTA0            PTA0��Ҫ�ã���Jtag��SWD��ͻ��
#define FTM0_CH6    PTD6        //PTD6��PTA1            PTA1��Ҫ�ã���Jtag��ͻ��
#define FTM0_CH7    PTD7        //PTD7��PTA2            PTA2��Ҫ�ã���Jtag��ͻ��


//      ģ��ͨ��    �˿�          ��ѡ��Χ              ����
#define FTM1_CH0    PTA8        //PTA8��PTA12��PTB0
#define FTM1_CH1    PTA9        //PTA9��PTA13��PTB1
/*
#define FTM1_CH2                //��
#define FTM1_CH3                //��
#define FTM1_CH4                //��
#define FTM1_CH5                //��
#define FTM1_CH6                //��
#define FTM1_CH7                //��
*/

//      ģ��ͨ��    �˿�          ��ѡ��Χ              ����
#define FTM2_CH0    PTA10       //PTA10��PTB18
#define FTM2_CH1    PTA11       //PTA11��PTB19
/*
#define FTM2_CH2                //��
#define FTM2_CH3                //��
#define FTM2_CH4                //��
#define FTM2_CH5                //��
#define FTM2_CH6                //��
#define FTM2_CH7                //��
*/



/**********************************  I2C   ***************************************/

//      ģ��ͨ��    �˿�          ��ѡ��Χ              ����
#define I2C0_SCL    PTD8        // PTB0��PTB2��PTD8
#define I2C0_SDA    PTD9        // PTB1��PTB3��PTD9

#define I2C1_SCL    PTE1       // PTE1��PTC10
#define I2C1_SDA    PTE0       // PTE0��PTC11




#endif  //_FIRE_DRIVERS_CFG_H_


