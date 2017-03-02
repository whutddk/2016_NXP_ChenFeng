///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:55
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\SENSOR\LDC1614.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\SENSOR\LDC1614.c" -D LPLD_K60 -lCN
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -lB
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -o
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\BSP\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\ITAC\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\CTL\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\MAIN\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\SENSOR\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\CPU\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\driver\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\class\" -On -I "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench 7.0\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\LDC1614.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LDC_READ
        EXTERN LDC_SEND

        PUBLIC LDC1614_init
        PUBLIC LDC1614_read_meas
        PUBLIC LDC1614_reset
        PUBLIC LDC1614_sleep
        PUBLIC LDC1614_start_meas
        PUBLIC LDC1614_status
        PUBLIC LDC_STATUS
        PUBLIC LDC_data
        PUBLIC LDC_flag

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\SENSOR\LDC1614.c
//    1 /*!
//    2 * \file LDC1614.c
//    3 *
//    4 * Copyright (c) 2014-2015, Texas Instruments Incorporated - http://www.ti.com
//    5 * All rights reserved.
//    6 */
//    7 
//    8 //*****************************************************************************
//    9 // #includes
//   10 //*****************************************************************************
//   11 #include "include.h"
//   12 
//   13 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 uint32 LDC_data[4] = {0};
LDC_data:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   15 uint16 LDC_STATUS = 0;
LDC_STATUS:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 uint8 LDC_flag[4] = {0};
LDC_flag:
        DS8 4
//   17 
//   18 
//   19 
//   20 
//   21 //*****************************************************************************
//   22 // LDC1614 Library functions
//   23 //*****************************************************************************

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void LDC1614_sleep(void)
//   25 {
LDC1614_sleep:
        PUSH     {R7,LR}
//   26  
//   27   LDC_SEND(CONFIG,0x3e01);//内部时钟改为外部，，可以尝试使用自动振幅校准0x2301,在低精度下使用，下同
        MOVW     R1,#+15873
        MOVS     R0,#+26
        BL       LDC_SEND
//   28 }
        POP      {R0,PC}          ;; return
//   29 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void LDC1614_init(void)
//   31 {
LDC1614_init:
        PUSH     {R7,LR}
//   32   LDC_SEND(REF_COUNT_CH0,0x0b54);//转化时间，18ms
        MOVW     R1,#+2900
        MOVS     R0,#+8
        BL       LDC_SEND
//   33   
//   34   
//   35   LDC_SEND(REF_COUNT_CH1,0x0b54);
        MOVW     R1,#+2900
        MOVS     R0,#+9
        BL       LDC_SEND
//   36   
//   37   
//   38   LDC_SEND(REF_COUNT_CH2,0x0b54);
        MOVW     R1,#+2900
        MOVS     R0,#+10
        BL       LDC_SEND
//   39   
//   40   
//   41   LDC_SEND(REF_COUNT_CH3,0x0400);
        MOV      R1,#+1024
        MOVS     R0,#+11
        BL       LDC_SEND
//   42   
//   43   
//   44   LDC_SEND(OFFSET_CH0,0x0000);//频率偏置f offset 为0
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       LDC_SEND
//   45   
//   46 
//   47   LDC_SEND(OFFSET_CH1,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+13
        BL       LDC_SEND
//   48   
//   49 
//   50   LDC_SEND(OFFSET_CH2,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+14
        BL       LDC_SEND
//   51   
//   52 
//   53   LDC_SEND(OFFSET_CH3,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       LDC_SEND
//   54   
//   55 
//   56   
//   57   LDC_SEND(SETTLECOUNT_CH0,0x0400);//0x0400数字大保证稳定时间长
        MOV      R1,#+1024
        MOVS     R0,#+16
        BL       LDC_SEND
//   58   
//   59 
//   60   
//   61   LDC_SEND(SETTLECOUNT_CH1,0x0400);
        MOV      R1,#+1024
        MOVS     R0,#+17
        BL       LDC_SEND
//   62   
//   63 
//   64   
//   65   LDC_SEND(SETTLECOUNT_CH2,0x0400);
        MOV      R1,#+1024
        MOVS     R0,#+18
        BL       LDC_SEND
//   66   
//   67 
//   68   
//   69   LDC_SEND(SETTLECOUNT_CH3,0x0400);
        MOV      R1,#+1024
        MOVS     R0,#+19
        BL       LDC_SEND
//   70   
//   71 
//   72   
//   73   LDC_SEND(CLOCK_DIVIDERS_CH0,0x1001);//分频系数n=1，m=8，晶振频率40MHZ，传感器频率0.11MHZ
        MOVW     R1,#+4097
        MOVS     R0,#+20
        BL       LDC_SEND
//   74   
//   75 
//   76   
//   77   LDC_SEND(CLOCK_DIVIDERS_CH1,0x1001);
        MOVW     R1,#+4097
        MOVS     R0,#+21
        BL       LDC_SEND
//   78   
//   79 
//   80   
//   81   LDC_SEND(CLOCK_DIVIDERS_CH2,0x1001);/*attention*/  //为什么这个之前不一样
        MOVW     R1,#+4097
        MOVS     R0,#+22
        BL       LDC_SEND
//   82   
//   83 
//   84   
//   85   LDC_SEND(CLOCK_DIVIDERS_CH3,0x1001);
        MOVW     R1,#+4097
        MOVS     R0,#+23
        BL       LDC_SEND
//   86   
//   87 
//   88   
//   89   LDC_SEND(ERROR_CONFIG,0xF801);//只读
        MOVW     R1,#+63489
        MOVS     R0,#+25
        BL       LDC_SEND
