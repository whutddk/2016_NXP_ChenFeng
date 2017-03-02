///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  16:39:06
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\control.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\control.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DateAnalyse
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN S3010_CTL
        EXTERN ctl_sped
        EXTERN flag_stop
        EXTERN line
        EXTERN motto_getsped
        EXTERN motto_set
        EXTERN safty_check
        EXTERN sendDataToScope
        EXTERN sensor

        PUBLIC CTL_SEN_init
        PUBLIC CTL_isr
        PUBLIC ctl

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\control.c
//    1 //控制部分通用代码
//    2 #include "include.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 struct _ctl ctl;
ctl:
        DS8 112
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void CTL_SEN_init()//控制参数初始化
//    7 {
//    8   ctl.S3010.Kp_S = 0;
CTL_SEN_init:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+16]
//    9   ctl.S3010.Kp_B = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+20]
//   10   
//   11   ctl.S3010.Kd_S = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+24]
//   12   ctl.S3010.Kd_B = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+28]
//   13   
//   14   ctl.motto.aim = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STRH     R0,[R1, #+58]
//   15   
//   16   ctl.motto.Kp = 2.25;
        LDR.N    R0,??DataTable1_1  ;; 0x40100000
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+60]
//   17   ctl.motto.Ki = 0.6;
        LDR.N    R0,??DataTable1_2  ;; 0x3f19999a
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+64]
//   18   
//   19   ctl.motto.out = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+96]
//   20    
//   21   line.pos = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRH     R0,[R1, #+2]
//   22   sensor.max[0] = 128;  
        MOVS     R0,#+1124073472
        LDR.N    R1,??DataTable1_4
        STR      R0,[R1, #+28]
//   23   sensor.max[1] = 120;
        LDR.N    R0,??DataTable1_5  ;; 0x42f00000
        LDR.N    R1,??DataTable1_4
        STR      R0,[R1, #+32]
//   24 }
        BX       LR               ;; return
//   25 
//   26 
//   27 //控制中断函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   28 void CTL_isr()//控制系统调度 //10ms
//   29 {
CTL_isr:
        PUSH     {R7,LR}
//   30   
//   31   static uint8 cnt = 0;
//   32   
//   33   cnt++;
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   34   
//   35 
//   36   DateAnalyse();
        BL       DateAnalyse
//   37   
//   38   if ( flag_stop == 0 ) //无急停标志
        LDR.N    R0,??DataTable1_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CTL_isr_0
//   39   {
//   40     S3010_CTL();
        BL       S3010_CTL
//   41     
//   42     //20ms中断区
//   43     if ( cnt >= 2 )
        LDR.N    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BLT.N    ??CTL_isr_1
//   44     {
//   45       cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//   46       
//   47       motto_getsped();//测速
        BL       motto_getsped
//   48       ctl_sped();//速度控制
        BL       ctl_sped
//   49       motto_set();//电机输出    
        BL       motto_set
        B.N      ??CTL_isr_1
//   50     }
//   51     
//   52   }
//   53   else
//   54   {
//   55     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
??CTL_isr_0:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_8  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   56     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_8  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   57     
//   58     
//   59     LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, 1543 );
        MOVW     R2,#+1543
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_9  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//   60     
//   61   }
//   62   //此处是代码冗余
//   63   safty_check();
??CTL_isr_1:
        BL       safty_check
//   64   
//   65       sendDataToScope();
        BL       sendDataToScope
//   66 }
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
        DC32     0x40100000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x3f19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x42f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     ??cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     flag_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
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
// 113 bytes in section .bss
// 208 bytes in section .text
// 
// 208 bytes of CODE memory
// 113 bytes of DATA memory
//
//Errors: none
//Warnings: none
