///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:49
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c -D
//        LPLD_K60 -lCN
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -lB
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -o
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\BSP\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\ITAC\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\CTL\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\MAIN\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\SENSOR\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\CPU\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\driver\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\class\" -On -I "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench 7.0\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\HW_MCG.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC LPLD_PLL_Setup
        PUBLIC LPLD_Set_SYS_DIV
        PUBLIC g_bus_clock
        PUBLIC g_core_clock
        PUBLIC g_flash_clock
        PUBLIC g_flexbus_clock

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c
//    1 /**
//    2  * @file HW_MCG.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MCG底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 #include "common.h"
//   23 #include "HW_MCG.h"
//   24 
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 uint32 g_core_clock = -1ul;
g_core_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   27 uint32 g_bus_clock = -1ul;
g_bus_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   28 uint32 g_flash_clock = -1ul;
g_flash_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   29 uint32 g_flexbus_clock = -1ul;
g_flexbus_clock:
        DATA
        DC32 4294967295
//   30 
//   31 /*
//   32  * LPLD_PLL_Setup
//   33  * 初始化内核时钟及其他系统时钟
//   34  * 
//   35  * 参数:
//   36  *    core_clk_mhz--期望内核时钟频率
//   37  *      |__PLLx--参见HAL_MCG.h中的PLL_option定义
//   38  *
//   39  * 输出:
//   40  *    内核频率，单位MHz
//   41  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   42 uint8 LPLD_PLL_Setup(PllOptionEnum_Type core_clk_mhz)
//   43 {
LPLD_PLL_Setup:
        PUSH     {R3-R11,LR}
        MOV      R11,R0
//   44   uint8 pll_freq;
//   45   uint8 prdiv, vdiv;
//   46   uint8 core_div, bus_div, flexbus_div, flash_div;
//   47   
//   48 /*
//   49  *************************************************
//   50   【LPLD注解】MCG关键系数
//   51   prdiv(PLL分频系数): 0~31(1~32)
//   52   vdiv(PLL倍频系数): 0~31(24~55)
//   53   PLL参考时钟范围: 2MHz~4MHz
//   54   PLL参考时钟 = 外部参考时钟(CPU_XTAL_CLK_HZ)/prdiv
//   55   CoreClk = PLL参考时钟 x PLL倍频系数 /OUTDIV1
//   56  *************************************************
//   57  */
//   58   
//   59   // 对于MK60DZ10来说，core_clk_mhz建议不要超过100，这里限制为最高200
//   60   core_clk_mhz = (PllOptionEnum_Type)(core_clk_mhz>200u?200u:core_clk_mhz);
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+201
        BCC.N    ??LPLD_PLL_Setup_0
        MOVS     R11,#+200
        B.N      ??LPLD_PLL_Setup_1
//   61   
//   62   // 根据期望主频选择分频和倍频系数
//   63   switch(core_clk_mhz)
??LPLD_PLL_Setup_0:
??LPLD_PLL_Setup_1:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOV      R0,R11
        CMP      R0,#+48
        BEQ.N    ??LPLD_PLL_Setup_2
        CMP      R0,#+50
        BEQ.N    ??LPLD_PLL_Setup_3
        CMP      R0,#+96
        BEQ.N    ??LPLD_PLL_Setup_4
        CMP      R0,#+100
        BEQ.N    ??LPLD_PLL_Setup_5
        CMP      R0,#+120
        BEQ.N    ??LPLD_PLL_Setup_6
        CMP      R0,#+150
        BEQ.N    ??LPLD_PLL_Setup_7
        CMP      R0,#+180
        BEQ.N    ??LPLD_PLL_Setup_8
        CMP      R0,#+200
        BEQ.N    ??LPLD_PLL_Setup_9
        B.N      ??LPLD_PLL_Setup_10
//   64   {
//   65   case PLL_48:
//   66     prdiv = 24u;
??LPLD_PLL_Setup_2:
        MOVS     R0,#+24
        MOVS     R5,R0
//   67     vdiv = 0u;
        MOVS     R0,#+0
        MOVS     R6,R0
