///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  16:39:23
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\UART.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\UART.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\sensor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\UART.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_Init
        EXTERN __aeabi_memcpy4
        EXTERN freecars_isr

        PUBLIC UART_init
        PUBLIC uart_init_struct

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\UART.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 UART_InitTypeDef uart_init_struct;
uart_init_struct:
        DS8 28
//    4 
//    5 #if USE_UART5
//    6 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    7 void UART_init()
//    8 {
UART_init:
        PUSH     {R5-R7,LR}
//    9   uart_init_struct.UART_Uartx = UART5; //使用UARTx
        LDR.N    R0,??UART_init_0  ;; 0x400eb000
        LDR.N    R1,??UART_init_0+0x4
        STR      R0,[R1, #+0]
//   10   uart_init_struct.UART_BaudRate = 115200; //设置波特率(115200)
        MOVS     R0,#+115200
        LDR.N    R1,??UART_init_0+0x4
        STR      R0,[R1, #+4]
//   11   uart_init_struct.UART_RxPin = PTE9;  //接收引脚为PTA15
        MOVS     R0,#+133
        LDR.N    R1,??UART_init_0+0x4
        STRB     R0,[R1, #+9]
//   12   uart_init_struct.UART_TxPin = PTE8;  //发送引脚为PTA14
        MOVS     R0,#+132
        LDR.N    R1,??UART_init_0+0x4
        STRB     R0,[R1, #+8]
//   13   uart_init_struct.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??UART_init_0+0x4
        STRB     R0,[R1, #+10]
//   14   uart_init_struct.UART_RxIsr = freecars_isr; //上位机接收
        LDR.N    R0,??UART_init_0+0x8
        LDR.N    R1,??UART_init_0+0x4
        STR      R0,[R1, #+20]
//   15   //初始化UART
//   16   LPLD_UART_Init(uart_init_struct);
        LDR.N    R1,??UART_init_0+0x4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   17   LPLD_UART_EnableIrq(uart_init_struct);
        LDR.N    R1,??UART_init_0+0x4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   18 }
        POP      {R0-R2,PC}       ;; return
        Nop      
        DATA
??UART_init_0:
        DC32     0x400eb000
        DC32     uart_init_struct
        DC32     freecars_isr

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   19 
//   20 #else
//   21 
//   22 void UART_init()
//   23 {
//   24   uart_init_struct.UART_Uartx = UART0; //使用UARTx
//   25   uart_init_struct.UART_BaudRate = 115200; //设置波特率(115200)
//   26   uart_init_struct.UART_RxPin = PTA15;  //接收引脚为PTA15
//   27   uart_init_struct.UART_TxPin = PTA14;  //发送引脚为PTA14
//   28   uart_init_struct.UART_RxIntEnable = TRUE;
//   29   uart_init_struct.UART_RxIsr = freecars_isr; //上位机接收
//   30   //初始化UART
//   31   LPLD_UART_Init(uart_init_struct);
//   32   LPLD_UART_EnableIrq(uart_init_struct);
//   33 }
//   34 #endif
// 
// 28 bytes in section .bss
// 92 bytes in section .text
// 
// 92 bytes of CODE memory
// 28 bytes of DATA memory
//
//Errors: none
//Warnings: none
