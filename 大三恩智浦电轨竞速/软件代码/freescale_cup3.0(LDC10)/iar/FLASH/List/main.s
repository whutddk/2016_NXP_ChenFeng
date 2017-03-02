///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  17:41:24
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\MAIN\main.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\MAIN\main.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LDC1000_read
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN bz_cnt
        EXTERN bz_set
        EXTERN bzled_work
        EXTERN sysinit

        PUBLIC MCNT_isr
        PUBLIC main
        PUBLIC send_cnt
        PUBLIC temp
        PUBLIC timer_cnt

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\MAIN\main.c
//    1 //主函数部分
//    2 //DDK 
//    3 
//    4 
//    5 
//    6 #include "include.h"
//    7 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//    8 uint8 send_cnt = 0;
send_cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    9 uint16 timer_cnt = 0;
timer_cnt:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   10 vuint16 temp = 0; 
temp:
        DS8 2
//   11 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 void main (void)
//   13 {
main:
        PUSH     {R7,LR}
//   14   sysinit();
        BL       sysinit
//   15   
//   16   //temp = LDC_READ(0x7F);  
//   17   
//   18   //sensor_offset();//取偏置
//   19   
//   20   LPLD_LPTMR_DelayMs(300);
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
//   21   
//   22   
//   23   
//   24   
//   25   bz_set(ready);//初始化完毕，蜂鸣器提示
        MOVS     R0,#+0
        BL       bz_set
//   26   
//   27   while(1)
//   28   {
//   29     bzled_work();
??main_0:
        BL       bzled_work
//   30     LDC1000_read();
        BL       LDC1000_read
//   31     
//   32     //30ms发送一次示波器数据
//   33     if ( send_cnt >= 5 )
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??main_0
//   34     {
//   35 //      sendDataToScope();
//   36       send_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
        B.N      ??main_0
//   37     }
//   38     
//   39   } 
//   40 }
//   41 
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void MCNT_isr() // 主系统计时
//   44 {
//   45   
//   46   timer_cnt++ ;
MCNT_isr:
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
//   47   bz_cnt++;
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+0]
//   48   send_cnt++;
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//   49   
//   50   
//   51   
//   52   if (timer_cnt == 1000)//1s
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BNE.N    ??MCNT_isr_0
//   53   {
//   54     timer_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
//   55   }
//   56   
//   57 }  
??MCNT_isr_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     send_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     timer_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     bz_cnt

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
//   5 bytes in section .bss
// 104 bytes in section .text
// 
// 104 bytes of CODE memory
//   5 bytes of DATA memory
//
//Errors: none
//Warnings: 1