//   68     break;
        B.N      ??LPLD_PLL_Setup_11
//   69   case PLL_50:
//   70     prdiv = 24u;
??LPLD_PLL_Setup_3:
        MOVS     R0,#+24
        MOVS     R5,R0
//   71     vdiv = 1u;
        MOVS     R0,#+1
        MOVS     R6,R0
//   72     break;
        B.N      ??LPLD_PLL_Setup_11
//   73   case PLL_96:
//   74     prdiv = 24u;
??LPLD_PLL_Setup_4:
        MOVS     R0,#+24
        MOVS     R5,R0
//   75     vdiv = 24u;
        MOVS     R0,#+24
        MOVS     R6,R0
//   76     break;
        B.N      ??LPLD_PLL_Setup_11
//   77   case PLL_100:
//   78     prdiv = 24u;
??LPLD_PLL_Setup_5:
        MOVS     R0,#+24
        MOVS     R5,R0
//   79     vdiv = 26u;
        MOVS     R0,#+26
        MOVS     R6,R0
//   80     break;
        B.N      ??LPLD_PLL_Setup_11
//   81   case PLL_120:
//   82     prdiv = 19u;
??LPLD_PLL_Setup_6:
        MOVS     R0,#+19
        MOVS     R5,R0
//   83     vdiv = 24u;
        MOVS     R0,#+24
        MOVS     R6,R0
//   84     break;
        B.N      ??LPLD_PLL_Setup_11
//   85   case PLL_150:
//   86     prdiv = 15u;
??LPLD_PLL_Setup_7:
        MOVS     R0,#+15
        MOVS     R5,R0
//   87     vdiv = 24u;
        MOVS     R0,#+24
        MOVS     R6,R0
//   88     break;
        B.N      ??LPLD_PLL_Setup_11
//   89   case PLL_180:
//   90     prdiv = 14u;
??LPLD_PLL_Setup_8:
        MOVS     R0,#+14
        MOVS     R5,R0
//   91     vdiv = 30u;
        MOVS     R0,#+30
        MOVS     R6,R0
//   92     break;
        B.N      ??LPLD_PLL_Setup_11
//   93   case PLL_200:
//   94     prdiv = 12u;
??LPLD_PLL_Setup_9:
        MOVS     R0,#+12
        MOVS     R5,R0
//   95     vdiv = 28u;
        MOVS     R0,#+28
        MOVS     R6,R0
//   96     break;
        B.N      ??LPLD_PLL_Setup_11
//   97   default:
//   98     return LPLD_PLL_Setup(PLL_96);
??LPLD_PLL_Setup_10:
        MOVS     R0,#+96
        BL       LPLD_PLL_Setup
        B.N      ??LPLD_PLL_Setup_12
//   99   }
//  100   
//  101   pll_freq = core_clk_mhz * 1;
??LPLD_PLL_Setup_11:
        MOV      R4,R11
//  102   core_div = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  103   if((bus_div = (uint8)(core_clk_mhz/BUS_CLK_MHZ - 1u)) == (uint8)-1)
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+50
        UDIV     R0,R11,R0
        SUBS     R0,R0,#+1
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+255
        BNE.N    ??LPLD_PLL_Setup_13
//  104   {
//  105     bus_div = 0;
        MOVS     R0,#+0
        MOV      R8,R0
        B.N      ??LPLD_PLL_Setup_14
//  106   }
//  107   else if(core_clk_mhz/(bus_div+1) > BUS_CLK_MHZ)
??LPLD_PLL_Setup_13:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ADDS     R0,R8,#+1
        SDIV     R0,R11,R0
        CMP      R0,#+51
        BCC.N    ??LPLD_PLL_Setup_14
//  108   {
//  109     bus_div += 1;
        ADDS     R8,R8,#+1
//  110   }
//  111   if((flexbus_div = (core_clk_mhz/FLEXBUS_CLK_MHZ - 1u)) == (uint8)-1)
??LPLD_PLL_Setup_14:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+50
        UDIV     R0,R11,R0
        SUBS     R0,R0,#+1
        MOV      R9,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+255
        BNE.N    ??LPLD_PLL_Setup_15
