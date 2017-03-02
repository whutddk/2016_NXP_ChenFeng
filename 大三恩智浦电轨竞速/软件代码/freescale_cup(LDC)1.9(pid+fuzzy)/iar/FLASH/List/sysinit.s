///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:03:05
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\BSP\sysinit.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\BSP\sysinit.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\sysinit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CTL_SEN_init
        EXTERN Draw_BMP
        EXTERN I2C_CLK_INIT
        EXTERN I2C_DAT_IN
        EXTERN LDC1614_init
        EXTERN LDC1614_start_meas
        EXTERN LPLD_GPIO_Output_b
        EXTERN NVIC_init
        EXTERN OLED_Init
        EXTERN PIT0_init
        EXTERN PIT1_init
        EXTERN PWM_init
        EXTERN S3010_init
        EXTERN UART_init
        EXTERN bzled_init
        EXTERN key_init
        EXTERN mushroom
        EXTERN qei_init

        PUBLIC sysinit

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\BSP\sysinit.c
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
        MOVS     R1,#+7
        LDR.N    R0,??sysinit_0   ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   12   LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??sysinit_0   ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   13   
//   14   UART_init();
        BL       UART_init
//   15   PWM_init();
        BL       PWM_init
//   16   qei_init();
        BL       qei_init
//   17   S3010_init();
        BL       S3010_init
//   18    
//   19   key_init();
        BL       key_init
//   20   OLED_Init();
        BL       OLED_Init
//   21   
//   22   Draw_BMP(0,0,66,7,mushroom);
        LDR.N    R0,??sysinit_0+0x4
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        MOVS     R2,#+66
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Draw_BMP
//   23   
//   24   //代入参数
//   25  
//   26   CTL_SEN_init();
        BL       CTL_SEN_init
//   27   
//   28   
//   29     /*LDC_INIT()*/
//   30   I2C_CLK_INIT();
        BL       I2C_CLK_INIT
//   31   I2C_DAT_IN();
        BL       I2C_DAT_IN
//   32   LDC1614_init();
        BL       LDC1614_init
//   33   LDC1614_start_meas();
        BL       LDC1614_start_meas
//   34   
//   35   
//   36 
//   37 
//   38   //最后初始化，初始化完成即任务开始
//   39  
//   40   PIT1_init();//控制系统时钟 //暂定10ms
        BL       PIT1_init
//   41   PIT0_init();//主系统时钟 //1MS 一次中断
        BL       PIT0_init
//   42 
//   43   
//   44   NVIC_init();
        BL       NVIC_init
//   45   
//   46   BZ_OFF; //初始化结束，关闭蜂鸣器
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??sysinit_0   ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   47   LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??sysinit_0   ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   48 }
        POP      {R0,PC}          ;; return
        DATA
??sysinit_0:
        DC32     0x400ff080
        DC32     mushroom

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
// 128 bytes in section .text
// 
// 128 bytes of CODE memory
//
//Errors: none
//Warnings: none
