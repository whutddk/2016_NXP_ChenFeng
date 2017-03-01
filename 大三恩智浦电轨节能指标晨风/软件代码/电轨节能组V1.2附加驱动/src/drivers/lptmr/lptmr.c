/******************** (C) COPYRIGHT 2011 蓝宙电子工作室 ********************
* 文件名       ： lptmr.c
* 描述         ：工程模版实验
*
* 实验平台     ：landzo电子开发版
* 库版本       ：
* 嵌入系统     ：
*
* 作者         ：landzo 蓝电子
* 淘宝店       ：http://landzo.taobao.com/

**********************************************************************************/
#include "lptmr.h"


/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：lptmr_internal_ref_init
*  功能说明：内部参考时钟初始化 采用快速内部参考时钟，1s中断一次
*  参数说明：无
*  函数返回：无
*  修改时间：2014-9-18
*  备    注：
*************************************************************************/
void lptmr_internal_ref_init()
{
	uint32_t compare_value=1953;
	MCG_C1|=MCG_C1_IRCLKEN_MASK;      //使能内部参考时钟
	MCG_C2|=MCG_C2_IRCS_MASK;		  //MCG_C[IRCS]=1,使能快速内部参考时钟（4MHz）
	MCG_SC |= MCG_SC_FCRDIV(0x00) ;
	MCG_C1|=MCG_C1_IREFSTEN_MASK;     //停止模式的时候内部时钟保持使能
	SIM_SCGC5|=SIM_SCGC5_LPTMR_MASK;  //使能LPT模块时钟

	LPTMR0_PSR=LPTMR_PSR_PCS(0x00)|LPTMR_PSR_PRESCALE(0x09);//使用内部时钟，1024预分频
	LPTMR0_CMR=LPTMR_CMR_COMPARE(compare_value);            //设置比较寄存器值
	LPTMR0_CSR&=(~LPTMR_CSR_TEN_MASK);
	LPTMR0_CSR&=(~LPTMR_CSR_TFC_MASK);
	LPTMR0_CSR&=(~LPTMR_CSR_TMS_MASK);
	LPTMR0_CSR|=LPTMR_CSR_TEN_MASK;   //开启LPT模块设置
	LPTMR0_CSR|=LPTMR_CSR_TIE_MASK; //开启LPT定时器中断
}

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：lptmr_count_init
*  功能说明：LPTMR脉冲计数初始化
*  参数说明：LPT0_ALTn   LPTMR脉冲计数管脚
*            count       LPTMR脉冲比较值
*            LPT_CFG     LPTMR脉冲计数方式：上升沿计数或下降沿计数
*  函数返回：无
*  修改时间：2014-9-18
*  备    注： 
*  Sample usage:       lptmr_pulse_init(LPT0_ALT1,0xFFFF,LPT_Rising);     
* // LPTMR 脉冲捕捉，捕捉0xFFFF后触发中断请求（需要开中断才执行中断复位函数），上升沿捕捉 
*************************************************************************/
void lptmr_count_init(LPT0_ALTn altn, uint16_t count, LPT_CFG cfg)
{

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;                        //使能LPT模块时钟

    //设置输入管脚
    if(altn == LPT0_ALT1)
    {
        port_init(PTA19, ALT6 );            //在PTA19上使用 ALT6
    }
    else if(altn == LPT0_ALT2)
    {
        port_init(PTC5, ALT3 );             //在PTC5上使用 ALT3
    }
    else                                    //不可能发生事件
    {
        ASSERT((altn == LPT0_ALT1 ) || (altn == LPT0_ALT2 ));   //设置管脚有误？
    }

    // 清状态寄存器
    LPTMR0_CSR = 0x00 ;                                          //先关了LPT，这样才能设置时钟分频,清空计数值等
    LPTMR0_PSR = 0x00 ;
    LPTMR0_CSR = 0x00 ;
    LPTMR0_CMR = 0X00 ; 
   
    // 设置累加计数值
    LPTMR0_CMR  =   LPTMR_CMR_COMPARE(count);                   //设置比较值

    LPTMR0_PSR  =   (0
                     |LPTMR_PSR_PCS(0x00)
                     |LPTMR_PSR_PBYP_MASK
                     |LPTMR_PSR_PRESCALE(0x01)); 
    // 管脚设置、使能中断
    
    LPTMR0_CSR  =  (0
                    | LPTMR_CSR_TPS(altn)       // 选择输入管脚 选择
                    | LPTMR_CSR_TMS_MASK        // 选择脉冲计数 (注释了表示时间计数模式)
                    | ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //脉冲计数器触发方式选择：0为高电平有效，上升沿加1
                  //  | LPTMR_CSR_TEN_MASK        //使能LPT(注释了表示禁用)
                    | LPTMR_CSR_TIE_MASK        //中断使能
                    //| LPTMR_CSR_TFC_MASK      //0:计数值等于比较值就复位；1：溢出复位（注释表示0）
                   );

    LPTMR0_CSR  |= LPTMR_CSR_TEN_MASK ; 
   // LPTMR0_CNR = 0X03 ; 
}

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：lptmr_pulse_get
*  功能说明：获取LPTMR脉冲计数值
*  参数说明：无
*  函数返回：无
*  修改时间：2014-9-18
*  备    注：  读取LPTMR0_CNR数据，必须先写入，才可读读取
*  Sample usage:       uint16_t data = lptmr_pulse_get();  //获取脉冲计数值
*************************************************************************/
uint16_t lptmr_pulse_get(void)
{
    uint16_t  LPTCOUNT = 0  ;
    LPTMR0_CNR = 12 ;
    LPTCOUNT = LPTMR0_CNR ;
    lptmr_pulse_clean();
    return (uint16)LPTCOUNT;
}


