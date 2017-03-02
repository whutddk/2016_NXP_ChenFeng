///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:59
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\motto.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\motto.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\motto.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2d
        EXTERN __aeabi_i2f
        EXTERN ctl
        EXTERN line

        PUBLIC Straight_Flag
        PUBLIC ctl_sped
        PUBLIC motto_getsped
        PUBLIC motto_set

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\motto.c
//    1 //电机控制
//    2 #include "include.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void motto_set()
//    5 {
motto_set:
        PUSH     {R7,LR}
//    6   //限幅
//    7   if ( ctl.motto.out > 8000 )
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable2_1  ;; 0x45fa0001
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_0
//    8   {
//    9     ctl.motto.out = 8000;
        LDR.N    R0,??DataTable2_2  ;; 0x45fa0000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+64]
        B.N      ??motto_set_1
//   10   }
//   11   else if ( ctl.motto.out < -8000 )
??motto_set_0:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable2_3  ;; 0xc5fa0000
        BL       __aeabi_cfcmple
        BCS.N    ??motto_set_1
//   12   {
//   13     ctl.motto.out = -8000;
        LDR.N    R0,??DataTable2_3  ;; 0xc5fa0000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+64]
//   14   }
//   15   
//   16   
//   17   if ( ctl.motto.out >= 0.000000  )
??motto_set_1:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+64]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_2
//   18   {
//   19     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) ( ctl.motto.out ) );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+64]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   20     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (uint32) 0 );
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??motto_set_3
//   21   }
//   22   else if ( ctl.motto.out < 0.000000 )
??motto_set_2:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+64]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??motto_set_3
//   23   {
//   24     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   25     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (uint32) ( -ctl.motto.out ) );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+64]
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   26   }
//   27   
//   28   
//   29 }
??motto_set_3:
        POP      {R0,PC}          ;; return
//   30 
//   31 
//   32 
//   33 //轮子172mm 5000个脉冲
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void motto_getsped()
//   36 {
motto_getsped:
        PUSH     {R7,LR}
//   37   
//   38   ctl.motto.sped_cur =  LPLD_FTM_GetCounter(FTM2)  ;//赋值需要不可以连等
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_GetCounter
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+44]
//   39   
//   40   LPLD_FTM_ClearCounter(FTM2);
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_ClearCounter
//   41   
//   42 
//   43 }
        POP      {R0,PC}          ;; return
//   44 
//   45 
//   46 
//   47 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   48 int8 Straight_Flag=0;
Straight_Flag:
        DS8 1
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void ctl_sped() //速度控制，增量式PI控制
//   51 {
ctl_sped:
        PUSH     {R3-R5,LR}
//   52   
//   53   
//   54   
//   55   if(line.pos[0] > 60 || line.pos[0] < -60)
        LDR.N    R0,??DataTable2_6
        LDRSH    R0,[R0, #+2]
        CMP      R0,#+61
        BGE.N    ??ctl_sped_0
        LDR.N    R0,??DataTable2_6
        LDRSH    R0,[R0, #+2]
        CMN      R0,#+60
        BGE.N    ??ctl_sped_1
//   56   {
//   57     
//   58     ctl.motto.distance += ctl.motto.sped_cur;
??ctl_sped_0:
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+84]
        LDR.N    R1,??DataTable2
        LDRH     R1,[R1, #+44]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+84]
//   59     
//   60     if(ctl.motto.distance >= 5000)
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+84]
        MOVW     R1,#+5000
        CMP      R0,R1
        BLT.N    ??ctl_sped_2
//   61     {
//   62       Straight_Flag = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??ctl_sped_3
//   63     }
//   64     
//   65     else
//   66     {
//   67       Straight_Flag =0;  
??ctl_sped_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
        B.N      ??ctl_sped_3
//   68     }  
//   69     
//   70   }
//   71   
//   72   else
//   73   {
//   74     Straight_Flag = 0;
??ctl_sped_1:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
//   75     ctl.motto.distance = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+84]
//   76 
//   77   }
//   78   
//   79   
//   80   
//   81   if(Straight_Flag == 1)
??ctl_sped_3:
        LDR.N    R0,??DataTable2_7
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_4
//   82   {
//   83     ctl.motto.error[1] =   ctl.motto.aim * 1.15 - ctl.motto.sped_cur;
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+46]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable2_8  ;; 0x3ff26666
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+44]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+72]
        B.N      ??ctl_sped_5
//   84     
//   85   }
//   86   
//   87   else
//   88   {
//   89     ctl.motto.error[1] =   ctl.motto.aim  - ctl.motto.sped_cur;
??ctl_sped_4:
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+46]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+44]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+72]
//   90   }
//   91   
//   92   
//   93   
//   94   ctl.motto.result  = ctl.motto.Kp  * ( ctl.motto.error[1] - ctl.motto.error[0] );
??ctl_sped_5:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+72]
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+68]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+48]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+60]
//   95   ctl.motto.result += ctl.motto.Ki  *   ctl.motto.error[1];
        LDR.N    R0,??DataTable2
        LDR      R1,[R0, #+52]
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+72]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+60]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+60]
//   96   
//   97   ctl.motto.error[0] = ctl.motto.error[1];  
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+72]
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+68]
//   98   ctl.motto.out += ctl.motto.result;
        LDR.N    R0,??DataTable2
        LDR      R1,[R0, #+64]
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+60]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+64]
//   99   
//  100 
//  101 
//  102 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x45fa0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x45fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0xc5fa0000

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

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     Straight_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x3ff26666

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  103 
//  104 
//  105 
// 
//   1 byte  in section .bss
// 432 bytes in section .text
// 
// 432 bytes of CODE memory
//   1 byte  of DATA memory
//
//Errors: none
//Warnings: none
