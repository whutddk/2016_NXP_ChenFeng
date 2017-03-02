///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:45
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\bz_led.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\bz_led.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\bz_led.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_memcpy4

        PUBLIC bz_cnt
        PUBLIC bz_datarec
        PUBLIC bz_fuzzyrec
        PUBLIC bz_norm
        PUBLIC bz_ready
        PUBLIC bz_set
        PUBLIC bz_style
        PUBLIC bz_warn
        PUBLIC bzled_init
        PUBLIC bzled_inittype
        PUBLIC bzled_work

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\bz_led.c
//    1 #include "include.h"
//    2 
//    3 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    4 enum _bz_style bz_style = norm;
bz_style:
        DATA
        DC8 3

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    5 uint16 bz_cnt = 0;
bz_cnt:
        DS8 2
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    7 GPIO_InitTypeDef bzled_inittype;
bzled_inittype:
        DS8 20

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    8 void bzled_init()
//    9 {
bzled_init:
        PUSH     {R7,LR}
//   10   bzled_inittype.GPIO_PTx = PTC; //led bz
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//   11   bzled_inittype.GPIO_Pins = GPIO_Pin6 | GPIO_Pin7;
        MOVS     R0,#+192
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+4]
//   12   bzled_inittype.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_1
        STRB     R0,[R1, #+12]
//   13   bzled_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_1
        STRB     R0,[R1, #+13]
//   14   bzled_inittype.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_1
        STR      R0,[R1, #+8]
//   15   LPLD_GPIO_Init(bzled_inittype);
        LDR.W    R1,??DataTable7_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   16 }
        POP      {R0,PC}          ;; return
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void bzled_work()
//   19 {
bzled_work:
        PUSH     {R7,LR}
//   20   switch(bz_style)
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??bzled_work_0
        CMP      R0,#+2
        BEQ.N    ??bzled_work_1
        BCC.N    ??bzled_work_2
        CMP      R0,#+4
        BEQ.N    ??bzled_work_3
        BCC.N    ??bzled_work_4
        B.N      ??bzled_work_5
//   21   {
//   22     case(ready): bz_ready();break;
??bzled_work_0:
        BL       bz_ready
        B.N      ??bzled_work_5
//   23     case(datarec): bz_datarec();break;
??bzled_work_2:
        BL       bz_datarec
        B.N      ??bzled_work_5
//   24     case(warn):bz_warn(); break;
??bzled_work_1:
        BL       bz_warn
        B.N      ??bzled_work_5
//   25     case(norm):bz_norm(); break;
??bzled_work_4:
        BL       bz_norm
        B.N      ??bzled_work_5
//   26     case(fuzzyrec):bz_fuzzyrec();break;
??bzled_work_3:
        BL       bz_fuzzyrec
//   27   }
//   28 }
??bzled_work_5:
        POP      {R0,PC}          ;; return
//   29 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void bz_ready()
//   31 {
bz_ready:
        PUSH     {R7,LR}
//   32   if ( bz_cnt < 100  )
        LDR.W    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_ready_0
//   33   {
//   34     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   35     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   36   }
//   37   else if ( bz_cnt <= 200 )
??bz_ready_0:
        LDR.W    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_ready_2
//   38   {
//   39     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   40     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   41   }
//   42   else if ( bz_cnt <= 300 )
??bz_ready_2:
        LDR.W    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BGT.N    ??bz_ready_3
//   43   {
//   44     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   45     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   46   } 
//   47   else if ( bz_cnt <= 400 )
??bz_ready_3:
        LDR.W    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+400
        BGT.N    ??bz_ready_4
//   48   {
//   49     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   50     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   51   }  
//   52   else if ( bz_cnt <= 500 )
??bz_ready_4:
        LDR.W    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGT.N    ??bz_ready_5
//   53   {
//   54     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   55     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   56   } 
//   57   else if ( bz_cnt <= 1000 )
??bz_ready_5:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_ready_6
//   58   {
//   59     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   60     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   61   } 
//   62   else if ( bz_cnt <= 1500 )
??bz_ready_6:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1501
        CMP      R0,R1
        BGE.N    ??bz_ready_7
//   63   {
//   64     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   65     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   66   } 
//   67   else 
//   68   {
//   69     BZ_OFF;
??bz_ready_7:
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   70     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   71     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//   72   } 
//   73   
//   74 }
??bz_ready_1:
        POP      {R0,PC}          ;; return
//   75 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void bz_datarec()
//   77 {
bz_datarec:
        PUSH     {R7,LR}
//   78   if ( bz_cnt < 50  )
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+50
        BGE.N    ??bz_datarec_0
//   79   {
//   80     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   81     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   82   }
//   83   else if ( bz_cnt <= 100 )
??bz_datarec_0:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??bz_datarec_2
//   84   {
//   85     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   86     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   87   }
//   88   else if ( bz_cnt < 150  )
??bz_datarec_2:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+150
        BGE.N    ??bz_datarec_3
//   89   {
//   90     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   91     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   92   }
//   93   else if ( bz_cnt <= 200 )
??bz_datarec_3:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_datarec_4
//   94   {
//   95     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   96     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   97   }
//   98   else if ( bz_cnt < 250  )
??bz_datarec_4:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??bz_datarec_5
//   99   {
//  100     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  101     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  102   }
//  103   else
//  104   {
//  105     BZ_OFF;
??bz_datarec_5:
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  106     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  107     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  108   }
//  109   
//  110 }
??bz_datarec_1:
        POP      {R0,PC}          ;; return
//  111  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  112 void bz_fuzzyrec()
//  113 {
bz_fuzzyrec:
        PUSH     {R7,LR}
//  114   if ( bz_cnt < 100  )
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_fuzzyrec_0
//  115   {
//  116     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  117     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  118   }
//  119   else if ( bz_cnt <= 200 )
??bz_fuzzyrec_0:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_fuzzyrec_2
//  120   {
//  121     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  122     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  123   }
//  124   else if ( bz_cnt < 250  )
??bz_fuzzyrec_2:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??bz_fuzzyrec_3
//  125   {
//  126     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  127     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  128   }
//  129   else if ( bz_cnt <= 300 )
??bz_fuzzyrec_3:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BGT.N    ??bz_fuzzyrec_4
//  130   {
//  131     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  132     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  133   }
//  134   else if ( bz_cnt < 350  )
??bz_fuzzyrec_4:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+350
        BGE.N    ??bz_fuzzyrec_5
//  135   {
//  136     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  137     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  138   }
//  139   else
//  140   {
//  141     BZ_OFF;
??bz_fuzzyrec_5:
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  142     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  143     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  144   }
//  145   
//  146 }
??bz_fuzzyrec_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  147 void bz_norm()
//  148 {
bz_norm:
        PUSH     {R7,LR}
