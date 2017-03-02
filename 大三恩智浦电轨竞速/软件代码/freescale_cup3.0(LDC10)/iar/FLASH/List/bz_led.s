///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  16:39:05
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\ITAC\bz_led.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\ITAC\bz_led.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\sensor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\bz_led.s
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
        PUBLIC bzled_work

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\ITAC\bz_led.c
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

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    7 void bzled_init()
//    8 {
bzled_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//    9   GPIO_InitTypeDef bzled_inittype;
//   10   
//   11   bzled_inittype.GPIO_PTx = PTC; //led bz
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   12   bzled_inittype.GPIO_Pins = GPIO_Pin6 | GPIO_Pin7;
        MOVS     R0,#+192
        STR      R0,[SP, #+8]
//   13   bzled_inittype.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   14   bzled_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   15   bzled_inittype.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   16   bzled_inittype.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   17   
//   18   LPLD_GPIO_Init(bzled_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   19 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   20 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void bzled_work()
//   22 {
bzled_work:
        PUSH     {R7,LR}
//   23   switch(bz_style)
        LDR.W    R0,??DataTable7_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??bzled_work_0
        CMP      R0,#+2
        BEQ.N    ??bzled_work_1
        BCC.N    ??bzled_work_2
        CMP      R0,#+3
        BEQ.N    ??bzled_work_3
        B.N      ??bzled_work_4
//   24   {
//   25     case(ready): bz_ready();break;
??bzled_work_0:
        BL       bz_ready
        B.N      ??bzled_work_4
//   26     case(datarec): bz_datarec();break;
??bzled_work_2:
        BL       bz_datarec
        B.N      ??bzled_work_4
//   27     case(warn):bz_warn(); break;
??bzled_work_1:
        BL       bz_warn
        B.N      ??bzled_work_4
//   28     case(norm):bz_norm(); break;
??bzled_work_3:
        BL       bz_norm
//   29   }
//   30 }
??bzled_work_4:
        POP      {R0,PC}          ;; return
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void bz_ready()
//   33 {
bz_ready:
        PUSH     {R7,LR}
//   34   if ( bz_cnt < 100  )
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_ready_0
//   35   {
//   36     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   37     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   38   }
//   39   else if ( bz_cnt <= 200 )
??bz_ready_0:
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_ready_2
//   40   {
//   41     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   42     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   43   }
//   44   else if ( bz_cnt <= 300 )
??bz_ready_2:
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BGT.N    ??bz_ready_3
//   45   {
//   46     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   47     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   48   } 
//   49   else if ( bz_cnt <= 400 )
??bz_ready_3:
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+400
        BGT.N    ??bz_ready_4
//   50   {
//   51     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   52     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.W    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   53   }  
//   54   else if ( bz_cnt <= 500 )
??bz_ready_4:
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGT.N    ??bz_ready_5
//   55   {
//   56     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   57     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   58   } 
//   59   else if ( bz_cnt <= 1000 )
??bz_ready_5:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_ready_6
//   60   {
//   61     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   62     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   63   } 
//   64   else if ( bz_cnt <= 1500 )
??bz_ready_6:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1501
        CMP      R0,R1
        BGE.N    ??bz_ready_7
//   65   {
//   66     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   67     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   68   } 
//   69   else 
//   70   {
//   71     BZ_OFF;
??bz_ready_7:
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   72     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   73     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+0]
//   74   } 
//   75   
//   76 }
??bz_ready_1:
        POP      {R0,PC}          ;; return
//   77 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   78 void bz_datarec()
//   79 {
bz_datarec:
        PUSH     {R7,LR}
//   80   if ( bz_cnt < 50  )
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+50
        BGE.N    ??bz_datarec_0
//   81   {
//   82     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   83     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   84   }
//   85   else if ( bz_cnt <= 100 )
??bz_datarec_0:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??bz_datarec_2
//   86   {
//   87     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   88     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   89   }
//   90   else if ( bz_cnt < 150  )
??bz_datarec_2:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+150
        BGE.N    ??bz_datarec_3
