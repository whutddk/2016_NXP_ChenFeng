/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
 * �ļ���       ��arm_cm4.h
 * ����         ������ģ��ʵ��
 *
 * ʵ��ƽ̨     ��landzo���ӿ�����
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��landzo ������
 * �Ա���       ��http://landzo.taobao.com/

**********************************************************************************/

#ifndef _COMMON_H_    //��ֹ�ظ����壨Common_H  ��ͷ)
#define _COMMON_H_

//1��оƬ�Ĵ���ӳ���ļ����������ں������ļ�
#include "MKL25Z4.h"      // ����оƬͷ�ļ�

//2�����忪�����ж�



#define ARM_INTERRUPT_LEVEL_BITS   2       //MQX����ϵͳʹ��

//3��λ�����꺯������λ����λ����üĴ���һλ��״̬��
#define BSET(bit,Register)  ((Register)|= (1<<(bit)))    //�üĴ�����һλ
#define BCLR(bit,Register)  ((Register) &= ~(1<<(bit)))  //��Ĵ�����һλ
#define BGET(bit,Register)  (((Register) >> (bit)) & 1)  //��üĴ���һλ��״̬

//4���ض�������������ͣ����ͱ����궨�壩
typedef unsigned char        uint_8;   // �޷���8λ�����ֽ�
typedef unsigned short int   uint_16;  // �޷���16λ������
typedef unsigned long int    uint_32;  // �޷���32λ��������
typedef char                 int_8;    // �з���8λ��
typedef short int            int_16;   // �з���16λ��
typedef int                  int_32;   // �з���32λ��
//���Ż�����
typedef volatile uint_8      vuint_8;  // ���Ż��޷���8λ�����ֽ�
typedef volatile uint_16     vuint_16; // ���Ż��޷���16λ������
typedef volatile uint_32     vuint_32; // ���Ż��޷���32λ��������
typedef volatile int_8       vint_8;   // ���Ż��з���8λ��
typedef volatile int_16      vint_16;  // ���Ż��з���16λ��
typedef volatile int_32      vint_32;  // ���Ż��з���32λ��

typedef	union
{
	uint_32	DW;
	uint_16	W[2];
	uint_8	B[4];
	struct
	{
		uint_32 b0:1; uint_32 b1:1; uint_32 b2:1; uint_32 b3:1; uint_32 b4:1; uint_32 b5:1; uint_32 b6:1; uint_32 b7:1; 
		uint_32 b8:1; uint_32 b9:1; uint_32 b10:1;uint_32 b11:1;uint_32 b12:1;uint_32 b13:1;uint_32 b14:1;uint_32 b15:1;
		uint_32 b16:1;uint_32 b17:1;uint_32 b18:1;uint_32 b19:1;uint_32 b20:1;uint_32 b21:1;uint_32 b22:1;uint_32 b23:1;
		uint_32 b24:1;uint_32 b25:1;uint_32 b26:1;uint_32 b27:1;uint_32 b28:1;uint_32 b29:1;uint_32 b30:1;uint_32 b31:1;
	};
}Dtype;		//sizeof(Dtype)	Ϊ 4 
/*
 * �жϺ���������
 */
