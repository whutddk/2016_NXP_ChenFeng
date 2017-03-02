///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       31/Dec/2015  15:17:53
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SDHC.c
//    Command line =  
//        G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SDHC.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -lB
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -o
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\sensor\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\HW_SDHC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_core_clock
        EXTERN malloc

        PUBLIC LPLD_SDHC_IOC
        PUBLIC LPLD_SDHC_InitCard
        PUBLIC LPLD_SDHC_ReadBlocks
        PUBLIC LPLD_SDHC_WriteBlocks
        PUBLIC sdcard_ptr

// G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SDHC.c
//    1 /**
//    2  * @file HW_SDHC.c
//    3  * @version 3.01[By LPLD]
//    4  * @date 2013-10-21
//    5  * @brief SDHC底层模块相关函数
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
//   21  *
//   22  * 版权说明:
//   23  *  SDHC模块驱动程序摘取自飞思卡尔MQX底层驱动，部分功能由拉普兰德修改。
//   24  *  HW_SDHC.h及HW_SDHC.c内的代码版权归飞思卡尔公司享有。
//   25  * 
//   26  * 3.01-2013-10-21 修复低容量SD卡无法初始化BUG
//   27  */
//   28 #include "common.h"
//   29 #include "HW_SDHC.h"
//   30 
//   31 //SD卡信息全局变量

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   32 SDCARD_STRUCT_PTR sdcard_ptr;
sdcard_ptr:
        DS8 4
