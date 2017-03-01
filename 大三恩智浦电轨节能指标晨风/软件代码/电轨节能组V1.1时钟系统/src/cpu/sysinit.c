#include "sysinit.h"
#include "uart.h"

//===========================================================================
//函数名称：sys_init
//函数返回：无
//参数说明：无 
//功能概要：(1)KL25的EXTAL(40)、XTAL(41)接50Mhz外部晶振，产生PLL/FLL输出时钟频
//             率48MHz,内核时钟48MHz，总线时钟24MHz，内部参考时钟4MHz。
//          (2)对于这些频率，sys_init.h有相应的宏常量定义可以供编程时使用
//===========================================================================

u32 core_clk_khz;       //内核时钟(KHz)
u32 core_clk_mhz;       //内核时钟(MHz)
u32 bus_clk_khz;        //外围总线时钟

void sys_init(void)  
{
  uint8 c4;
  
  SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK
			  | SIM_SCGC5_PORTB_MASK
			  | SIM_SCGC5_PORTC_MASK
			  | SIM_SCGC5_PORTD_MASK
			  | SIM_SCGC5_PORTE_MASK;
  
  #if defined(NO_PLL_INIT)
    core_clk_mhz = 20;                      //如果定义不初始化锁相环，则进入 FEI mode
#else
    /* 增强系统频率   可以在这里设置超频  */
    core_clk_mhz  = 4;
#endif
    
//    c4 = MCG_C4;
//    MCG_C4 ^= ( 1u << MCG_C4_DRST_DRS_SHIFT);
    
    //FBI
    
    MCG_C1 = MCG_C1 | MCG_C1_CLKS(1) ;
    
    while( !( MCG_S & MCG_S_CLKST(1)) );
    

    
        /* Wait and check status. */
    while (!( MCG_S & MCG_S_IREFST_MASK))
    {
    }
    MCG_C2 = MCG_C2 & ~MCG_C2_LP_MASK;
//    MCG_C4 = c4;
    
    MCG_C6 = MCG_C6 & ~MCG_C6_PLLS_MASK;
    
    
    //BLPI
    
    //    MCG_C1 =  MCG_C1_CLKS(1) | MCG_C1_IREFS_MASK;
    //    MCG_C6 = MCG_C6 & ~MCG_C6_PLLS_MASK;
    MCG_C2 = MCG_C2 | MCG_C2_LP_MASK;
    MCG_C2 |= MCG_C2_IRCS_MASK;
    //通过pll_init函数的返回值来计算内核时钟和外设时钟，便于其他函数可查询时钟频率
    
#define SIM_SOPT2_PLLFLLSEL(x)                   (((uint32_t)(((uint32_t)(x)) << SIM_SOPT2_PLLFLLSEL_SHIFT)) & SIM_SOPT2_PLLFLLSEL_MASK)
    //#define SIM_SOPT1_OSC32KSEL(x)                   (((uint32_t)(((uint32_t)(x)) << SIM_SOPT1_OSC32KSEL_SHIFT)) & SIM_SOPT1_OSC32KSEL_MASK)
    
    MCG_SC = 0;
    SIM_CLKDIV1 = 0x00040000U;
    SIM_SOPT2 = ((SIM_SOPT2 & ~SIM_SOPT2_PLLFLLSEL_MASK) | SIM_SOPT2_PLLFLLSEL(0U));
    SIM_SOPT1 = ((SIM_SOPT1 & ~SIM_SOPT1_OSC32KSEL_MASK) | SIM_SOPT1_OSC32KSEL(3U));
    
    
    
    
    
    
    
    
    core_clk_khz = core_clk_mhz * 1000;
    bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> 16) +1);
    
    
    //   uart_init(LANDZO_PORT, LANDZO_BAUD);    //初始化 printf 函数所用到的串口
    
    
}





