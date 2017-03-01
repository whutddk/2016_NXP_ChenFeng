///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       14/Aug/2016  11:03:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\ITAC\bz_led.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\ITAC\bz_led.c
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
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\bz_led.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_memcpy4
        EXTERN ctl

        PUBLIC bz_cnt
        PUBLIC bz_cross
        PUBLIC bz_datarec
        PUBLIC bz_fzc
        PUBLIC bz_norm
        PUBLIC bz_on
        PUBLIC bz_ready
        PUBLIC bz_set
        PUBLIC bz_style
        PUBLIC bz_warn
        PUBLIC bzled_init
        PUBLIC bzled_work

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\ITAC\bz_led.c
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
//   11   bzled_inittype.GPIO_PTx = PTA; //led bz
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   12   bzled_inittype.GPIO_Pins = GPIO_Pin24 | GPIO_Pin28;
        MOVS     R0,#+285212672
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
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??bzled_work_0
        CMP      R0,#+2
        BEQ.N    ??bzled_work_1
        BCC.N    ??bzled_work_2
        CMP      R0,#+4
        BEQ.N    ??bzled_work_3
        BCC.N    ??bzled_work_4
        CMP      R0,#+6
        BEQ.N    ??bzled_work_5
        BCC.N    ??bzled_work_6
        B.N      ??bzled_work_7
//   24   {
//   25     case(ready): bz_ready();break;
??bzled_work_0:
        BL       bz_ready
        B.N      ??bzled_work_7
//   26     case(datarec): bz_datarec();break;
??bzled_work_2:
        BL       bz_datarec
        B.N      ??bzled_work_7
//   27     case(warn):bz_warn(); break;
??bzled_work_1:
        BL       bz_warn
        B.N      ??bzled_work_7
//   28     case(cross):bz_cross(); break;
??bzled_work_3:
        BL       bz_cross
        B.N      ??bzled_work_7
//   29     case(norm):bz_norm(); break;
??bzled_work_4:
        BL       bz_norm
        B.N      ??bzled_work_7
//   30     case(fzc):bz_fzc(); break;
??bzled_work_5:
        BL       bz_fzc
        B.N      ??bzled_work_7
//   31     case(on):bz_on(); break;
??bzled_work_6:
        BL       bz_on
//   32   }
//   33   if ( ctl.flag_on &&  bz_style == norm)
??bzled_work_7:
        LDR.W    R0,??DataTable9_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??bzled_work_8
        LDR.W    R0,??DataTable9_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??bzled_work_8
//   34   {
//   35     bz_style = on;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//   36   }
//   37 }
??bzled_work_8:
        POP      {R0,PC}          ;; return
//   38 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 void bz_ready()
//   40 {
bz_ready:
        PUSH     {R7,LR}
//   41   if ( bz_cnt < 100  )
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_ready_0
//   42   {
//   43     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   44     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   45   }
//   46   else if ( bz_cnt <= 200 )
??bz_ready_0:
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_ready_2
//   47   {
//   48     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   49     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   50   }
//   51   else if ( bz_cnt <= 300 )
??bz_ready_2:
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+300
        BGT.N    ??bz_ready_3
//   52   {
//   53     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   54     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   55   } 
//   56   else if ( bz_cnt <= 400 )
??bz_ready_3:
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+400
        BGT.N    ??bz_ready_4
//   57   {
//   58     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   59     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   60   }  
//   61   else if ( bz_cnt <= 500 )
??bz_ready_4:
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGT.N    ??bz_ready_5
//   62   {
//   63     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   64     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   65   } 
//   66   else if ( bz_cnt <= 1000 )
??bz_ready_5:
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_ready_6
//   67   {
//   68     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   69     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   70   } 
//   71   else if ( bz_cnt <= 1500 )
??bz_ready_6:
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1501
        CMP      R0,R1
        BGE.N    ??bz_ready_7
//   72   {
//   73     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   74     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_ready_1
//   75   } 
//   76   else 
//   77   {
//   78     BZ_OFF;
??bz_ready_7:
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   79     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   80     bz_style = norm;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//   81   } 
//   82   
//   83 }
??bz_ready_1:
        POP      {R0,PC}          ;; return
//   84 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 void bz_datarec()
//   86 {
bz_datarec:
        PUSH     {R7,LR}
//   87   if ( bz_cnt < 50  )
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+50
        BGE.N    ??bz_datarec_0
//   88   {
//   89     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   90     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   91   }
//   92   else if ( bz_cnt <= 100 )
??bz_datarec_0:
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??bz_datarec_2
//   93   {
//   94     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   95     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.W    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//   96   }
//   97   else if ( bz_cnt < 150  )
??bz_datarec_2:
        LDR.W    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+150
        BGE.N    ??bz_datarec_3
//   98   {
//   99     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  100     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  101   }
//  102   else if ( bz_cnt <= 200 )
??bz_datarec_3:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+201
        BGE.N    ??bz_datarec_4
//  103   {
//  104     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  105     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  106   }
//  107   else if ( bz_cnt < 250  )
??bz_datarec_4:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+250
        BGE.N    ??bz_datarec_5
//  108   {
//  109     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  110     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_datarec_1
//  111   }
//  112   else
//  113   {
//  114     BZ_OFF;
??bz_datarec_5:
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  115     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  116     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  117   }
//  118   
//  119 }
??bz_datarec_1:
        POP      {R0,PC}          ;; return