//   90   
//   91 
//   92   
//   93   LDC_SEND(CONFIG,0x3e01);//0x3601
        MOVW     R1,#+15873
        MOVS     R0,#+26
        BL       LDC_SEND
//   94   
//   95 
//   96   
//   97   LDC_SEND(MUX_CONFIG,0xa209);//修改脉冲滤波，，大于传感器最大频率0xc201
        MOVW     R1,#+41481
        MOVS     R0,#+27
        BL       LDC_SEND
//   98   
//   99 
//  100   
//  101   LDC_SEND(DRIVE_CURRENT_CH0,0x3180);//线圈105*65   18c0 2100 1080
        MOV      R1,#+12672
        MOVS     R0,#+30
        BL       LDC_SEND
//  102   
//  103 
//  104   
//  105   LDC_SEND(DRIVE_CURRENT_CH1,0x39c0);
        MOV      R1,#+14784
        MOVS     R0,#+31
        BL       LDC_SEND
//  106   
//  107 
//  108   
//  109   LDC_SEND(DRIVE_CURRENT_CH2,0x3180);
        MOV      R1,#+12672
        MOVS     R0,#+32
        BL       LDC_SEND
//  110   
//  111 
//  112   
//  113   LDC_SEND(DRIVE_CURRENT_CH3,0x8800);
        MOV      R1,#+34816
        MOVS     R0,#+33
        BL       LDC_SEND
//  114   
//  115 }
        POP      {R0,PC}          ;; return
//  116 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  117 void LDC1614_reset(void)
//  118 {
LDC1614_reset:
        PUSH     {R7,LR}
//  119   LDC_SEND(RESET_DEV,0x8000);
        MOV      R1,#+32768
        MOVS     R0,#+28
        BL       LDC_SEND
//  120 }
        POP      {R0,PC}          ;; return
//  121 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  122 void LDC1614_start_meas(void)
//  123 {
LDC1614_start_meas:
        PUSH     {R7,LR}
//  124   LDC_SEND(CONFIG,0x1e01);//内部时钟改为外部
        MOVW     R1,#+7681
        MOVS     R0,#+26
        BL       LDC_SEND
//  125 }
        POP      {R0,PC}          ;; return
//  126 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  127 void LDC1614_read_meas(void)//不再读ch3
//  128 {
LDC1614_read_meas:
        PUSH     {R4,LR}
//  129   uint16 temp = 0;
        MOVS     R4,#+0
//  130 
//  131   temp = LDC_READ(DATA_MSB_CH0);
        MOVS     R0,#+0
        BL       LDC_READ
        MOVS     R4,R0
//  132   LDC_data[0] = ( (0x0FFF & temp) << 16 );
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+20       ;; ZeroExtS R0,R4,#+20,#+20
        LSRS     R0,R0,#+20
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//  133   LDC_flag[0] = ( 0xF000 & temp ) >> 8; 
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        ANDS     R0,R0,#0xF0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//  134   
//  135   LDC_data[0] |= LDC_READ(DATA_LSB_CH0) ;
        MOVS     R0,#+1
        BL       LDC_READ
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//  136   
//  137 
//  138   
//  139   temp = LDC_READ(DATA_MSB_CH1);
        MOVS     R0,#+2
        BL       LDC_READ
        MOVS     R4,R0
//  140   LDC_data[1] = ( ( 0x0FFF & temp ) << 16 );
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+20       ;; ZeroExtS R0,R4,#+20,#+20
        LSRS     R0,R0,#+20
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+4]
//  141   LDC_flag[1] = ( 0xF000 & temp ) >> 8;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        ANDS     R0,R0,#0xF0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+1]
//  142   
//  143   LDC_data[1] |= LDC_READ(DATA_LSB_CH1) ;
        MOVS     R0,#+3
        BL       LDC_READ
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+4]
//  144   
//  145 
//  146 
//  147   temp = LDC_READ(DATA_MSB_CH2);
        MOVS     R0,#+4
        BL       LDC_READ
        MOVS     R4,R0
//  148   LDC_data[2] = ( 0x0FFF & temp ) << 16 ;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+20       ;; ZeroExtS R0,R4,#+20,#+20
        LSRS     R0,R0,#+20
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+8]
//  149   LDC_flag[2] = ( 0xF000 & temp ) >> 8;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        ANDS     R0,R0,#0xF0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+2]
//  150 
//  151   
//  152   LDC_data[2] |= LDC_READ(DATA_LSB_CH2) ;
        MOVS     R0,#+5
        BL       LDC_READ
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+8]
//  153  
//  154   
//  155   /*temp = LDC_READ(DATA_MSB_CH3);
//  156   LDC_data[3] = ( 0x0FFF & temp ) << 16 ;
//  157   LDC_flag[3] = ( 0xF000 & temp ) >> 8 ;
//  158   
//  159 
//  160   
//  161   LDC_data[3] |= LDC_READ(DATA_LSB_CH3) ;
//  162   */
//  163 
//  164  // LDC1614_status();
//  165   
//  166 }
        POP      {R4,PC}          ;; return
//  167 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 void LDC1614_status(void)
//  169 {
LDC1614_status:
        PUSH     {R7,LR}
//  170   LDC_STATUS = LDC_READ(0x18);
        MOVS     R0,#+24
        BL       LDC_READ
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+0]
//  171 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     LDC_data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     LDC_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     LDC_STATUS

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
//  22 bytes in section .bss
// 450 bytes in section .text
// 
// 450 bytes of CODE memory
//  22 bytes of DATA memory
//
//Errors: none
//Warnings: none
