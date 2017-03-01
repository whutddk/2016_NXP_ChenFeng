///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       14/Aug/2016  11:03:49
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\FTM.c
//    Command line =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\FTM.c
//        -D LPLD_K60 -lCN
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\
//        -lB
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\
//        -o
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\BSP\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\ITAC\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\CTL\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\CPU\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\common\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\FatFs\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\common\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\class\
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\FTM.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_FTM_QD_Enable
        EXTERN __aeabi_memcpy4

        PUBLIC PWM_init
        PUBLIC ftm_init_struct
        PUBLIC qei_init
        PUBLIC qei_init_struct

// C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\FTM.c
//    1 //FTM��ʼ��
//    2 #include "include.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 FTM_InitTypeDef ftm_init_struct;
ftm_init_struct:
        DS8 28
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void PWM_init() //˫����PWM
//    7 {
PWM_init:
        PUSH     {R5-R7,LR}
//    8   //pwm  
//    9   ftm_init_struct.FTM_Ftmx = FTM0;	//ʹ��FTM0ͨ��
        LDR.N    R0,??DataTable1  ;; 0x40038000
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   10   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//ʹ��PWMģʽ
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+4]
//   11   ftm_init_struct.FTM_PwmFreq = 50;	//PWMƵ��20000Hz
        MOVS     R0,#+50
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+8]
//   12   ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH01;
        MOVS     R0,#+16
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+12]
//   13   ftm_init_struct.FTM_PwmDeadtimeDiv = DEADTIME_DIV1;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+16]
//   14   ftm_init_struct.FTM_PwmDeadtimeVal = 10;
        MOVS     R0,#+10
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+17]
//   15   ftm_init_struct.FTM_PwmDeadtimeVal=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+17]
//   16   ftm_init_struct.FTM_ToiEnable = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+20]
//   17   ftm_init_struct.FTM_Isr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+24]
//   18   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   19   
//   20   LPLD_FTM_PWM_Enable(FTM0, //ʹ��FTM0
//   21                       FTM_Ch0, //ʹ��Ch0ͨ��
//   22                       0, //��ʼ��DUTY
//   23                       PTC1, //ʹ��Ch0ͨ����PTC1����
//   24                       ALIGN_LEFT        //���������
//   25                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   26 
//   27 }
        POP      {R0-R2,PC}       ;; return
//   28 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   29 FTM_InitTypeDef qei_init_struct;
qei_init_struct:
        DS8 28

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void qei_init()  
//   31 {   
qei_init:
        PUSH     {R5-R7,LR}
//   32   //�����������빦�ܲ���
//   33   qei_init_struct.FTM_Ftmx = FTM1;              //ֻ��FTM1��FTM2���������빦��
        LDR.N    R0,??DataTable1_2  ;; 0x40039000
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+0]
//   34   qei_init_struct.FTM_Mode = FTM_MODE_QD;       //�������빦��
        MOVS     R0,#+4
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+4]
//   35   qei_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB������ģʽ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+18]
//   36   qei_init_struct.FTM_ToiEnable = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STRB     R0,[R1, #+20]
//   37   qei_init_struct.FTM_Isr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_3
        STR      R0,[R1, #+24]
//   38   //��ʼ��FTM
//   39   LPLD_FTM_Init(qei_init_struct);
        LDR.N    R1,??DataTable1_3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   40   //ʹ��AB������ͨ��
//   41   //PTB18���Ž�A�����롢PTB19���Ž�B������
//   42   LPLD_FTM_QD_Enable(FTM1, PTA12, PTA13); 
        MOVS     R2,#+13
        MOVS     R1,#+12
        LDR.N    R0,??DataTable1_2  ;; 0x40039000
        BL       LPLD_FTM_QD_Enable
//   43 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     qei_init_struct

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
//  56 bytes in section .bss
// 170 bytes in section .text
// 
// 170 bytes of CODE memory
//  56 bytes of DATA memory
//
//Errors: none
//Warnings: none
