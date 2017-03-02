///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  16:39:10
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\dirctl.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\dirctl.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\dirctl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN ctl
        EXTERN line
        EXTERN `push`

        PUBLIC S3010_CTL

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\dirctl.c
//    1 //舵机位置控制
//    2 #include "include.h"
//    3 
//    4 //方向控制
//    5 
//    6 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    7 void S3010_CTL()
//    8 {
S3010_CTL:
        PUSH     {R7,LR}
//    9  
//   10     ctl.S3010.Kp = ctl.S3010.Kp_S;
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+16]
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+4]
//   11     ctl.S3010.Kd = ctl.S3010.Kd_S;
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+12]
//   12 
//   13     ctl.S3010.error[1] = line.pos - 0;
        LDR.N    R0,??S3010_CTL_0+0x4
        LDRSH    R0,[R0, #+2]
        BL       __aeabi_i2f
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+48]
//   14   
//   15   
//   16   
//   17   ctl.S3010.result[1] = ctl.S3010.Kp * ctl.S3010.error[1];
        LDR.N    R0,??S3010_CTL_0
        LDR      R1,[R0, #+4]
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+48]
        BL       __aeabi_fmul
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+36]
//   18   ctl.S3010.result[1] += ctl.S3010.Kd * ( ctl.S3010.result[1] - ctl.S3010.result[0] );
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+36]
        LDR.N    R1,??S3010_CTL_0
        LDR      R1,[R1, #+32]
        BL       __aeabi_fsub
        LDR.N    R1,??S3010_CTL_0
        LDR      R1,[R1, #+12]
        BL       __aeabi_fmul
        LDR.N    R1,??S3010_CTL_0
        LDR      R1,[R1, #+36]
        BL       __aeabi_fadd
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+36]
//   19   //微分先行
//   20   ctl.S3010.result[0] = ctl.S3010.result[1];
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+36]
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+32]
//   21   
//   22  
//   23   ctl.S3010.out = ctl.S3010.result[0] + 1543;
        LDR.N    R0,??S3010_CTL_0
        LDR      R1,[R0, #+32]
        LDR.N    R0,??S3010_CTL_0+0x8  ;; 0x44c0e000
        BL       __aeabi_fadd
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+40]
//   24   if ( ctl.S3010.out > 1720 )
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+40]
        LDR.N    R1,??S3010_CTL_0+0xC  ;; 0x44d70001
        BL       __aeabi_cfrcmple
        BHI.N    ??S3010_CTL_1
//   25   {
//   26     ctl.S3010.out = 1720;
        LDR.N    R0,??S3010_CTL_0+0x10  ;; 0x44d70000
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+40]
//   27   }
//   28   if ( ctl.S3010.out < 1365)
??S3010_CTL_1:
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+40]
        LDR.N    R1,??S3010_CTL_0+0x14  ;; 0x44aaa000
        BL       __aeabi_cfcmple
        BCS.N    ??S3010_CTL_2
//   29   {
//   30     ctl.S3010.out = 1365;
        LDR.N    R0,??S3010_CTL_0+0x14  ;; 0x44aaa000
        LDR.N    R1,??S3010_CTL_0
        STR      R0,[R1, #+40]
//   31   }
//   32   
//   33     
//   34   LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.out ); 
??S3010_CTL_2:
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??S3010_CTL_0+0x18  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//   35   
//   36   push(15,ctl.S3010.out);
        LDR.N    R0,??S3010_CTL_0
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+15
        BL       `push`
//   37   //最后控制结果的输出
//   38 
//   39 }
        POP      {R0,PC}          ;; return
        DATA
??S3010_CTL_0:
        DC32     ctl
        DC32     line
        DC32     0x44c0e000
        DC32     0x44d70001
        DC32     0x44d70000
        DC32     0x44aaa000
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
// 204 bytes in section .text
// 
// 204 bytes of CODE memory
//
//Errors: none
//Warnings: 1
