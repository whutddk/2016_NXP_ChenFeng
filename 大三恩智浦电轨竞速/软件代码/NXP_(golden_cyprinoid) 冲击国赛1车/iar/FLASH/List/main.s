///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:17
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\MAIN\main.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\MAIN\main.c" -D LPLD_K60 -lCN
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -lB
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -o
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\BSP\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\ITAC\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\CTL\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\MAIN\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\SENSOR\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\CPU\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\common\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\HW\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\DEV\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\option\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\common\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\driver\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\descriptor\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\class\" -On -I D:\IAR\arm\CMSIS\Include\ -D
//        ARM_MATH_CM4
//    List file    =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\main.s
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
        EXTERN ReadFlash
        EXTERN bz_cnt
        EXTERN bzled_work
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

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\MAIN\main.c
//    1 //主函数部分
//    2 //DDK 
//    3 // 1车
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
//   18   ReadFlash();
        BL       ReadFlash
//   19   read_sw();
        BL       read_sw
//   20   LPLD_LPTMR_DelayMs(300);
        MOV      R0,#+300
        BL       LPLD_LPTMR_DelayMs
//   21   
//   22   
//   23   if ( flag_bihuan == 0 && speed_up_Enable == 1 )//防止oled坏
        LDR.N    R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??main_0
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??main_0
//   24   {    
//   25     GUI.para.AI = 2;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+6]
//   26     PIT1_init();//控制系统时钟 //暂定10ms
        BL       PIT1_init
//   27     PIT0_init();//主系统时钟 //1MS 一次中断
        BL       PIT0_init
//   28     NVIC_init();
        BL       NVIC_init
//   29     
//   30     flag_bihuan = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//   31     speed_up_Enable = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_2
        STRB     R0,[R1, #+0]
        B.N      ??main_1
//   32   
//   33 }
//   34 
//   35   else
//   36   {
//   37     GUI_work();
??main_0:
        BL       GUI_work
//   38   }
//   39   star();
??main_1:
        BL       star
//   40   
//   41   while(1)
//   42   {
//   43     bzled_work();
??main_2:
        BL       bzled_work
//   44     
//   45     //30ms发送一次示波器数据
//   46     if ( send_cnt >= 1 )
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??main_2
//   47     {
//   48       sendDataToScope();
        BL       sendDataToScope
//   49       send_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_4
        STRB     R0,[R1, #+0]
        B.N      ??main_2
//   50     }
//   51     
//   52     
//   53 //    i = GUI.para.endline_time * 1000;
//   54 ////    LPLD_GPIO_ClearIntFlag(PORTD);
//   55 //    
//   56 //    j = 0;
//   57 //    j = PTD1_I + PTD5_I + PTD6_I + PTD15_I;
//   58 //    
//   59 //    if( j < 3)
//   60 //    {
//   61 //      if(1 == GUI.para.endline &&  timer_cnt > i)  //一个可调的值
//   62 //      {
//   63 //        flag_bihuan = 0;
//   64 //        ctl.motto.out = 0;
//   65 //        timer_cnt = 0;
//   66 //      }
//   67 //      bz_set(datarec);
//   68 //    }
//   69 
//   70   } 
//   71 }
//   72 
//   73 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void MCNT_isr() // 主系统计时
//   75 {
//   76   if(0 == flag_stop )
MCNT_isr:
        LDR.N    R0,??DataTable1_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??MCNT_isr_0
//   77   {
//   78   timer_cnt++ ;
        LDR.N    R0,??DataTable1_6
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_6
        STRH     R0,[R1, #+0]
//   79   }
//   80   
//   81   bz_cnt++;
??MCNT_isr_0:
        LDR.N    R0,??DataTable1_7
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_7
        STRH     R0,[R1, #+0]
//   82   send_cnt++;
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_4
        STRB     R0,[R1, #+0]
//   83   
//   84   
//   85   
//   86   if (timer_cnt == 65000)  //最多65秒
        LDR.N    R0,??DataTable1_6
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65000
        CMP      R0,R1
        BNE.N    ??MCNT_isr_1
//   87   {
//   88     timer_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STRH     R0,[R1, #+0]
//   89   }
//   90   
//   91 }
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
        DC32     flag_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     timer_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
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
// 202 bytes in section .text
// 
// 202 bytes of CODE memory
//   5 bytes of DATA memory
//
//Errors: none
//Warnings: none