/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：lptmr_pulse_clean
*  功能说明：清空LPTMR脉冲计数
*  参数说明：无
*  函数返回：无
*  修改时间：2014-9-18
*  备    注：  
*************************************************************************/
void lptmr_pulse_clean(void)
{
    LPTMR0_CSR  &= ~LPTMR_CSR_TEN_MASK;     //禁用LPT的时候就会自动清计数器的值
    LPTMR0_CSR  |= LPTMR_CSR_TEN_MASK;
}

/*************************************************************************
*                             蓝宙电子工作室
*
*  函数名称：lptmr_delay_ms
*  功能说明：LPTMR延时函数（ms）
*  参数说明：ms          LPTMR延时时间(0~65535)
*  函数返回：无
*  修改时间：2014-9-18
*  备    注：  
*  Sample usage:       lptmr_delay_ms(32);     // LPTMR 延时32ms
*************************************************************************/
void lptmr_delay_ms(uint16_t ms)
{
    if(ms == 0)
    {
        return;
    }

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;    //使能LPT模块时钟

    LPTMR0_CSR = 0x00;                      //先关了LPT，自动清计数器的值

    LPTMR0_CMR = ms;                        //设置比较值，即延时时间

    //选择时钟源
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(1)                  //选择时钟源： 0 为 MCGIRCLK ，1为 LPO（1KHz） ，2为 ERCLK32K ，3为 OSCERCLK
                      | LPTMR_PSR_PBYP_MASK               //旁路 预分频/干扰滤波器 ,即不用 预分频/干扰滤波器(注释了表示使用预分频/干扰滤波器)
                      //| LPTMR_PSR_PRESCALE(1)           //预分频值 = 2^(n+1) ,n = 0~ 0xF
                    );

    //使能 LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // 选择输入管脚 选择
                    //| LPTMR_CSR_TMS_MASK      // 选择脉冲计数 (注释了表示时间计数模式)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //脉冲计数器触发方式选择：0为高电平有效，上升沿加1
                    | LPTMR_CSR_TEN_MASK        //使能LPT(注释了表示禁用)
                    //| LPTMR_CSR_TIE_MASK      //中断使能
                    //| LPTMR_CSR_TFC_MASK      //0:计数值等于比较值就复位；1：溢出复位（注释表示0）
                   );

    while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)); //等待比较值与计数值相等，即时间到了

    LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;          //清除比较标志位

    return;
}

