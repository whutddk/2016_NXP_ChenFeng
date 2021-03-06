//===========================================================================
//文件名称：tick_timer.h
//功能概要：滴答定时器构件头文件
//版权所有：苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
//更新记录：2013-01-29   V1.0
//===========================================================================

#ifndef __TICK_TIMER_H
#define __TICK_TIMER_H

#include "common.h"
#include "systick.h"


//===========================================================================
//类型名称：TICK_TIMER_STRUCT
//功能说明：表示软件定时器
//===========================================================================
typedef struct ticks_timer
{
    uint_8  FLAG;// 标识定时器是否启动
    uint_32 LAST_TICK; // 定时开始时刻，以滴答作为时基
    uint_32 TIME_OFF;  // 超时时间长度，以滴答作为时基
} TICK_TIMER_STRUCT, * TICKS_TIMER_PTR;

//===========================================================================
//函数名称：tick_timer_start
//函数返回：无
//参数说明：timer_ptr：软件定时器指针
//          time_off：设定延时时间长度，以滴答为单位
//功能概要：启动软件定时器并指定延时时间长度
//===========================================================================
void tick_timer_start(TICKS_TIMER_PTR timer_ptr, uint_32 time_off);

//===========================================================================
//函数名称：tick_timer_is_out
//函数返回：定时器超时标识
//          TRUE（1） - 定时时间到； FALSE（0） - 定时时间未到
//参数说明：timer_ptr：软件定时器指针
//功能概要：查看延时时刻是否到来
//===========================================================================
uint_8 tick_timer_is_out(TICKS_TIMER_PTR timer_ptr);

//===========================================================================
//函数名称：tick_timer_stop
//函数返回：无
//参数说明：timer_ptr：软件定时器指针
//功能概要：停用软件定时器
//===========================================================================
void tick_timer_stop(TICKS_TIMER_PTR timer_ptr);

#endif
