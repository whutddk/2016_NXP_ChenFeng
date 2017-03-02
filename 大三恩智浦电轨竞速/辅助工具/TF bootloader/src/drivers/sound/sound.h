#ifndef __SOUND_H__
#define __SOUND_H__

#include "common.h"
#include "gpio.h"
#include "PIT.h"     //周期中断计时器
#include "delay.h"

void sound_init();
void kaiji_fmq();
void key_fmq();
void up_fmq();
void down_fmq();
void ok_fmq();
void ok_hold_fmq();




#endif