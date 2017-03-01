/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
 * 文件名       ：isr.h
 * 描述         ：重新宏定义中断号，重映射中断向量表里的中断函数地址，
 *                使其指向我们所定义的中断服务函数。声明中断服务函数
 *                警告：只能在"vectors.c"包含，而且必须在"vectors.h"包含的后面！！！
 *
 * 实验平台     ：
 * 库版本       ：
 * 嵌入系统     ：
 *
 * 作者         ：蓝宙电子工作室
 * 淘宝店       ：http://landzo.taobao.com/
**********************************************************************************/

#ifndef __ISR_H
#define __ISR_H 

#include  "include.h"


#undef  VECTOR_038
#define VECTOR_038    PIT_IRQHandler

#undef  VECTOR_028
#define VECTOR_028    freecars_isr

extern void PIT_IRQHandler(void) ;
extern void freecars_isr(void);

#endif
