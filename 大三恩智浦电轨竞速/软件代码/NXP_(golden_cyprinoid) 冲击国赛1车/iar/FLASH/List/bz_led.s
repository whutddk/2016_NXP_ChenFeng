///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:06
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\ITAC\bz_led.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\ITAC\bz_led.c" -D LPLD_K60 -lCN
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
//        1.9\iar\FLASH\List\bz_led.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_memcpy4

        PUBLIC bz_cnt
        PUBLIC bz_cross
        PUBLIC bz_datarec
        PUBLIC bz_fuzzyrec
        PUBLIC bz_init
        PUBLIC bz_norm
        PUBLIC bz_ready
        PUBLIC bz_set
        PUBLIC bz_style
        PUBLIC bz_warn
        PUBLIC bzled_work
        PUBLIC led_init

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\ITAC\bz_led.c
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
//    7 void bz_init()
//    8 {
bz_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//    9   GPIO_InitTypeDef bzled_inittype;
//   10   
//   11   bzled_inittype.GPIO_PTx = PTE; // bz
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   12   bzled_inittype.GPIO_Pins = GPIO_Pin10;
        MOV      R0,#+1024
        STR      R0,[SP, #+8]
//   13   bzled_inittype.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   14   bzled_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   15   bzled_inittype.GPIO_PinControl = IRQC_DIS | OUTPUT_OD_EN;
        MOVS     R0,#+32
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
//   21 void led_init()
//   22 {
led_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   23   GPIO_InitTypeDef bzled_inittype;
//   24   
//   25   bzled_inittype.GPIO_PTx = PTE; //led 
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   26   bzled_inittype.GPIO_Pins = GPIO_Pin11;
        MOV      R0,#+2048
        STR      R0,[SP, #+8]
//   27   bzled_inittype.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   28   bzled_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   29   bzled_inittype.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   30   bzled_inittype.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   31   
//   32   LPLD_GPIO_Init(bzled_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   33 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   34 
//   35 
//   36 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   37 void bzled_work()
//   38 {
bzled_work:
        PUSH     {R7,LR}
//   39   switch(bz_style)
        LDR.W    R0,??DataTable8_1
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
//   40   {
//   41     case(ready): bz_ready();break;
??bzled_work_0:
        BL       bz_ready
        B.N      ??bzled_work_5
//   42     case(datarec): bz_datarec();break;
??bzled_work_2:
        BL       bz_datarec
        B.N      ??bzled_work_5
//   43     case(warn):bz_warn(); break;
??bzled_work_1:
        BL       bz_warn
        B.N      ??bzled_work_5
//   44     case(cross):bz_cross(); break;
??bzled_work_3:
        BL       bz_cross
        B.N      ??bzled_work_5
//   45     case(norm):bz_norm(); break;
??bzled_work_4:
        BL       bz_norm
//   46   }
//   47 }
??bzled_work_5:
        POP      {R0,PC}          ;; return
//   48 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   49 void bz_ready()
//   50 {
bz_ready:
        PUSH     {R7,LR}
//   51   if ( bz_cnt < 100  )
        LDR.W    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_ready_0
//   52   {
//   53     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   54     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   55   }
//   56   else if ( bz_cnt <= 200 )
??bz_ready_0:
        LDR.W    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_ready_2
//   57   {
//   58     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   59     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   60   }
//   61   else if ( bz_cnt <= 300 )
??bz_ready_2:
        LDR.W    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BGT.N    ??bz_ready_3
//   62   {
//   63     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   64     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   65   } 
//   66   else if ( bz_cnt <= 400 )
??bz_ready_3:
        LDR.W    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+400
        BGT.N    ??bz_ready_4
//   67   {
//   68     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   69     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   70   }  
//   71   else if ( bz_cnt <= 500 )
??bz_ready_4:
        LDR.W    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGT.N    ??bz_ready_5
//   72   {
//   73     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   74     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   75   } 
//   76   else if ( bz_cnt <= 1000 )
??bz_ready_5:
        LDR.W    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_ready_6
//   77   {
//   78     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   79     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   80   } 
//   81   else if ( bz_cnt <= 1500 )
??bz_ready_6:
        LDR.W    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1501
        CMP      R0,R1
        BGE.N    ??bz_ready_7
//   82   {
//   83     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   84     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   85   } 
//   86   else 
//   87   {
//   88     BZ_OFF;
??bz_ready_7:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   89     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   90     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//   91   } 
//   92   
//   93 }
??bz_ready_1:
        POP      {R0,PC}          ;; return
//   94 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   95 void bz_datarec()
//   96 {
bz_datarec:
        PUSH     {R7,LR}
//   97   if ( bz_cnt < 50  )
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+50
        BGE.N    ??bz_datarec_0
//   98   {
//   99     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  100     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  101   }
//  102   else if ( bz_cnt <= 100 )
??bz_datarec_0:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??bz_datarec_2
//  103   {
//  104     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  105     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  106   }
//  107   else if ( bz_cnt < 150  )
??bz_datarec_2:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+150
        BGE.N    ??bz_datarec_3
//  108   {
//  109     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  110     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  111   }
//  112   else if ( bz_cnt <= 200 )
??bz_datarec_3:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_datarec_4
//  113   {
//  114     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  115     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  116   }
//  117   else if ( bz_cnt < 250  )
??bz_datarec_4:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??bz_datarec_5
//  118   {
//  119     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  120     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  121   }
//  122   else
//  123   {
//  124     BZ_OFF;
??bz_datarec_5:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  125     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  126     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  127   }
//  128   
//  129 }
??bz_datarec_1:
        POP      {R0,PC}          ;; return
//  130   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void bz_norm()
//  132 {
//  133 //  if ( bz_cnt < 100  )
//  134 //  {
//  135 //    BZ_ON;
//  136 //    LED_ON;
//  137 //  }
//  138 //  else if ( bz_cnt <= 5000 )
//  139 //  {
//  140 //    BZ_OFF;
//  141 //    LED_OFF;
//  142 //    
//  143 //  }
//  144 //  else
//  145 //  {
//  146 //    bz_cnt = 0;
//  147 //  }
//  148 }
bz_norm:
        BX       LR               ;; return
//  149 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 void bz_warn()
//  151 {
bz_warn:
        PUSH     {R7,LR}
//  152   if ( bz_cnt < 500  )
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGE.N    ??bz_warn_0
//  153   {
//  154     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  155     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  156   }
//  157   else if ( bz_cnt <= 1000 )
??bz_warn_0:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_warn_2
//  158   {
//  159     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  160     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  161   }
//  162   else if ( bz_cnt < 1500  )
??bz_warn_2:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1500
        CMP      R0,R1
        BGE.N    ??bz_warn_3
//  163   {
//  164     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  165     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  166   }
//  167   else if ( bz_cnt <= 2000 )
??bz_warn_3:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2000
        BGT.N    ??bz_warn_4
//  168   {
//  169     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  170     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  171   }
//  172   else if ( bz_cnt < 2500  )
??bz_warn_4:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+2500
        CMP      R0,R1
        BGE.N    ??bz_warn_5
//  173   {
//  174     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  175     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  176   }
//  177   else 
//  178   {
//  179     BZ_OFF;
??bz_warn_5:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  180     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  181     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  182   }
//  183 }
??bz_warn_1:
        POP      {R0,PC}          ;; return
