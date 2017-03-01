//============================================================================
// 文件名称：lcd.c
// 功能概要：lcd构件源文件
// 版权所有: 苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
// 版本更新:     时间                     版本                                       修改
//           2012-11-17     V1.0       编写了KL25的lcd驱动
//============================================================================
#include "lcd.h"
//将不连续的引脚用数组表示，使其间接地连贯
uint_8 LcdData[8]={PORTD,PORTD,PORTD,PORTD,PORTD,
		               PORTC ,PORTC ,PORTC };
//数据口分别接PTD,PTC的{4,3,2,1,0,17,16,13}脚,和上面对应
uint_8 LCD_D[8]= {4,3,2,1,0,17,16,13};

//内部函数原型说明
extern void LCDCommand(uint_8 cmd);

//============================================================================
//函数名称：LCDInit
//函数返回：无
//参数说明：无
//功能概要：LCD初始化。
//============================================================================
void LCDInit()
{
    uint_32 i = 0;
    //定义数据口为输出
    for(i = 0;i < 8;i++)
    {
        gpio_init(LcdData[i], LCD_D[i], 1,0);
    }
    //定义控制口为输出
    gpio_init (LcdControl, LCDRS, 1,0);
    gpio_init (LcdControl, LCDRW, 1,0);
    gpio_init (LcdControl, LCDE, 1,0);

    //设置指令,RS,R/W = 00, 写指令代码
    gpio_set (LcdControl, LCDRS, 0);
    gpio_set (LcdControl, LCDRW, 0);

    //功能设置-
    //设置指令
    LCDCommand(0x38);       //5*7点阵模式,2行显示,8位数据总线
    LCDCommand(0x08);       //关显示,关光标显示,不闪烁
    LCDCommand(0x01);       //清屏
    for (i=0; i<40000; i++); //延时>1.6ms
    LCDCommand(0x06);
    LCDCommand(0x14);       //光标右移一个字符位,AC自动加1
    LCDCommand(0x0C);       //开显示,关光标显示,不闪烁
}

//============================================================================
//函数名称：LCDShow
//函数返回：无
//参数说明：需要显示的数据
//功能概要：液晶显示data中的数据。
//============================================================================
void LCDShow(uint_8 data[32])
{
    uint_8 i;
    //LCD初始化
    LCDInit();

    //显示第1行16个字符
    gpio_set (LcdControl, LCDRS, 0);
    gpio_set (LcdControl, LCDRW, 0);
    //后7位为DD RAM地址(0x00)
    LCDCommand(0x80);

    //2.2写16个数据到DD RAM
    gpio_set (LcdControl, LCDRS, 1);
    gpio_set (LcdControl, LCDRW, 0);
    //将要显示在第1行上的16个数据逐个写入DD RAM中
    for (i = 0;i < 16;i++)
    {
    	LCDCommand(data[i]);
    }

    //显示第2行16个字符
    gpio_set (LcdControl, LCDRS, 0);
    gpio_set (LcdControl, LCDRW, 0);
    //后7位为DD RAM地址(0x40)
    LCDCommand(0xC0);

    gpio_set (LcdControl, LCDRS, 1);
    gpio_set (LcdControl, LCDRW, 0);

    //将要显示在第2行上的16个数据逐个写入DD RAM中
    for (i = 16;i < 32;i++)
    {
    	LCDCommand(data[i]);
    }

}

//----------------函数LCDCommand调用的内部延迟子程序----------------------*
void Delay40us();
void Delay12NOP();

//============================================================================
//函数名称：LCDCommand
//函数返回：无
//参数说明：cmd:待执行的命令
//功能概要：执行给定的cmd命令,且延时。
//============================================================================
void LCDCommand(uint_8 cmd)
{
	uint_8 i = 0;
    //1.等待 > 40us
    Delay40us();
    //2.数据送到LCD的数据线上
    for(i = 0;i < 8;i++)
    {
    	gpio_set (LcdData[i], LCD_D[i], 0);
    }

    for(i = 0;i < 8;i++)
    {
    	if(0x01 & (cmd>>i))
    	{
    		gpio_set (LcdData[i], LCD_D[i],1);
    	}
    	else
    	{
    		gpio_set (LcdData[i], LCD_D[i],0);
    	}
    }

    //3.给出E信号的下降沿(先高后低),使数据写入LCD
    gpio_set (LcdControl, LCDE, 1);
    Delay12NOP();
    gpio_set (LcdControl, LCDE, 0);
    //4.等待 > 40us
    Delay40us();
}

//============================================================================
//函数名称：Delay40us
//函数返回：无
//参数说明：cmd:待执行的命令
//功能概要：延时>40us 。
//============================================================================

void Delay40us()
{
    uint_16 i;
    for (i=0; i<1600; i++);
}

//============================================================================
//函数名称：Delay12NOP
//函数返回：无
//参数说明：无
//功能概要：延时 。
//============================================================================
void Delay12NOP()
{
    uint_8 i;
    for (i=0;i<25;i++) asm("NOP");
}
