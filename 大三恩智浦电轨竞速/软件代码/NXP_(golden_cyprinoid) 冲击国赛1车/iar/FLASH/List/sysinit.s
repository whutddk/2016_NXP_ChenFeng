///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:20
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\BSP\sysinit.c
//    Command line =  
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\BSP\sysinit.c" -D LPLD_K60 -lCN
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -lB
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -o
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\BSP\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\ITAC\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\CTL\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\MAIN\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\SENSOR\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\CPU\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\common\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\HW\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\DEV\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\option\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\common\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\driver\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\descriptor\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\class\" -On -I D:\IAR\arm\CMSIS\Include\ -D
//        ARM_MATH_CM4
//    List file    =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\sysinit.s
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

// E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\BSP\sysinit.c
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
//   22   //�������
//   23  
//   24   CTL_SEN_init();
        BL       CTL_SEN_init
//   25     
//   26     /*LDC_INIT()*/
//   27   //I2C_init();
//   28   I2C_CLK_INIT();
        BL       I2C_CLK_INIT
//   29   I2C_DAT_IN();
        BL       I2C_DAT_IN
//   30   LDC1614_init();
        BL       LDC1614_init
//   31   LDC1614_start_meas();
        BL       LDC1614_start_meas
//   32   
//   33   key_init();
        BL       key_init
//   34   
//   35   sensor_offset();//ȡƫ��
        BL       sensor_offset
//   36   
//   37   //����ʼ������ʼ����ɼ�����ʼ
//   38   
//   39 //  PIT1_init();//����ϵͳʱ�� //�ݶ�10ms
//   40 //  PIT0_init();//��ϵͳʱ�� //1MS һ���ж�
//   41 //    NVIC_init();
//   42   
//   43   BZ_OFF; //��ʼ���������رշ�����
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??sysinit_0   ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   44   LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??sysinit_0   ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   45 }
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
