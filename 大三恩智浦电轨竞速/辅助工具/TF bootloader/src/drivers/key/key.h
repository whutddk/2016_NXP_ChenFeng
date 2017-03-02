#ifndef __KEY_H__
#define __KEY_H__

#include "common.h"
#include "gpio.h"


//下面是定义按键的时间，单位为 ： 10ms
#define KEY_DOWN_TIME   1
#define KEY_HOLD_TIME   100         //最多253，否则需要修改keytime的类型


//按键端口的枚举
typedef enum
{
    KEY_UPP,
    KEY_DOWNN,
    KEY_L,
    KEY_R,
    KEY_OK,

    KEY_MAX,
} KEY_e;




//key状态宏定义
typedef enum
{
    KEY_DOWN  =   0,         //按键按下时对应电平
    KEY_UP    =   1,         //按键弹起时对应电平


    KEY_HOLD,

} KEY_STATUS_e;


typedef struct
{
    KEY_e           key;
    KEY_STATUS_e    status;
} KEY_MSG_t;

void    KEY_init(KEY_e key);                    // KEY初始化    函数
void    KEY_ALL_init(void);                     //全部Key初始化
KEY_STATUS_e key_check(KEY_e key);              //检测key状态


//定时扫描按键
u8 get_key_msg(KEY_MSG_t *keymsg);                  //获取按键消息，返回1表示有按键消息，0为无按键消息
void key_IRQHandler(void);                      //
KEY_STATUS_e key_check(KEY_e key);

#endif  //__KEY_H__