typedef enum
{
   NMI_IRQn                      = -14,                 /**< Non-maskable interrupt */
   Hard_Fault_IRQn               = -13,                 /**< Hard fault exception */
   Reserved4_IRQn                = -12,                 /**< Reserved interrupt 4 */
   Reserved5_IRQn                = -11,                 /**< Reserved interrupt 5 */
   Reserved6_IRQn                = -10,                 /**< Reserved interrupt 6 */
   Reserved7_IRQn                = -9,                  /**< Reserved interrupt 7 */
   Reserved8_IRQn                = -8,                  /**< Reserved interrupt 8 */
   Reserved9_IRQn                = -7,                  /**< Reserved interrupt 9 */
   Reserved10_IRQn               = -6,                  /**< Reserved interrupt 10 */
   SVCall_IRQn                   = -5,                  /**< A supervisor call exception */
   Reserved12_IRQn               = -4,                  /**< Reserved interrupt 12 */
   Reserved13_IRQn               = -3,                  /**< Reserved interrupt 13 */
   PendableSrvReq_IRQn           = -2,                  /**< PendSV exception - request for system level service */
   SysTick_IRQn                  = -1,                  /**< SysTick interrupt */

   DMA0_IRQn                     =  0,                  /**< DMA channel 0 transfer complete/error interrupt */
   DMA1_IRQn                     =  1,                  /**< DMA channel 1 transfer complete/error interrupt */
   DMA2_IRQn                     =  2,                  /**< DMA channel 2 transfer complete/error interrupt */
   DMA3_IRQn                     =  3,                  /**< DMA channel 3 transfer complete/error interrupt */
   Reserved20_IRQn               =  4,                  /**< Reserved interrupt 20 */
   FTFA_IRQn                     =  5,                  /**< FTFA command complete/read collision interrupt */
   LVD_LVW_IRQn                  =  6,                  /**< Low Voltage Detect, Low Voltage Warning */
   LLW_IRQn                      =  7,                  /**< Low Leakage Wakeup */
   I2C0_IRQn                     =  8,                  /**< I2C0 interrupt */
   I2C1_IRQn                     =  9,                  /**< I2C0 interrupt 25 */
   SPI0_IRQn                     = 10,                  /**< SPI0 interrupt */
   SPI1_IRQn                     = 11,                  /**< SPI1 interrupt */
   UART0_IRQn                    = 12,                  /**< UART0 status/error interrupt */
   UART1_IRQn                    = 13,                  /**< UART1 status/error interrupt */
   UART2_IRQn                    = 14,                  /**< UART2 status/error interrupt */
   ADC0_IRQn                     = 15,                  /**< ADC0 interrupt */
   CMP0_IRQn                     = 16,                  /**< CMP0 interrupt */
   TPM0_IRQn                     = 17,                  /**< TPM0 fault, overflow and channels interrupt */
   TPM1_IRQn                     = 18,                  /**< TPM1 fault, overflow and channels interrupt */
   TPM2_IRQn                     = 19,                  /**< TPM2 fault, overflow and channels interrupt */
   RTC_IRQn                      = 20,                  /**< RTC interrupt */
   RTC_Seconds_IRQn              = 21,                  /**< RTC seconds interrupt */
   PIT_IRQn                      = 22,                  /**< PIT timer interrupt */
   I2S0_IRQn                     = 23,                  /**< I2S0 transmit interrupt */
   USB0_IRQn                     = 24,                  /**< USB0 interrupt */
   DAC0_IRQn                     = 25,                  /**< DAC0 interrupt */
   TSI0_IRQn                     = 26,                  /**< TSI0 interrupt */
   MCG_IRQn                      = 27,                  /**< MCG interrupt */
   LPTMR_IRQn                    = 28,                  /**< LPTimer interrupt */
   Reserved45_IRQn               = 29,                  /**< Reserved interrupt 45 */
   PORTA_IRQn                    = 30,                  /**< Port A interrupt */
   PORTC_PORTD_IRQn              = 31                   /**< Port C and port D interrupt */
} IRQn_t, IRQn_Type;
/*
 * �������е�RAM�ĺ���
 */
#if defined(__ICCARM__)
	#define 	__RAMFUN	__ramfunc	//IAR �� __ramfunc ������
#else
	#define 	__RAMFUN
#endif


//ι��
#define WDI_FEED() {SIM_SRVCOP = 0x55;	SIM_SRVCOP = 0xAA;}



// 7���������ͷ�ļ�
#include "assert.h"
#include "io.h"
#include "memtest.h"
#include "queue.h"
#include "stdlib.h"
#include "uif.h"
#include "typedef.h"
//#include "tower.h"
#include "freedom.h"
#include "arm_cm0.h"
//#include "sysinit.h"
#include "vectors.h"
#include "startup.h"

#include  "sysinit.h"           //ϵͳ����
#include "mcg.h"
#include "gpio_cfg.h"
#include "port.h"
#include "fire_drivers_cfg.h"   //�ܽŸ�������
#endif //��ֹ�ظ����壨Common_H  ��β)
