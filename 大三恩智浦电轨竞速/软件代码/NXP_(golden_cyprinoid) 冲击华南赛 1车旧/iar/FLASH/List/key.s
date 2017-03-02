///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:54
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\ITAC\key.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\ITAC\key.c" -D LPLD_K60 -lCN
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
//        冲击华南赛 1车\iar\FLASH\List\key.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN GUI
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Input_b
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_memcpy4
        EXTERN flag_bihuan
        EXTERN ramp_Enable
        EXTERN speed_up_Enable

        PUBLIC key_init
        PUBLIC read_sw
        PUBLIC sw
        PUBLIC wait_key

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\ITAC\key.c
//    1 #include "include.h"
//    2 
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void key_init()
//    5 {
key_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//    6   GPIO_InitTypeDef key_inittype;
//    7   
//    8   key_inittype.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        STR      R0,[SP, #+4]
//    9   key_inittype.GPIO_Pins = GPIO_Pin17 | GPIO_Pin20 | GPIO_Pin21 | GPIO_Pin22 | GPIO_Pin23; 
        MOVS     R0,#+15859712
        STR      R0,[SP, #+8]
//   10   key_inittype.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   11   key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_DIS; //上拉 下降沿触发外部中断
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//   12   key_inittype.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   13   LPLD_GPIO_Init(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   14   
//   15   
//   16   key_inittype.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        STR      R0,[SP, #+4]
//   17   key_inittype.GPIO_Pins = GPIO_Pin16 | GPIO_Pin11 | GPIO_Pin10 | GPIO_Pin9; 
        MOVS     R0,#+69120
        STR      R0,[SP, #+8]
//   18   key_inittype.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   19   key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_DIS; //上拉 下降沿触发外部中断
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//   20   key_inittype.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   21   LPLD_GPIO_Init(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   22   
//   23   key_inittype.GPIO_PTx = PTD;//启停线检测
        LDR.N    R0,??DataTable2_1  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//   24   key_inittype.GPIO_Pins = GPIO_Pin1 | GPIO_Pin5 | GPIO_Pin6 ;
        MOVS     R0,#+98
        STR      R0,[SP, #+8]
//   25   key_inittype.GPIO_Dir =DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   26   key_inittype.GPIO_PinControl = INPUT_PULL_UP ;//内部上拉/下降沿触发外部中断
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//   27   key_inittype.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   28   LPLD_GPIO_Init(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   29 
//   30 //  key_inittype.GPIO_PTx = PTD;//中断时间检测
//   31 //  key_inittype.GPIO_Pins = GPIO_Pin1;
//   32 //  key_inittype.GPIO_Dir = DIR_OUTPUT;
//   33 //  key_inittype.GPIO_PinControl = OUTPUT_L ;//内部上拉/下降沿触发外部中断
//   34 //  key_inittype.GPIO_Isr = NULL;
//   35 //  LPLD_GPIO_Init(key_inittype);
//   36 
//   37 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   38 
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 uint8 wait_key()
//   41 {
wait_key:
        PUSH     {R7,LR}
//   42   
//   43   if ( !KEY_UP )
        LDR.N    R0,??DataTable2_2  ;; 0x43fe0a44
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_0
//   44   {
//   45     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   46     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   47     if ( !KEY_UP )
        LDR.N    R0,??DataTable2_2  ;; 0x43fe0a44
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_0
//   48     {
//   49       while( !KEY_UP );
??wait_key_1:
        LDR.N    R0,??DataTable2_2  ;; 0x43fe0a44
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_1
//   50       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   51       return ( 1 );
        MOVS     R0,#+1
        B.N      ??wait_key_2
//   52     }
//   53   }
//   54     if ( !KEY_LEFT )
??wait_key_0:
        LDR.N    R0,??DataTable2_4  ;; 0x43fe0a5c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_3
//   55   {
//   56     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   57     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   58     if ( !KEY_LEFT )
        LDR.N    R0,??DataTable2_4  ;; 0x43fe0a5c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_3
//   59     {
//   60       while( !KEY_LEFT );
??wait_key_4:
        LDR.N    R0,??DataTable2_4  ;; 0x43fe0a5c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_4
//   61       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   62       return ( 2 );
        MOVS     R0,#+2
        B.N      ??wait_key_2
//   63     }
//   64   }
//   65     if ( !KEY_RIGHT )
??wait_key_3:
        LDR.N    R0,??DataTable2_5  ;; 0x43fe0a54
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_5
//   66   {
//   67     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   68     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   69     if ( !KEY_RIGHT )
        LDR.N    R0,??DataTable2_5  ;; 0x43fe0a54
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_5
//   70     {  
//   71       while( !KEY_RIGHT );
??wait_key_6:
        LDR.N    R0,??DataTable2_5  ;; 0x43fe0a54
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_6
//   72       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   73       return ( 3 );
        MOVS     R0,#+3
        B.N      ??wait_key_2
//   74     }
//   75   }
//   76     if ( !KEY_DOWN )
??wait_key_5:
        LDR.N    R0,??DataTable2_6  ;; 0x43fe0a58
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_7
//   77   {
//   78     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   79     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   80     if ( !KEY_DOWN)
        LDR.N    R0,??DataTable2_6  ;; 0x43fe0a58
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_7
//   81     {
//   82       while( !KEY_DOWN );
??wait_key_8:
        LDR.N    R0,??DataTable2_6  ;; 0x43fe0a58
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_8
//   83       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   84       return ( 4 );
        MOVS     R0,#+4
        B.N      ??wait_key_2
//   85     }
//   86   }
//   87     if ( !KEY_CLICK )
??wait_key_7:
        LDR.N    R0,??DataTable2_7  ;; 0x43fe0a50
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_9
//   88   {
//   89     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   90     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   91     if ( !KEY_CLICK )
        LDR.N    R0,??DataTable2_7  ;; 0x43fe0a50
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_9
//   92     {
//   93       while( !KEY_CLICK );
??wait_key_10:
        LDR.N    R0,??DataTable2_7  ;; 0x43fe0a50
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_10
//   94       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   95       return ( 5 );
        MOVS     R0,#+5
        B.N      ??wait_key_2
//   96     }
//   97   }
//   98   BZ_OFF;
??wait_key_9:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_3  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   99   return 0;
        MOVS     R0,#+0
??wait_key_2:
        POP      {R1,PC}          ;; return
//  100 }
//  101 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  102 uint8 sw = 0;
sw:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 void read_sw()
//  104 {
read_sw:
        PUSH     {R7,LR}
//  105   sw = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  106   sw |= LPLD_GPIO_Input_b(PTB,16);
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R1, #+0]
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  107   sw <<= 1;
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  108   sw |= LPLD_GPIO_Input_b(PTB,11);
        MOVS     R1,#+11
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R1, #+0]
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  109   sw <<= 1;
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  110   sw |= LPLD_GPIO_Input_b(PTB,10);
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R1, #+0]
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  111   sw <<= 1;
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+1
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  112   sw |= LPLD_GPIO_Input_b(PTB,9);
        MOVS     R1,#+9
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable2_8
        LDRB     R1,[R1, #+0]
        ORRS     R0,R0,R1
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//  113   
//  114       ramp_Enable = LPLD_GPIO_Input_b(PTB,16);
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable2_9
        STRB     R0,[R1, #+0]
//  115     //  cross_Enable = LPLD_GPIO_Input_b(PTB,11);
//  116     speed_up_Enable = LPLD_GPIO_Input_b(PTB,11);
        MOVS     R1,#+11
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
//  117     GUI.para.endline = LPLD_GPIO_Input_b(PTB,10);
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable2_11
        STRB     R0,[R1, #+2]
//  118     flag_bihuan = LPLD_GPIO_Input_b(PTB,9);
        MOVS     R1,#+9
        LDR.N    R0,??DataTable2  ;; 0x400ff040
        BL       LPLD_GPIO_Input_b
        LDR.N    R1,??DataTable2_12
        STRB     R0,[R1, #+0]
//  119 
//  120 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x43fe0a44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x43fe0a5c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x43fe0a54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x43fe0a58

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x43fe0a50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     sw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     ramp_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     speed_up_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     GUI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     flag_bihuan

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  121 
//  122 
// 
//   1 byte  in section .bss
// 630 bytes in section .text
// 
// 630 bytes of CODE memory
//   1 byte  of DATA memory
//
//Errors: none
//Warnings: none