//  149   if ( bz_cnt < 100  )
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_norm_0
//  150   {
//  151     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  152     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_norm_1
//  153   }
//  154   else if ( bz_cnt <= 5000 )
??bz_norm_0:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+5001
        CMP      R0,R1
        BGE.N    ??bz_norm_2
//  155   {
//  156     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  157     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_norm_1
//  158     
//  159   }
//  160   else
//  161   {
//  162     bz_cnt = 0;
??bz_norm_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_3
        STRH     R0,[R1, #+0]
//  163   }
//  164 }
??bz_norm_1:
        POP      {R0,PC}          ;; return
//  165 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 void bz_warn()
//  167 {
bz_warn:
        PUSH     {R7,LR}
//  168   if ( bz_cnt < 500  )
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGE.N    ??bz_warn_0
//  169   {
//  170     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  171     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  172   }
//  173   else if ( bz_cnt <= 1000 )
??bz_warn_0:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_warn_2
//  174   {
//  175     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  176     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  177   }
//  178   else if ( bz_cnt < 1500  )
??bz_warn_2:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1500
        CMP      R0,R1
        BGE.N    ??bz_warn_3
//  179   {
//  180     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  181     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  182   }
//  183   else if ( bz_cnt <= 2000 )
??bz_warn_3:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2000
        BGT.N    ??bz_warn_4
//  184   {
//  185     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  186     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  187   }
//  188   else if ( bz_cnt < 2500  )
??bz_warn_4:
        LDR.N    R0,??DataTable7_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+2500
        CMP      R0,R1
        BGE.N    ??bz_warn_5
//  189   {
//  190     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  191     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  192   }
//  193   else 
//  194   {
//  195     BZ_OFF;
??bz_warn_5:
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  196     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  197     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  198   }
//  199 }
??bz_warn_1:
        POP      {R0,PC}          ;; return
//  200 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 void bz_set(enum _bz_style bz)
//  202 {
//  203   bz_cnt = 0;
bz_set:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable7_3
        STRH     R1,[R2, #+0]
//  204   bz_style = bz; 
        LDR.N    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  205 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     bzled_inittype

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     bz_style

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     bz_cnt

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
//    22 bytes in section .bss
//     1 byte  in section .data
// 1 060 bytes in section .text
// 
// 1 060 bytes of CODE memory
//    23 bytes of DATA memory
//
//Errors: none
//Warnings: none
