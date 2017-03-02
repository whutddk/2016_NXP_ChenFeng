///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:51
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\dirctl.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\dirctl.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\dirctl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN PID_out
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_i2f
        EXTERN bz_set
        EXTERN ctl
        EXTERN line

        PUBLIC S3010_CTL

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\dirctl.c
//    1 //舵机位置控制
//    2 #include "include.h"
//    3 
//    4 //方向控制
//    5 
//    6 /*input(-100 +100)*/
//    7 /*output（1400 1575 1750）(-175 ~ +175)  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    8 void S3010_CTL()
//    9 {
S3010_CTL:
        PUSH     {R7,LR}
//   10    
//   11   if ( line.pos[0] > 100 )
        LDR.N    R0,??S3010_CTL_0
        LDRSH    R0,[R0, #+2]
        CMP      R0,#+101
        BLT.N    ??S3010_CTL_1
//   12   {
//   13     line.pos[0] =  100;
        MOVS     R0,#+100
        LDR.N    R1,??S3010_CTL_0
        STRH     R0,[R1, #+2]
//   14   }
//   15   if ( line.pos[0] < -100 )
??S3010_CTL_1:
        LDR.N    R0,??S3010_CTL_0
        LDRSH    R0,[R0, #+2]
        CMN      R0,#+100
        BGE.N    ??S3010_CTL_2
//   16   {
//   17     line.pos[0] = -100;
        MVNS     R0,#+99
        LDR.N    R1,??S3010_CTL_0
        STRH     R0,[R1, #+2]
//   18   }
//   19   
//   20   
//   21   ctl.S3010.error[0] = -line.pos[0];
??S3010_CTL_2:
        LDR.N    R0,??S3010_CTL_0
        LDRSH    R0,[R0, #+2]
        RSBS     R0,R0,#+0
        BL       __aeabi_i2f
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+24]
//   22   
//   23   if ( ctl.S3010.error[0] <= -200 || ctl.S3010.error[0] >= 200)
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+24]
        LDR.N    R1,??S3010_CTL_0+0x8  ;; 0xc347ffff
        BL       __aeabi_cfcmple
        BCC.N    ??S3010_CTL_3
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+24]
        LDR.N    R1,??S3010_CTL_0+0xC  ;; 0x43480000
        BL       __aeabi_cfrcmple
        BHI.N    ??S3010_CTL_4
//   24   {
//   25     bz_set(warn);
??S3010_CTL_3:
        MOVS     R0,#+2
        BL       bz_set
//   26     return;
        B.N      ??S3010_CTL_5
//   27   }
//   28   
//   29 #if FUZZY
//   30   ctl.S3010.result[1] = fuzzy_online(ctl.S3010.error[0] , (ctl.S3010.error[0] - ctl.S3010.error[1]) );
//   31   ctl.S3010.result[1] *= 1.75;
//   32   ctl.S3010.error[1] = ctl.S3010.error[0];
//   33 #endif
//   34   
//   35 #if PID
//   36   PID_out();
??S3010_CTL_4:
        BL       PID_out
//   37 #endif
//   38   
//   39   ctl.S3010.out = ctl.S3010.result + 1350;
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R1,[R0, #+16]
        LDR.N    R0,??S3010_CTL_0+0x10  ;; 0x44a8c000
        BL       __aeabi_fadd
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+20]
//   40   if ( ctl.S3010.out > 1650 )
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+20]
        LDR.N    R1,??S3010_CTL_0+0x14  ;; 0x44ce4001
        BL       __aeabi_cfrcmple
        BHI.N    ??S3010_CTL_6
//   41   {
//   42     ctl.S3010.out = 1650;
        LDR.N    R0,??S3010_CTL_0+0x18  ;; 0x44ce4000
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+20]
//   43   }
//   44   if ( ctl.S3010.out < 1050)
??S3010_CTL_6:
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+20]
        LDR.N    R1,??S3010_CTL_0+0x1C  ;; 0x44834000
        BL       __aeabi_cfcmple
        BCS.N    ??S3010_CTL_7
//   45   {
//   46     ctl.S3010.out = 1050;
        LDR.N    R0,??S3010_CTL_0+0x1C  ;; 0x44834000
        LDR.N    R1,??S3010_CTL_0+0x4
        STR      R0,[R1, #+20]
//   47   }
//   48   
//   49     
//   50   LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.out ); 
??S3010_CTL_7:
        LDR.N    R0,??S3010_CTL_0+0x4
        LDR      R0,[R0, #+20]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??S3010_CTL_0+0x20  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//   51   
//   52   
//   53   //最后控制结果的输出
//   54 
//   55 }
??S3010_CTL_5:
        POP      {R0,PC}          ;; return
        DATA
??S3010_CTL_0:
        DC32     line
        DC32     ctl
        DC32     0xc347ffff
        DC32     0x43480000
        DC32     0x44a8c000
        DC32     0x44ce4001
        DC32     0x44ce4000
        DC32     0x44834000
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
// 196 bytes in section .text
// 
// 196 bytes of CODE memory
//
//Errors: none
//Warnings: none
