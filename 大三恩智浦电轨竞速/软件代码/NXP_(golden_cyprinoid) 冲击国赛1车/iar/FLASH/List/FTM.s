///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:09
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\BSP\FTM.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\BSP\FTM.c" -D LPLD_K60 -lCN
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
//        1.9\iar\FLASH\List\FTM.s
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

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\BSP\FTM.c
//    1 //FTM初始化
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
//   10   ftm_init_struct.FTM_Ftmx = FTM0;	//使能FTM0通道
        LDR.N    R0,??DataTable2  ;; 0x40038000
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   11   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+4]
//   12   ftm_init_struct.FTM_PwmFreq = 20000;	//PWM频率20000Hz
        MOVW     R0,#+20000
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   13   ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH23;
        MOV      R0,#+4096
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+12]
//   14   ftm_init_struct.FTM_PwmDeadtimeDiv = DEADTIME_DIV1;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+16]
//   15   ftm_init_struct.FTM_PwmDeadtimeVal=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+17]
//   16   ftm_init_struct.FTM_ToiEnable = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+20]
//   17   ftm_init_struct.FTM_Isr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+24]
//   18   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   19   
//   20   LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
//   21                       FTM_Ch0, //使能Ch0通道
//   22                       1, //初始化DUTY
//   23                       PTC1, //使用Ch0通道的PTC1引脚
//   24                       ALIGN_LEFT        //脉宽左对齐
//   25                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+61
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   26   LPLD_FTM_PWM_Enable(FTM0, //使用FTM0
//   27                       FTM_Ch1, //使能Ch1通道
//   28                       1, //初始化DUTY
//   29                       PTC2, //使用Ch1通道的PTC2引脚
//   30                       ALIGN_LEFT        //脉宽左对齐
//   31                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+62
        MOVS     R2,#+1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40038000
        BL       LPLD_FTM_PWM_Enable
//   32 
//   33 }
        POP      {R0-R2,PC}       ;; return
//   34 
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void S3010_init()
//   37 {
S3010_init:
        PUSH     {R5-R7,LR}
//   38   //pwm
//   39   ftm_init_struct.FTM_Ftmx = FTM1;	//使能FTM0通道
        LDR.N    R0,??DataTable2_2  ;; 0x40039000
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   40   ftm_init_struct.FTM_Mode = FTM_MODE_PWM;	//使能PWM模式
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+4]
//   41   ftm_init_struct.FTM_PwmFreq = 50;	//PWM频率50Hz
        MOVS     R0,#+50
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   42   ftm_init_struct.FTM_PwmDeadtimeCfg = DEADTIME_CH23;
        MOV      R0,#+4096
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+12]
//   43   ftm_init_struct.FTM_PwmDeadtimeVal=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+17]
//   44   LPLD_FTM_Init(ftm_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   45   
//   46   LPLD_FTM_PWM_Enable(FTM1, //使用FTM1
//   47                       FTM_Ch0, //使能Ch0通道
//   48                       750, //初始化DUTY
//   49                       PTA8, //使用Ch0通道的PTC1引脚
//   50                       ALIGN_LEFT        //脉宽左对齐
//   51                         ); 
        MOVS     R0,#+40
        STR      R0,[SP, #+0]
        MOVS     R3,#+8
        MOVW     R2,#+750
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_2  ;; 0x40039000
        BL       LPLD_FTM_PWM_Enable
//   52   
//   53 }
        POP      {R0-R2,PC}       ;; return
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 void qei_init()  
//   56 {   
qei_init:
        PUSH     {R5-R7,LR}
//   57   //配置正交解码功能参数
//   58   qei_init_struct.FTM_Ftmx = FTM2;              //只有FTM1和FTM2有正交解码功能
        LDR.N    R0,??DataTable2_3  ;; 0x400b8000
        LDR.N    R1,??DataTable2_4
        STR      R0,[R1, #+0]
//   59   qei_init_struct.FTM_Mode = FTM_MODE_QD;       //正交解码功能
        MOVS     R0,#+4
        LDR.N    R1,??DataTable2_4
        STRB     R0,[R1, #+4]
//   60   qei_init_struct.FTM_QdMode = QD_MODE_PHAB;    //AB相输入模式
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_4
        STRB     R0,[R1, #+18]
//   61   qei_init_struct.FTM_ToiEnable = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_4
        STRB     R0,[R1, #+20]
//   62   qei_init_struct.FTM_Isr = NULL;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_4
        STR      R0,[R1, #+24]
//   63   //初始化FTM
//   64   LPLD_FTM_Init(qei_init_struct);
        LDR.N    R1,??DataTable2_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_Init
//   65   //使能AB相输入通道
//   66   //PTB18引脚接A相输入、PTB19引脚接B相输入
//   67   LPLD_FTM_QD_Enable(FTM2, PTB18, PTB19); 
        MOVS     R2,#+51
        MOVS     R1,#+50
        LDR.N    R0,??DataTable2_3  ;; 0x400b8000
        BL       LPLD_FTM_QD_Enable
//   68 }
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
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
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
// 260 bytes in section .text
// 
// 260 bytes of CODE memory
//  56 bytes of DATA memory
//
//Errors: none
//Warnings: none
