/******************** (C) COPYRIGHT 2011 野火嵌入式开发工作室 ********************
 * 文件名       ：key.c
 * 描述         ：key函数定义
 *
 * 实验平台     ：野火kinetis开发板
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：野火嵌入式开发工作室
 * 淘宝店       ：http://firestm32.taobao.com
 * 技术支持论坛 ：http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/


#include "key.h"


PTxn KEY_PTxn[KEY_MAX] = {PTD14, PTD11, PTD12, PTD15, PTD13};

/*************************************************************************
*                             野火嵌入式开发工作室
*
*  函数名称：key_init
*  功能说明：初始化key端口，设置IO口为输入方向，上拉
*  参数说明：按键类型
*  函数返回：无
*  修改时间：2012-10-7   已测试
*  备    注：
*************************************************************************/
void    KEY_init(KEY_e key)                                               // KEY初始化 函数
{
    gpio_init((PORTx)(KEY_PTxn[key] >> 5), KEY_PTxn[key] & 0x1F, GPI_UP, 0);
}

/*************************************************************************
*                             野火嵌入式开发工作室
*
*  函数名称：key_init
*  功能说明：初始化key端口，设置IO口为输入方向，上拉
*  参数说明：按键类型
*  函数返回：无
*  修改时间：2012-11-18   已测试
*  备    注：
*************************************************************************/
void    KEY_ALL_init(void)
{
    uint8 key;
    for(key = 0; key < KEY_MAX ; key++)
    {
        gpio_init((PORTx)(KEY_PTxn[key] >> 5), KEY_PTxn[key] & 0x1F, GPI_UP, 0);
    }
}


KEY_STATUS_e key_check(KEY_e key)
{
    u8 keyport = (u8)(KEY_PTxn[key] >> 5);
    u8 keyn    = (u8)(KEY_PTxn[key] & 0x1f);
    if(GPIO_Get(keyport, keyn) == KEY_DOWN)
    {
        DELAY_MS(10);
        if(GPIO_Get(keyport, keyn) == KEY_DOWN)
        {
		    while(GPIO_Get(keyport, keyn) == KEY_DOWN);
            return KEY_DOWN;
        }
		
    }
	
    return KEY_UP;
}



