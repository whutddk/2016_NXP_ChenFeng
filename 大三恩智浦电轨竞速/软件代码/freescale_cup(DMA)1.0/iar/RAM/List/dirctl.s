///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Mar/2016  20:36:11
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\dirctl.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\dirctl.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\SENSOR\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\dirctl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN ctl
        EXTERN line

        PUBLIC S3010_CTL

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\dirctl.c
//    1 //舵机位置控制
//    2 #include "include.h"
//    3 
//    4 //方向控制
//    5 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    6 void S3010_CTL()
//    7 {
S3010_CTL:
        PUSH     {R7,LR}
//    8   ctl.S3010.error[1] = line.pos - 0;
        LDR.N    R0,??S3010_CTL_0
        LDRSB    R0,[R0, #+46]
        BL       __aeabi_i2f
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+32]
//    9   ctl.S3010.result = ctl.S3010.Kp * ctl.S3010.error[1];
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R1,[R0, #+4]
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+32]
        BL       __aeabi_fmul
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+20]
//   10   ctl.S3010.result += ctl.S3010.Kd * ( ctl.S3010.error[1] - ctl.S3010.error[0] );
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+32]
        LDR.N    R1,??S3010_CTL_0+0x4
        LDR      R1,[R1, #+28]
        BL       __aeabi_fsub
        LDR.N    R1,??S3010_CTL_0+0x4
        LDR      R1,[R1, #+12]
        BL       __aeabi_fmul
        LDR.N    R1,??S3010_CTL_0+0x4
        LDR      R1,[R1, #+20]
        BL       __aeabi_fadd
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+20]
//   11   
//   12   ctl.S3010.error[0] = ctl.S3010.error[1];
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+32]
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+28]
//   13   
//   14   ctl.S3010.result += 1520;
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R1,[R0, #+20]
        LDR.N    R0,??S3010_CTL_0+0x8  ;; 0x44be0000
        BL       __aeabi_fadd
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+20]
//   15   if ( ctl.S3010.result > 1800 )
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+20]
        LDR.N    R1,??S3010_CTL_0+0xC  ;; 0x44e10001
        BL       __aeabi_cfrcmple
        BHI.N    ??S3010_CTL_1
//   16   {
//   17     ctl.S3010.result = 1800;
        LDR.N    R0,??S3010_CTL_0+0x10  ;; 0x44e10000
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+20]
//   18   }
//   19   if ( ctl.S3010.result < 900 )
??S3010_CTL_1:
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+20]
        LDR.N    R1,??S3010_CTL_0+0x14  ;; 0x44610000
        BL       __aeabi_cfcmple
        BCS.N    ??S3010_CTL_2
//   20   {
//   21     ctl.S3010.result = 900;
        LDR.N    R0,??S3010_CTL_0+0x14  ;; 0x44610000
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+20]
//   22   }
//   23   
//   24   LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.result ); ; //最后控制结果的输出
??S3010_CTL_2:
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+20]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??S3010_CTL_0+0x18  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//   25 }
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??S3010_CTL_0:
        DC32     line
        DC32     ctl
        DC32     0x44be0000
        DC32     0x44e10001
        DC32     0x44e10000
        DC32     0x44610000
        DC32     0x40039000

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
// 172 bytes in section .text
// 
// 172 bytes of CODE memory
//
//Errors: none
//Warnings: none
