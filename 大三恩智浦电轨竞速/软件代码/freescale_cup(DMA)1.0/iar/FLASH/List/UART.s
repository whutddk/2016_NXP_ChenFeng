///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       02/Jan/2016  16:00:28
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\UART.c
//    Command line =  
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\UART.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -lB
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -o
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\sensor\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\UART.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_EnableIrq
        EXTERN LPLD_UART_Init
        EXTERN __aeabi_memcpy4
        EXTERN freecars_isr

        PUBLIC UART_init
        PUBLIC uart_init_struct

// G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\UART.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 UART_InitTypeDef uart_init_struct;/*���ں�*/
uart_init_struct:
        DS8 28
//    4 
//    5 #if USE_UART5
//    6 
//    7 void UART_init()
//    8 {
//    9   uart_init_struct.UART_Uartx = UART5; //ʹ��UARTx
//   10   uart_init_struct.UART_BaudRate = 115200; /*���ò�����(9600)*/
//   11   uart_init_struct.UART_RxPin = PTE9;  //��������ΪPTA15
//   12   uart_init_struct.UART_TxPin = PTE8;  //��������ΪPTA14
//   13   uart_init_struct.UART_RxIntEnable = TRUE;
//   14   uart_init_struct.UART_RxIsr = freecars_isr; //��λ������
//   15   //��ʼ��UART
//   16   LPLD_UART_Init(uart_init_struct);
//   17   LPLD_UART_EnableIrq(uart_init_struct);
//   18 }
//   19 
//   20 #else
//   21 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   22 void UART_init()
//   23 {
UART_init:
        PUSH     {R5-R7,LR}
//   24   uart_init_struct.UART_Uartx = UART0; //ʹ��UARTx
        LDR.N    R0,??UART_init_0  ;; 0x4006a000
        LDR.N    R1,??UART_init_0+0x4
        STR      R0,[R1, #+0]
//   25   uart_init_struct.UART_BaudRate = 115200; /*���ò�����(9600)*/
        MOVS     R0,#+115200
        LDR.N    R1,??UART_init_0+0x4
        STR      R0,[R1, #+4]
//   26   uart_init_struct.UART_RxPin = PTA15;  //��������ΪPTA15
        MOVS     R0,#+15
        LDR.N    R1,??UART_init_0+0x4
        STRB     R0,[R1, #+9]
//   27   uart_init_struct.UART_TxPin = PTA14;  //��������ΪPTA14
        MOVS     R0,#+14
        LDR.N    R1,??UART_init_0+0x4
        STRB     R0,[R1, #+8]
//   28   uart_init_struct.UART_RxIntEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??UART_init_0+0x4
        STRB     R0,[R1, #+10]
//   29   uart_init_struct.UART_RxIsr = freecars_isr; //��λ������
        LDR.N    R0,??UART_init_0+0x8
        LDR.N    R1,??UART_init_0+0x4
        STR      R0,[R1, #+20]
//   30   //��ʼ��UART
//   31   LPLD_UART_Init(uart_init_struct);
        LDR.N    R1,??UART_init_0+0x4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   32   LPLD_UART_EnableIrq(uart_init_struct);
        LDR.N    R1,??UART_init_0+0x4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_EnableIrq
//   33 }
        POP      {R0-R2,PC}       ;; return
        Nop      
        DATA
??UART_init_0:
        DC32     0x4006a000
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
