///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\SENSOR\LDC1614.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\SENSOR\LDC1614.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\LDC1614.s
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

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\SENSOR\LDC1614.c
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
//   32 
//   33   
//   34   LDC_SEND(REF_COUNT_CH0,0x1770);//转化时间，Conversion Time (tC0) =(CH0_RCOUNT?16)/fREF0
        MOVW     R1,#+6000
        MOVS     R0,#+8
        BL       LDC_SEND
//   35   
//   36   
//   37   LDC_SEND(REF_COUNT_CH1,0x1770);
        MOVW     R1,#+6000
        MOVS     R0,#+9
        BL       LDC_SEND
//   38   
//   39   
//   40   LDC_SEND(REF_COUNT_CH2,0x1770);
        MOVW     R1,#+6000
        MOVS     R0,#+10
        BL       LDC_SEND
//   41   
//   42   
//   43   LDC_SEND(REF_COUNT_CH3,0x0400);
        MOV      R1,#+1024
        MOVS     R0,#+11
        BL       LDC_SEND
//   44   
//   45   
//   46   LDC_SEND(OFFSET_CH0,0x0000);//频率偏置f offset 为0
        MOVS     R1,#+0
        MOVS     R0,#+12
        BL       LDC_SEND
//   47   
//   48 
//   49   LDC_SEND(OFFSET_CH1,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+13
        BL       LDC_SEND
//   50   
//   51 
//   52   LDC_SEND(OFFSET_CH2,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+14
        BL       LDC_SEND
//   53   
//   54 
//   55   LDC_SEND(OFFSET_CH3,0x0000);
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       LDC_SEND
//   56   
//   57 
//   58   
//   59   LDC_SEND(SETTLECOUNT_CH0,0x0400);//0x0080数字大保证稳定时间长
        MOV      R1,#+1024
        MOVS     R0,#+16
        BL       LDC_SEND
//   60   
//   61 
//   62   
//   63   LDC_SEND(SETTLECOUNT_CH1,0x0400);
        MOV      R1,#+1024
        MOVS     R0,#+17
        BL       LDC_SEND
//   64   
//   65 
//   66   
//   67   LDC_SEND(SETTLECOUNT_CH2,0x0400);
        MOV      R1,#+1024
        MOVS     R0,#+18
        BL       LDC_SEND
//   68   
//   69 
//   70   
//   71   LDC_SEND(SETTLECOUNT_CH3,0x0400);
        MOV      R1,#+1024
        MOVS     R0,#+19
        BL       LDC_SEND
//   72   
//   73 
//   74   
//   75   LDC_SEND(CLOCK_DIVIDERS_CH0,0x1001);//分频系数n=1，m=8，晶振频率40MHZ，传感器频率0.11MHZ
        MOVW     R1,#+4097
        MOVS     R0,#+20
        BL       LDC_SEND
//   76   
//   77 
//   78   
//   79   LDC_SEND(CLOCK_DIVIDERS_CH1,0x1001);
        MOVW     R1,#+4097
        MOVS     R0,#+21
        BL       LDC_SEND
//   80   
//   81 
//   82   
//   83   LDC_SEND(CLOCK_DIVIDERS_CH2,0x1001);/*attention*/  //为什么这个之前不一样
        MOVW     R1,#+4097
        MOVS     R0,#+22
        BL       LDC_SEND
//   84   
//   85 
//   86   
//   87   LDC_SEND(CLOCK_DIVIDERS_CH3,0x1001);
        MOVW     R1,#+4097
        MOVS     R0,#+23
        BL       LDC_SEND
//   88   
//   89 
//   90   
//   91   LDC_SEND(ERROR_CONFIG,0xF801);//只读
        MOVW     R1,#+63489
        MOVS     R0,#+25
        BL       LDC_SEND
//   92   
//   93 
//   94   
//   95   LDC_SEND(CONFIG,0x3e01);//0x3601
        MOVW     R1,#+15873
        MOVS     R0,#+26
        BL       LDC_SEND
//   96   
//   97 
//   98   
//   99   LDC_SEND(MUX_CONFIG,0xa209);//修改脉冲滤波，，大于传感器最大频率0xc201
        MOVW     R1,#+41481
        MOVS     R0,#+27
        BL       LDC_SEND
//  100   
//  101 
//  102   
//  103   LDC_SEND(DRIVE_CURRENT_CH0,0xA40);//线圈75*65
        MOV      R1,#+2624
        MOVS     R0,#+30
        BL       LDC_SEND
//  104   
//  105 
//  106   
//  107   LDC_SEND(DRIVE_CURRENT_CH1,0x4A40);
        MOVW     R1,#+19008
        MOVS     R0,#+31
        BL       LDC_SEND
