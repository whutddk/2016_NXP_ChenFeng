///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\MAIN\main.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\MAIN\main.c" -D LPLD_K60 -lCN
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -lB
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -o
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\BSP\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\ITAC\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\CTL\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\MAIN\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\SENSOR\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\CPU\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\driver\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\class\" -On -I "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench 7.0\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN GUI
        EXTERN GUI_work
        EXTERN LDC_READ
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN NVIC_init
        EXTERN PIT0_init
        EXTERN PIT1_init
        EXTERN bz_cnt
        EXTERN bz_set
        EXTERN bzled_work
        EXTERN ctl
        EXTERN flag_bihuan
        EXTERN flag_stop
        EXTERN read_sw
        EXTERN sendDataToScope
        EXTERN speed_up_Enable
        EXTERN star
        EXTERN sysinit

        PUBLIC MCNT_isr
        PUBLIC main
        PUBLIC send_cnt
        PUBLIC temp
        PUBLIC timer_cnt

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\MAIN\main.c
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
        PUSH     {R3-R5,LR}
//   14   uint16 i,j;
//   15   sysinit();
        BL       sysinit
//   16   
//   17   temp = LDC_READ(0x7F);  
        MOVS     R0,#+127
        BL       LDC_READ
        LDR.N    R1,??DataTable1
        STRH     R0,[R1, #+0]
//   18   
//   19   
//   20   read_sw();
        BL       read_sw
//   21   LPLD_LPTMR_DelayMs(300);
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
//   22   
//   23   
//   24   if ( flag_bihuan == 0 && speed_up_Enable == 1 )//防止oled坏
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_0
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_0
//   25   {    
//   26     GUI.para.AI = 2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+4]
//   27     PIT1_init();//控制系统时钟 //暂定10ms
        BL       PIT1_init
//   28     PIT0_init();//主系统时钟 //1MS 一次中断
        BL       PIT0_init
//   29     NVIC_init();
        BL       NVIC_init
//   30     
//   31     flag_bihuan = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//   32     speed_up_Enable = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_2
        STRB     R0,[R1, #+0]
        B.N      ??main_1
//   33   
//   34 }
//   35 
//   36   else
//   37   {
//   38     GUI_work();
??main_0:
        BL       GUI_work
//   39   }
//   40   star();
??main_1:
        BL       star
//   41   
//   42   while(1)
//   43   {
//   44     bzled_work();
??main_2:
        BL       bzled_work
//   45     
//   46     //30ms发送一次示波器数据
//   47     if ( send_cnt >= 1 )
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_3
//   48     {
//   49       sendDataToScope();
        BL       sendDataToScope
//   50       send_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_4
        STRB     R0,[R1, #+0]
//   51     }
//   52     
//   53     
//   54     i = GUI.para.endline_time * 1000;
??main_3:
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+3]
        MOV      R1,#+1000
        SMULBB   R0,R0,R1
        MOVS     R4,R0
//   55     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_5  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//   56     
//   57     j = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//   58     j = PTD1_I + PTD5_I + PTD6_I;
        LDR.N    R0,??DataTable1_6  ;; 0x43fe1a04
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_7  ;; 0x43fe1a14
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_8  ;; 0x43fe1a18
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R5,R0
//   59     
//   60     if(j < 2)
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BGE.N    ??main_2
//   61     {
//   62       if(1 == GUI.para.endline &&  timer_cnt > i)  //一个可调的值
        LDR.N    R0,??DataTable1_3
        LDRB     R0,[R0, #+2]
        CMP      R0,#+1
        BNE.N    ??main_4
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BCS.N    ??main_4
//   63       {
//   64         flag_bihuan = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//   65         ctl.motto.out = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+140]
//   66         timer_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9
        STRH     R0,[R1, #+0]
//   67       }
//   68       bz_set(datarec);
??main_4:
        MOVS     R0,#+1
        BL       bz_set
        B.N      ??main_2
//   69     }
//   70 
//   71   } 
//   72 }
//   73 
//   74 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void MCNT_isr() // 主系统计时
//   76 {
//   77   if(0 == flag_stop )
MCNT_isr:
        LDR.N    R0,??DataTable1_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??MCNT_isr_0
//   78   {
//   79   timer_cnt++ ;
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_9
        STRH     R0,[R1, #+0]
//   80   }
//   81   
//   82   bz_cnt++;
??MCNT_isr_0:
        LDR.N    R0,??DataTable1_12
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_12
        STRH     R0,[R1, #+0]
//   83   send_cnt++;
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_4
        STRB     R0,[R1, #+0]
//   84   
//   85   
//   86   
//   87   if (timer_cnt == 65000)  //最多65秒
        LDR.N    R0,??DataTable1_9
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65000
        CMP      R0,R1
        BNE.N    ??MCNT_isr_1
//   88   {
//   89     timer_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_9
        STRH     R0,[R1, #+0]
//   90   }
//   91   
//   92 }
??MCNT_isr_1:
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
        DC32     flag_bihuan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     speed_up_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     GUI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     send_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x43fe1a04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x43fe1a14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0x43fe1a18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     timer_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     flag_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
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
// 312 bytes in section .text
// 
// 312 bytes of CODE memory
//   5 bytes of DATA memory
//
//Errors: none
//Warnings: 1