/*!
 *  @brief      LPTMR定时函数（ms）
 *  @param      ms          LPTMR定时时间(0~65535)
 *  @since      v5.0
 *  Sample usage:
                    lptmr_timing_ms(32);                                // LPTMR 定时 32ms
                    set_vector_handler(LPTimer_VECTORn,lptmr_hander);   // 设置中断复位函数到中断向量表里
                    enable_irq(LPTimer_IRQn);                           // 使能LPTMR中断
 */
void lptmr_timing_ms(uint16_t ms)
{
    if(ms == 0)
    {
        return;
    }

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;    //使能LPT模块时钟

    LPTMR0_CSR = 0x00;                      //先关了LPT，自动清计数器的值

    LPTMR0_CMR = ms;                        //设置比较值，即延时时间

    //选择时钟源
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(1)                  //选择时钟源： 0 为 MCGIRCLK ，1为 LPO（1KHz） ，2为 ERCLK32K ，3为 OSCERCLK
                      | LPTMR_PSR_PBYP_MASK               //旁路 预分频/干扰滤波器 ,即不用 预分频/干扰滤波器(注释了表示使用预分频/干扰滤波器)
                      //| LPTMR_PSR_PRESCALE(1)           //预分频值 = 2^(n+1) ,n = 0~ 0xF
                    );

    //使能 LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // 选择输入管脚 选择
                    //| LPTMR_CSR_TMS_MASK      // 选择脉冲计数 (注释了表示时间计数模式)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //脉冲计数器触发方式选择：0为高电平有效，上升沿加1
                    | LPTMR_CSR_TEN_MASK        //使能LPT(注释了表示禁用)
                    | LPTMR_CSR_TIE_MASK        //中断使能
                    //| LPTMR_CSR_TFC_MASK      //0:计数值等于比较值就复位；1：溢出复位（注释表示0）
                   );

    return;
}

/*!
 *  @brief      LPTMR延时函数（us）
 *  @param      ms          LPTMR延时时间(0~41942)
 *  @since      v5.0
 *  Sample usage:       lptmr_delay_us(32);     // LPTMR 延时32us
 */
void lptmr_delay_us(uint16_t us)
{
    ASSERT( ( (us * EXTAL_IN_MHz + 16) /  32 )  <= 0xFFFF );    //断言，确保寄存器不溢出
    //us * 晶振频率  /32 <= 0xFFFF
    //除以 32 ，是下面的计数进行了 分频
    //加上 16是为了 四舍五入

    if(us == 0)
    {
        return;
    }
#if defined(MK60DZ10)
    OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //使能 OSCERCLK
#elif (defined(MK60F15) || defined(MCU_MKL25Z4))
    OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //使能 OSCERCLK
#endif

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;                        //使能LPT模块时钟

    LPTMR0_CSR = 0x00;                                          //先关了LPT，自动清计数器的值

    LPTMR0_CMR = (us * EXTAL_IN_MHz + 16) / 32;                 //设置比较值，即延时时间

    //选择时钟源
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(3)          //选择时钟源： 0 为 MCGIRCLK ，1为 LPO（1KHz） ，2为 ERCLK32K ，3为 OSCERCLK
                      //| LPTMR_PSR_PBYP_MASK     //旁路 预分频/干扰滤波器 ,即不用 预分频/干扰滤波器(注释了表示使用预分频/干扰滤波器)
                      | LPTMR_PSR_PRESCALE(4)     //预分频值 = 2^(n+1) ,n = 0~ 0xF
                    );

    //使能 LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // 选择输入管脚 选择
                    //| LPTMR_CSR_TMS_MASK      // 选择脉冲计数 (注释了表示时间计数模式)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //脉冲计数器触发方式选择：0为高电平有效，上升沿加1
                    | LPTMR_CSR_TEN_MASK        //使能LPT(注释了表示禁用)
                    //| LPTMR_CSR_TIE_MASK      //中断使能
                    //| LPTMR_CSR_TFC_MASK      //0:计数值等于比较值就复位；1：溢出复位（注释表示0）
                   );

    while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)); //等待比较值与计数值相等，即时间到了

    LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;          //清除比较标志位

    return;
}



