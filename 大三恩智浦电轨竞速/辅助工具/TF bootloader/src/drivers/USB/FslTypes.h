/*
 * 文件名: FslTypes.h
 * 最后修改日期: 20121204
 *
 *
 * 说明:本页代码基于Freescale官方示例代码修改，源代码文件为 FslTypes.h
 *    本文件未经修改
 */

#ifndef __FSLTYPES_H_
#define __FSLTYPES_H_


/* Typedefs */
typedef unsigned char     UINT8;  		/*unsigned 8 bit definition */
typedef unsigned short    UINT16; 		/*unsigned 16 bit definition*/
typedef unsigned long     UINT32; 		/*unsigned 32 bit definition*/
typedef signed char       INT8;   		/*signed 8 bit definition */
typedef short             INT16;  		/*signed 16 bit definition*/
typedef long int    	  INT32;  		/*signed 32 bit definition*/



typedef volatile unsigned long vUINT32; /* volatile unsigned 32 bit definition*/

/* TypeDefs */
typedef union
{
	UINT8  bytes[4];
	UINT32 lword;		
}T32_8;

typedef union
{
	UINT8  u8[2];
	UINT16 u16;		
}T16_8;

#define FLAG_SET(BitNumber, Register)        (Register |=(1<<BitNumber))
#define FLAG_CLR(BitNumber, Register)        (Register &=~(1<<BitNumber))
#define FLAG_CHK(BitNumber, Register)        (Register & (1<<BitNumber))

#define _OUT    1
#define _IN     0
#define _ON      0
#define _OFF     1
#define _HIGH    1
#define _LOW     0


#define DCD_Flag    0
#define VBUS_Flag   1
#define DEBUG_Flag  2

#define _BGND   asm(HALT)
#define _NOP    asm(NOP)


#define DEBUG_PORT  GPIOB_PDOR


#endif /* __Definitions__ */