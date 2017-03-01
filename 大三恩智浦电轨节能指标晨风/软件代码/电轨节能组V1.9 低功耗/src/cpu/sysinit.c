#include "sysinit.h"
#include "uart.h"

//===========================================================================
//�������ƣ�sys_init
//�������أ���
//����˵������ 
//���ܸ�Ҫ��(1)KL25��EXTAL(40)��XTAL(41)��50Mhz�ⲿ���񣬲���PLL/FLL���ʱ��Ƶ
//             ��48MHz,�ں�ʱ��48MHz������ʱ��24MHz���ڲ��ο�ʱ��4MHz��
//          (2)������ЩƵ�ʣ�sys_init.h����Ӧ�ĺ곣��������Թ����ʱʹ��
//===========================================================================

u32 core_clk_khz;       //�ں�ʱ��(KHz)
u32 core_clk_mhz;       //�ں�ʱ��(MHz)
u32 bus_clk_khz;        //��Χ����ʱ��

void sys_init(void)  
{
  SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK
    | SIM_SCGC5_PORTB_MASK
      | SIM_SCGC5_PORTC_MASK
        | SIM_SCGC5_PORTD_MASK
          | SIM_SCGC5_PORTE_MASK;
  
  
  MCG_C1 = MCG_C1 | MCG_C1_CLKS(1) ;
  
  while( !( MCG_S & MCG_S_CLKST(1)) );
  /* Wait and check status. */
  while (!( MCG_S & MCG_S_IREFST_MASK));
  MCG_C2 = MCG_C2 & ~MCG_C2_LP_MASK;
  MCG_C6 = MCG_C6 & ~MCG_C6_PLLS_MASK;
  
  MCG_C2 = MCG_C2 | MCG_C2_LP_MASK;
  MCG_C2 |= MCG_C2_IRCS_MASK;
  
#define SIM_SOPT2_PLLFLLSEL(x)                   (((uint32_t)(((uint32_t)(x)) << SIM_SOPT2_PLLFLLSEL_SHIFT)) & SIM_SOPT2_PLLFLLSEL_MASK)
  
  MCG_SC = 0;
  SIM_CLKDIV1 = 0x00030000U;
  SIM_SOPT2 = ((SIM_SOPT2 & ~SIM_SOPT2_PLLFLLSEL_MASK) | SIM_SOPT2_PLLFLLSEL(0U));
  SIM_SOPT1 = ((SIM_SOPT1 & ~SIM_SOPT1_OSC32KSEL_MASK) | SIM_SOPT1_OSC32KSEL(3U));
  
  
  core_clk_mhz = 4;
  core_clk_khz = core_clk_mhz * 1000;
  bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> 16) +1);

}





