///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       02/Jan/2016  16:00:27
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\motto.c
//    Command line =  
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\motto.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -lB
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -o
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\sensor\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\motto.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN ctl

        PUBLIC ctl_sped
        PUBLIC motto_getsped
        PUBLIC motto_set

// G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\motto.c
//    1 //µç»ú¿ØÖÆ
//    2 #include "include.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void motto_set()
//    5 {
motto_set:
        PUSH     {R7,LR}
//    6   //ÏÞ·ù
//    7   if ( ctl.motto.out > 7000 )
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable2_1  ;; 0x45dac001
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_0
//    8   {
//    9     ctl.motto.out = 7000;
        LDR.N    R0,??DataTable2_2  ;; 0x45dac000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+60]
        B.N      ??motto_set_1
//   10   }
//   11   else if ( ctl.motto.out < -7000 )
??motto_set_0:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable2_3  ;; 0xc5dac000
        BL       __aeabi_cfcmple
        BCS.N    ??motto_set_1
//   12   {
//   13     ctl.motto.out = -7000;
        LDR.N    R0,??DataTable2_3  ;; 0xc5dac000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+60]
//   14   }
//   15 
//   16     
//   17   if ( ctl.motto.out >= 0.000000  )
??motto_set_1:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+60]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_2
//   18   {
//   19     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (uint32) ( ctl.motto.out ) );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   20     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) 0 );
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??motto_set_3
//   21   }
//   22   else if ( ctl.motto.out < 0.000000 )
??motto_set_2:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+60]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??motto_set_3
//   23   {
//   24     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   25     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) ( -ctl.motto.out ) );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+60]
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   26   }
//   27   
//   28 
//   29 }
??motto_set_3:
        POP      {R0,PC}          ;; return
//   30 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   31 void motto_getsped()
//   32 {
motto_getsped:
        PUSH     {R7,LR}
//   33   ctl.motto.sped_cur =  LPLD_FTM_GetCounter(FTM2);
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_GetCounter
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+36]
//   34   LPLD_FTM_ClearCounter(FTM2);
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_ClearCounter
//   35 }
        POP      {R0,PC}          ;; return
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 void ctl_sped() //ËÙ¶È¿ØÖÆ£¬ÔöÁ¿Ê½PI¿ØÖÆ
//   38 {
ctl_sped:
        PUSH     {R7,LR}
//   39   ctl.motto.error[1] = ctl.motto.sped_cur - ctl.motto.aim;
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+36]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+38]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+68]
//   40   
//   41   ctl.motto.result  = -ctl.motto.Kp  * ( ctl.motto.error[1] - ctl.motto.error[0] );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+68]
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+64]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+40]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+56]
//   42   ctl.motto.result += -ctl.motto.Ki  *   ctl.motto.error[1];
        LDR.N    R0,??DataTable2
        LDR      R1,[R0, #+44]
        EORS     R1,R1,#0x80000000
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+68]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+56]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+56]
//   43   
//   44   ctl.motto.error[0] = ctl.motto.error[1];  
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+68]
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+64]
//   45   ctl.motto.out += ctl.motto.result;
        LDR.N    R0,??DataTable2
        LDR      R1,[R0, #+60]
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+56]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+60]
//   46   
//   47 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x45dac001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x45dac000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0xc5dac000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x400b8000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   48 
//   49 
//   50 
// 
// 278 bytes in section .text
// 
// 278 bytes of CODE memory
//
//Errors: none
//Warnings: none
