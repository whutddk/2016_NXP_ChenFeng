/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��include.h
 * ����         ������ģ��ͷ�ļ�
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#ifndef __INCLUDE_H__
#define __INCLUDE_H__

#include  "common.h"

/*
 * Include �û��Զ����ͷ�ļ�
 */

#include  "gpio.h"      //IO�ڲ���
#include  "LED.H"       //��ˮ��
#include  "uart.h"      //����
#include  "adc.h"       //ADCģ��
#include  "FTM.h"       //FTMģ�飨FTM0��������� / ͨ�� /PWM     FTM1��2���������� / ͨ�� /PWM ��
#include  "PIT.h"       //�����жϼ�ʱ��
#include  "i2c.h"
#include  "AT24C02.h"
#include  "lptmr.h"     //�͹��Ķ�ʱ��(��ʱ)
#include  "exti.h"      //EXTI�ⲿGPIO�ж�
#include  "arm_math.h"  //DSP��


/***************** ucos ר�� *****************/
#define USOC_EN     0u      //0Ϊ��ֹuC/OS������0������uC/OS
#if USOC_EN > 0u
#include  "ucos_ii.h"  		//uC/OS-IIϵͳ����ͷ�ļ�
#include  "BSP.h"			//�뿪������صĺ���
#include  "app.h"			//�û�������


#endif  //if  USOC_EN > 0


#endif  //__INCLUDE_H__
