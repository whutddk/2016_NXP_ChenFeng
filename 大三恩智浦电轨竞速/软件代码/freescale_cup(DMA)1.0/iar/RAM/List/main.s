///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Mar/2016  20:36:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\MAIN\main.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\MAIN\main.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DMA_cntget0
        EXTERN DMA_cntget1
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN bz_cnt
        EXTERN bz_set
        EXTERN bzled_work
        EXTERN dma_init
        EXTERN gpio_init
        EXTERN sendDataToScope
        EXTERN sysinit

        PUBLIC MCNT_isr
        PUBLIC main
        PUBLIC send_cnt
        PUBLIC temp1
        PUBLIC temp2
        PUBLIC timer_cnt

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\MAIN\main.c
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

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   10 vuint32 temp1 = 0; 
temp1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   11 vuint32 temp2 = 0; 
temp2:
        DS8 4
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void main (void)
//   14 {
main:
        PUSH     {R7,LR}
//   15   sysinit();
        BL       sysinit
//   16   
//   17   gpio_init();
        BL       gpio_init
//   18   dma_init();
        BL       dma_init
//   19   
//   20   LPLD_LPTMR_DelayMs(300);
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
//   21 
//   22   
//   23   bz_set(ready);//初始化完毕，蜂鸣器提示
        MOVS     R0,#+0
        BL       bz_set
//   24   
//   25   while(1)
//   26   {
//   27     bzled_work();
??main_0:
        BL       bzled_work
//   28     //30ms发送一次示波器数据
//   29     if ( send_cnt >= 30 )
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+30
        BLT.N    ??main_0
//   30     {
//   31       sendDataToScope();
        BL       sendDataToScope
        B.N      ??main_0
//   32     }
//   33   } 
//   34 }
//   35 
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 void MCNT_isr() // 主系统计时
//   38 {
MCNT_isr:
        PUSH     {R7,LR}
//   39   timer_cnt++ ;
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
//   40   bz_cnt++;
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+0]
//   41   send_cnt++;
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//   42   
//   43   if ( timer_cnt % 10 == 0 )
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+10
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        CMP      R0,#+0
        BNE.N    ??MCNT_isr_0
//   44   {
//   45     temp1 = DMA_cntget0();
        BL       DMA_cntget0
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//   46     temp2 = DMA_cntget1();
        BL       DMA_cntget1
        LDR.N    R1,??DataTable1_4
        STR      R0,[R1, #+0]
//   47   }
//   48   
//   49   if (timer_cnt == 1000)//1s
??MCNT_isr_0:
        LDR.N    R0,??DataTable1_1
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BNE.N    ??MCNT_isr_1
//   50   {
//   51     timer_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
//   52   }
//   53 }  
??MCNT_isr_1:
        POP      {R0,PC}          ;; return

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

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     temp1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     temp2

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
//  11 bytes in section .bss
// 150 bytes in section .text
// 
// 150 bytes of CODE memory
//  11 bytes of DATA memory
//
//Errors: none
//Warnings: 4