/*!
 *  @brief      LPTMR定时函数（us）
 *  @param      ms          LPTMR定时时间(0~41942)
 *  @since      v5.0
 *  Sample usage:
                    lptmr_timing_us(32);     // LPTMR 定时32us
                    set_vector_handler(LPTimer_VECTORn,lptmr_hander);   // 设置中断复位函数到中断向量表里
                    enable_irq(LPTimer_IRQn);                           // 使能LPTMR中断
 */
void lptmr_timing_us(uint16_t us)
{
    ASSERT( ( (us * EXTAL_IN_MHz + 16) /  32 )  <= 0xFFFF );    //断言，确保寄存器不溢出
    //us * 晶振频率  /32 <= 0xFFFF
    //除以 32 ，是下面的计数进行了 分频
    //加上 16是为了 四舍五入

    if(us == 0)
    {
        return;
    }

#if defined(MK60DZ10)
    OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //使能 OSCERCLK
#elif (defined(MK60F15) || defined(MCU_MKL25Z4))
    OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //使能 OSCERCLK
#endif

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;                        //使能LPT模块时钟

    LPTMR0_CSR = 0x00;                                          //先关了LPT，自动清计数器的值

    LPTMR0_CMR = (us * EXTAL_IN_MHz + 16) / 32;                 //设置比较值，即延时时间

    //选择时钟源
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(3)          //选择时钟源： 0 为 MCGIRCLK ，1为 LPO（1KHz） ，2为 ERCLK32K ，3为 OSCERCLK
                      //| LPTMR_PSR_PBYP_MASK     //旁路 预分频/干扰滤波器 ,即不用 预分频/干扰滤波器(注释了表示使用预分频/干扰滤波器)
                      | LPTMR_PSR_PRESCALE(4)     //预分频值 = 2^(n+1) ,n = 0~ 0xF
                    );

    //使能 LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // 选择输入管脚 选择
                    //| LPTMR_CSR_TMS_MASK      // 选择脉冲计数 (注释了表示时间计数模式)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //脉冲计数器触发方式选择：0为高电平有效，上升沿加1
                    | LPTMR_CSR_TEN_MASK        //使能LPT(注释了表示禁用)
                    | LPTMR_CSR_TIE_MASK      //中断使能
                    //| LPTMR_CSR_TFC_MASK      //0:计数值等于比较值就复位；1：溢出复位（注释表示0）
                   );

    return;
}



/*!
 *  @brief      LPTMR计时函数（ms,计时时间最大为65534ms）
 *  @since      v5.0
 *  Sample usage:
                    void my_delay(uint32_t time)
                    {
                        volatile uint32_t i = time;
                        while(i--);

                    }


                    lptmr_time_start_ms();

                    my_delay(600000);
                    i = lptmr_time_get_ms();
                    if(i == ~0)
                    {
                        printf("\n计时时间超时");
                    }
                    else
                    {
                        printf("\n计时时间为：%dms",i);
                    }
 */
void lptmr_time_start_ms(void)
{
    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;    //使能LPT模块时钟

    LPTMR0_CSR = 0x00;                      //先关了LPT，自动清计数器的值

    LPTMR0_CMR =  ~0;                        //设置比较值，即延时时间

    //选择时钟源
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(1)                  //选择时钟源： 0 为 MCGIRCLK ，1为 LPO（1KHz） ，2为 ERCLK32K ，3为 OSCERCLK
                      | LPTMR_PSR_PBYP_MASK               //旁路 预分频/干扰滤波器 ,即不用 预分频/干扰滤波器(注释了表示使用预分频/干扰滤波器)
                      //| LPTMR_PSR_PRESCALE(1)           //预分频值 = 2^(n+1) ,n = 0~ 0xF
                    );

    //使能 LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // 选择输入管脚 选择
                    //| LPTMR_CSR_TMS_MASK      // 选择脉冲计数 (注释了表示时间计数模式)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //脉冲计数器触发方式选择：0为高电平有效，上升沿加1
                    | LPTMR_CSR_TEN_MASK        //使能LPT(注释了表示禁用)
                    //| LPTMR_CSR_TIE_MASK      //中断使能
                    //| LPTMR_CSR_TFC_MASK      //0:计数值等于比较值就复位；1：溢出复位（注释表示0）
                   );
    return;
}




