///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Mar/2016  20:36:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\control.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\control.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN S3010_CTL
        EXTERN ctl_sped
        EXTERN flag_stop
        EXTERN line
        EXTERN motto_getsped
        EXTERN motto_set
        EXTERN safty_check

        PUBLIC CTL_SEN_init
        PUBLIC CTL_isr
        PUBLIC ctl

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\control.c
//    1 //控制部分通用代码
//    2 #include "include.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 struct _ctl ctl;
ctl:
        DS8 72
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void CTL_SEN_init()//控制参数初始化
//    7 {
//    8   ctl.S3010.Kp = 0;
CTL_SEN_init:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+4]
//    9   ctl.S3010.Ki = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+8]
//   10   ctl.S3010.Kd = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+12]
//   11   
//   12   ctl.motto.aim = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STRH     R0,[R1, #+38]
//   13   
//   14   ctl.motto.Kp = 1.1;
        LDR.N    R0,??DataTable1_1  ;; 0x3f8ccccd
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+40]
//   15   ctl.motto.Ki = 0.3;
        LDR.N    R0,??DataTable1_2  ;; 0x3e99999a
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+44]
//   16   ctl.motto.Kd = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+48]
//   17   
//   18 
//   19   
//   20   ctl.motto.out = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+60]
//   21   
//   22   line.lose_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+41]
//   23   line.Hight = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+43]
//   24   line.flag_lose = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+42]
//   25   line.final = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+44]
//   26   line.cross = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+45]
//   27   line.pos = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+46]
//   28 }
        BX       LR               ;; return
//   29 
//   30 
//   31 //控制中断函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void CTL_isr()//控制系统调度 //10ms
//   33 {
CTL_isr:
        PUSH     {R7,LR}
//   34   static uint8 cnt = 0;
//   35 
//   36   cnt++;
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_4
        STRB     R0,[R1, #+0]
//   37 
//   38   
//   39   if ( flag_stop == 0 ) //无急停标志
        LDR.N    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CTL_isr_0
//   40   {
//   41     S3010_CTL();
        BL       S3010_CTL
//   42     
//   43     //20ms中断区
//   44     if ( cnt >= 2 )
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??CTL_isr_1
//   45     {
//   46       cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_4
        STRB     R0,[R1, #+0]
//   47       
//   48       motto_getsped();//测速
        BL       motto_getsped
//   49       ctl_sped();//速度控制
        BL       ctl_sped
//   50       motto_set();//电机输出    
        BL       motto_set
        B.N      ??CTL_isr_1
//   51     }
//   52     
//   53   }
//   54   else
//   55   {
//   56     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
??CTL_isr_0:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_6  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   57     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_6  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   58 
//   59     
//   60     LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, 1520 );
        MOV      R2,#+1520
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_7  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//   61     
//   62   }
//   63   //此处是代码冗余
//   64   safty_check();
??CTL_isr_1:
        BL       safty_check
//   65 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x3f8ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     ??cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     flag_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x40039000

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??cnt:
        DS8 1

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
//  73 bytes in section .bss
// 220 bytes in section .text
// 
// 220 bytes of CODE memory
//  73 bytes of DATA memory
//
//Errors: none
//Warnings: none
