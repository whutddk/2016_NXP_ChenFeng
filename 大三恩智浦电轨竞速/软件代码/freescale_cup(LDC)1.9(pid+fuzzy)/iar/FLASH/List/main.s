///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:58
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\MAIN\main.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\MAIN\main.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LDC_READ
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN bz_cnt
        EXTERN bz_set
        EXTERN bzled_work
        EXTERN sendDataToScope
        EXTERN sensor_offset
        EXTERN sysinit

        PUBLIC MCNT_isr
        PUBLIC main
        PUBLIC send_cnt
        PUBLIC temp
        PUBLIC timer_cnt

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\MAIN\main.c
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
//   16   temp = LDC_READ(0x7F);  
        MOVS     R0,#+127
        BL       LDC_READ
        LDR.N    R1,??DataTable1
        STRH     R0,[R1, #+0]
//   17     
//   18   LPLD_LPTMR_DelayMs(300);
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
//   19   
//   20   sensor_offset();
        BL       sensor_offset
//   21   
//   22   bz_set(ready);//初始化完毕，蜂鸣器提示
        MOVS     R0,#+0
        BL       bz_set
//   23   
//   24   while(1)
//   25   {
//   26     bzled_work();
??main_0:
        BL       bzled_work
//   27     
//   28     
//   29     //30ms发送一次示波器数据
//   30     if ( send_cnt >= 5 )
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BLT.N    ??main_0
//   31     {
//   32       sendDataToScope();
        BL       sendDataToScope
//   33       send_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
        B.N      ??main_0
//   34     }
//   35     
//   36   } 
//   37 }
//   38 
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void MCNT_isr() // 主系统计时
//   41 {
//   42   
//   43   timer_cnt++ ;
MCNT_isr:
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+0]
//   44   bz_cnt++;
        LDR.N    R0,??DataTable1_3
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_3
        STRH     R0,[R1, #+0]
//   45   send_cnt++;
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//   46   
//   47   
//   48   
//   49   if (timer_cnt == 1000)//1s
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BNE.N    ??MCNT_isr_0
//   50   {
//   51     timer_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+0]
//   52   }
//   53   
//   54 }  
??MCNT_isr_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     send_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     timer_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
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
// 122 bytes in section .text
// 
// 122 bytes of CODE memory
//   5 bytes of DATA memory
//
//Errors: none
//Warnings: none
