/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��common.h
 * ����         ��ͨ������ͷ�ļ����ʺ�ȫ���Ĺ���
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#ifndef _COMMON_H_
#define _COMMON_H_

//Ϊʹ�÷���ģʽ����ӵģ�����ģʽӦ�����δ��ڷ��͡���PLL���໷����
//#define   Simulator
#ifdef    Simulator
#define NO_PLL_INIT   //�������໷
#define NPRINTF       //����printf
#endif

/********************************************************************/

/*
 * Debug prints ON (#define) or OFF (#undef)
 */
#define DEBUG_PRINT


/*****************************������������*****************************/
typedef 	unsigned 	char		u8;	  //�޷�����
typedef 	unsigned 	short int	u16;
typedef 	unsigned 	long  int	u32;
typedef    	__UINT64_T_TYPE__       u64;

typedef 	char					s8;	  //�з�����
typedef 	short int				s16;
typedef 	long  int				s32;
typedef    	__INT64_T_TYPE__     	s64;


#define ERROR       0
#define SUCCESS     1


typedef	union
{
	u32	DW;
	u16	W[2];
	u8	B[4];
	struct
	{
		u32 b0:1; u32 b1:1; u32 b2:1; u32 b3:1; u32 b4:1; u32 b5:1; u32 b6:1; u32 b7:1;
		u32 b8:1; u32 b9:1; u32 b10:1;u32 b11:1;u32 b12:1;u32 b13:1;u32 b14:1;u32 b15:1;
		u32 b16:1;u32 b17:1;u32 b18:1;u32 b19:1;u32 b20:1;u32 b21:1;u32 b22:1;u32 b23:1;
		u32 b24:1;u32 b25:1;u32 b26:1;u32 b27:1;u32 b28:1;u32 b29:1;u32 b30:1;u32 b31:1;
	};
}Dtype;		//sizeof(Dtype)	Ϊ 4

/*
 * �������е�RAM�ĺ���
 */
#if defined(__ICCARM__)
	#define 	__RAMFUN	__ramfunc	//IAR �� __ramfunc ������
#else
	#define 	__RAMFUN
#endif

/*
 * Include the generic CPU header file
 */
//#define ARM_MATH_CM4
#include "arm_math.h"
#include "arm_cm4.h"

/*
 * Include the cpu specific header file
 */
#include "MK60DZ10.h"


/*
 * Include the platform specific header file
 */
#include "k60_fire.h"




/*
 * Include any toolchain specfic header files
 */
#if (defined(CW))
#include "cw.h"
#elif (defined(IAR))
#include "iar.h"
#else
#warning "No toolchain specific header included"
#endif

/*
 * Include common utilities
 */
#include "assert.h"
#include "io.h"
#include "startup.h"
#include "stdlib.h"

#if (defined(IAR))
#include "intrinsics.h"
#endif


#include  "sysinit.h"           //ϵͳ����
#include "mcg.h"
#include "fire_drivers_cfg.h"   //�ܽŸ�������



#include "lptmr.h"
#define DELAY()         time_delay_ms(500)
#define DELAY_MS(ms)    time_delay_ms(ms)

#ifdef 	DEBUG
#define DEBUG_OUT(FORMAT,...)        do{printf("\r\n");printf(FORMAT,##__VA_ARGS__);printf("\r\n");}while(0)	/*�����ӡ������Ϣʱ���뽫������ע�͵�*/
#else
#define DEBUG_OUT(FORMAT,...)
#endif


/**
 *  @brief �¶����Ƹ�ֵ
 */
#define  HEX__(n)   0x##n##UL
#define  B8__(x)   ( (x & 0x0000000FUL) ? 1:0 )\
    +( (x & 0x000000F0UL) ? 2:0 )\
    +( (x & 0x00000F00UL) ? 4:0 )\
    +( (x & 0x0000F000UL) ? 8:0 )\
    +( (x & 0x000F0000UL) ? 16:0 )\
    +( (x & 0x00F00000UL) ? 32:0 )\
    +( (x & 0x0F000000UL) ? 64:0 )\
    +( (x & 0xF0000000UL) ? 128:0 )
#define  B8(x)                                     ((unsigned char)B8__(HEX__(x)))
#define  B16(x_msb,x_lsb)                (((unsigned int)B8(x_msb)<<8) + B8(x_lsb))
#define  B32(x_msb,x_2,x_3,x_lsb)   (((unsigned long)B8(x_msb)<<24) + ((unsigned long)B8(x_2)<<16) + ((unsigned long)B8(x_3)<<8) + B8(x_lsb))
/* Sample usage:
B8(01010101) = 85
B16(10101010,01010101) = 43605
B32(10000000,11111111,10101010,01010101) = 2164238933
*/


/********************************************************************/

#endif /* _COMMON_H_ */
