///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:03:04
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\BSP\PIT.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\BSP\PIT.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\sensor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\PIT.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CTL_isr
        EXTERN LPLD_PIT_Init
        EXTERN MCNT_isr
        EXTERN __aeabi_memcpy4

        PUBLIC PIT0_init
        PUBLIC PIT1_init
        PUBLIC pit_init_struct

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\BSP\PIT.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 PIT_InitTypeDef pit_init_struct;
pit_init_struct:
        DS8 20
//    4 
//    5 //主系统时钟 //1MS 一次中断

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void PIT0_init()
//    7 {
PIT0_init:
        PUSH     {R7,LR}
//    8   pit_init_struct.PIT_Pitx = PIT0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//    9   pit_init_struct.PIT_PeriodS = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+12]
//   10   pit_init_struct.PIT_PeriodMs = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+8]
//   11   pit_init_struct.PIT_PeriodUs = 0;     //定时周期
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+4]
//   12   pit_init_struct.PIT_Isr = MCNT_isr;  //设置中断函数
        LDR.N    R0,??DataTable1_1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+16]
//   13  
//   14   LPLD_PIT_Init(pit_init_struct);  //初始化PIT0
        LDR.N    R1,??DataTable1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   15   
//   16   //LPLD_PIT_EnableIrq(pit_init_struct);
//   17 }
        POP      {R0,PC}          ;; return
//   18 
//   19 //控制系统时钟 //暂定10ms

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   20 void PIT1_init()
//   21 {
PIT1_init:
        PUSH     {R7,LR}
//   22   //配置PIT2参数
//   23   pit_init_struct.PIT_Pitx = PIT1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//   24   pit_init_struct.PIT_PeriodS = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+12]
//   25   pit_init_struct.PIT_PeriodMs = 10;
        MOVS     R0,#+10
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+8]
//   26   pit_init_struct.PIT_PeriodUs = 0;     //定时周期
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+4]
//   27   pit_init_struct.PIT_Isr = CTL_isr;  //设置中断函数
        LDR.N    R0,??DataTable1_2
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+16]
//   28   
//   29   LPLD_PIT_Init(pit_init_struct); //初始化PIT1 
        LDR.N    R1,??DataTable1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   30   //LPLD_PIT_EnableIrq(pit_init_struct);
//   31 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     pit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     MCNT_isr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     CTL_isr

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   32 
// 
//  20 bytes in section .bss
// 116 bytes in section .text
// 
// 116 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