//  112   {
//  113     flexbus_div = 0;
        MOVS     R0,#+0
        MOV      R9,R0
        B.N      ??LPLD_PLL_Setup_16
//  114   }
//  115   else if(core_clk_mhz/(flexbus_div+1) > FLEXBUS_CLK_MHZ)
??LPLD_PLL_Setup_15:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R0,R9,#+1
        SDIV     R0,R11,R0
        CMP      R0,#+51
        BCC.N    ??LPLD_PLL_Setup_16
//  116   {
//  117     flexbus_div += 1;
        ADDS     R9,R9,#+1
//  118   }
//  119   if((flash_div = (core_clk_mhz/FLASH_CLK_MHZ - 1u)) == (uint8)-1)
??LPLD_PLL_Setup_16:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+25
        UDIV     R0,R11,R0
        SUBS     R0,R0,#+1
        MOV      R10,R0
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+255
        BNE.N    ??LPLD_PLL_Setup_17
//  120   {
//  121     flash_div = 0;
        MOVS     R0,#+0
        MOV      R10,R0
        B.N      ??LPLD_PLL_Setup_18
//  122   }
//  123   else if(core_clk_mhz/(flash_div+1) > FLASH_CLK_MHZ)
??LPLD_PLL_Setup_17:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ADDS     R0,R10,#+1
        SDIV     R0,R11,R0
        CMP      R0,#+26
        BCC.N    ??LPLD_PLL_Setup_18
//  124   {
//  125     flash_div += 1;
        ADDS     R10,R10,#+1
