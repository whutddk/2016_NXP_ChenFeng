//============================================================================
// 文件名称：kb.c                                                          
// 功能概要：键盘构件源文件
// 版权所有: 苏州大学飞思卡尔嵌入式中心(sumcu.suda.edu.cn)
// 版本更新:     时间                     版本                                       修改
//           2012-12-01     V1.0       编写了KL25的键盘驱动
//============================================================================
#include "kb.h"
#include "uart.h"
#include "gpio.h"

//将不连续的引脚用数组表示，使其间接地连贯
//数据口分别接PTC的{11,10,9,8,7,6,5,4}脚
uint_8 KBPin[8]= {11,10,9,8,7,6,5,4};
//键盘4x4按键按键硬件行线列线连接表
const uint_8 KB_CT[4][4]=
{
	{0xEE,0xDE,0xBE,0x7E},
	{0xED,0xDD,0xBD,0x7D},
    {0xEB,0xDB,0xBB,0x7B},
	{0xE7,0xD7,0xB7,0x77},
};
//键盘定义表
const uint_8 KBtable[] =
{
    0xEE,'7',0xDE,'4',0xBE,'1',0x7E,'0',
    0xED,'8',0xDD,'5',0xBD,'2',0x7D,'A',
    0xEB,'9',0xDB,'6',0xBB,'3',0x7B,'B',
    0xE7,'C',0xD7,'D',0xB7,'E',0x77,'F',
    0x00
};
//本版硬件连接全为POTRC
GPIO_MemMapPtr p = PTC_BASE_PTR;

//============================================================================
//函数名称：KBInit
//函数返回：无
//参数说明：无
//功能概要：初始化键盘模块。
//============================================================================
void KBInit(void)
{
    uint_8 i; 
    //本版硬件连接全为POTRC
    //行线低电平（PORTC8~10）
    for(i = 0;i < 4;i++)
    {
    	gpio_init (KBPort, KBPin[i], 0, 0);
    }
    //列线高电平（PORTC4~7）
    for(i = 4;i < 8;i++)
    {
    	gpio_init (KBPort, KBPin[i], 1, 0);
    }
}

//============================================================================
//函数名称：KBScanN
//函数返回：多次扫描键盘得到的键值
//参数说明：重复扫描键盘的的次数(KB_count)
//功能概要：多次扫描键盘，消除"抖动"。
//============================================================================
uint_8 KBScanN(uint_8 KB_count)
{
    uint_8 i,KB_value_last,KB_value_now;
    // 先扫描一次得到的键值,便于下面比较 
    if (0 == KB_count || 1 == KB_count)
        return KBScan1();   
    KB_value_now = KB_value_last = KBScan1();   
    //以下多次扫描消除误差 
    for (i=0; i<KB_count-1; i++)
    {               
        KB_value_now = KBScan1();
        if (KB_value_now == KB_value_last)
            return KB_value_now;                       //返回扫描的键值
        else
            KB_value_last = KB_value_now;
            
    }
    // 返回出错标志 
    return 0xFF;
}
//============================================================================
//函数名称：KBDef
//函数返回：无
//参数说明：键值value 
//功能概要：键值转为定义值函数。
//============================================================================
uint_8 KBDef(uint_8 value)
{
    uint_8 KeyPress;                    //键定义值
    uint_8 i;
    i = 0;
    KeyPress = 0xff;
    while (KBtable[i] != 0x00)          //在键盘定义表中搜索欲转换的键值,直至表尾
    {
        if(KBtable[i] == value)         //在表中找到相应的键值
        {
            KeyPress = KBtable[i+1];    //取出对应的键定义值
            break;
        }
        i += 2;                         //指向下一个键值,继续判断
    }
    return KeyPress;
}

//============================================================================
//函数名称：KBScan1
//函数返回：扫描到的键值
//参数说明：键值valve 
//功能概要：扫描1次4*4键盘,返回扫描到的键值,若无按键,返回0xff 。
//============================================================================
uint_8 KBScan1(void)
{
    uint_8 i,j,tmp;
    uint_32 k = 0,m;
    //键盘初始化
	KBInit();                              
	//最多将扫描4根行线	
	for (i = 0; i <= 3; i++)                           
	{
		if((GPIO_PDIR_REG(p) & (1<<KBPin[i])) == 0)
		{
			//4~7对应引脚列线
			for(j = 4;j <8;j++)
			{
				gpio_set(KBPort,KBPin[j],1);
				//延迟再判断，出去干扰
				for(k = 0;k <5000 ;k++)
					{
						asm("NOP");
					}
					if((GPIO_PDIR_REG(p) & (1<<KBPin[i])) != 0)
					{
						//通过硬件连接表锁定输出值
						if(i < 4 && j < 8)
						{
							tmp = KB_CT[i][j-4];
						}
						else
						{
							tmp = 0;
						}
					}       		
					gpio_set(KBPort,KBPin[j],0);
				}
			}
		}
		for(m=0;m<=21000;m++);
		return (tmp);    
}
