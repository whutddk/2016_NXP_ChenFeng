///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:59
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\app\BSP\sysinit.c
//    Command line =  
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\app\BSP\sysinit.c" -D LPLD_K60 -lCN
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\FLASH\List\" -lB
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\FLASH\List\" -o
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\BSP\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\ITAC\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\CTL\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\MAIN\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\SENSOR\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\CPU\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\common\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\LPLD\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\FatFs\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\USB\common\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\USB\driver\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\USB\class\" -On -I "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench 7.0\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\FLASH\List\sysinit.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN CTL_SEN_init
        EXTERN I2C_CLK_INIT
        EXTERN I2C_DAT_IN
        EXTERN LDC1614_init
        EXTERN LDC1614_start_meas
        EXTERN LPLD_GPIO_Output_b
        EXTERN OLED_Init
        EXTERN PWM_init
        EXTERN S3010_init
        EXTERN UART_init
        EXTERN bz_init
        EXTERN key_init
        EXTERN led_init
        EXTERN qei_init
        EXTERN sensor_offset

        PUBLIC sysinit

// C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) ��������� 1��\app\BSP\sysinit.c
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
//    9   bz_init();  
        BL       bz_init
//   10   led_init();
        BL       led_init
//   11   
//   12   BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??sysinit_0   ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   13   LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??sysinit_0   ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   14   
//   15   UART_init();
        BL       UART_init
//   16   PWM_init();
        BL       PWM_init
//   17   qei_init();
        BL       qei_init
//   18   S3010_init();
        BL       S3010_init
//   19    
//   20   OLED_Init();
        BL       OLED_Init
//   21   
//   22   
//   23   //�������
//   24  
//   25   CTL_SEN_init();
        BL       CTL_SEN_init
//   26     
//   27     /*LDC_INIT()*/
//   28   //I2C_init();
//   29   I2C_CLK_INIT();
        BL       I2C_CLK_INIT
//   30   I2C_DAT_IN();
        BL       I2C_DAT_IN
//   31   LDC1614_init();
        BL       LDC1614_init
//   32   LDC1614_start_meas();
        BL       LDC1614_start_meas
//   33   
//   34   key_init();
        BL       key_init
//   35   
//   36   sensor_offset();//ȡƫ��
        BL       sensor_offset
//   37   
//   38   //����ʼ������ʼ����ɼ�����ʼ
//   39   
//   40 //  PIT1_init();//����ϵͳʱ�� //�ݶ�10ms
//   41 //  PIT0_init();//��ϵͳʱ�� //1MS һ���ж�
//   42 //    NVIC_init();
//   43   
//   44   BZ_OFF; //��ʼ���������رշ�����
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??sysinit_0   ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   45   LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??sysinit_0   ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   46 }
        POP      {R0,PC}          ;; return
        DATA
??sysinit_0:
        DC32     0x400ff100

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
// 104 bytes in section .text
// 
// 104 bytes of CODE memory
//
//Errors: none
//Warnings: none
