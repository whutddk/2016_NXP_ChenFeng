///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  17:41:25
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\sysinit.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\sysinit.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\sysinit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CTL_SEN_init
        EXTERN Draw_BMP
        EXTERN LDC1000_init
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

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\sysinit.c
//    1 //ϵͳȫ���ʼ��
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
//    8   //���ȳ�ʼ�����������и�λ���
//    9   bzled_init();  
        BL       bzled_init
//   10   
//   11   BZ_ON;
        MOVS     R2,#+0
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
//   24   //�������
//   25  
//   26   CTL_SEN_init();
        BL       CTL_SEN_init
//   27   
//   28   
//   29     /*LDC_INIT()*/
//   30 
//   31   LDC1000_init();
        BL       LDC1000_init
//   32   
//   33   //����ʼ������ʼ����ɼ�����ʼ
//   34  
//   35   PIT1_init();//����ϵͳʱ�� //�ݶ�10ms
        BL       PIT1_init
//   36   PIT0_init();//��ϵͳʱ�� //1MS һ���ж�
        BL       PIT0_init
//   37 
//   38   
//   39   NVIC_init();
        BL       NVIC_init
//   40   
//   41   BZ_OFF; //��ʼ���������رշ�����
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??sysinit_0   ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   42   LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??sysinit_0   ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   43 }
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
// 116 bytes in section .text
// 
// 116 bytes of CODE memory
//
//Errors: none
//Warnings: 1
