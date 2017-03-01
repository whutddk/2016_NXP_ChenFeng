/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：include.h
 * 描述         ：工程模版头文件
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：蓝宙电子工作室
 * 淘宝店       ：http://landzo.taobao.com/
**********************************************************************************/
#ifndef _INCLUDE_H_
#define _INCLUDE_H_

#include "common.h"

/*
 * Include 用户自定义的头文件
 */

#include "gpio.h"       //IO口操作
#include "port.h"      
#include "uart.h"       //串口
#include "i2c.h"        
#include "adc.h"        //ADC模块
#include "mcg.h"
#include "lptmr.h"      //低功耗定时器(延时)
#include "freedom.h"
#include "pit.h"        //周期中断计时器
#include "tpm.h"        //TPM模块（TPM0：电机控制 / 通用 /PWM ）
#include "dma.h"        //DMA模块
#include "calculate.h"

#include "BSP.h"
#include "ITAC.h"
#include "ctl.h"


#endif