//   33 
//   34 /*
//   35  * LPLD_SDHC_InitGPIO
//   36  * 初始化SDHC模块相关的GPIO引脚,并使能SDHC寄存器时钟
//   37  * 
//   38  * 参数:
//   39  *    init--PCR寄存器掩码
//   40  *
//   41  * 输出:
//   42  *    无
//   43  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 static void LPLD_SDHC_InitGPIO(uint32 init)
//   45 {  
//   46   PORTE->PCR[0] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.D1  */
LPLD_SDHC_InitGPIO:
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8  ;; 0x4004d000
        STR      R1,[R2, #+0]
//   47   PORTE->PCR[1] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.D0  */
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8_1  ;; 0x4004d004
        STR      R1,[R2, #+0]
//   48   PORTE->PCR[2] = init & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          /* SDHC.CLK */
        ANDS     R1,R0,#0x440
        LDR.W    R2,??DataTable8_2  ;; 0x4004d008
        STR      R1,[R2, #+0]
//   49   PORTE->PCR[3] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.CMD */
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8_3  ;; 0x4004d00c
        STR      R1,[R2, #+0]
//   50   PORTE->PCR[4] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.D3  */
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8_4  ;; 0x4004d010
        STR      R1,[R2, #+0]
//   51   PORTE->PCR[5] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.D2  */
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8_5  ;; 0x4004d014
        STR      R1,[R2, #+0]
//   52 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)   
//   53   SIM->SCGC3 |= SIM_SCGC3_SDHC_MASK; 
        LDR.W    R1,??DataTable8_6  ;; 0x40048030
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x20000
        LDR.W    R2,??DataTable8_6  ;; 0x40048030
        STR      R1,[R2, #+0]
//   54 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   55   SIM->SCGC3 |= SIM_SCGC3_ESDHC_MASK;
//   56 #endif
//   57 }
        BX       LR               ;; return
//   58 
//   59 
//   60 /*
//   61  * LPLD_SDHC_SetBaudrate
//   62  * 设置SDHC波特率
//   63  * 
//   64  * 参数:
//   65  *    clock--模块输入时钟，即g_core_clock*1000，单位Hz
//   66  *    baud--SDHC期望时钟频率，单位Hz
//   67  *
//   68  * 输出:
//   69  *    无
//   70  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   71 static void LPLD_SDHC_SetBaudrate(uint32 clock, uint32 baud)
//   72 {
LPLD_SDHC_SetBaudrate:
        PUSH     {R4-R7,LR}
//   73   uint32 pres, div, min, minpres = 0x80, mindiv = 0x0F;
        MOVS     R3,#+128
        MOVS     R4,#+15
//   74   int32  val;
//   75   
//   76   //找到相近的分频因子
//   77   min = (uint32)-1;
        MOVS     R12,#-1
        MOV      R2,R12
//   78   for (pres = 2; pres <= 256; pres <<= 1)
        MOVS     R12,#+2
        MOV      R7,R12
??LPLD_SDHC_SetBaudrate_0:
        CMP      R7,#+256
        BHI.N    ??LPLD_SDHC_SetBaudrate_1
//   79   {
//   80     for (div = 1; div <= 16; div++)
        MOVS     R12,#+1
        MOV      R6,R12
??LPLD_SDHC_SetBaudrate_2:
        CMP      R6,#+17
        BCS.N    ??LPLD_SDHC_SetBaudrate_3
//   81     {
//   82       val = pres * div * baud - clock;
        MUL      R12,R6,R7
        MUL      R12,R1,R12
        SUBS     R12,R12,R0
        MOV      R5,R12
//   83       if (val >= 0)
        CMP      R5,#+0
        BMI.N    ??LPLD_SDHC_SetBaudrate_4
//   84       {
//   85         if (min > val)
        CMP      R5,R2
        BCS.N    ??LPLD_SDHC_SetBaudrate_4
//   86         {
//   87           min = val;
        MOVS     R2,R5
//   88           minpres = pres;
        MOVS     R3,R7
//   89           mindiv = div;
        MOVS     R4,R6
//   90         }
//   91       }
//   92     }
??LPLD_SDHC_SetBaudrate_4:
        ADDS     R6,R6,#+1
        B.N      ??LPLD_SDHC_SetBaudrate_2
//   93   }
??LPLD_SDHC_SetBaudrate_3:
        LSLS     R7,R7,#+1
        B.N      ??LPLD_SDHC_SetBaudrate_0
//   94   
//   95   //禁止SDHC模块时钟
//   96   SDHC->SYSCTL &= (~ SDHC_SYSCTL_SDCLKEN_MASK);
??LPLD_SDHC_SetBaudrate_1:
        LDR.W    R12,??DataTable8_7  ;; 0x400b102c
        LDR      R12,[R12, #+0]
        BICS     R12,R12,#0x8
        LDR.W    LR,??DataTable8_7  ;; 0x400b102c
        STR      R12,[LR, #+0]
//   97   
//   98   //修改分频因子
//   99   div = SDHC->SYSCTL & (~ (SDHC_SYSCTL_DTOCV_MASK | SDHC_SYSCTL_SDCLKFS_MASK | SDHC_SYSCTL_DVS_MASK));
        LDR.W    R12,??DataTable8_7  ;; 0x400b102c
        LDR      R12,[R12, #+0]
        BFC      R12,#+4,#+16
        MOV      R6,R12
//  100   SDHC->SYSCTL = div | (SDHC_SYSCTL_DTOCV(0x0E) | SDHC_SYSCTL_SDCLKFS(minpres >> 1) | SDHC_SYSCTL_DVS(mindiv - 1));
        LSLS     R12,R3,#+7
        ANDS     R12,R12,#0xFF00
        ORRS     R12,R12,R6
        SUBS     LR,R4,#+1
        LSLS     LR,LR,#+4
        ANDS     LR,LR,#0xF0
        ORRS     R12,LR,R12
        ORRS     R12,R12,#0xE0000
        LDR.W    LR,??DataTable8_7  ;; 0x400b102c
        STR      R12,[LR, #+0]
//  101   
//  102   //等在时钟稳定
//  103   while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_SDSTB_MASK))
??LPLD_SDHC_SetBaudrate_5:
        LDR.W    R12,??DataTable8_8  ;; 0x400b1024
        LDR      R12,[R12, #+0]
        LSLS     R12,R12,#+28
        BPL.N    ??LPLD_SDHC_SetBaudrate_5
//  104   {};
//  105   
//  106   //使能SDHC模块时钟
//  107   SDHC->SYSCTL |= SDHC_SYSCTL_SDCLKEN_MASK;
        LDR.W    R12,??DataTable8_7  ;; 0x400b102c
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x8
        LDR.W    LR,??DataTable8_7  ;; 0x400b102c
        STR      R12,[LR, #+0]
//  108   SDHC->IRQSTAT |= SDHC_IRQSTAT_DTOE_MASK;
        LDR.W    R12,??DataTable9  ;; 0x400b1030
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x100000
        LDR.W    LR,??DataTable9  ;; 0x400b1030
        STR      R12,[LR, #+0]
//  109 }
        POP      {R4-R7,PC}       ;; return
//  110 
//  111 /*
//  112  * LPLD_SDHC_IsRunning
//  113  * 获取SDHC模块运行状态
//  114  * 
//  115  * 参数:
//  116  *    无
//  117  *
//  118  * 输出:
//  119  *    TRUE--正在运行
//  120  *    FALSE--停止运行
//  121  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 static boolean LPLD_SDHC_IsRunning(void)
//  123 {
//  124   return (0 != (SDHC->PRSSTAT & (SDHC_PRSSTAT_RTA_MASK | SDHC_PRSSTAT_WTA_MASK | SDHC_PRSSTAT_DLA_MASK | SDHC_PRSSTAT_CDIHB_MASK | SDHC_PRSSTAT_CIHB_MASK)));
LPLD_SDHC_IsRunning:
        LDR.W    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        MOVW     R1,#+775
        TST      R0,R1
        BEQ.N    ??LPLD_SDHC_IsRunning_0
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_IsRunning_1
??LPLD_SDHC_IsRunning_0:
        MOVS     R0,#+0
??LPLD_SDHC_IsRunning_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  125 }
//  126 
//  127 /*
//  128  * LPLD_SDHC_WaitStatus
//  129  * 等待指定状态标志位置位
//  130  * 
//  131  * 参数:
//  132  *    mask--状态标志位掩码
//  133  *
//  134  * 输出:
//  135  *    状态标志
//  136  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  137 static uint32 LPLD_SDHC_WaitStatus(uint32 mask)
//  138 {
LPLD_SDHC_WaitStatus:
        MOVS     R1,R0
//  139   uint32 result;
//  140   do
//  141   {
//  142     result = SDHC->IRQSTAT & mask;
??LPLD_SDHC_WaitStatus_0:
        LDR.W    R2,??DataTable9  ;; 0x400b1030
        LDR      R2,[R2, #+0]
        ANDS     R2,R1,R2
        MOVS     R0,R2
//  143   }
//  144   while (0 == result);
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_WaitStatus_0
//  145   return result;
        BX       LR               ;; return
//  146 }
//  147 
//  148 /*
//  149  * LPLD_SDHC_Init
//  150  * SDHC模块初始化函数
//  151  * 
//  152  * 参数:
//  153  *    coreClk--系統主频，单位Hz
//  154  *    baud--SDHC期望时钟频率，单位Hz
//  155  *
//  156  * 输出:
//  157  *    SDHCSTA_OK--状态正常
//  158  *    SDHCSTA_NOINIT--驱动未初始化
//  159  *    SDHCSTA_NODISK--为插入卡
//  160  *    SDHCSTA_PROTECT--卡写保护
//  161  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 static SDHCRES LPLD_SDHC_Init(uint32 coreClk, uint32 baud)
//  163 {
LPLD_SDHC_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  164   
//  165   sdcard_ptr->CARD = ESDHC_CARD_NONE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  166   
//  167   //禁用GPIO的SDHC复用功能
//  168   LPLD_SDHC_InitGPIO (0);
        MOVS     R0,#+0
        BL       LPLD_SDHC_InitGPIO
//  169   
//  170   //复位SDHC模块
//  171   SDHC->SYSCTL = SDHC_SYSCTL_RSTA_MASK | SDHC_SYSCTL_SDCLKFS(0x80);
        LDR.W    R0,??DataTable8_9  ;; 0x1008000
        LDR.W    R1,??DataTable8_7  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  172   while (SDHC->SYSCTL & SDHC_SYSCTL_RSTA_MASK)
??LPLD_SDHC_Init_0:
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+7
        BMI.N    ??LPLD_SDHC_Init_0
//  173   { };
//  174   
//  175   //初始化寄存器值
//  176   SDHC->VENDOR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_10  ;; 0x400b10c0
        STR      R0,[R1, #+0]
//  177   SDHC->BLKATTR = SDHC_BLKATTR_BLKCNT(1) | SDHC_BLKATTR_BLKSIZE(512);
        MOVS     R0,#+66048
        LDR.W    R1,??DataTable8_11  ;; 0x400b1004
        STR      R0,[R1, #+0]
//  178   SDHC->PROCTL = SDHC_PROCTL_EMODE(ESDHC_PROCTL_EMODE_LITTLE) | SDHC_PROCTL_D3CD_MASK;
        MOVS     R0,#+40
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  179   SDHC->WML = SDHC_WML_RDWML(2) | SDHC_WML_WRWML(1);
        LDR.W    R0,??DataTable8_12  ;; 0x10002
        LDR.W    R1,??DataTable8_13  ;; 0x400b1044
        STR      R0,[R1, #+0]
//  180   
//  181   //设置SDHC初始化时钟，最好不要超过400kHz
//  182   LPLD_SDHC_SetBaudrate (coreClk, baud);
        MOVS     R1,R5
        MOVS     R0,R4
        BL       LPLD_SDHC_SetBaudrate
//  183   
//  184   //等待
//  185   while (SDHC->PRSSTAT & (SDHC_PRSSTAT_CIHB_MASK | SDHC_PRSSTAT_CDIHB_MASK))
??LPLD_SDHC_Init_1:
        LDR.W    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        TST      R0,#0x3
        BNE.N    ??LPLD_SDHC_Init_1
//  186   { };
//  187   
//  188   //使能GPIO的SDHC复用
//  189   LPLD_SDHC_InitGPIO (0xFFFF);
        MOVW     R0,#+65535
        BL       LPLD_SDHC_InitGPIO
//  190   
//  191   //使能各种请求
//  192   SDHC->IRQSTAT = 0xFFFF;
        MOVW     R0,#+65535
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  193   SDHC->IRQSTATEN = SDHC_IRQSTATEN_DEBESEN_MASK | SDHC_IRQSTATEN_DCESEN_MASK | SDHC_IRQSTATEN_DTOESEN_MASK
//  194     | SDHC_IRQSTATEN_CIESEN_MASK | SDHC_IRQSTATEN_CEBESEN_MASK | SDHC_IRQSTATEN_CCESEN_MASK | SDHC_IRQSTATEN_CTOESEN_MASK
//  195       | SDHC_IRQSTATEN_BRRSEN_MASK | SDHC_IRQSTATEN_BWRSEN_MASK | SDHC_IRQSTATEN_CRMSEN_MASK
//  196         | SDHC_IRQSTATEN_TCSEN_MASK | SDHC_IRQSTATEN_CCSEN_MASK;
        LDR.W    R0,??DataTable8_14  ;; 0x7f00b3
        LDR.W    R1,??DataTable8_15  ;; 0x400b1034
        STR      R0,[R1, #+0]
//  197   
//  198   //等待80个初始时钟
//  199   SDHC->SYSCTL |= SDHC_SYSCTL_INITA_MASK;
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_7  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  200   while (SDHC->SYSCTL & SDHC_SYSCTL_INITA_MASK)
??LPLD_SDHC_Init_2:
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??LPLD_SDHC_Init_2
//  201   { };
//  202   
//  203   //检查卡是否插入
//  204   if (SDHC->PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
        LDR.W    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??LPLD_SDHC_Init_3
//  205   {
//  206     sdcard_ptr->CARD = ESDHC_CARD_UNKNOWN;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
        B.N      ??LPLD_SDHC_Init_4
//  207   }
//  208   else
//  209   {
//  210     sdcard_ptr->STATUS = SDHCSTA_NODISK;
??LPLD_SDHC_Init_3:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  211   }
//  212   SDHC->IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
??LPLD_SDHC_Init_4:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  213   
//  214   return SDHCRES_OK;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//  215 }
//  216 
//  217 /*
//  218  * LPLD_SDHC_SendCommand
//  219  * 向SD卡发送指定CMD命令
//  220  * 
//  221  * 参数:
//  222  *    command--SDHC命令信息结构体
//  223  *
//  224  * 输出:
//  225  *    SDHCRES--磁盘功能返回值
//  226  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 static SDHCRES LPLD_SDHC_SendCommand(ESDHC_COMMAND_STRUCT_PTR command)
//  228 {
LPLD_SDHC_SendCommand:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  229   uint32 xfertyp;
//  230   uint32 blkattr;
//  231   
//  232   //检查命令
//  233   xfertyp = command->COMMAND;
        LDR      R0,[R4, #+0]
        MOVS     R6,R0
//  234   
//  235   if (ESDHC_XFERTYP_CMDTYP_RESUME == ((xfertyp & SDHC_XFERTYP_CMDTYP_MASK) >> SDHC_XFERTYP_CMDTYP_SHIFT))
        UBFX     R0,R6,#+22,#+2
        CMP      R0,#+2
        BNE.N    ??LPLD_SDHC_SendCommand_0
//  236   {
//  237     //恢复类型命令必须设置DPSEL位
//  238     xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        ORRS     R6,R6,#0x200000
//  239   }
//  240   
//  241   if ((0 != command->BLOCKS) && (0 != command->BLOCKSIZE))
??LPLD_SDHC_SendCommand_0:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_SendCommand_1
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_SendCommand_1
//  242   {
//  243     xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        ORRS     R6,R6,#0x200000
//  244     if (command->BLOCKS != 1)
        LDR      R0,[R4, #+8]
        CMP      R0,#+1
        BEQ.N    ??LPLD_SDHC_SendCommand_2
//  245     {
//  246       //多块传输
//  247       xfertyp |= SDHC_XFERTYP_MSBSEL_MASK;
        ORRS     R6,R6,#0x20
//  248     }
//  249     if ((uint32)-1 == command->BLOCKS)
??LPLD_SDHC_SendCommand_2:
        LDR      R0,[R4, #+8]
        CMN      R0,#+1
        BNE.N    ??LPLD_SDHC_SendCommand_3
//  250     {
//  251       //大量传输
//  252       blkattr = SDHC_BLKATTR_BLKSIZE(command->BLOCKSIZE) | SDHC_BLKATTR_BLKCNT(0xFFFF);
        LDR      R0,[R4, #+12]
        LSLS     R0,R0,#+19       ;; ZeroExtS R0,R0,#+19,#+19
        LSRS     R0,R0,#+19
        ORR      R0,R0,#0xFF000000
        ORRS     R0,R0,#0xFF0000
        MOVS     R5,R0
        B.N      ??LPLD_SDHC_SendCommand_4
//  253     }
//  254     else
//  255     {
//  256       blkattr = SDHC_BLKATTR_BLKSIZE(command->BLOCKSIZE) | SDHC_BLKATTR_BLKCNT(command->BLOCKS);
??LPLD_SDHC_SendCommand_3:
        LDR      R0,[R4, #+12]
        LSLS     R0,R0,#+19       ;; ZeroExtS R0,R0,#+19,#+19
        LSRS     R0,R0,#+19
        LDR      R1,[R4, #+8]
        ORRS     R0,R0,R1, LSL #+16
        MOVS     R5,R0
//  257       xfertyp |= SDHC_XFERTYP_BCEN_MASK;
        ORRS     R6,R6,#0x2
        B.N      ??LPLD_SDHC_SendCommand_4
//  258     }
//  259   }
//  260   else
//  261   {
//  262     blkattr = 0;
??LPLD_SDHC_SendCommand_1:
        MOVS     R0,#+0
        MOVS     R5,R0
//  263   }
//  264   
//  265   //卡移除状态清除
//  266   SDHC->IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
??LPLD_SDHC_SendCommand_4:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  267   
//  268   //等待CMD线空闲
//  269   while (SDHC->PRSSTAT & SDHC_PRSSTAT_CIHB_MASK)
??LPLD_SDHC_SendCommand_5:
        LDR.W    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??LPLD_SDHC_SendCommand_5
//  270   { };
//  271   
//  272   //初始化命令
//  273   SDHC->CMDARG = command->ARGUMENT;
        LDR      R0,[R4, #+4]
        LDR.W    R1,??DataTable10  ;; 0x400b1008
        STR      R0,[R1, #+0]
//  274   SDHC->BLKATTR = blkattr;
        LDR.W    R0,??DataTable8_11  ;; 0x400b1004
        STR      R5,[R0, #+0]
//  275   SDHC->DSADDR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_1  ;; 0x400b1000
        STR      R0,[R1, #+0]
//  276   
//  277   //发送命令
//  278   SDHC->XFERTYP = xfertyp;
        LDR.W    R0,??DataTable10_2  ;; 0x400b100c
        STR      R6,[R0, #+0]
//  279   
//  280   //等待响应
//  281   if (LPLD_SDHC_WaitStatus (SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK) != SDHC_IRQSTAT_CC_MASK)
        LDR.W    R0,??DataTable10_3  ;; 0xe0001
        BL       LPLD_SDHC_WaitStatus
        CMP      R0,#+1
        BEQ.N    ??LPLD_SDHC_SendCommand_6
//  282   {
//  283     SDHC->IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0xF0000
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  284     return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_SendCommand_7
//  285   }
//  286   
//  287   //检查卡是否移除
//  288   if (SDHC->IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
??LPLD_SDHC_SendCommand_6:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_SDHC_SendCommand_8
//  289   {
//  290     SDHC->IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10001
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  291     sdcard_ptr->STATUS = SDHCSTA_NODISK;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  292     return SDHCRES_NOTRDY;
        MOVS     R0,#+3
        B.N      ??LPLD_SDHC_SendCommand_7
//  293   }
//  294   
//  295   //获取响应
//  296   if (SDHC->IRQSTAT & SDHC_IRQSTAT_CTOE_MASK)
??LPLD_SDHC_SendCommand_8:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??LPLD_SDHC_SendCommand_9
//  297   {
//  298     SDHC->IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10001
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  299     return SDHCRES_NONRSPNS;
        MOVS     R0,#+5
        B.N      ??LPLD_SDHC_SendCommand_7
//  300   }
//  301   if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) != SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO))
??LPLD_SDHC_SendCommand_9:
        TST      R6,#0x30000
        BEQ.N    ??LPLD_SDHC_SendCommand_10
//  302   {
//  303     command->RESPONSE[0] = SDHC->CMDRSP[0];
        LDR.W    R0,??DataTable10_4  ;; 0x400b1010
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+16]
//  304     if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) == SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136))
        ANDS     R0,R6,#0x30000
        CMP      R0,#+65536
        BNE.N    ??LPLD_SDHC_SendCommand_10
//  305     {
//  306       command->RESPONSE[1] = SDHC->CMDRSP[1];
        LDR.W    R0,??DataTable10_5  ;; 0x400b1014
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+20]
//  307       command->RESPONSE[2] = SDHC->CMDRSP[2];
        LDR.W    R0,??DataTable10_6  ;; 0x400b1018
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+24]
//  308       command->RESPONSE[3] = SDHC->CMDRSP[3];
        LDR.W    R0,??DataTable10_7  ;; 0x400b101c
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+28]
//  309     }
//  310   }
//  311   SDHC->IRQSTAT |= SDHC_IRQSTAT_CC_MASK;
??LPLD_SDHC_SendCommand_10:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  312   
//  313   return SDHCRES_OK;
        MOVS     R0,#+0
??LPLD_SDHC_SendCommand_7:
        POP      {R4-R6,PC}       ;; return
//  314 }
//  315 
//  316 
//  317 /*
//  318  * LPLD_SDHC_IOC
//  319  * SDHC模块其他控制服务函数
//  320  * 
//  321  * 参数:
//  322  *    cmd--SDHC模块控制命令
//  323  *    *param_ptr--控制参数
//  324  *
//  325  * 输出:
//  326  *    SDHCRES--磁盘功能返回值
//  327  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  328 SDHCRES LPLD_SDHC_IOC(uint32 cmd, void *param_ptr)
//  329 {
LPLD_SDHC_IOC:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+36
        MOVS     R4,R0
        MOVS     R5,R1
//  330   
//  331   ESDHC_COMMAND_STRUCT    command;
//  332   boolean                 mem, io, mmc, ceata, mp, hc;
//  333   int32                  val;
//  334   SDHCRES                 result = SDHCRES_OK;
        MOVS     R9,#+0
//  335   uint32 *             param32_ptr = param_ptr;
        MOV      R10,R5
//  336   
//  337   switch (cmd)
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??LPLD_SDHC_IOC_0
        CMP      R0,#+2
        BEQ.W    ??LPLD_SDHC_IOC_1
        CMP      R0,#+3
        BEQ.W    ??LPLD_SDHC_IOC_2
        CMP      R0,#+4
        BEQ.W    ??LPLD_SDHC_IOC_3
        CMP      R0,#+5
        BEQ.W    ??LPLD_SDHC_IOC_4
        CMP      R0,#+6
        BEQ.W    ??LPLD_SDHC_IOC_5
        CMP      R0,#+7
        BEQ.W    ??LPLD_SDHC_IOC_6
        CMP      R0,#+147
        BEQ.W    ??LPLD_SDHC_IOC_7
        B.N      ??LPLD_SDHC_IOC_8
//  338   {
//  339   case IO_IOCTL_ESDHC_INIT:  
//  340     //初始化SDHC模块
//  341     result = LPLD_SDHC_Init (g_core_clock*1000, 400000);
??LPLD_SDHC_IOC_0:
        LDR.W    R1,??DataTable10_8  ;; 0x61a80
        LDR.W    R0,??DataTable10_9
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       LPLD_SDHC_Init
        MOV      R9,R0
//  342     if (SDHCRES_OK != result)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  343     {
//  344       break;
//  345     }
//  346     
//  347     mem = FALSE;
??LPLD_SDHC_IOC_10:
        MOVS     R0,#+0
        MOVS     R6,R0
//  348     io = FALSE;
        MOVS     R0,#+0
        MOVS     R7,R0
//  349     mmc = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  350     ceata = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//  351     hc = FALSE;
        MOVS     R0,#+0
        MOV      R8,R0
//  352     mp = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  353     
//  354     //CMD0 - 空闲命令，复位卡
//  355     command.COMMAND = ESDHC_CMD0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  356     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  357     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  358     result = LPLD_SDHC_SendCommand (&command);
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
//  359     if (result!=SDHCRES_OK)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??LPLD_SDHC_IOC_11
//  360     {
//  361       sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  362       break;
        B.N      ??LPLD_SDHC_IOC_9
//  363     }
//  364     
//  365     //CMD8 - 发送接口状态，检查是否支持高容量
//  366     command.COMMAND = ESDHC_CMD8;
??LPLD_SDHC_IOC_11:
        LDR.W    R0,??DataTable10_10  ;; 0x81a0000
        STR      R0,[SP, #+4]
//  367     command.ARGUMENT = 0x000001AA;
        MOV      R0,#+426
        STR      R0,[SP, #+8]
//  368     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  369     result = LPLD_SDHC_SendCommand (&command);
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
//  370     if (result==SDHCRES_ERROR)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SDHC_IOC_12
//  371     {
//  372       sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  373       break;
        B.N      ??LPLD_SDHC_IOC_9
//  374     }
//  375     if (result == SDHCRES_OK)
??LPLD_SDHC_IOC_12:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??LPLD_SDHC_IOC_13
//  376     {
//  377       if (command.RESPONSE[0] != command.ARGUMENT)
        LDR      R0,[SP, #+20]
        LDR      R1,[SP, #+8]
        CMP      R0,R1
        BEQ.N    ??LPLD_SDHC_IOC_14
//  378       {
//  379         sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  380         result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
//  381         break;
        B.N      ??LPLD_SDHC_IOC_9
//  382       }
//  383       hc = TRUE;
??LPLD_SDHC_IOC_14:
        MOVS     R0,#+1
        MOV      R8,R0
//  384     }
//  385     
//  386     //CMD5 - 发送操作状态，测试IO
//  387     command.COMMAND = ESDHC_CMD5;
??LPLD_SDHC_IOC_13:
        LDR.W    R0,??DataTable11  ;; 0x5020000
        STR      R0,[SP, #+4]
//  388     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  389     command.BLOCKS = 0;      
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  390     result = LPLD_SDHC_SendCommand (&command);
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
//  391     if (result==SDHCRES_ERROR)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SDHC_IOC_15
//  392     {
//  393       sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  394       break;
        B.N      ??LPLD_SDHC_IOC_9
//  395     }
//  396     if (result == SDHCRES_OK)
??LPLD_SDHC_IOC_15:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??LPLD_SDHC_IOC_16
//  397     {
//  398       if (((command.RESPONSE[0] >> 28) & 0x07) && (command.RESPONSE[0] & 0x300000))
        LDR      R0,[SP, #+20]
        UBFX     R0,R0,#+28,#+3
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_17
        LDR      R0,[SP, #+20]
        TST      R0,#0x300000
        BEQ.N    ??LPLD_SDHC_IOC_17
//  399       {
//  400         command.COMMAND = ESDHC_CMD5;
        LDR.W    R0,??DataTable11  ;; 0x5020000
        STR      R0,[SP, #+4]
//  401         command.ARGUMENT = 0x300000;
        MOVS     R0,#+3145728
        STR      R0,[SP, #+8]
//  402         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  403         val = 0;
        MOVS     R0,#+0
        MOV      R11,R0
//  404         do
//  405         {
//  406           val++;
??LPLD_SDHC_IOC_18:
        ADDS     R11,R11,#+1
//  407           if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_19
//  408           {
//  409             break;
//  410           }
//  411         } while ((0 == (command.RESPONSE[0] & 0x80000000)) && (val < ESDHC_ALARM_FREQUENCY));
??LPLD_SDHC_IOC_20:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BMI.N    ??LPLD_SDHC_IOC_19
        CMP      R11,#+100
        BLT.N    ??LPLD_SDHC_IOC_18
//  412         if (SDHCRES_OK != result)
??LPLD_SDHC_IOC_19:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  413         {
//  414           break;
//  415         }
//  416         if (command.RESPONSE[0] & 0x80000000)
??LPLD_SDHC_IOC_21:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BPL.N    ??LPLD_SDHC_IOC_22
//  417         {
//  418           io = TRUE;
        MOVS     R0,#+1
        MOVS     R7,R0
//  419         }
//  420         if (command.RESPONSE[0] & 0x08000000)
??LPLD_SDHC_IOC_22:
        LDR      R0,[SP, #+20]
        LSLS     R0,R0,#+4
        BPL.N    ??LPLD_SDHC_IOC_17
//  421         {
//  422           mp = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??LPLD_SDHC_IOC_17
//  423         }
//  424       }
//  425     }
//  426     else
//  427     {
//  428       mp = TRUE;
??LPLD_SDHC_IOC_16:
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//  429     }
//  430     
//  431     if (mp)
??LPLD_SDHC_IOC_17:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.W    ??LPLD_SDHC_IOC_23
//  432     {
//  433       //CMD55 - 特殊应用命令，检查MMC卡
//  434       command.COMMAND = ESDHC_CMD55;
        LDR.W    R0,??DataTable11_1  ;; 0x371a0000
        STR      R0,[SP, #+4]
//  435       command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  436       command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  437       if ((result = LPLD_SDHC_SendCommand (&command))==SDHCRES_ERROR)
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.W    ??LPLD_SDHC_IOC_9
//  438       {
//  439         break;
//  440       }
//  441       if (result == SDHCRES_NONRSPNS)
??LPLD_SDHC_IOC_24:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+5
        BNE.N    ??LPLD_SDHC_IOC_25
//  442       {
//  443         //如果为MMC 或 CE-ATA 卡
//  444         io = FALSE;
        MOVS     R0,#+0
        MOVS     R7,R0
//  445         mem = FALSE;
        MOVS     R0,#+0
        MOVS     R6,R0
//  446         hc = FALSE;
        MOVS     R0,#+0
        MOV      R8,R0
//  447         
//  448         //CMD1 - 发送测试命令，检查高容量支持
//  449         command.COMMAND = ESDHC_CMD1;
        MOVS     R0,#+16777216
        STR      R0,[SP, #+4]
//  450         command.ARGUMENT = 0x40300000;
        LDR.W    R0,??DataTable11_2  ;; 0x40300000
        STR      R0,[SP, #+8]
//  451         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  452         if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  453         {
//  454           break;
//  455         }
//  456         if (0x20000000 == (command.RESPONSE[0] & 0x60000000))
??LPLD_SDHC_IOC_26:
        LDR      R0,[SP, #+20]
        ANDS     R0,R0,#0x60000000
        CMP      R0,#+536870912
        BNE.N    ??LPLD_SDHC_IOC_27
//  457         {
//  458           hc = TRUE;
        MOVS     R0,#+1
        MOV      R8,R0
//  459         }
//  460         mmc = TRUE;
??LPLD_SDHC_IOC_27:
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//  461         
//  462         //CMD39 - 快速IO，检查CE-ATA的CE签名 */
//  463         command.COMMAND = ESDHC_CMD39;
        LDR.W    R0,??DataTable11_3  ;; 0x27020000
        STR      R0,[SP, #+4]
//  464         command.ARGUMENT = 0x0C00;
        MOV      R0,#+3072
        STR      R0,[SP, #+8]
//  465         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  466         if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  467         {
//  468           break;
//  469         }
//  470         if (0xCE == (command.RESPONSE[0] >> 8) & 0xFF)
??LPLD_SDHC_IOC_28:
        LDR      R0,[SP, #+20]
        LSRS     R0,R0,#+8
        CMP      R0,#+206
        BNE.N    ??LPLD_SDHC_IOC_29
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_IOC_30
??LPLD_SDHC_IOC_29:
        MOVS     R0,#+0
??LPLD_SDHC_IOC_30:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.W    ??LPLD_SDHC_IOC_23
//  471         {
//  472           //CMD39 - 快速IO，检查CE-ATA的AA签名 */
//  473           command.COMMAND = ESDHC_CMD39;
        LDR.W    R0,??DataTable11_3  ;; 0x27020000
        STR      R0,[SP, #+4]
//  474           command.ARGUMENT = 0x0D00;
        MOV      R0,#+3328
        STR      R0,[SP, #+8]
//  475           command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  476           if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  477           {
//  478             break;
//  479           }
//  480           if (0xAA == (command.RESPONSE[0] >> 8) & 0xFF)
??LPLD_SDHC_IOC_31:
        LDR      R0,[SP, #+20]
        LSRS     R0,R0,#+8
        CMP      R0,#+170
        BNE.N    ??LPLD_SDHC_IOC_32
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_IOC_33
??LPLD_SDHC_IOC_32:
        MOVS     R0,#+0
??LPLD_SDHC_IOC_33:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_23
//  481           {
//  482             mmc = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  483             ceata = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        B.N      ??LPLD_SDHC_IOC_23
//  484           }
//  485         }
//  486       }
//  487       else
//  488       {
//  489         //如果为SD卡
//  490         //ACMD41 - 发送操作状态
//  491         command.COMMAND = ESDHC_ACMD41;
??LPLD_SDHC_IOC_25:
        LDR.W    R0,??DataTable11_4  ;; 0x29020000
        STR      R0,[SP, #+4]
//  492         command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  493         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  494         if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_34
//  495         {
//  496           sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  497           break;
        B.N      ??LPLD_SDHC_IOC_9
//  498         }
//  499         if (command.RESPONSE[0] & 0x300000)
??LPLD_SDHC_IOC_34:
        LDR      R0,[SP, #+20]
        TST      R0,#0x300000
        BEQ.N    ??LPLD_SDHC_IOC_23
//  500         {
//  501           val = 0;
        MOVS     R0,#+0
        MOV      R11,R0
//  502           do
//  503           {
//  504             val++;
??LPLD_SDHC_IOC_35:
        ADDS     R11,R11,#+1
//  505             
//  506             //CMD55 + ACMD41 - 发送OCR
//  507             command.COMMAND = ESDHC_CMD55;
        LDR.W    R0,??DataTable11_1  ;; 0x371a0000
        STR      R0,[SP, #+4]
//  508             command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  509             command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  510             if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_36
//  511             {
//  512               break;
//  513             }
//  514             
//  515             command.COMMAND = ESDHC_ACMD41;
??LPLD_SDHC_IOC_37:
        LDR.W    R0,??DataTable11_4  ;; 0x29020000
        STR      R0,[SP, #+4]
//  516             if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_IOC_38
//  517             {
//  518               command.ARGUMENT = 0x40300000;
        LDR.W    R0,??DataTable11_2  ;; 0x40300000
        STR      R0,[SP, #+8]
        B.N      ??LPLD_SDHC_IOC_39
//  519             }
//  520             else
//  521             {
//  522               command.ARGUMENT = 0x00300000;
??LPLD_SDHC_IOC_38:
        MOVS     R0,#+3145728
        STR      R0,[SP, #+8]
//  523             }
//  524             command.BLOCKS = 0;
??LPLD_SDHC_IOC_39:
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  525             if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_36
//  526             {
//  527               break;
//  528             }
//  529           } while ((0 == (command.RESPONSE[0] & 0x80000000)) && (val < ESDHC_ALARM_FREQUENCY));
??LPLD_SDHC_IOC_40:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BMI.N    ??LPLD_SDHC_IOC_36
        CMP      R11,#+100
        BLT.N    ??LPLD_SDHC_IOC_35
//  530           if (SDHCRES_OK != result)
??LPLD_SDHC_IOC_36:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  531           {
//  532             break;
//  533           }
//  534           if (val >= ESDHC_ALARM_FREQUENCY)
??LPLD_SDHC_IOC_41:
        CMP      R11,#+100
        BLT.N    ??LPLD_SDHC_IOC_42
//  535           {
//  536             hc = FALSE;
        MOVS     R0,#+0
        MOV      R8,R0
        B.N      ??LPLD_SDHC_IOC_23
//  537           }
//  538           else
//  539           {
//  540             mem = TRUE;
??LPLD_SDHC_IOC_42:
        MOVS     R0,#+1
        MOVS     R6,R0
//  541             if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_IOC_23
//  542             {
//  543               hc = FALSE;
        MOVS     R0,#+0
        MOV      R8,R0
//  544               if (command.RESPONSE[0] & 0x40000000)
        LDR      R0,[SP, #+20]
        LSLS     R0,R0,#+1
        BPL.N    ??LPLD_SDHC_IOC_23
//  545               {
//  546                 hc = TRUE;
        MOVS     R0,#+1
        MOV      R8,R0
//  547               }
//  548             }
//  549           }
//  550         }
//  551       }
//  552     }
//  553     if (mmc)
??LPLD_SDHC_IOC_23:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_43
//  554     {
//  555       sdcard_ptr->CARD = ESDHC_CARD_MMC;
        MOVS     R0,#+7
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  556     }
//  557     if (ceata)
??LPLD_SDHC_IOC_43:
        LDRB     R0,[SP, #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_44
//  558     {
//  559       sdcard_ptr->CARD = ESDHC_CARD_CEATA;
        MOVS     R0,#+8
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  560     }
//  561     if (io)
??LPLD_SDHC_IOC_44:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??LPLD_SDHC_IOC_45
//  562     {
//  563       sdcard_ptr->CARD = ESDHC_CARD_SDIO;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  564     }
//  565     if (mem)
??LPLD_SDHC_IOC_45:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??LPLD_SDHC_IOC_46
//  566     {
//  567       sdcard_ptr->CARD = ESDHC_CARD_SD;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  568       if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_IOC_46
//  569       {
//  570         sdcard_ptr->CARD = ESDHC_CARD_SDHC;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  571       }
//  572     }
//  573     if (io && mem)
??LPLD_SDHC_IOC_46:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??LPLD_SDHC_IOC_47
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??LPLD_SDHC_IOC_47
//  574     {
//  575       sdcard_ptr->CARD = ESDHC_CARD_SDCOMBO;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  576       if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_IOC_47
//  577       {
//  578         sdcard_ptr->CARD = ESDHC_CARD_SDHCCOMBO;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  579       }
//  580     }
//  581     
//  582     //禁用GPIO的SDHC复用
//  583     LPLD_SDHC_InitGPIO (0);
??LPLD_SDHC_IOC_47:
        MOVS     R0,#+0
        BL       LPLD_SDHC_InitGPIO
//  584     
//  585     //设置SDHC工作状态下的默认波特率
//  586     LPLD_SDHC_SetBaudrate (g_core_clock*1000, 25000000);
        LDR.W    R1,??DataTable11_5  ;; 0x17d7840
        LDR.W    R0,??DataTable10_9
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       LPLD_SDHC_SetBaudrate
//  587     
//  588     //使能GPIO的SDHC复用
//  589     LPLD_SDHC_InitGPIO (0xFFFF);
        MOVW     R0,#+65535
        BL       LPLD_SDHC_InitGPIO
//  590     
//  591     if(result == SDHCRES_OK)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??LPLD_SDHC_IOC_48
//  592     {
//  593       sdcard_ptr->STATUS = SDHCSTA_OK;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  594     }
//  595     break;
??LPLD_SDHC_IOC_48:
        B.N      ??LPLD_SDHC_IOC_9
//  596   case IO_IOCTL_ESDHC_SEND_COMMAND:
//  597     result = LPLD_SDHC_SendCommand ((ESDHC_COMMAND_STRUCT_PTR)param32_ptr);
??LPLD_SDHC_IOC_1:
        MOV      R0,R10
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
//  598     break;
        B.N      ??LPLD_SDHC_IOC_9
//  599   case IO_IOCTL_ESDHC_GET_BAUDRATE:
//  600     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_3:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_49
//  601     {
//  602       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_50
//  603     }
//  604     else
//  605     {
//  606       //获取波特率
//  607       val = ((SDHC->SYSCTL & SDHC_SYSCTL_SDCLKFS_MASK) >> SDHC_SYSCTL_SDCLKFS_SHIFT) << 1;
??LPLD_SDHC_IOC_49:
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+7
        ANDS     R0,R0,#0x1FE
        MOV      R11,R0
//  608       val *= ((SDHC->SYSCTL & SDHC_SYSCTL_DVS_MASK) >> SDHC_SYSCTL_DVS_SHIFT) + 1;
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+4
        ADDS     R0,R0,#+1
        MUL      R11,R0,R11
//  609       *param32_ptr = (uint32)((g_core_clock*1000 / val));
        LDR.W    R0,??DataTable10_9
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        UDIV     R0,R0,R11
        STR      R0,[R10, #+0]
//  610     }
//  611     break;
??LPLD_SDHC_IOC_50:
        B.N      ??LPLD_SDHC_IOC_9
//  612   case IO_IOCTL_ESDHC_SET_BAUDRATE:
//  613     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_4:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_51
//  614     {
//  615       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_52
//  616     }
//  617     else if (0 == (*param32_ptr))
??LPLD_SDHC_IOC_51:
        LDR      R0,[R10, #+0]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_53
//  618     {
//  619       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_52
//  620     }
//  621     else
//  622     {
//  623       if (! LPLD_SDHC_IsRunning ())
??LPLD_SDHC_IOC_53:
        BL       LPLD_SDHC_IsRunning
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_54
//  624       {
//  625         //禁用GPIO的SDHC复用
//  626         LPLD_SDHC_InitGPIO (0);
        MOVS     R0,#+0
        BL       LPLD_SDHC_InitGPIO
//  627         
//  628         //设置波特率
//  629         LPLD_SDHC_SetBaudrate (g_core_clock*1000, *param32_ptr);
        LDR      R1,[R10, #+0]
        LDR.W    R0,??DataTable10_9
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       LPLD_SDHC_SetBaudrate
//  630         
//  631         //使能GPIO的SDHC复用
//  632         LPLD_SDHC_InitGPIO (0xFFFF);
        MOVW     R0,#+65535
        BL       LPLD_SDHC_InitGPIO
        B.N      ??LPLD_SDHC_IOC_52
//  633       }
//  634       else
//  635       {
//  636         result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_54:
        MOVS     R0,#+1
        MOV      R9,R0
//  637       }
//  638     }
//  639     break;
??LPLD_SDHC_IOC_52:
        B.N      ??LPLD_SDHC_IOC_9
//  640   case IO_IOCTL_ESDHC_GET_BUS_WIDTH:
//  641     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_5:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_55
//  642     {
//  643       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_56
//  644     }
//  645     else
//  646     {
//  647       //获得SDHC总线宽度
//  648       val = (SDHC->PROCTL & SDHC_PROCTL_DTW_MASK) >> SDHC_PROCTL_DTW_SHIFT;
??LPLD_SDHC_IOC_55:
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+1,#+2
        MOV      R11,R0
//  649       if (ESDHC_PROCTL_DTW_1BIT == val)
        CMP      R11,#+0
        BNE.N    ??LPLD_SDHC_IOC_57
//  650       {
//  651         *param32_ptr = ESDHC_BUS_WIDTH_1BIT;
        MOVS     R0,#+0
        STR      R0,[R10, #+0]
        B.N      ??LPLD_SDHC_IOC_56
//  652       }
//  653       else if (ESDHC_PROCTL_DTW_4BIT == val)
??LPLD_SDHC_IOC_57:
        CMP      R11,#+1
        BNE.N    ??LPLD_SDHC_IOC_58
//  654       {
//  655         *param32_ptr = ESDHC_BUS_WIDTH_4BIT;
        MOVS     R0,#+1
        STR      R0,[R10, #+0]
        B.N      ??LPLD_SDHC_IOC_56
//  656       }
//  657       else if (ESDHC_PROCTL_DTW_8BIT == val)
??LPLD_SDHC_IOC_58:
        CMP      R11,#+16
        BNE.N    ??LPLD_SDHC_IOC_59
//  658       {
//  659         *param32_ptr = ESDHC_BUS_WIDTH_8BIT;
        MOVS     R0,#+2
        STR      R0,[R10, #+0]
        B.N      ??LPLD_SDHC_IOC_56
//  660       }
//  661       else
//  662       {
//  663         result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_59:
        MOVS     R0,#+1
        MOV      R9,R0
//  664       }
//  665     }
//  666     break;
??LPLD_SDHC_IOC_56:
        B.N      ??LPLD_SDHC_IOC_9
//  667   case IO_IOCTL_ESDHC_SET_BUS_WIDTH:
//  668     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_6:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_60
//  669     {
//  670       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_61
//  671     }
//  672     else
//  673     {
//  674       //设置SDHC总线宽度
//  675       if (! LPLD_SDHC_IsRunning ())
??LPLD_SDHC_IOC_60:
        BL       LPLD_SDHC_IsRunning
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_62
//  676       {
//  677         if (ESDHC_BUS_WIDTH_1BIT == *param32_ptr)
        LDR      R0,[R10, #+0]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_63
//  678         {
//  679           SDHC->PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  680           SDHC->PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_1BIT);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SDHC_IOC_61
//  681         }
//  682         else if (ESDHC_BUS_WIDTH_4BIT == *param32_ptr)
??LPLD_SDHC_IOC_63:
        LDR      R0,[R10, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SDHC_IOC_64
//  683         {
//  684           SDHC->PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  685           SDHC->PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_4BIT);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SDHC_IOC_61
//  686         }
//  687         else if (ESDHC_BUS_WIDTH_8BIT == *param32_ptr)
??LPLD_SDHC_IOC_64:
        LDR      R0,[R10, #+0]
        CMP      R0,#+2
        BNE.N    ??LPLD_SDHC_IOC_65
//  688         {
//  689           SDHC->PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  690           SDHC->PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_8BIT);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SDHC_IOC_61
//  691         }
//  692         else
//  693         {
//  694           result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_65:
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_61
//  695         }
//  696       }
//  697       else
//  698       {
//  699         result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_62:
        MOVS     R0,#+1
        MOV      R9,R0
//  700       }
//  701     }
//  702     break;
??LPLD_SDHC_IOC_61:
        B.N      ??LPLD_SDHC_IOC_9
//  703   case IO_IOCTL_ESDHC_GET_CARD:
//  704     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_2:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_66
//  705     {
//  706       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_67
//  707     }
//  708     else
//  709     {
//  710       //等待80个时钟
//  711       SDHC->SYSCTL |= SDHC_SYSCTL_INITA_MASK;
??LPLD_SDHC_IOC_66:
        LDR.N    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_7  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  712       while (SDHC->SYSCTL & SDHC_SYSCTL_INITA_MASK)
??LPLD_SDHC_IOC_68:
        LDR.N    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??LPLD_SDHC_IOC_68
//  713       { };
//  714       
//  715       //更新并返回卡实际状态
//  716       if (SDHC->IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_SDHC_IOC_69
//  717       {
//  718         SDHC->IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  719         sdcard_ptr->CARD = ESDHC_CARD_NONE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  720         sdcard_ptr->STATUS = SDHCSTA_NODISK;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  721       }
//  722       if (SDHC->PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
??LPLD_SDHC_IOC_69:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??LPLD_SDHC_IOC_70
//  723       {
//  724         if (ESDHC_CARD_NONE == sdcard_ptr->CARD)
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_71
//  725         {
//  726           sdcard_ptr->CARD = ESDHC_CARD_UNKNOWN;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
        B.N      ??LPLD_SDHC_IOC_71
//  727         }
//  728       }
//  729       else
//  730       {
//  731         sdcard_ptr->CARD = ESDHC_CARD_NONE;
??LPLD_SDHC_IOC_70:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  732       }
//  733       *param32_ptr = sdcard_ptr->CARD;
??LPLD_SDHC_IOC_71:
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+16]
        STR      R0,[R10, #+0]
//  734     }
//  735     break;
??LPLD_SDHC_IOC_67:
        B.N      ??LPLD_SDHC_IOC_9
//  736     
//  737   case IO_IOCTL_FLUSH_OUTPUT:
//  738     //等待传输完成
//  739     LPLD_SDHC_WaitStatus (SDHC_IRQSTAT_TC_MASK);
??LPLD_SDHC_IOC_7:
        MOVS     R0,#+2
        BL       LPLD_SDHC_WaitStatus
//  740     if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_IOC_72
//  741     {
//  742       SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700000
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  743       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
//  744     }
//  745     SDHC->IRQSTAT |= SDHC_IRQSTAT_TC_MASK | SDHC_IRQSTAT_BRR_MASK | SDHC_IRQSTAT_BWR_MASK;
??LPLD_SDHC_IOC_72:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x32
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  746     break;
        B.N      ??LPLD_SDHC_IOC_9
//  747   default:
//  748     result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_8:
        MOVS     R0,#+1
        MOV      R9,R0
//  749     break;
//  750   }
//  751   
//  752   
//  753   return result;
??LPLD_SDHC_IOC_9:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+36
        POP      {R4-R11,PC}      ;; return
//  754 }
//  755 
//  756 /*
//  757  * LPLD_SDHC_Read
//  758  * SDHC读操作
//  759  * 
//  760  * 参数:
//  761  *    *data_ptr--存储数据地址指针
//  762  *    n--待读的数据长度
//  763  *
//  764  * 输出:
//  765  *    SDHCRES--磁盘功能返回值
//  766  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  767 static SDHCSTATUS LPLD_SDHC_Read(uint8 *data_ptr, int32 n)
//  768 {
LPLD_SDHC_Read:
        PUSH     {R4,R5}
        MOVS     R2,R0
//  769   uint32 buffer;
//  770   int32 remains;
//  771   
//  772   remains = n;
        MOVS     R4,R1
//  773   if (((uint32)data_ptr & 0x03) == 0)
        ANDS     R0,R2,#0x3
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_Read_0
//  774   {    
//  775     //数据位字对齐，可以以最快的速度直接从寄存器拷贝
//  776     while (remains >= 4)
??LPLD_SDHC_Read_1:
        CMP      R4,#+4
        BLT.N    ??LPLD_SDHC_Read_2
//  777     {
//  778       if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Read_3
//  779       {
//  780         SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R5,??DataTable9  ;; 0x400b1030
        STR      R0,[R5, #+0]
//  781         return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Read_4
//  782       }
//  783       
//  784       //等待，直到收到的数据达到水印长度或传输完成
//  785       while ((0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BREN_MASK)) && (SDHC->PRSSTAT & SDHC_PRSSTAT_DLA_MASK))
??LPLD_SDHC_Read_3:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BMI.N    ??LPLD_SDHC_Read_5
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BMI.N    ??LPLD_SDHC_Read_3
//  786       { };
//  787       
//  788       *((uint32 *)data_ptr) = SDHC->DATPORT;
??LPLD_SDHC_Read_5:
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        LDR      R0,[R0, #+0]
        STR      R0,[R2, #+0]
//  789       data_ptr += 4;
        ADDS     R2,R2,#+4
//  790       remains -= 4;
        SUBS     R4,R4,#+4
        B.N      ??LPLD_SDHC_Read_1
//  791     }
//  792   }
//  793   else
//  794   {
//  795     //非对齐数据，读到临时区域并以字节复制
//  796     while (remains >= 4)
??LPLD_SDHC_Read_0:
        CMP      R4,#+4
        BLT.N    ??LPLD_SDHC_Read_2
//  797     {
//  798       if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Read_6
//  799       {
//  800         SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R5,??DataTable9  ;; 0x400b1030
        STR      R0,[R5, #+0]
//  801         return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Read_4
//  802       }
//  803       
//  804       //等待，直到收到的数据达到水印长度或传输完成
//  805       while ((0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BREN_MASK)) && (SDHC->PRSSTAT & SDHC_PRSSTAT_DLA_MASK))
??LPLD_SDHC_Read_6:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BMI.N    ??LPLD_SDHC_Read_7
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BMI.N    ??LPLD_SDHC_Read_6
//  806       { };
//  807       
//  808       buffer = SDHC->DATPORT;
??LPLD_SDHC_Read_7:
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        LDR      R0,[R0, #+0]
        MOVS     R3,R0
//  809       
//  810       *data_ptr++ = buffer & 0xFF;
        STRB     R3,[R2, #+0]
        ADDS     R2,R2,#+1
//  811       *data_ptr++ = (buffer >> 8) & 0xFF;
        LSRS     R0,R3,#+8
        STRB     R0,[R2, #+0]
        ADDS     R2,R2,#+1
//  812       *data_ptr++ = (buffer >> 16) & 0xFF;
        LSRS     R0,R3,#+16
        STRB     R0,[R2, #+0]
        ADDS     R2,R2,#+1
//  813       *data_ptr++ = (buffer >> 24) & 0xFF;
        LSRS     R0,R3,#+24
        STRB     R0,[R2, #+0]
        ADDS     R2,R2,#+1
//  814       
//  815       remains -= 4;
        SUBS     R4,R4,#+4
        B.N      ??LPLD_SDHC_Read_0
//  816     }      
//  817   }
//  818   
//  819   if (remains)
??LPLD_SDHC_Read_2:
        CMP      R4,#+0
        BEQ.N    ??LPLD_SDHC_Read_8
//  820   {
//  821     //剩下的少于单字长度数据
//  822     if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Read_9
//  823     {
//  824       SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R5,??DataTable9  ;; 0x400b1030
        STR      R0,[R5, #+0]
//  825       return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Read_4
//  826     }
//  827     
//  828     //等待，直到收到的数据达到水印长度或传输完成
//  829     while ((0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BREN_MASK)) && (SDHC->PRSSTAT & SDHC_PRSSTAT_DLA_MASK))
??LPLD_SDHC_Read_9:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BMI.N    ??LPLD_SDHC_Read_10
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BMI.N    ??LPLD_SDHC_Read_9
//  830     { };
//  831     
//  832     buffer = SDHC->DATPORT;
??LPLD_SDHC_Read_10:
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        LDR      R0,[R0, #+0]
        MOVS     R3,R0
//  833     while (remains)
??LPLD_SDHC_Read_11:
        CMP      R4,#+0
        BEQ.N    ??LPLD_SDHC_Read_8
//  834     {
//  835       
//  836       *data_ptr++ = buffer & 0xFF;
        STRB     R3,[R2, #+0]
        ADDS     R2,R2,#+1
//  837       buffer >>= 8;
        LSRS     R3,R3,#+8
//  838       
//  839       remains--;
        SUBS     R4,R4,#+1
        B.N      ??LPLD_SDHC_Read_11
//  840     }
//  841   }
//  842   
//  843   if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
??LPLD_SDHC_Read_8:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Read_12
//  844   {
//  845     SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R5,??DataTable9  ;; 0x400b1030
        STR      R0,[R5, #+0]
//  846     return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Read_4
//  847   }
//  848   
//  849   return (n - remains);
??LPLD_SDHC_Read_12:
        SUBS     R0,R1,R4
??LPLD_SDHC_Read_4:
        POP      {R4,R5}
        BX       LR               ;; return
//  850 }
//  851 
//  852 /*
//  853  * LPLD_SDHC_Write
//  854  * SDHC写操作
//  855  * 
//  856  * 参数:
//  857  *    *data_ptr--存储数据地址指针
//  858  *    n--待写的数据长度
//  859  *
//  860  * 输出:
//  861  *    SDHCRES--磁盘功能返回值
//  862  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  863 static SDHCSTATUS LPLD_SDHC_Write(uint8 *data_ptr, int32 n)
//  864 {
LPLD_SDHC_Write:
        PUSH     {R4-R6}
        MOVS     R2,R0
//  865   uint8 *udata_ptr;
//  866   uint32 buffer;
//  867   int32 remains;
//  868   
//  869   //复制数据指针
//  870   udata_ptr = (uint8 *)data_ptr;
        MOVS     R3,R2
//  871   
//  872   remains = n;
        MOVS     R5,R1
//  873   if (((uint32)udata_ptr & 0x03) == 0)
        ANDS     R0,R3,#0x3
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_Write_0
//  874   {
//  875     //数据位字对齐，可以以最快的速度直接拷贝到寄存器
//  876     while (remains >= 4)
??LPLD_SDHC_Write_1:
        CMP      R5,#+4
        BLT.N    ??LPLD_SDHC_Write_2
//  877     {
//  878       if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Write_3
//  879       {
//  880         SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.W    R6,??DataTable9  ;; 0x400b1030
        STR      R0,[R6, #+0]
//  881         return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Write_4
//  882       }
//  883       
//  884       //等待，直到水印空间可用 
//  885       while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
??LPLD_SDHC_Write_3:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??LPLD_SDHC_Write_3
//  886       { };
//  887       
//  888       SDHC->DATPORT = *((uint32 *)udata_ptr);
        LDR      R0,[R3, #+0]
        LDR.W    R6,??DataTable11_6  ;; 0x400b1020
        STR      R0,[R6, #+0]
//  889       udata_ptr += 4;
        ADDS     R3,R3,#+4
//  890       remains -= 4;
        SUBS     R5,R5,#+4
        B.N      ??LPLD_SDHC_Write_1
//  891     }
//  892   }
//  893   else
//  894   {
//  895     //非对齐数据，写到临时区域并以字节复制
//  896     while (remains >= 4)
??LPLD_SDHC_Write_0:
        CMP      R5,#+4
        BLT.N    ??LPLD_SDHC_Write_2
//  897     {
//  898       if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Write_5
//  899       {
//  900         SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.N    R6,??DataTable9  ;; 0x400b1030
        STR      R0,[R6, #+0]
//  901         return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Write_4
//  902       }
//  903       
//  904       //等待，直到水印空间可用 
//  905       while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
??LPLD_SDHC_Write_5:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??LPLD_SDHC_Write_5
//  906       { };
//  907       
//  908       buffer  = (*udata_ptr++);
        LDRB     R0,[R3, #+0]
        MOVS     R4,R0
        ADDS     R3,R3,#+1
//  909       buffer |= (*udata_ptr++) << 8;
        LDRB     R0,[R3, #+0]
        ORRS     R4,R4,R0, LSL #+8
        ADDS     R3,R3,#+1
//  910       buffer |= (*udata_ptr++) << 16;
        LDRB     R0,[R3, #+0]
        ORRS     R4,R4,R0, LSL #+16
        ADDS     R3,R3,#+1
//  911       buffer |= (*udata_ptr++) << 24;
        LDRB     R0,[R3, #+0]
        ORRS     R4,R4,R0, LSL #+24
        ADDS     R3,R3,#+1
//  912       
//  913       //等待，直到水印空间可用 
//  914       while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
??LPLD_SDHC_Write_6:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??LPLD_SDHC_Write_6
//  915       { };
//  916       
//  917       SDHC->DATPORT = buffer;
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        STR      R4,[R0, #+0]
//  918       remains -= 4;
        SUBS     R5,R5,#+4
        B.N      ??LPLD_SDHC_Write_0
//  919     }      
//  920   }
//  921   
//  922   if (remains)
??LPLD_SDHC_Write_2:
        CMP      R5,#+0
        BEQ.N    ??LPLD_SDHC_Write_7
//  923   {
//  924     //剩余少于单字长度的数据
//  925     if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Write_8
//  926     {
//  927       SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.N    R6,??DataTable9  ;; 0x400b1030
        STR      R0,[R6, #+0]
//  928       return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Write_4
//  929     }
//  930     
//  931     buffer = 0xFFFFFFFF;
??LPLD_SDHC_Write_8:
        MOVS     R0,#-1
        MOVS     R4,R0
//  932     while (remains)
??LPLD_SDHC_Write_9:
        CMP      R5,#+0
        BEQ.N    ??LPLD_SDHC_Write_10
//  933     {
//  934       buffer <<= 8;
        LSLS     R4,R4,#+8
//  935       buffer |= udata_ptr[remains];
        LDRB     R0,[R5, R3]
        ORRS     R4,R0,R4
//  936       remains--;
        SUBS     R5,R5,#+1
        B.N      ??LPLD_SDHC_Write_9
//  937     }
//  938     
//  939     //等待，直到水印空间可用 
//  940     while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
??LPLD_SDHC_Write_10:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??LPLD_SDHC_Write_10
//  941     { };
//  942     
//  943     SDHC->DATPORT = buffer;        
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        STR      R4,[R0, #+0]
//  944   }
//  945   
//  946   if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
??LPLD_SDHC_Write_7:
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Write_11
//  947   {
//  948     SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.N    R6,??DataTable9  ;; 0x400b1030
        STR      R0,[R6, #+0]
//  949     return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Write_4
//  950   }
//  951   
//  952   return (n - remains);
??LPLD_SDHC_Write_11:
        SUBS     R0,R1,R5
??LPLD_SDHC_Write_4:
        POP      {R4-R6}
        BX       LR               ;; return
//  953 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x400b102c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x400b1024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x1008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x400b10c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x400b1004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x10002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x400b1044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x7f00b3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x400b1034
//  954 
//  955 /*
//  956  * LPLD_SDHC_InitCard
//  957  * 初始化SDHC模块及SD卡，设置正常工作波特率为40MHz
//  958  * 
//  959  * 参数:
//  960  *    无
//  961  *
//  962  * 输出:
//  963  *    SDHCSTA_OK--状态正常
//  964  *    SDHCSTA_NOINIT--驱动未初始化
//  965  *    SDHCSTA_NODISK--为插入卡
//  966  *    SDHCSTA_PROTECT--卡写保护
//  967  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  968 SDHCSTATUS LPLD_SDHC_InitCard(void)
//  969 {
LPLD_SDHC_InitCard:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+40
//  970   uint32 param, c_size, c_size_mult, read_bl_len, time_out = 0;
        MOVS     R6,#+0
//  971   ESDHC_COMMAND_STRUCT command;
//  972   SDHCSTATUS result;
//  973   
//  974   //分配SD卡信息结构体的数据空间并初始化
//  975   sdcard_ptr = (SDCARD_STRUCT_PTR)malloc(sizeof(SDCARD_STRUCT));
        MOVS     R0,#+24
        BL       malloc
        LDR.N    R1,??DataTable9_1
        STR      R0,[R1, #+0]
//  976   sdcard_ptr->CARD = ESDHC_CARD_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  977   sdcard_ptr->TIMEOUT = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
//  978   sdcard_ptr->NUM_BLOCKS = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+4]
//  979   sdcard_ptr->ADDRESS = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+12]
//  980   sdcard_ptr->HC = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+8]
//  981   sdcard_ptr->VERSION2 = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+9]
//  982   sdcard_ptr->STATUS = SDHCSTA_OK;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  983    
//  984   while(time_out < 1000)
??LPLD_SDHC_InitCard_0:
        CMP      R6,#+1000
        BCS.N    ??LPLD_SDHC_InitCard_1
//  985   {
//  986     
//  987     //初始化SDHC模块并检测卡
//  988     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_INIT, NULL)))
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BNE.N    ??LPLD_SDHC_InitCard_0
//  989     {
//  990       continue;
//  991     }
//  992     
//  993     //SDHC检查
//  994     param = 0;
??LPLD_SDHC_InitCard_2:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  995     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_GET_CARD, &param)))
        ADD      R1,SP,#+0
        MOVS     R0,#+3
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BNE.N    ??LPLD_SDHC_InitCard_0
//  996     {
//  997       continue;
//  998     }
//  999     if ((ESDHC_CARD_SD == param) || (ESDHC_CARD_SDHC == param) || (ESDHC_CARD_SDCOMBO == param) || (ESDHC_CARD_SDHCCOMBO == param))
??LPLD_SDHC_InitCard_3:
        LDR      R0,[SP, #+0]
        CMP      R0,#+2
        BEQ.N    ??LPLD_SDHC_InitCard_4
        LDR      R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??LPLD_SDHC_InitCard_4
        LDR      R0,[SP, #+0]
        CMP      R0,#+5
        BEQ.N    ??LPLD_SDHC_InitCard_4
        LDR      R0,[SP, #+0]
        CMP      R0,#+6
        BNE.N    ??LPLD_SDHC_InitCard_5
// 1000     {
// 1001       if ((ESDHC_CARD_SDHC == param) || (ESDHC_CARD_SDHCCOMBO == param))
??LPLD_SDHC_InitCard_4:
        LDR      R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??LPLD_SDHC_InitCard_6
        LDR      R0,[SP, #+0]
        CMP      R0,#+6
        BNE.N    ??LPLD_SDHC_InitCard_7
// 1002       {
// 1003         sdcard_ptr->HC = TRUE;
??LPLD_SDHC_InitCard_6:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+8]
// 1004         break;
        B.N      ??LPLD_SDHC_InitCard_1
// 1005       }
// 1006       else if(ESDHC_CARD_SD == param)
??LPLD_SDHC_InitCard_7:
        LDR      R0,[SP, #+0]
        CMP      R0,#+2
        BEQ.N    ??LPLD_SDHC_InitCard_1
// 1007       {
// 1008         break;
// 1009       }
// 1010     }
// 1011     else
// 1012     {
// 1013       continue;
// 1014     }
// 1015     time_out++;
??LPLD_SDHC_InitCard_8:
        ADDS     R6,R6,#+1
        B.N      ??LPLD_SDHC_InitCard_0
??LPLD_SDHC_InitCard_5:
        B.N      ??LPLD_SDHC_InitCard_0
// 1016   }
// 1017   
// 1018   if(time_out >= 1000)
??LPLD_SDHC_InitCard_1:
        CMP      R6,#+1000
        BCC.N    ??LPLD_SDHC_InitCard_9
// 1019     return SDHCRES_NOTRDY;
        MOVS     R0,#+3
        B.N      ??LPLD_SDHC_InitCard_10
// 1020   
// 1021   //卡识别
// 1022   command.COMMAND = ESDHC_CMD2;
??LPLD_SDHC_InitCard_9:
        LDR.W    R0,??DataTable11_7  ;; 0x2090000
        STR      R0,[SP, #+4]
// 1023   command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
// 1024   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1025   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_11
// 1026   {
// 1027     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1028   }
// 1029   
// 1030   //获取卡地址
// 1031   command.COMMAND = ESDHC_CMD3;
??LPLD_SDHC_InitCard_11:
        LDR.W    R0,??DataTable11_8  ;; 0x31a0000
        STR      R0,[SP, #+4]
// 1032   command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
// 1033   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1034   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_12
// 1035   {
// 1036     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1037   }
// 1038   sdcard_ptr->ADDRESS = command.RESPONSE[0] & 0xFFFF0000;
??LPLD_SDHC_InitCard_12:
        LDR      R0,[SP, #+20]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+12]
// 1039   
// 1040   //获取卡参数
// 1041   command.COMMAND = ESDHC_CMD9;
        LDR.W    R0,??DataTable11_9  ;; 0x9090000
        STR      R0,[SP, #+4]
// 1042   command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1043   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1044   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_13
// 1045   {
// 1046     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1047   }
// 1048   if (0 == (command.RESPONSE[3] & 0x00C00000))
??LPLD_SDHC_InitCard_13:
        LDR      R0,[SP, #+32]
        TST      R0,#0xC00000
        BNE.N    ??LPLD_SDHC_InitCard_14
// 1049   {
// 1050     read_bl_len = (command.RESPONSE[2] >> 8) & 0x0F;
        LDR      R0,[SP, #+28]
        UBFX     R0,R0,#+8,#+4
        MOVS     R5,R0
// 1051     c_size = command.RESPONSE[2] & 0x03;
        LDRB     R0,[SP, #+28]
        ANDS     R0,R0,#0x3
        MOVS     R7,R0
// 1052     c_size = (c_size << 10) | (command.RESPONSE[1] >> 22);
        LDR      R0,[SP, #+24]
        LSRS     R0,R0,#+22
        ORRS     R7,R0,R7, LSL #+10
// 1053     c_size_mult = (command.RESPONSE[1] >> 7) & 0x07;
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+7,#+3
        MOVS     R4,R0
// 1054     sdcard_ptr->NUM_BLOCKS = (c_size + 1) * (1 << (c_size_mult + 2)) * (1 << (read_bl_len - 9));
        ADDS     R0,R7,#+1
        MOVS     R1,#+1
        ADDS     R2,R4,#+2
        LSLS     R1,R1,R2
        MULS     R0,R1,R0
        MOVS     R1,#+1
        MOVS     R2,R5
        SUBS     R2,R2,#+9
        LSLS     R1,R1,R2
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+4]
        B.N      ??LPLD_SDHC_InitCard_15
// 1055   }
// 1056   else
// 1057   {
// 1058     sdcard_ptr->VERSION2 = TRUE;
??LPLD_SDHC_InitCard_14:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+9]
// 1059     c_size = (command.RESPONSE[1] >> 8) & 0x003FFFFF;
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+8,#+22
        MOVS     R7,R0
// 1060     sdcard_ptr->NUM_BLOCKS = (c_size + 1) << 10;
        ADDS     R0,R7,#+1
        LSLS     R0,R0,#+10
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+4]
// 1061   }
// 1062   
// 1063   //设置正常工作波特率为40MHz
// 1064   //param = 40000000;    
// 1065   param = 25000000;      
??LPLD_SDHC_InitCard_15:
        LDR.N    R0,??DataTable11_5  ;; 0x17d7840
        STR      R0,[SP, #+0]
// 1066   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SET_BAUDRATE, &param)))
        ADD      R1,SP,#+0
        MOVS     R0,#+5
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_16
// 1067   {
// 1068     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1069   }
// 1070   
// 1071   //选择卡
// 1072   command.COMMAND = ESDHC_CMD7;
??LPLD_SDHC_InitCard_16:
        LDR.N    R0,??DataTable11_10  ;; 0x71b0000
        STR      R0,[SP, #+4]
// 1073   command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1074   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1075   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_17
// 1076   {
// 1077     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1078   }
// 1079   
// 1080   //设置块大小为512字节
// 1081   command.COMMAND = ESDHC_CMD16;
??LPLD_SDHC_InitCard_17:
        LDR.N    R0,??DataTable11_11  ;; 0x101a0000
        STR      R0,[SP, #+4]
// 1082   command.ARGUMENT = IO_SDCARD_BLOCK_SIZE;
        MOV      R0,#+512
        STR      R0,[SP, #+8]
// 1083   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1084   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_18
// 1085   {
// 1086     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1087   }
// 1088   
// 1089   if (ESDHC_BUS_WIDTH_4BIT == ESDHC_BUS_WIDTH_4BIT)
// 1090   {
// 1091     //特殊应用命令
// 1092     command.COMMAND = ESDHC_CMD55;
??LPLD_SDHC_InitCard_18:
        LDR.N    R0,??DataTable11_1  ;; 0x371a0000
        STR      R0,[SP, #+4]
// 1093     command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1094     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1095     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_19
// 1096     {
// 1097       return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1098     }
// 1099     
// 1100     //设置总线宽度为4bit
// 1101     command.COMMAND = ESDHC_ACMD6;
??LPLD_SDHC_InitCard_19:
        LDR.N    R0,??DataTable11_12  ;; 0x61a0000
        STR      R0,[SP, #+4]
// 1102     command.ARGUMENT = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
// 1103     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1104     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_20
// 1105     {
// 1106       return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1107     }
// 1108     
// 1109     param = ESDHC_BUS_WIDTH_4BIT;
??LPLD_SDHC_InitCard_20:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
// 1110     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SET_BUS_WIDTH, &param)))
        ADD      R1,SP,#+0
        MOVS     R0,#+7
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_21
// 1111     {
// 1112       return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1113     }
// 1114   }
// 1115   
// 1116   return SDHCRES_OK;
??LPLD_SDHC_InitCard_21:
        MOVS     R0,#+0
??LPLD_SDHC_InitCard_10:
        ADD      SP,SP,#+40
        POP      {R4-R8,PC}       ;; return
// 1117 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x400b1030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     sdcard_ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x400b1028
// 1118 
// 1119 
// 1120 /*
// 1121  * LPLD_SDHC_ReadBlocks
// 1122  * 读指定扇区指定长度的块
// 1123  * 
// 1124  * 参数:
// 1125  *    buff--存储读出数据的地址指针
// 1126  *    sector--开始的扇区号
// 1127  *    count--读出的扇区数（块数）
// 1128  *
// 1129  * 输出:
// 1130  *    SDHCRES--磁盘功能返回值
// 1131  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1132 SDHCRES LPLD_SDHC_ReadBlocks(uint8 *buff, uint32 sector, uint32 count)
// 1133 {
LPLD_SDHC_ReadBlocks:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R5,R2
// 1134   ESDHC_COMMAND_STRUCT command;
// 1135   int cnt;
// 1136   int32 result;
// 1137   
// 1138   //SD卡数据地址调节
// 1139   if (! sdcard_ptr->HC)
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_ReadBlocks_0
// 1140   {
// 1141     sector <<= IO_SDCARD_BLOCK_SIZE_POWER;
        LSLS     R8,R8,#+9
// 1142   }
// 1143   
// 1144   //设置读块命令
// 1145   if (count > 1)
??LPLD_SDHC_ReadBlocks_0:
        CMP      R5,#+2
        BCC.N    ??LPLD_SDHC_ReadBlocks_1
// 1146   {
// 1147     command.COMMAND = ESDHC_CMD18;
        LDR.N    R0,??DataTable11_14  ;; 0x121a0034
        STR      R0,[SP, #+0]
        B.N      ??LPLD_SDHC_ReadBlocks_2
// 1148   }   
// 1149   else
// 1150   {
// 1151     command.COMMAND = ESDHC_CMD17;
??LPLD_SDHC_ReadBlocks_1:
        LDR.N    R0,??DataTable11_15  ;; 0x111a0010
        STR      R0,[SP, #+0]
// 1152   }
// 1153   
// 1154   command.ARGUMENT = sector;
??LPLD_SDHC_ReadBlocks_2:
        STR      R8,[SP, #+4]
// 1155   command.BLOCKS = count;
        STR      R5,[SP, #+8]
// 1156   command.BLOCKSIZE = IO_SDCARD_BLOCK_SIZE;
        MOV      R0,#+512
        STR      R0,[SP, #+12]
// 1157   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??LPLD_SDHC_ReadBlocks_3
// 1158   {
// 1159     return (SDHCRES)result;
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_ReadBlocks_4
// 1160   }
// 1161   
// 1162   //读取数据
// 1163   for (cnt = 0; cnt < count; cnt++)
??LPLD_SDHC_ReadBlocks_3:
        MOVS     R0,#+0
        MOVS     R6,R0
??LPLD_SDHC_ReadBlocks_5:
        CMP      R6,R5
        BCS.N    ??LPLD_SDHC_ReadBlocks_6
// 1164   {
// 1165     if (IO_SDCARD_BLOCK_SIZE != (result=LPLD_SDHC_Read(buff,IO_SDCARD_BLOCK_SIZE)))
        MOV      R1,#+512
        MOVS     R0,R4
        BL       LPLD_SDHC_Read
        MOVS     R7,R0
        CMP      R0,#+512
        BEQ.N    ??LPLD_SDHC_ReadBlocks_7
// 1166     {
// 1167       return (SDHCRES)result;
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_ReadBlocks_4
// 1168     }
// 1169     buff += IO_SDCARD_BLOCK_SIZE;
??LPLD_SDHC_ReadBlocks_7:
        ADDS     R4,R4,#+512
// 1170   }
        ADDS     R6,R6,#+1
        B.N      ??LPLD_SDHC_ReadBlocks_5
// 1171   
// 1172   //等待传输结束
// 1173   if (SDHCRES_OK !=(result=LPLD_SDHC_IOC (IO_IOCTL_FLUSH_OUTPUT, NULL)))
??LPLD_SDHC_ReadBlocks_6:
        MOVS     R1,#+0
        MOVS     R0,#+147
        BL       LPLD_SDHC_IOC
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??LPLD_SDHC_ReadBlocks_8
// 1174   {
// 1175     return (SDHCRES)result;
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_ReadBlocks_4
// 1176   }
// 1177   
// 1178   return (SDHCRES)result;
??LPLD_SDHC_ReadBlocks_8:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_SDHC_ReadBlocks_4:
        ADD      SP,SP,#+32
        POP      {R4-R8,PC}       ;; return
// 1179 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x400b1008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x400b1000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x400b100c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0xe0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x400b1010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x400b1014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x400b1018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x400b101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x61a80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x81a0000
// 1180 
// 1181 
// 1182 /*
// 1183  * LPLD_SDHC_WriteBlocks
// 1184  * 在指定扇区写入指定长度块数数据
// 1185  * 
// 1186  * 参数:
// 1187  *    buff--存储待写入数据的地址指针
// 1188  *    sector--开始的扇区号
// 1189  *    count--写入的扇区数（块数）
// 1190  *
// 1191  * 输出:
// 1192  *    SDHCRES--磁盘功能返回值
// 1193  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1194 SDHCRES LPLD_SDHC_WriteBlocks(uint8* buff, uint32 sector, uint32 count)
// 1195 {
LPLD_SDHC_WriteBlocks:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+40
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
// 1196     ESDHC_COMMAND_STRUCT command;
// 1197     uint8               tmp[4];
// 1198     int32             cnt;
// 1199       int32 result;
// 1200     
// 1201  
// 1202     //SD卡数据地址调节
// 1203     if (! sdcard_ptr->HC)
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_WriteBlocks_0
// 1204     {
// 1205         sector <<= IO_SDCARD_BLOCK_SIZE_POWER;
        LSLS     R5,R5,#+9
// 1206     }
// 1207 
// 1208     //设置写块命令
// 1209     if (count > 1)
??LPLD_SDHC_WriteBlocks_0:
        CMP      R4,#+2
        BCC.N    ??LPLD_SDHC_WriteBlocks_1
// 1210     {
// 1211         command.COMMAND = ESDHC_CMD25;
        LDR.N    R0,??DataTable11_16  ;; 0x191a0024
        STR      R0,[SP, #+4]
        B.N      ??LPLD_SDHC_WriteBlocks_2
// 1212     }
// 1213     else
// 1214     {
// 1215         command.COMMAND = ESDHC_CMD24;
??LPLD_SDHC_WriteBlocks_1:
        LDR.N    R0,??DataTable11_17  ;; 0x181a0000
        STR      R0,[SP, #+4]
// 1216     }
// 1217 
// 1218     command.ARGUMENT = sector;
??LPLD_SDHC_WriteBlocks_2:
        STR      R5,[SP, #+8]
// 1219     command.BLOCKS = count;
        STR      R4,[SP, #+12]
// 1220     command.BLOCKSIZE = IO_SDCARD_BLOCK_SIZE;
        MOV      R0,#+512
        STR      R0,[SP, #+16]
// 1221     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_3
// 1222     {
// 1223         return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1224     }
// 1225     
// 1226     //写数据
// 1227     for (cnt = 0; cnt < count; cnt++)
??LPLD_SDHC_WriteBlocks_3:
        MOVS     R0,#+0
        MOVS     R7,R0
??LPLD_SDHC_WriteBlocks_5:
        CMP      R7,R4
        BCS.N    ??LPLD_SDHC_WriteBlocks_6
// 1228     {
// 1229         if (IO_SDCARD_BLOCK_SIZE != (result=LPLD_SDHC_Write (buff, IO_SDCARD_BLOCK_SIZE)))
        MOV      R1,#+512
        MOVS     R0,R6
        BL       LPLD_SDHC_Write
        MOV      R8,R0
        CMP      R0,#+512
        BEQ.N    ??LPLD_SDHC_WriteBlocks_7
// 1230         {
// 1231             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1232         }
// 1233         buff += IO_SDCARD_BLOCK_SIZE;
??LPLD_SDHC_WriteBlocks_7:
        ADDS     R6,R6,#+512
// 1234     }
        ADDS     R7,R7,#+1
        B.N      ??LPLD_SDHC_WriteBlocks_5
// 1235 
// 1236     //等待传输结束
// 1237     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_FLUSH_OUTPUT, NULL)))
??LPLD_SDHC_WriteBlocks_6:
        MOVS     R1,#+0
        MOVS     R0,#+147
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_8
// 1238     {
// 1239         return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1240     }
// 1241 
// 1242     //等待卡准备好/传输状态
// 1243     do
// 1244     {
// 1245         command.COMMAND = ESDHC_CMD13;
??LPLD_SDHC_WriteBlocks_8:
        LDR.N    R0,??DataTable11_18  ;; 0xd1a0000
        STR      R0,[SP, #+4]
// 1246         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1247         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1248         if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_9
// 1249         {
// 1250             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1251         }
// 1252 
// 1253         //卡状态错误检查
// 1254         if (command.RESPONSE[0] & 0xFFD98008)
??LPLD_SDHC_WriteBlocks_9:
        LDR      R0,[SP, #+20]
        LDR.N    R1,??DataTable11_19  ;; 0xffd98008
        TST      R0,R1
        BEQ.N    ??LPLD_SDHC_WriteBlocks_10
// 1255         {
// 1256             count = 0; /* necessary to get real number of written blocks */
        MOVS     R0,#+0
        MOVS     R4,R0
// 1257             break;
        B.N      ??LPLD_SDHC_WriteBlocks_11
// 1258         }
// 1259 
// 1260     } while (0x000000900 != (command.RESPONSE[0] & 0x00001F00));
??LPLD_SDHC_WriteBlocks_10:
        LDR      R0,[SP, #+20]
        ANDS     R0,R0,#0x1F00
        CMP      R0,#+2304
        BNE.N    ??LPLD_SDHC_WriteBlocks_8
// 1261 
// 1262     if (cnt != count)
??LPLD_SDHC_WriteBlocks_11:
        CMP      R7,R4
        BEQ.N    ??LPLD_SDHC_WriteBlocks_12
// 1263     {
// 1264         //特殊应用命令
// 1265         command.COMMAND = ESDHC_CMD55;
        LDR.N    R0,??DataTable11_1  ;; 0x371a0000
        STR      R0,[SP, #+4]
// 1266         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1267         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1268         if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_13
// 1269         {
// 1270             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1271         }
// 1272                 
// 1273         //使用ACMD22命令获得写入的块数量
// 1274         command.COMMAND = ESDHC_ACMD22;
??LPLD_SDHC_WriteBlocks_13:
        LDR.N    R0,??DataTable11_20  ;; 0x161a0010
        STR      R0,[SP, #+4]
// 1275         command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
// 1276         command.BLOCKS = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
// 1277         command.BLOCKSIZE = 4;
        MOVS     R0,#+4
        STR      R0,[SP, #+16]
// 1278         if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_14
// 1279         {
// 1280             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1281         }
// 1282         
// 1283         if (4 != (result=LPLD_SDHC_Read (tmp, 4)))
??LPLD_SDHC_WriteBlocks_14:
        MOVS     R1,#+4
        ADD      R0,SP,#+0
        BL       LPLD_SDHC_Read
        MOV      R8,R0
        CMP      R0,#+4
        BEQ.N    ??LPLD_SDHC_WriteBlocks_15
// 1284         {
// 1285             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1286             
// 1287         }
// 1288 
// 1289         if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_FLUSH_OUTPUT, NULL)))
??LPLD_SDHC_WriteBlocks_15:
        MOVS     R1,#+0
        MOVS     R0,#+147
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_16
// 1290         {
// 1291             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1292         }
// 1293 
// 1294         count = (tmp[0] << 24) | (tmp[1] << 16) | (tmp[2] << 8) | tmp[3];
??LPLD_SDHC_WriteBlocks_16:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[SP, #+2]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[SP, #+3]
        ORRS     R0,R1,R0
        MOVS     R4,R0
// 1295         if ((cnt < 0) || (cnt > count))
        CMP      R7,#+0
        BMI.N    ??LPLD_SDHC_WriteBlocks_17
        CMP      R4,R7
        BCS.N    ??LPLD_SDHC_WriteBlocks_12
// 1296             return SDHCRES_ERROR;
??LPLD_SDHC_WriteBlocks_17:
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1297     }
// 1298     
// 1299     return SDHCRES_OK;
??LPLD_SDHC_WriteBlocks_12:
        MOVS     R0,#+0
??LPLD_SDHC_WriteBlocks_4:
        ADD      SP,SP,#+40
        POP      {R4-R8,PC}       ;; return
// 1300 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x5020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x371a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x40300000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x27020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x29020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x17d7840

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0x400b1020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     0x2090000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     0x31a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     0x9090000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     0x71b0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     0x101a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     0x61a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     sdcard_ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     0x121a0034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     0x111a0010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     0x191a0024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     0x181a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_18:
        DC32     0xd1a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_19:
        DC32     0xffd98008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_20:
        DC32     0x161a0010

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
//     4 bytes in section .bss
// 4 346 bytes in section .text
// 
// 4 346 bytes of CODE memory
//     4 bytes of DATA memory
//
//Errors: none
//Warnings: none
