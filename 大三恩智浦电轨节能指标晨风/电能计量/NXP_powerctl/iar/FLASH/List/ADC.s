///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       14/Aug/2016  11:03:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\ADC.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\ADC.c
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
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\ADC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Get
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_memcpy4
        EXTERN ctl
        EXTERN relay_OFF

        PUBLIC adc_init
        PUBLIC adc_init_struct
        PUBLIC get_offset

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\BSP\ADC.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 ADC_InitTypeDef adc_init_struct;
adc_init_struct:
        DS8 20
//    4 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void adc_init(void)
//    6 {
adc_init:
        PUSH     {R7,LR}
//    7   //配置ADC采样参数
//    8   adc_init_struct.ADC_Adcx = ADC0;
        LDR.N    R0,??DataTable1  ;; 0x4003b000
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//    9   adc_init_struct.ADC_DiffMode = ADC_SE;        //单端采集
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+4]
//   10   adc_init_struct.ADC_BitMode = SE_16BIT;       //单端8位精度
        MOVS     R0,#+3
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+5]
//   11   adc_init_struct.ADC_SampleTimeCfg = SAMTIME_LONG;    //长采样时间
        MOVS     R0,#+16
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+6]
//   12   adc_init_struct.ADC_LongSampleTimeSel = LSAMTIME_12EX;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+7]
//   13   adc_init_struct.ADC_HwAvgSel = HW_32AVG;       //4次硬件平均
        MOVS     R0,#+7
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+8]
//   14   adc_init_struct.ADC_CalEnable = TRUE; //使能初始化校验
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+11]
//   15   //初始化ADC
//   16   LPLD_ADC_Init(adc_init_struct);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   17   //为了保证复用功能不被占用，最好使能相应ADC通道
//   18   //RUSH开发板的电位器使用DAD1通道进行采集
//   19   //单端DAD1通道的引脚为(ADC0_DP1)
//   20   LPLD_ADC_Chn_Enable(ADC0, AD8); 
        MOVS     R1,#+8
        LDR.N    R0,??DataTable1  ;; 0x4003b000
        BL       LPLD_ADC_Chn_Enable
//   21 }
        POP      {R0,PC}          ;; return
//   22 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void get_offset()
//   24 {
get_offset:
        PUSH     {R4,LR}
//   25   uint16 i = 0;
        MOVS     R4,#+0
//   26   
//   27   relay_OFF();
        BL       relay_OFF
//   28   
//   29   ctl.current_offset = LPLD_ADC_Get(ADC0, AD8);
        MOVS     R1,#+8
        LDR.N    R0,??DataTable1  ;; 0x4003b000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+8]
//   30   LPLD_LPTMR_DelayMs(2);
        MOVS     R0,#+2
        BL       LPLD_LPTMR_DelayMs
//   31   for ( i = 0;i < 2000; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??get_offset_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+2000
        BGE.N    ??get_offset_1
//   32   {
//   33     ctl.current_offset += LPLD_ADC_Get(ADC0, AD8);
        MOVS     R1,#+8
        LDR.N    R0,??DataTable1  ;; 0x4003b000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable1_2
        LDR      R1,[R1, #+8]
        UXTAH    R0,R1,R0
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+8]
//   34     ctl.current_offset /= 2;
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+8]
        LSRS     R0,R0,#+1
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+8]
//   35     LPLD_LPTMR_DelayMs(2);
        MOVS     R0,#+2
        BL       LPLD_LPTMR_DelayMs
//   36   }
        ADDS     R4,R4,#+1
        B.N      ??get_offset_0
//   37 }
??get_offset_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     adc_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
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
//  20 bytes in section .bss
// 164 bytes in section .text
// 
// 164 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