//  120   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 void bz_norm()
//  122 {
bz_norm:
        PUSH     {R7,LR}
//  123   if ( bz_cnt < 100  )
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+100
        BGE.N    ??bz_norm_0
//  124   {
//  125     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  126     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_norm_1
//  127   }
//  128   else if ( bz_cnt <= 10000 )
??bz_norm_0:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+10001
        CMP      R0,R1
        BGE.N    ??bz_norm_2
//  129   {
//  130     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  131     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_norm_1
//  132     
//  133   }
//  134   else
//  135   {
//  136     bz_cnt = 0;
??bz_norm_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3
        STRH     R0,[R1, #+0]
//  137   }
//  138 }
??bz_norm_1:
        POP      {R0,PC}          ;; return
//  139 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  140 void bz_warn()
//  141 {
bz_warn:
        PUSH     {R7,LR}
//  142   if ( bz_cnt < 500  )
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+500
        BGE.N    ??bz_warn_0
//  143   {
//  144     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  145     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  146   }
//  147   else if ( bz_cnt <= 1000 )
??bz_warn_0:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_warn_2
//  148   {
//  149     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  150     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  151   }
//  152   else if ( bz_cnt < 1500  )
??bz_warn_2:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+1500
        CMP      R0,R1
        BGE.N    ??bz_warn_3
//  153   {
//  154     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  155     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  156   }
//  157   else if ( bz_cnt <= 2000 )
??bz_warn_3:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+2000
        BGT.N    ??bz_warn_4
//  158   {
//  159     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  160     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  161   }
//  162   else if ( bz_cnt < 2500  )
??bz_warn_4:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+2500
        CMP      R0,R1
        BGE.N    ??bz_warn_5
//  163   {
//  164     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  165     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_warn_1
//  166   }
//  167   else 
//  168   {
//  169     BZ_OFF;
??bz_warn_5:
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  170     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  171     
//  172     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  173     
//  174   }
//  175 }
??bz_warn_1:
        POP      {R0,PC}          ;; return
//  176 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  177 void bz_on()
//  178 {
bz_on:
        PUSH     {R7,LR}
//  179   if ( bz_cnt < 10  )
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+10
        BGE.N    ??bz_on_0
//  180   {
//  181     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  182     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_on_1
//  183   }
//  184   else if ( bz_cnt <= 1000 )
??bz_on_0:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BGT.N    ??bz_on_2
//  185   {
//  186     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  187     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_on_1
//  188   }
//  189   else
//  190   {
//  191     bz_cnt = 0;
??bz_on_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3
        STRH     R0,[R1, #+0]
//  192     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  193   }
//  194 }
??bz_on_1:
        POP      {R0,PC}          ;; return
//  195 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  196 void bz_cross()
//  197 {
bz_cross:
        PUSH     {R7,LR}
//  198   if ( bz_cnt < 30  )
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+30
        BGE.N    ??bz_cross_0
//  199   {
//  200     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  201     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  202   }
//  203   else if ( bz_cnt <= 60 )
??bz_cross_0:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+61
        BGE.N    ??bz_cross_2
//  204   {
//  205     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  206     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  207   }
//  208   else if ( bz_cnt < 90  )
??bz_cross_2:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+90
        BGE.N    ??bz_cross_3
//  209   {
//  210     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  211     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  212   }
//  213   else if ( bz_cnt <= 120 )
??bz_cross_3:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+121
        BGE.N    ??bz_cross_4
//  214   {
//  215     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  216     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  217   }
//  218   else if ( bz_cnt < 170  )
??bz_cross_4:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+170
        BGE.N    ??bz_cross_5
//  219   {
//  220     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  221     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_cross_1
//  222   }
//  223   else
//  224   {
//  225     BZ_OFF;
??bz_cross_5:
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  226     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  227     bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  228   }
//  229   
//  230 }
??bz_cross_1:
        POP      {R0,PC}          ;; return
//  231 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 void bz_fzc()
//  233 {
bz_fzc:
        PUSH     {R7,LR}
//  234   if ( bz_cnt < 50  )
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+50
        BGE.N    ??bz_fzc_0
//  235   {
//  236     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  237     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fzc_1
//  238   }
//  239   else if ( bz_cnt <= 100 )
??bz_fzc_0:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+101
        BGE.N    ??bz_fzc_2
//  240   {
//  241     BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  242     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fzc_1
//  243     
//  244   }
//  245   else  if ( bz_cnt < 150  )
??bz_fzc_2:
        LDR.N    R0,??DataTable9_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+150
        BGE.N    ??bz_fzc_3
//  246   {
//  247     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  248     LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
        B.N      ??bz_fzc_1
//  249   }
//  250   else 
//  251   {
//  252     BZ_OFF;
??bz_fzc_3:
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  253     LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable9  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  254      bz_style = norm;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  255   }
//  256 
//  257 }
??bz_fzc_1:
        POP      {R0,PC}          ;; return
//  258 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  259 void bz_set(enum _bz_style bz)
//  260 {
//  261   bz_cnt = 0;
bz_set:
        MOVS     R1,#+0
        LDR.N    R2,??DataTable9_3
        STRH     R1,[R2, #+0]
//  262   bz_style = bz; 
        LDR.N    R1,??DataTable9_1
        STRB     R0,[R1, #+0]
//  263 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     bz_style

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
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
// 1 328 bytes in section .text
// 
// 1 328 bytes of CODE memory
//     3 bytes of DATA memory
//
//Errors: none
//Warnings: none