//  108   
//  109 
//  110   
//  111   LDC_SEND(DRIVE_CURRENT_CH2,0x4A40);
        MOVW     R1,#+19008
        MOVS     R0,#+32
        BL       LDC_SEND
//  112   
//  113 
//  114   
//  115   LDC_SEND(DRIVE_CURRENT_CH3,0x2100);
        MOV      R1,#+8448
        MOVS     R0,#+33
        BL       LDC_SEND
//  116   
//  117 }
        POP      {R0,PC}          ;; return
//  118 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 void LDC1614_reset(void)
//  120 {
LDC1614_reset:
        PUSH     {R7,LR}
//  121   
//  122 
//  123   LDC_SEND(RESET_DEV,0x8000);
        MOV      R1,#+32768
        MOVS     R0,#+28
        BL       LDC_SEND
//  124 }
        POP      {R0,PC}          ;; return
//  125 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  126 void LDC1614_start_meas(void)
//  127 {
LDC1614_start_meas:
        PUSH     {R7,LR}
//  128   
//  129 
//  130   LDC_SEND(CONFIG,0x1e01);//内部时钟改为外部
        MOVW     R1,#+7681
        MOVS     R0,#+26
        BL       LDC_SEND
//  131 }
        POP      {R0,PC}          ;; return
//  132 
//  133 
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void LDC1614_read_meas(void)//不再读ch3
//  136 {
LDC1614_read_meas:
        PUSH     {R4,LR}
//  137   uint16 temp = 0;
        MOVS     R4,#+0
//  138 
//  139   
//  140   temp = LDC_READ(DATA_MSB_CH0);
        MOVS     R0,#+0
        BL       LDC_READ
        MOVS     R4,R0
//  141   LDC_data[0] = ( (0x0FFF & temp) << 16 );
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+20       ;; ZeroExtS R0,R4,#+20,#+20
        LSRS     R0,R0,#+20
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//  142   LDC_flag[0] = ( 0xF000 & temp ) >> 8;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        ANDS     R0,R0,#0xF0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+0]
//  143   
//  144   
//  145   LDC_data[0] |= LDC_READ(DATA_LSB_CH0) ;
        MOVS     R0,#+1
        BL       LDC_READ
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
//  146   
//  147 
//  148   
//  149   temp = LDC_READ(DATA_MSB_CH1);
        MOVS     R0,#+2
        BL       LDC_READ
        MOVS     R4,R0
//  150   LDC_data[1] = ( ( 0x0FFF & temp ) << 16 );
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+20       ;; ZeroExtS R0,R4,#+20,#+20
        LSRS     R0,R0,#+20
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+4]
//  151   LDC_flag[1] = ( 0xF000 & temp ) >> 8;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        ANDS     R0,R0,#0xF0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+1]
//  152   
//  153 
//  154   
//  155   LDC_data[1] |= LDC_READ(DATA_LSB_CH1) ;
        MOVS     R0,#+3
        BL       LDC_READ
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+4]
//  156   
//  157 
//  158   
//  159   temp = LDC_READ(DATA_MSB_CH2);
        MOVS     R0,#+4
        BL       LDC_READ
        MOVS     R4,R0
//  160   LDC_data[2] = ( 0x0FFF & temp ) << 16 ;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LSLS     R0,R4,#+20       ;; ZeroExtS R0,R4,#+20,#+20
        LSRS     R0,R0,#+20
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+8]
//  161   LDC_flag[2] = ( 0xF000 & temp ) >> 8;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ASRS     R0,R4,#+8
        ANDS     R0,R0,#0xF0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+2]
//  162 
//  163   
//  164   LDC_data[2] |= LDC_READ(DATA_LSB_CH2) ;
        MOVS     R0,#+5
        BL       LDC_READ
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+8]
//  165  
//  166   
//  167   /*temp = LDC_READ(DATA_MSB_CH3);
//  168   LDC_data[3] = ( 0x0FFF & temp ) << 16 ;
//  169   LDC_flag[3] = ( 0xF000 & temp ) >> 8 ;
//  170   
//  171 
//  172   
//  173   LDC_data[3] |= LDC_READ(DATA_LSB_CH3) ;
//  174   */
//  175 
//  176  // LDC1614_status();
//  177   
//  178 }
        POP      {R4,PC}          ;; return
//  179 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  180 void LDC1614_status(void)
//  181 {
LDC1614_status:
        PUSH     {R7,LR}
//  182   LDC_STATUS = LDC_READ(0x18);
        MOVS     R0,#+24
        BL       LDC_READ
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+0]
//  183   
//  184 }
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
