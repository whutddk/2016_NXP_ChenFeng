///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       14/Aug/2016  11:03:53
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\sysinit.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\sysinit.c
//        -D LPLD_K60 -lCN
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\
//        -lB
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\
//        -o
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\BSP\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\ITAC\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\CTL\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\CPU\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\common\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\FatFs\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\common\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\class\
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\sysinit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Draw_BMP
        EXTERN LPLD_GPIO_Output_b
        EXTERN NVIC_init
        EXTERN OLED_Init
        EXTERN PIT0_init
        EXTERN PWM_init
        EXTERN RC_init
        EXTERN UART_init
        EXTERN adc_init
        EXTERN bzled_init
        EXTERN ctl
        EXTERN key_init
        EXTERN mushroom

        PUBLIC sysinit

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\sysinit.c
//    1 //系统全体初始化
//    2 //DDK
//    3 
//    4 #include "include.h"
//    5 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    6 void sysinit()
//    7 {
sysinit:
        PUSH     {R7,LR}
//    8   //首先初始化蜂鸣器进行复位检测
//    9   bzled_init();  
        BL       bzled_init
//   10   
//   11   BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??sysinit_0   ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   12   LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??sysinit_0   ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   13   
//   14   UART_init();
        BL       UART_init
//   15   PWM_init(); 
        BL       PWM_init
//   16   
//   17   //qei_init();
//   18   
//   19   OLED_Init();
        BL       OLED_Init
//   20   Draw_BMP(0,0,66,7,mushroom); 
        LDR.N    R0,??sysinit_0+0x4
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+66
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Draw_BMP
//   21   RC_init();
        BL       RC_init
//   22   key_init();
        BL       key_init
//   23   
//   24   adc_init();
        BL       adc_init
//   25   PIT0_init();//主系统时钟 //1MS 一次中断
        BL       PIT0_init
//   26   
//   27   ctl.POWER = 0; 
        MOVS     R0,#+0
        LDR.N    R1,??sysinit_0+0x8
        STR      R0,[R1, #+16]
//   28   
//   29   NVIC_init();
        BL       NVIC_init
//   30   
//   31   BZ_OFF; //初始化结束，关闭蜂鸣器
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??sysinit_0   ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   32   LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??sysinit_0   ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   33 }
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??sysinit_0:
        DC32     0x400ff000
        DC32     mushroom
        DC32     ctl

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
// 116 bytes in section .text
// 
// 116 bytes of CODE memory
//
//Errors: none
//Warnings: none
