///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:03:03
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\PID.C
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\PID.C"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\PID.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN UartData
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN ctl

        PUBLIC PID_out

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\PID.C
//    1 #include "include.h"
//    2 
//    3 #if PID
//    4 //=============PD方向调节======

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    5 void PID_out()
//    6 {
PID_out:
        PUSH     {R3-R9,LR}
//    7   if( ctl.S3010.error[0] > 70 || ctl.S3010.error[0] < -70 )       //大偏差 电感值小于207
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??PID_out_0+0x4  ;; 0x428c0001
        BL       __aeabi_cfrcmple
        BLS.N    ??PID_out_1
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??PID_out_0+0x8  ;; 0xc28c0000
        BL       __aeabi_cfcmple
        BCS.N    ??PID_out_2
//    8   {  
//    9     ctl.S3010.Kp = UartData[1];
??PID_out_1:
        LDR.N    R2,??PID_out_0+0xC
        LDRD     R0,R1,[R2, #+8]
        BL       __aeabi_d2f
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+4]
//   10     ctl.S3010.Kd = UartData[2];
        LDR.N    R2,??PID_out_0+0xC
        LDRD     R0,R1,[R2, #+16]
        BL       __aeabi_d2f
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+12]
        B.N      ??PID_out_3
//   11   }
//   12   else if( ctl.S3010.error[0] > 40 || ctl.S3010.error[0] < -40 )
//   13   { 
//   14 //    ctl.S3010.Kp = 0;
//   15 //    ctl.S3010.Kd = 0;  
//   16   }
//   17   else   //直道
//   18   {
//   19 //    ctl.S3010.Kp = 0;
//   20 //    ctl.S3010.Kd = 0;  
//   21   }
//   22   
//   23   if( ctl.S3010.error[0] > 3 || ctl.S3010.error[0] < -3 ) 
??PID_out_2:
??PID_out_3:
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??PID_out_0+0x10  ;; 0x40400001
        BL       __aeabi_cfrcmple
        BLS.N    ??PID_out_4
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??PID_out_0+0x14  ;; 0xc0400000
        BL       __aeabi_cfcmple
        BCS.N    ??PID_out_5
//   24   {
//   25     ctl.S3010.result =(int16) 
//   26       (ctl.S3010.Kp * ctl.S3010.error[0]
//   27        + (ctl.S3010.Kd 
//   28             *(0.6*(ctl.S3010.error[0]-ctl.S3010.error[1])
//   29                  +0.2*(ctl.S3010.error[1]-ctl.S3010.error[2])
//   30                    +0.2*(ctl.S3010.error[2]-ctl.S3010.error[3]))));
??PID_out_4:
        LDR.N    R0,??PID_out_0
        LDR      R1,[R0, #+4]
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+24]
        BL       __aeabi_fmul
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+12]
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??PID_out_0
        LDR      R1,[R1, #+28]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??PID_out_0+0x18  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+28]
        LDR.N    R1,??PID_out_0
        LDR      R1,[R1, #+32]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        LDR.N    R2,??PID_out_0+0x1C  ;; 0x9999999a
        LDR.N    R3,??PID_out_0+0x20  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+32]
        LDR.N    R1,??PID_out_0
        LDR      R1,[R1, #+36]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        LDR.N    R2,??PID_out_0+0x1C  ;; 0x9999999a
        LDR.N    R3,??PID_out_0+0x20  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2f
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+16]
//   31     
//   32     ctl.S3010.error[3]=ctl.S3010.error[2];
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+32]
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+36]
//   33     ctl.S3010.error[2]=ctl.S3010.error[1];
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+28]
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+32]
//   34     ctl.S3010.error[1]=ctl.S3010.error[0];
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+28]
        B.N      ??PID_out_6
//   35   }
//   36   else
//   37   { 
//   38     ctl.S3010.result = 0;
??PID_out_5:
        MOVS     R0,#+0
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+16]
//   39   }
//   40   
//   41 
//   42   if( ctl.S3010.result > 200 )
??PID_out_6:
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+16]
        LDR.N    R1,??PID_out_0+0x24  ;; 0x43480001
        BL       __aeabi_cfrcmple
        BHI.N    ??PID_out_7
//   43   {
//   44     ctl.S3010.result = 200;
        LDR.N    R0,??PID_out_0+0x28  ;; 0x43480000
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+16]
        B.N      ??PID_out_8
//   45   }
//   46   
//   47   else if(ctl.S3010.result < -200)
??PID_out_7:
        LDR.N    R0,??PID_out_0
        LDR      R0,[R0, #+16]
        LDR.N    R1,??PID_out_0+0x2C  ;; 0xc3480000
        BL       __aeabi_cfcmple
        BCS.N    ??PID_out_8
//   48   {
//   49     ctl.S3010.result = -200;
        LDR.N    R0,??PID_out_0+0x2C  ;; 0xc3480000
        LDR.N    R1,??PID_out_0
        STR      R0,[R1, #+16]
//   50   }
//   51 
//   52 }
??PID_out_8:
        POP      {R0,R4-R9,PC}    ;; return
        DATA
??PID_out_0:
        DC32     ctl
        DC32     0x428c0001
        DC32     0xc28c0000
        DC32     UartData
        DC32     0x40400001
        DC32     0xc0400000
        DC32     0x3fe33333
        DC32     0x9999999a
        DC32     0x3fc99999
        DC32     0x43480001
        DC32     0x43480000
        DC32     0xc3480000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   53 #endif
// 
// 364 bytes in section .text
// 
// 364 bytes of CODE memory
//
//Errors: none
//Warnings: none
