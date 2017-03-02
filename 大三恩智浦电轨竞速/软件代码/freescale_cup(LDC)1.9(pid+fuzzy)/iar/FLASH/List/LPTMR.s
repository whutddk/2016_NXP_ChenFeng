///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       28/Nov/2015  12:51:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\BSP\LPTMR.c
//    Command line =  
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\BSP\LPTMR.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\List\
//        -lB
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\List\
//        -o
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\MAIN\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\BSP\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\CTL\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\sensor\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\ITAC\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\CPU\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\common\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\LPLD\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\LPLD\HW\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\FatFs\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\FatFs\option\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\USB\common\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\USB\driver\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\USB\descriptor\
//        -I
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\USB\class\
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\List\LPTMR.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_LPTMR_GetPulseAcc
        EXTERN LPLD_LPTMR_Init
        EXTERN LPLD_LPTMR_ResetCounter

        PUBLIC LPTMR_inittype
        PUBLIC lptmr_get
        PUBLIC lptmr_init

// X:\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\BSP\LPTMR.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 LPTMR_InitTypeDef LPTMR_inittype;
LPTMR_inittype:
        DS8 12
//    4 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void lptmr_init()
//    6 {
lptmr_init:
        PUSH     {R7,LR}
//    7   LPTMR_inittype.LPTMR_Mode = LPTMR_MODE_PLACC;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable0
        STRB     R0,[R1, #+0]
//    8   LPTMR_inittype.LPTMR_PluseAccInput = LPTMR_ALT2;//c5 
        MOVS     R0,#+2
        LDR.N    R1,??DataTable0
        STRB     R0,[R1, #+4]
//    9   LPTMR_inittype.LPTMR_Isr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   10   
//   11   LPLD_LPTMR_Init(LPTMR_inittype);
        LDR.N    R0,??DataTable0
        LDM      R0,{R0-R2}
        BL       LPLD_LPTMR_Init
//   12 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     LPTMR_inittype
//   13 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   14 uint16 lptmr_get()
//   15 {
lptmr_get:
        PUSH     {R4,LR}
//   16   uint16 temp;
//   17   
//   18   temp = LPLD_LPTMR_GetPulseAcc();
        BL       LPLD_LPTMR_GetPulseAcc
        MOVS     R4,R0
//   19   
//   20   LPLD_LPTMR_ResetCounter();       //¸´Î»LPTMR0 counter 
        BL       LPLD_LPTMR_ResetCounter
//   21   lptmr_init();
        BL       lptmr_init
//   22   
//   23   return temp;
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4,PC}          ;; return
//   24 }

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
// 12 bytes in section .bss
// 56 bytes in section .text
// 
// 56 bytes of CODE memory
// 12 bytes of DATA memory
//
//Errors: none
//Warnings: none
