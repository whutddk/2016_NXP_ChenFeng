///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       02/Jan/2016  16:00:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\FTM.c
//    Command line =  
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\FTM.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -lB
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -o
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\sensor\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\FTM.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_Init
        EXTERN LPLD_FTM_PWM_Enable
        EXTERN LPLD_FTM_QD_Enable
        EXTERN __aeabi_memcpy4

        PUBLIC PWM_init
        PUBLIC S3010_init
        PUBLIC ftm_init_struct
        PUBLIC qei_init
        PUBLIC qei_init_struct

// G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\BSP\FTM.c
//    1 //FTM��ʼ��
//    2 #include "include.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 FTM_InitTypeDef ftm_init_struct;
ftm_init_struct:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 FTM_InitTypeDef qei_init_struct;
qei_init_struct:
        DS8 28
//    6 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    7 void PWM_init()
//    8 {
PWM_init:
        PUSH     {R5-R7,LR}
//    9   //pwm
//   10   ftm_init_struct.FTM_Ftmx = FTM0;	//ʹ��FTM0ͨ��
        LDR.N    R0,??DataTable2  ;; 0x40038000
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   11   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//ʹ��PWMģʽ
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+4]
//   12   ftm_init_struct.FTM_PwmFreq = 700000;	//PWMƵ��20000Hz
        LDR.N    R0,??DataTable2_2  ;; 0xaae60
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   13   ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH23;
        MOV      R0,#+4096
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+12]
//   14   ftm_init_struct.FTM_PwmDeadtimeVal=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+17]
//   15   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   16   
//   17   LPLD_FTM_PWM_Enable(FTM0, //ʹ��FTM0
//   18                       FTM_Ch0, //ʹ��Ch0ͨ��
//   19                       5000, //��ʼ��DUTY
//   20                       PTC1, //ʹ��Ch0ͨ����PTC1����
//   21                       ALIGN_LEFT        //���������
//   22                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVW     R2,#+5000
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   23   LPLD_FTM_PWM_Enable(FTM0, //ʹ��FTM0
//   24                       FTM_Ch2, //ʹ��Ch1ͨ��
//   25                       5000, //��ʼ��DUTY
//   26                       PTC3, //ʹ��Ch1ͨ����PTC2����
//   27                       ALIGN_LEFT        //���������
//   28                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+63
        MOVW     R2,#+5000
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   29 
//   30 }
        POP      {R0-R2,PC}       ;; return
//   31 
//   32 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void S3010_init()
//   34 {
S3010_init:
        PUSH     {R5-R7,LR}
//   35   //pwm
//   36   ftm_init_struct.FTM_Ftmx = FTM1;	//ʹ��FTM0ͨ��
        LDR.N    R0,??DataTable2_3  ;; 0x40039000
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   37   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//ʹ��PWMģʽ
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+4]
//   38   ftm_init_struct.FTM_PwmFreq = 100;	//PWMƵ��100Hz
        MOVS     R0,#+100
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   39   ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH23;
        MOV      R0,#+4096
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+12]
//   40   ftm_init_struct.FTM_PwmDeadtimeVal=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+17]
//   41   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   42   
//   43   LPLD_FTM_PWM_Enable(FTM1, //ʹ��FTM1
//   44                       FTM_Ch0, //ʹ��Ch0ͨ��
//   45                       1520, //��ʼ��DUTY
//   46                       PTA8, //ʹ��Ch0ͨ����PTC1����
//   47                       ALIGN_LEFT        //���������
//   48                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+8
        MOV      R2,#+1520
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_3  ;; 0x40039000
        BL       LPLD_FTM_PWM_Enable
//   49   
//   50 }
        POP      {R0-R2,PC}       ;; return
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 void qei_init()
//   53 {   
qei_init:
        PUSH     {R5-R7,LR}
//   54   //�����������빦�ܲ���
//   55   
//   56   qei_init_struct.FTM_Ftmx = FTM2;              //ֻ��FTM1��FTM2���������빦��
        LDR.N    R0,??DataTable2_4  ;; 0x400b8000
        LDR.N    R1,??DataTable2_5
        STR      R0,[R1, #+0]
//   57   qei_init_struct.FTM_Mode = FTM_MODE_QD;       //�������빦��
        MOVS     R0,#+4
        LDR.N    R1,??DataTable2_5
        STRB     R0,[R1, #+4]
//   58   qei_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB������ģʽ
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_5
        STRB     R0,[R1, #+18]
//   59   //��ʼ��FTM
//   60   LPLD_FTM_Init(qei_init_struct);
        LDR.N    R1,??DataTable2_5
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   61   //ʹ��AB������ͨ��
//   62   //PTB18���Ž�A�����롢PTB19���Ž�B������
//   63   LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19);
        MOVS     R2,#+51
        MOVS     R1,#+50
        LDR.N    R0,??DataTable2_4  ;; 0x400b8000
        BL       LPLD_FTM_QD_Enable
//   64   
//   65 }
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ftm_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0xaae60

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
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
// 236 bytes in section .text
// 
// 236 bytes of CODE memory
//  56 bytes of DATA memory
//
//Errors: none
//Warnings: none
