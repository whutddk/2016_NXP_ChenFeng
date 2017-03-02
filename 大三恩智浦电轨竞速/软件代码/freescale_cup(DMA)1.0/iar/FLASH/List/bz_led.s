///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       02/Jan/2016  16:00:24
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\ITAC\bz_led.c
//    Command line =  
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\ITAC\bz_led.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -lB
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -o
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\sensor\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\bz_led.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_memcpy4

        PUBLIC bz_cnt
        PUBLIC bz_datarec
        PUBLIC bz_norm
        PUBLIC bz_ready
        PUBLIC bz_set
        PUBLIC bz_style
        PUBLIC bz_warn
        PUBLIC bzled_init
        PUBLIC bzled_inittype
        PUBLIC bzled_work

// G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\ITAC\bz_led.c
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
        LDR.W    R0,??DataTable6  ;; 0x400ff080
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+0]
//   11   bzled_inittype.GPIO_Pins = GPIO_Pin6 | GPIO_Pin7;
        MOVS     R0,#+192
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+4]
//   12   bzled_inittype.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_1
        STRB     R0,[R1, #+12]
//   13   bzled_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_1
        STRB     R0,[R1, #+13]
//   14   bzled_inittype.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_1
        STR      R0,[R1, #+8]
//   15   LPLD_GPIO_Init(bzled_inittype);
        LDR.W    R1,??DataTable6_1
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
        LDR.N    R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??bzled_work_0
        CMP      R0,#+2
        BEQ.N    ??bzled_work_1
        BCC.N    ??bzled_work_2
        CMP      R0,#+3
        BEQ.N    ??bzled_work_3
        B.N      ??bzled_work_4
//   21   {
//   22     case(ready): bz_ready();break;
??bzled_work_0:
        BL       bz_ready
        B.N      ??bzled_work_4
//   23     case(datarec): bz_datarec();break;
??bzled_work_2:
        BL       bz_datarec
        B.N      ??bzled_work_4
//   24     case(warn):bz_warn(); break;
??bzled_work_1:
        BL       bz_warn
        B.N      ??bzled_work_4
//   25     case(norm):bz_norm(); break;
??bzled_work_3:
        BL       bz_norm
//   26   }
//   27 }
??bzled_work_4:
        POP      {R0,PC}          ;; return
//   28 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 void bz_ready()
//   30 {
bz_ready:
        PUSH     {R7,LR}
//   31   if ( bz_cnt < 100  )
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_ready_0
//   32   {
//   33     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   34     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   35   }
//   36   else if ( bz_cnt <= 200 )
??bz_ready_0:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_ready_2
//   37   {
//   38     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   39     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   40   }
//   41   else if ( bz_cnt <= 300 )
??bz_ready_2:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BGT.N    ??bz_ready_3
//   42   {
//   43     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   44     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   45   } 
//   46   else if ( bz_cnt <= 400 )
??bz_ready_3:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+400
        BGT.N    ??bz_ready_4
//   47   {
//   48     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   49     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   50   }  
//   51   else if ( bz_cnt <= 500 )
??bz_ready_4:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGT.N    ??bz_ready_5
//   52   {
//   53     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   54     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   55   } 
//   56   else if ( bz_cnt <= 1000 )
??bz_ready_5:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_ready_6
//   57   {
//   58     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   59     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   60   } 
//   61   else if ( bz_cnt <= 1500 )
??bz_ready_6:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1501
        CMP      R0,R1
        BGE.N    ??bz_ready_7
//   62   {
//   63     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   64     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   65   } 
//   66   else 
//   67   {
//   68     BZ_OFF;
??bz_ready_7:
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   69     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   70     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable6_2
        STRB     R0,[R1, #+0]
//   71   } 
//   72   
//   73 }
??bz_ready_1:
        POP      {R0,PC}          ;; return
//   74 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   75 void bz_datarec()
//   76 {
bz_datarec:
        PUSH     {R7,LR}
//   77   if ( bz_cnt < 50  )
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+50
        BGE.N    ??bz_datarec_0
//   78   {
//   79     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   80     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   81   }
//   82   else if ( bz_cnt <= 100 )
??bz_datarec_0:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??bz_datarec_2
//   83   {
//   84     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   85     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   86   }
//   87   else if ( bz_cnt < 150  )
??bz_datarec_2:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+150
        BGE.N    ??bz_datarec_3
//   88   {
//   89     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   90     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   91   }
//   92   else if ( bz_cnt <= 200 )
??bz_datarec_3:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_datarec_4
//   93   {
//   94     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   95     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   96   }
//   97   else if ( bz_cnt < 250  )
??bz_datarec_4:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??bz_datarec_5
//   98   {
//   99     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  100     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  101   }
//  102   else
//  103   {
//  104     BZ_OFF;
??bz_datarec_5:
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  105     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  106     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable6_2
        STRB     R0,[R1, #+0]
//  107   }
//  108   
//  109 }
??bz_datarec_1:
        POP      {R0,PC}          ;; return
//  110   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 void bz_norm()
//  112 {
bz_norm:
        PUSH     {R7,LR}
//  113   if ( bz_cnt < 100  )
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_norm_0
//  114   {
//  115     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  116     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_norm_1
//  117   }
//  118   else if ( bz_cnt <= 5000 )
??bz_norm_0:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+5001
        CMP      R0,R1
        BGE.N    ??bz_norm_2
//  119   {
//  120     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  121     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_norm_1
//  122     
//  123   }
//  124   else
//  125   {
//  126     bz_cnt = 0;
??bz_norm_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_3
        STRH     R0,[R1, #+0]
//  127   }
//  128 }
??bz_norm_1:
        POP      {R0,PC}          ;; return
//  129 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 void bz_warn()
//  131 {
bz_warn:
        PUSH     {R7,LR}
//  132   if ( bz_cnt < 500  )
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGE.N    ??bz_warn_0
//  133   {
//  134     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  135     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  136   }
//  137   else if ( bz_cnt <= 1000 )
??bz_warn_0:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_warn_2
//  138   {
//  139     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  140     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  141   }
//  142   else if ( bz_cnt < 1500  )
??bz_warn_2:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1500
        CMP      R0,R1
        BGE.N    ??bz_warn_3
//  143   {
//  144     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  145     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  146   }
//  147   else if ( bz_cnt <= 2000 )
??bz_warn_3:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2000
        BGT.N    ??bz_warn_4
//  148   {
//  149     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  150     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  151   }
//  152   else if ( bz_cnt < 2500  )
??bz_warn_4:
        LDR.N    R0,??DataTable6_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+2500
        CMP      R0,R1
        BGE.N    ??bz_warn_5
//  153   {
//  154     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  155     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  156   }
//  157   else 
//  158   {
//  159     BZ_OFF;
??bz_warn_5:
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  160     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable6  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  161     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable6_2
        STRB     R0,[R1, #+0]
//  162   }
//  163 }
??bz_warn_1:
        POP      {R0,PC}          ;; return
//  164 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  165 void bz_set(enum _bz_style bz)
//  166 {
//  167   bz_cnt = 0;
bz_set:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable6_3
        STRH     R1,[R2, #+0]
//  168   bz_style = bz; 
        LDR.N    R1,??DataTable6_2
        STRB     R0,[R1, #+0]
//  169 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     bzled_inittype

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     bz_style

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
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
//  22 bytes in section .bss
//   1 byte  in section .data
// 840 bytes in section .text
// 
// 840 bytes of CODE memory
//  23 bytes of DATA memory
//
//Errors: none
//Warnings: none