//  184 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  185 void bz_fuzzyrec()
//  186 {
bz_fuzzyrec:
        PUSH     {R7,LR}
//  187   if ( bz_cnt < 100  )
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_fuzzyrec_0
//  188   {
//  189     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  190     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  191   }
//  192   else if ( bz_cnt <= 200 )
??bz_fuzzyrec_0:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_fuzzyrec_2
//  193   {
//  194     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  195     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  196   }
//  197   else if ( bz_cnt < 250  )
??bz_fuzzyrec_2:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??bz_fuzzyrec_3
//  198   {
//  199     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  200     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  201   }
//  202   else if ( bz_cnt <= 300 )
??bz_fuzzyrec_3:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BGT.N    ??bz_fuzzyrec_4
//  203   {
//  204     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  205     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  206   }
//  207   else if ( bz_cnt < 350  )
??bz_fuzzyrec_4:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+350
        BGE.N    ??bz_fuzzyrec_5
//  208   {
//  209     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  210     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fuzzyrec_1
//  211   }
//  212   else
//  213   {
//  214     BZ_OFF;
??bz_fuzzyrec_5:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  215     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  216     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  217   }
//  218   
//  219 }
??bz_fuzzyrec_1:
        POP      {R0,PC}          ;; return
//  220 
//  221 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 void bz_cross()
//  223 {
bz_cross:
        PUSH     {R7,LR}
//  224   if ( bz_cnt < 30  )
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+30
        BGE.N    ??bz_cross_0
//  225   {
//  226     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  227     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  228   }
//  229   else if ( bz_cnt <= 60 )
??bz_cross_0:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+61
        BGE.N    ??bz_cross_2
//  230   {
//  231     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  232     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  233   }
//  234   else if ( bz_cnt < 90  )
??bz_cross_2:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+90
        BGE.N    ??bz_cross_3
//  235   {
//  236     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  237     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  238   }
//  239   else if ( bz_cnt <= 120 )
??bz_cross_3:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BGE.N    ??bz_cross_4
//  240   {
//  241     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  242     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  243   }
//  244   else if ( bz_cnt < 170  )
??bz_cross_4:
        LDR.N    R0,??DataTable8_2
        LDRH     R0,[R0, #+0]
        CMP      R0,#+170
        BGE.N    ??bz_cross_5
//  245   {
//  246     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  247     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  248   }
//  249   else
//  250   {
//  251     BZ_OFF;
??bz_cross_5:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  252     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.N    R0,??DataTable8  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  253     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  254   }
//  255   
//  256 }
??bz_cross_1:
        POP      {R0,PC}          ;; return
//  257 
//  258 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  259 void bz_set(enum _bz_style bz)
//  260 {
//  261   bz_cnt = 0;
bz_set:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable8_2
        STRH     R1,[R2, #+0]
//  262   bz_style = bz; 
        LDR.N    R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  263 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     bz_style

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
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
// 1 232 bytes in section .text
// 
// 1 232 bytes of CODE memory
//     3 bytes of DATA memory
//
//Errors: none
//Warnings: none