/*!
 *  @brief      获取LPTMR计时时间（ms）
*   @return     计时时间（返回值为 ~0 表示计时超时，其他值在 0~ 65534ms 区间内 ）
 *  @since      v5.0
 *  Sample usage:   参考 lptmr_time_start_ms 的调用例子
 */
uint32_t lptmr_time_get_ms(void)
{
    uint32_t data=0;

    if(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)     //已经溢出了
    {

        data |= ~0;                          //返回 0xffffffff 表示错误
    }
    else
    {
#if (defined(MK60F15) || defined(MCU_MKL25Z4))
        LPTMR0_CNR = 0;
#endif
        data = LPTMR0_CNR;                  //返回计时时间(此值最大为 0xffff)
    }

    return data;
}

/*!
 *  @brief      关闭 LPTMR计时
 *  @since      v5.0
 */
void lptmr_time_close()
{
    LPTMR0_CSR = 0x00;                                          //先关了LPT，自动清计数器的值，清空溢出标记
}

void lptmr_time_start_us(void)
{

#if defined(MK60DZ10)
    OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //使能 OSCERCLK
#elif (defined(MK60F15) || defined(MCU_MKL25Z4))
    OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //使能 OSCERCLK
#endif

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;                        //使能LPT模块时钟

    LPTMR0_CSR = 0x00;                                          //先关了LPT，自动清计数器的值

    LPTMR0_CMR |= ~0;                                            //设置比较值为最大值

    //选择时钟源
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(3)          //选择时钟源： 0 为 MCGIRCLK ，1为 LPO（1KHz） ，2为 ERCLK32K ，3为 OSCERCLK
                      //| LPTMR_PSR_PBYP_MASK     //旁路 预分频/干扰滤波器 ,即不用 预分频/干扰滤波器(注释了表示使用预分频/干扰滤波器)
                      | LPTMR_PSR_PRESCALE(4)     //预分频值 = 2^(n+1) ,n = 0~ 0xF
                    );

    //使能 LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // 选择输入管脚 选择
                    //| LPTMR_CSR_TMS_MASK      // 选择脉冲计数 (注释了表示时间计数模式)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //脉冲计数器触发方式选择：0为高电平有效，上升沿加1
                    | LPTMR_CSR_TEN_MASK        //使能LPT(注释了表示禁用)
                    //| LPTMR_CSR_TIE_MASK      //中断使能
                    //| LPTMR_CSR_TFC_MASK      //0:计数值等于比较值就复位；1：溢出复位（注释表示0）
                   );

    return;
}

/*!
 *  @brief      获取LPTMR计时时间（us）
*   @return     计时时间（返回值为 ~0 表示计时超时，其他值在 0~ 41942us 区间内 ）
 *  @since      v5.0
 *  Sample usage:   参考 lptmr_time_start_us 的调用例子
 */
uint32_t lptmr_time_get_us(void)
{
    uint32_t data=0;

    if(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)     //已经溢出了
    {

        data |= ~0;                          //返回 0xffffffff 表示错误
    }
    else
    {
#if (defined(MK60F15) || defined(MCU_MKL25Z4))
        LPTMR0_CNR = 0;
#endif
        data = (LPTMR0_CNR * 32) / EXTAL_IN_MHz; //进行单位换算
    }

    return data;
}



//============================================================================
//函数名称：enable_lptmr_int
//函数返回：无
//参数说明：无
//功能概要：开启LPT定时器中断
//============================================================================
void enable_lptmr_int()
{
	//LPTMR0_CSR|=LPTMR_CSR_TIE_MASK; //开启LPT定时器中断
	enable_irq(LPTMRLPTMR_irq);	    //开引脚的IRQ中断
}

//============================================================================
//函数名称：disable_lptmr_int
//函数返回：无
//参数说明：无
//功能概要：关闭LPT定时器中断
//============================================================================
void disable_lptmr_int()
{
	//LPTMR0_CSR &=~LPTMR_CSR_TIE_MASK;   //禁止LPT定时器中断
	disable_irq(LPTMRLPTMR_irq);	    //关引脚的IRQ中断
}


