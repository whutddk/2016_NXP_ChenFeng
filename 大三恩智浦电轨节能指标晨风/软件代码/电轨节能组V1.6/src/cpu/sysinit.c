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
  
  #if defined(NO_PLL_INIT)
    core_clk_mhz = 20;                      //������岻��ʼ�����໷������� FEI mode
#else
    /* ��ǿϵͳƵ��   �������������ó�Ƶ  */
    core_clk_mhz = pll_init(MCG_CLK_MHZ);
#endif
    
    //ͨ��pll_init�����ķ���ֵ�������ں�ʱ�Ӻ�����ʱ�ӣ��������������ɲ�ѯʱ��Ƶ��
    core_clk_khz = core_clk_mhz * 1000;
    bus_clk_khz = core_clk_khz / (((SIM_CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> 16) +1);

   
 //   uart_init(LANDZO_PORT, LANDZO_BAUD);    //��ʼ�� printf �������õ��Ĵ���

 
}