//  126   }
//  127   
//  128   // 这里假设复位后 MCG 模块默认为 FEI 模式
//  129   
//  130   // 首先移动到 FBE 模式
//  131   MCG->C2 = 0;
??LPLD_PLL_Setup_18:
        MOVS     R0,#+0
        LDR.N    R1,??LPLD_PLL_Setup_19  ;; 0x40064001
        STRB     R0,[R1, #+0]
//  132   
//  133   // 振荡器初始化完成后,释放锁存状态下的 oscillator 和 GPIO 
//  134   SIM->SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_19+0x4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??LPLD_PLL_Setup_19+0x4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  135   LLWU->CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_19+0x8  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??LPLD_PLL_Setup_19+0x8  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  136   
//  137   // 选择外部 oscilator 、参考分频器 and 清零 IREFS 启动外部osc
//  138   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  139   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
        MOVS     R0,#+152
        LDR.N    R1,??LPLD_PLL_Setup_19+0xC  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  140   
//  141   while (MCG->S & MCG_S_IREFST_MASK){}; // 等待参考时钟清零
??LPLD_PLL_Setup_20:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??LPLD_PLL_Setup_20
//  142   
//  143   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // 等待时钟状态显示为外部参考时钟(ext ref clk)
??LPLD_PLL_Setup_21:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??LPLD_PLL_Setup_21
//  144   
//  145   // 进入FBE模式
//  146   // 配置 PLL 参考分频器, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  147   // 用晶振频率来选择 PRDIV 值. 仅在有频率晶振的时候支持
//  148   // 产生 2MHz 的参考时钟给 PLL.
//  149   MCG->C5 = MCG_C5_PRDIV(prdiv); // 设置 PLL 匹配晶振的参考分频数 
        ANDS     R0,R5,#0x1F
        LDR.N    R1,??LPLD_PLL_Setup_19+0x14  ;; 0x40064004
        STRB     R0,[R1, #+0]
//  150   
//  151   // 确保MCG_C6处于复位状态,禁止LOLIE、PLL、和时钟控制器,清PLL VCO分频器
//  152   MCG->C6 = 0x0;
        MOVS     R0,#+0
        LDR.N    R1,??LPLD_PLL_Setup_19+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  153   
//  154   //设置系统时钟分频系数
//  155   LPLD_Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOV      R3,R10
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R2,R9
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R1,R8
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        BL       LPLD_Set_SYS_DIV
//  156   
//  157   //设置倍频系数
//  158   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(vdiv); 
        ANDS     R0,R6,#0x1F
        ORRS     R0,R0,#0x40
        LDR.N    R1,??LPLD_PLL_Setup_19+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  159   
//  160   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??LPLD_PLL_Setup_22:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_PLL_Setup_22
//  161   
//  162   while (!(MCG->S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
??LPLD_PLL_Setup_23:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_PLL_Setup_23
//  163   
//  164   // 已经进入PBE模式
//  165   
//  166   // Transition into PEE by setting CLKS to 0
//  167   // CLKS=0, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  168   MCG->C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_19+0xC  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??LPLD_PLL_Setup_19+0xC  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  169   
//  170   // Wait for clock status bits to update
//  171   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??LPLD_PLL_Setup_24:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??LPLD_PLL_Setup_24
//  172   
//  173   // 已经进入PEE模式
//  174   
//  175   return pll_freq;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_PLL_Setup_12:
        POP      {R1,R4-R11,PC}   ;; return
        Nop      
        DATA
??LPLD_PLL_Setup_19:
        DC32     0x40064001
        DC32     0x40048034
        DC32     0x4007c008
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064004
        DC32     0x40064005
//  176 } 
//  177 
//  178 
//  179 /*
//  180  * LPLD_Set_SYS_DIV
//  181  * 设置系统始终分频
//  182  *
//  183  * 说明:
//  184  * 这段代码必须放置在RAM中，目的是防止程序跑飞，详见官方文档errata e2448.
//  185  * 当Flash时钟分频改变的时候，Flash预读取必须禁用.
//  186  * 禁止从Flash中运行以下代码.
//  187  * 在预读取被重新使能之前必须在时钟分频改变后有一段小的延时.
//  188  *
//  189  * 参数:
//  190  *    outdiv1~outdiv4--分别为core, bus, FlexBus, Flash时钟分频系数
//  191  */

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  192 RAMFUNC void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  193 {
LPLD_Set_SYS_DIV:
        PUSH     {R4-R7}
//  194   uint32 temp_reg;
//  195   uint8 i;
//  196   
//  197   temp_reg = FMC->PFAPR; // 备份 FMC_PFAPR 寄存器
        LDR.N    R6,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R6,[R6, #+0]
        MOVS     R4,R6
//  198   
//  199   // 设置 M0PFD 到 M7PFD 为 1 禁用预先读取
//  200   FMC->PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  201              | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  202              | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R6,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0xFF0000
        LDR.N    R7,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        STR      R6,[R7, #+0]
//  203   
//  204   // 设置时钟分频为期望值  
//  205   SIM->CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2) 
//  206               | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R6,R1,#+24
        ANDS     R6,R6,#0xF000000
        ORRS     R6,R6,R0, LSL #+28
        LSLS     R7,R2,#+20
        ANDS     R7,R7,#0xF00000
        ORRS     R6,R7,R6
        LSLS     R7,R3,#+16
        ANDS     R7,R7,#0xF0000
        ORRS     R6,R7,R6
        LDR.N    R7,??LPLD_Set_SYS_DIV_0+0x4  ;; 0x40048044
        STR      R6,[R7, #+0]
//  207 
//  208   // 延时一小段时间等待改变
//  209   for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R6,#+0
        MOVS     R5,R6
??LPLD_Set_SYS_DIV_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R3
        BCS.N    ??LPLD_Set_SYS_DIV_2
        ADDS     R5,R5,#+1
        B.N      ??LPLD_Set_SYS_DIV_1
//  210   {}
//  211   
//  212   FMC->PFAPR = temp_reg; // 回复原先的 FMC_PFAPR 寄存器值
??LPLD_Set_SYS_DIV_2:
        LDR.N    R6,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        STR      R4,[R6, #+0]
//  213   
//  214   return;
        POP      {R4-R7}
        BX       LR               ;; return
        DATA
??LPLD_Set_SYS_DIV_0:
        DC32     0x4001f000
        DC32     0x40048044
//  215 } // set_sys_dividers

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  16 bytes in section .data
// 508 bytes in section .text
//  80 bytes in section .textrw
// 
// 588 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: none
