///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       02/Jan/2016  16:00:27
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\nvic.c
//    Command line =  
//        "G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\nvic.c"
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
//        G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\nvic.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_NVIC_Init
        EXTERN __aeabi_memcpy4

        PUBLIC NVIC_init
        PUBLIC nvic_init_struct

// G:\快盘网络撤离\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\nvic.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 NVIC_InitTypeDef nvic_init_struct;
nvic_init_struct:
        DS8 20
//    4 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    5 void NVIC_init()
//    6 {
NVIC_init:
        PUSH     {R7,LR}
//    7   //上位机的接收中断应该最高
//    8 #if USE_UART5
//    9   nvic_init_struct.NVIC_IRQChannel = UART5_RX_TX_IRQn;
//   10 #else
//   11   nvic_init_struct.NVIC_IRQChannel = UART0_RX_TX_IRQn;
        MOVS     R0,#+45
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+0]
//   12 #endif
//   13   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
        MOVS     R0,#+4
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+4]
//   14   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 0;
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+8]
//   15   nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+12]
//   16   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+16]
//   17   LPLD_NVIC_Init(nvic_init_struct);
        LDR.N    R1,??NVIC_init_0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   18       
//   19   nvic_init_struct.NVIC_IRQChannel = PIT0_IRQn; //1ms调度，内部只有计数
        MOVS     R0,#+68
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+0]
//   20   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
        MOVS     R0,#+4
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+4]
//   21   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 1;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+8]
//   22   nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+12]
//   23   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+16]
//   24   LPLD_NVIC_Init(nvic_init_struct);
        LDR.N    R1,??NVIC_init_0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   25   
//   26   nvic_init_struct.NVIC_IRQChannel = PIT1_IRQn;//控制系统调度，理应包括CCD读取和PID_ctl
        MOVS     R0,#+69
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+0]
//   27   nvic_init_struct.NVIC_IRQChannelGroupPriority = NVIC_PriorityGroup_3;
        MOVS     R0,#+4
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+4]
//   28   nvic_init_struct.NVIC_IRQChannelPreemptionPriority = 2;
        MOVS     R0,#+2
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+8]
//   29   nvic_init_struct.NVIC_IRQChannelSubPriority = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??NVIC_init_0
        STR      R0,[R1, #+12]
//   30   nvic_init_struct.NVIC_IRQChannelEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??NVIC_init_0
        STRB     R0,[R1, #+16]
//   31   LPLD_NVIC_Init(nvic_init_struct);
        LDR.N    R1,??NVIC_init_0
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_NVIC_Init
//   32   
//   33   
//   34 }
        POP      {R0,PC}          ;; return
        DATA
??NVIC_init_0:
        DC32     nvic_init_struct

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
//  20 bytes in section .bss
// 152 bytes in section .text
// 
// 152 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
