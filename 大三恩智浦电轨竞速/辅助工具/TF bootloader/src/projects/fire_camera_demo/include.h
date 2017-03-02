/******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
 * 文件名       ：include.h
 * 描述         ：工程模版头文件
 *
 * 实验平台     ：野火kinetis开发板
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：野火嵌入式开发工作室
 * 淘宝店       ：http://firestm32.taobao.com
 * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#ifndef __INCLUDE_H__
#define __INCLUDE_H__

#include  "common.h"

/*
 * Include 用户自定义的头文件
 */

#include  "gpio.h"      //IO口操作
#include  "uart.h"      //串口
#include  "OLED.h"
#include  "key.h"
#include  "key_event.h"
#include  "flash.h"
#include  "lptmr.h"

#endif  //__INCLUDE_H__