//   91   {
//   92     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   93     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   94   }
//   95   else if ( bz_cnt <= 200 )
??bz_datarec_3:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_datarec_4
//   96   {
//   97     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   98     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   99   }
//  100   else if ( bz_cnt < 250  )
??bz_datarec_4:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??bz_datarec_5
//  101   {
//  102     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  103     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  104   }
//  105   else
//  106   {
//  107     BZ_OFF;
??bz_datarec_5:
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  108     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  109     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+0]
//  110   }
//  111   
//  112 }
??bz_datarec_1:
        POP      {R0,PC}          ;; return
//  113   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void bz_norm()
//  115 {
bz_norm:
        PUSH     {R7,LR}
//  116   if ( bz_cnt < 100  )
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_norm_0
//  117   {
//  118     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  119     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_norm_1
//  120   }
//  121   else if ( bz_cnt <= 5000 )
??bz_norm_0:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+5001
        CMP      R0,R1
        BGE.N    ??bz_norm_2
//  122   {
//  123     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  124     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_norm_1
//  125     
//  126   }
//  127   else
//  128   {
//  129     bz_cnt = 0;
??bz_norm_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable7_2
        STRH     R0,[R1, #+0]
//  130   }
//  131 }
??bz_norm_1:
        POP      {R0,PC}          ;; return
//  132 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 void bz_warn()
//  134 {
bz_warn:
        PUSH     {R7,LR}
//  135   if ( bz_cnt < 500  )
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGE.N    ??bz_warn_0
//  136   {
//  137     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  138     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  139   }
//  140   else if ( bz_cnt <= 1000 )
??bz_warn_0:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_warn_2
//  141   {
//  142     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  143     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  144   }
//  145   else if ( bz_cnt < 1500  )
??bz_warn_2:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1500
        CMP      R0,R1
        BGE.N    ??bz_warn_3
//  146   {
//  147     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  148     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  149   }
//  150   else if ( bz_cnt <= 2000 )
??bz_warn_3:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2000
        BGT.N    ??bz_warn_4
//  151   {
//  152     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  153     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  154   }
//  155   else if ( bz_cnt < 2500  )
??bz_warn_4:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+2500
        CMP      R0,R1
        BGE.N    ??bz_warn_5
//  156   {
//  157     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  158     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  159   }
//  160   else 
//  161   {
//  162     BZ_OFF;
??bz_warn_5:
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  163     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  164     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+0]
//  165   }
//  166 }
??bz_warn_1:
        POP      {R0,PC}          ;; return
//  167 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 void bz_fuzzyrec()
//  169 {
bz_fuzzyrec:
        PUSH     {R7,LR}
//  170   if ( bz_cnt < 100  )
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_fuzzyrec_0
//  171   {
//  172     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  173     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  174   }
//  175   else if ( bz_cnt <= 200 )
??bz_fuzzyrec_0:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_fuzzyrec_2
//  176   {
//  177     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  178     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  179   }
//  180   else if ( bz_cnt < 250  )
??bz_fuzzyrec_2:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??bz_fuzzyrec_3
//  181   {
//  182     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  183     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  184   }
//  185   else if ( bz_cnt <= 300 )
??bz_fuzzyrec_3:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BGT.N    ??bz_fuzzyrec_4
//  186   {
//  187     BZ_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  188     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  189   }
//  190   else if ( bz_cnt < 350  )
??bz_fuzzyrec_4:
        LDR.N    R0,??DataTable7_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+350
        BGE.N    ??bz_fuzzyrec_5
//  191   {
//  192     BZ_ON;
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  193     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  194   }
//  195   else
//  196   {
//  197     BZ_OFF;
??bz_fuzzyrec_5:
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  198     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+6
        LDR.N    R0,??DataTable7  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  199     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+0]
//  200   }
//  201   
//  202 }
??bz_fuzzyrec_1:
        POP      {R0,PC}          ;; return
//  203 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 void bz_set(enum _bz_style bz)
//  205 {
//  206   bz_cnt = 0;
bz_set:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable7_2
        STRH     R1,[R2, #+0]
//  207   bz_style = bz; 
        LDR.N    R1,??DataTable7_1
        STRB     R0,[R1, #+0]
//  208 }
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
        DC32     bz_style

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
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
//     2 bytes in section .bss
//     1 byte  in section .data
// 1 038 bytes in section .text
// 
// 1 038 bytes of CODE memory
//     3 bytes of DATA memory
//
//Errors: none
//Warnings: none
