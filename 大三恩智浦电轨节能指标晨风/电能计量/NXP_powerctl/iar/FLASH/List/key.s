///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       14/Aug/2016  11:12:33
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\ITAC\key.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\ITAC\key.c
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
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\key.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_DisableIrq
        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_memcpy4
        EXTERN check_sw

        PUBLIC check_keyboard
        PUBLIC deal_keyboard
        PUBLIC key_init
        PUBLIC keyboard_ans
        PUBLIC keyboard_init
        PUBLIC wait_key

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\ITAC\key.c
//    1 #include "include.h"
//    2 #include "key.h"

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    3 keyboardnote keyboard_ans = _X;
keyboard_ans:
        DATA
        DC8 12
//    4 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void key_init()
//    6 {
key_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//    7   GPIO_InitTypeDef key_inittype;
//    8   
//    9   key_inittype.GPIO_PTx = PTE;
        LDR.W    R0,??DataTable4  ;; 0x400ff100
        STR      R0,[SP, #+4]
//   10   key_inittype.GPIO_Pins = GPIO_Pin6 | GPIO_Pin7 | GPIO_Pin10 | GPIO_Pin11 | GPIO_Pin12; 
        MOV      R0,#+7360
        STR      R0,[SP, #+8]
//   11   key_inittype.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   12   key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_FA; //上拉 下降沿触发外部中断
        LDR.W    R0,??DataTable4_1  ;; 0xa0003
        STR      R0,[SP, #+12]
//   13   key_inittype.GPIO_Isr = check_sw;
        LDR.W    R0,??DataTable4_2
        STR      R0,[SP, #+20]
//   14   LPLD_GPIO_Init(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   15   LPLD_GPIO_EnableIrq(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   16   
//   17   key_inittype.GPIO_PTx = PTA;
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//   18   key_inittype.GPIO_Pins = GPIO_Pin26 | GPIO_Pin27 |  GPIO_Pin29  ; 
        MOVS     R0,#+738197504
        STR      R0,[SP, #+8]
//   19   key_inittype.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   20   key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_DIS; ; //上拉 跳变沿触发外部中断
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//   21   key_inittype.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   22   LPLD_GPIO_Init(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   23   LPLD_GPIO_EnableIrq(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   24 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   25 
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 uint8 wait_key()
//   28 {
wait_key:
        PUSH     {R7,LR}
//   29   
//   30   if ( !KEY_UP )
        LDR.W    R0,??DataTable4_4  ;; 0x43fe2218
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_0
//   31   {
//   32     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   33     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   34     if ( !KEY_UP )
        LDR.W    R0,??DataTable4_4  ;; 0x43fe2218
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_0
//   35     {
//   36       while( !KEY_UP );
??wait_key_1:
        LDR.W    R0,??DataTable4_4  ;; 0x43fe2218
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_1
//   37       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   38       return ( 1 );
        MOVS     R0,#+1
        B.N      ??wait_key_2
//   39     }
//   40   }
//   41     if ( !KEY_LEFT )
??wait_key_0:
        LDR.W    R0,??DataTable4_5  ;; 0x43fe221c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_3
//   42   {
//   43     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   44     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   45     if ( !KEY_LEFT )
        LDR.W    R0,??DataTable4_5  ;; 0x43fe221c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_3
//   46     {
//   47       while( !KEY_LEFT );
??wait_key_4:
        LDR.W    R0,??DataTable4_5  ;; 0x43fe221c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_4
//   48       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   49       return ( 2 );
        MOVS     R0,#+2
        B.N      ??wait_key_2
//   50     }
//   51   }
//   52     if ( !KEY_RIGHT )
??wait_key_3:
        LDR.W    R0,??DataTable4_6  ;; 0x43fe2228
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_5
//   53   {
//   54     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   55     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   56     if ( !KEY_RIGHT )
        LDR.W    R0,??DataTable4_6  ;; 0x43fe2228
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_5
//   57     {  
//   58       while( !KEY_RIGHT );
??wait_key_6:
        LDR.W    R0,??DataTable4_6  ;; 0x43fe2228
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_6
//   59       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   60       return ( 3 );
        MOVS     R0,#+3
        B.N      ??wait_key_2
//   61     }
//   62   }
//   63     if ( !KEY_DOWN )
??wait_key_5:
        LDR.W    R0,??DataTable4_7  ;; 0x43fe222c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_7
//   64   {
//   65     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   66     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   67     if ( !KEY_DOWN)
        LDR.W    R0,??DataTable4_7  ;; 0x43fe222c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_7
//   68     {
//   69       while( !KEY_DOWN );
??wait_key_8:
        LDR.W    R0,??DataTable4_7  ;; 0x43fe222c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_8
//   70       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   71       return ( 4 );
        MOVS     R0,#+4
        B.N      ??wait_key_2
//   72     }
//   73   }
//   74     if ( !KEY_CLICK )
??wait_key_7:
        LDR.W    R0,??DataTable4_8  ;; 0x43fe2230
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_9
//   75   {
//   76     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   77     LPLD_LPTMR_DelayMs(1);
        MOVS     R0,#+1
        BL       LPLD_LPTMR_DelayMs
//   78     if ( !KEY_CLICK )
        LDR.W    R0,??DataTable4_8  ;; 0x43fe2230
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??wait_key_9
//   79     {
//   80       while( !KEY_CLICK );
??wait_key_10:
        LDR.W    R0,??DataTable4_8  ;; 0x43fe2230
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??wait_key_10
//   81       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   82       return ( 5 );
        MOVS     R0,#+5
        B.N      ??wait_key_2
//   83     }
//   84   }
//   85   BZ_OFF;
??wait_key_9:
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   86   return 0;
        MOVS     R0,#+0
??wait_key_2:
        POP      {R1,PC}          ;; return
//   87 }
//   88 
//   89 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void  keyboard_init()
//   91 {
keyboard_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   92   //四个输出高电平
//   93   GPIO_InitTypeDef gpio_inittype;
//   94   gpio_inittype.GPIO_PTx = PTD;
        LDR.W    R0,??DataTable4_9  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//   95   gpio_inittype.GPIO_Pins = GPIO_Pin8 | GPIO_Pin9 | GPIO_Pin10 | GPIO_Pin11;
        MOV      R0,#+3840
        STR      R0,[SP, #+8]
//   96   gpio_inittype.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   97   gpio_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   98   gpio_inittype.GPIO_PinControl = IRQC_DIS | INPUT_PULL_DOWN ;
        MOVS     R0,#+2
        STR      R0,[SP, #+12]
//   99   LPLD_GPIO_Init(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  100   
//  101   //四个下拉，读电平
//  102   gpio_inittype.GPIO_PTx = PTD;
        LDR.W    R0,??DataTable4_9  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  103   gpio_inittype.GPIO_Pins = GPIO_Pin12 | GPIO_Pin13 | GPIO_Pin14 | GPIO_Pin15  ;
        MOV      R0,#+61440
        STR      R0,[SP, #+8]
//  104   gpio_inittype.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  105   gpio_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  106   gpio_inittype.GPIO_PinControl = IRQC_RI | INPUT_PULL_DOWN ;//下拉，上升沿中断
        LDR.W    R0,??DataTable4_10  ;; 0x90002
        STR      R0,[SP, #+12]
//  107   gpio_inittype.GPIO_Isr = check_keyboard;
        ADR.W    R0,check_keyboard
        STR      R0,[SP, #+20]
//  108   LPLD_GPIO_Init(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  109   LPLD_GPIO_EnableIrq(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//  110   
//  111 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  112 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  113 void check_keyboard()
//  114 {
check_keyboard:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  115   GPIO_InitTypeDef gpio_inittype;
//  116   
//  117   BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  118 
//  119   gpio_inittype.GPIO_PTx = PTD;
        LDR.W    R0,??DataTable4_9  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//  120   gpio_inittype.GPIO_Pins = GPIO_Pin12 | GPIO_Pin13 | GPIO_Pin14 | GPIO_Pin15  ;
        MOV      R0,#+61440
        STR      R0,[SP, #+8]
//  121   
//  122   LPLD_GPIO_DisableIrq(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_DisableIrq
//  123   
//  124   if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin12))
        LDR.W    R0,??DataTable4_11  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BPL.N    ??check_keyboard_0
//  125   {
//  126     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.W    R1,??DataTable4_11  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  127     LPLD_GPIO_DisableIrq(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_DisableIrq
//  128     
//  129     
//  130     DDRD12 = 1 ;//输出
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_12  ;; 0x43fe1ab0
        STR      R0,[R1, #+0]
//  131     PTD12_O = 1;//输出0；
        MOVS     R0,#+1
        LDR.W    R1,??DataTable4_13  ;; 0x43fe1830
        STR      R0,[R1, #+0]
//  132     PTD8_O = PTD9_O = PTD10_O = PTD11_O = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_14  ;; 0x43fe182c
        STR      R0,[R1, #+0]
        LDR.W    R1,??DataTable4_15  ;; 0x43fe1828
        STR      R0,[R1, #+0]
        LDR.W    R1,??DataTable4_16  ;; 0x43fe1824
        STR      R0,[R1, #+0]
        LDR.W    R1,??DataTable4_17  ;; 0x43fe1820
        STR      R0,[R1, #+0]
//  133     DDRD8 = DDRD9 = DDRD10 = DDRD11 = 0; //输入 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable4_18  ;; 0x43fe1aac
        STR      R0,[R1, #+0]
        LDR.W    R1,??DataTable4_19  ;; 0x43fe1aa8
        STR      R0,[R1, #+0]
        LDR.W    R1,??DataTable4_20  ;; 0x43fe1aa4
        STR      R0,[R1, #+0]
        LDR.W    R1,??DataTable4_21  ;; 0x43fe1aa0
        STR      R0,[R1, #+0]
//  134     
//  135     if ( PTD8_I )
        LDR.W    R0,??DataTable4_22  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_1
//  136     {    
//  137       while(PTD8_I);
??check_keyboard_2:
        LDR.W    R0,??DataTable4_22  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_2
//  138       
//  139       keyboard_ans = _D;
        MOVS     R0,#+15
        LDR.W    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  140     }
//  141     if ( PTD9_I )
??check_keyboard_1:
        LDR.W    R0,??DataTable4_24  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_3
//  142     {
//  143       while(PTD9_I);
??check_keyboard_4:
        LDR.W    R0,??DataTable4_24  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_4
//  144       
//  145       keyboard_ans = _J;
        MOVS     R0,#+14
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  146     }
//  147     if ( PTD10_I )
??check_keyboard_3:
        LDR.N    R0,??DataTable4_25  ;; 0x43fe1a28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_5
//  148     {
//  149       while(PTD10_I);
??check_keyboard_6:
        LDR.N    R0,??DataTable4_25  ;; 0x43fe1a28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_6
//  150       
//  151       keyboard_ans = _0;
        MOVS     R0,#+13
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  152     }
//  153     if ( PTD11_I )
??check_keyboard_5:
        LDR.N    R0,??DataTable4_26  ;; 0x43fe1a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_7
//  154     {
//  155       while(PTD11_I);
??check_keyboard_8:
        LDR.N    R0,??DataTable4_26  ;; 0x43fe1a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_8
//  156       
//  157       keyboard_ans = _X;
        MOVS     R0,#+12
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  158     }
//  159     deal_keyboard();
??check_keyboard_7:
        BL       deal_keyboard
//  160   }
//  161   
//  162   if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin13))
??check_keyboard_0:
        LDR.N    R0,??DataTable4_11  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??check_keyboard_9
//  163   {
//  164     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable4_11  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  165     LPLD_GPIO_DisableIrq(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_DisableIrq
//  166     
//  167     DDRD13 = 1 ;//输出
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_27  ;; 0x43fe1ab4
        STR      R0,[R1, #+0]
//  168     PTD13_O = 1;//输出0；
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_28  ;; 0x43fe1834
        STR      R0,[R1, #+0]
//  169     PTD8_O = PTD9_O = PTD10_O = PTD11_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_14  ;; 0x43fe182c
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_15  ;; 0x43fe1828
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_16  ;; 0x43fe1824
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_17  ;; 0x43fe1820
        STR      R0,[R1, #+0]
//  170     DDRD8 = DDRD9 = DDRD10 = DDRD11 = 0; //输入
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_18  ;; 0x43fe1aac
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_19  ;; 0x43fe1aa8
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_20  ;; 0x43fe1aa4
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_21  ;; 0x43fe1aa0
        STR      R0,[R1, #+0]
//  171     if ( PTD8_I )
        LDR.N    R0,??DataTable4_22  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_10
//  172     {     
//  173       while(PTD8_I);
??check_keyboard_11:
        LDR.N    R0,??DataTable4_22  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_11
//  174       
//  175       keyboard_ans = _C;
        MOVS     R0,#+11
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  176     }
//  177     if ( PTD9_I )
??check_keyboard_10:
        LDR.N    R0,??DataTable4_24  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_12
//  178     {
//  179       while(PTD9_I);
??check_keyboard_13:
        LDR.N    R0,??DataTable4_24  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_13
//  180       
//  181       keyboard_ans = _9;
        MOVS     R0,#+10
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  182     }
//  183     if ( PTD10_I )
??check_keyboard_12:
        LDR.N    R0,??DataTable4_25  ;; 0x43fe1a28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_14
//  184     {
//  185       while(PTD10_I);
??check_keyboard_15:
        LDR.N    R0,??DataTable4_25  ;; 0x43fe1a28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_15
//  186       
//  187       keyboard_ans = _8;
        MOVS     R0,#+9
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  188     }
//  189     if ( PTD11_I )
??check_keyboard_14:
        LDR.N    R0,??DataTable4_26  ;; 0x43fe1a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_16
//  190     {
//  191       while(PTD11_I);
??check_keyboard_17:
        LDR.N    R0,??DataTable4_26  ;; 0x43fe1a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_17
//  192       
//  193       keyboard_ans = _7;
        MOVS     R0,#+8
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  194     }
//  195     deal_keyboard();
??check_keyboard_16:
        BL       deal_keyboard
//  196   }  
//  197   
//  198   if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin14))
??check_keyboard_9:
        LDR.N    R0,??DataTable4_11  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL.N    ??check_keyboard_18
//  199   {
//  200     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable4_11  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  201     LPLD_GPIO_DisableIrq(gpio_inittype);  
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_DisableIrq
//  202     
//  203     DDRD14 = 1 ;//输出
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_29  ;; 0x43fe1ab8
        STR      R0,[R1, #+0]
//  204     PTD14_O = 1;//输出0；
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_30  ;; 0x43fe1838
        STR      R0,[R1, #+0]
//  205     PTD8_O = PTD9_O = PTD10_O = PTD11_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_14  ;; 0x43fe182c
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_15  ;; 0x43fe1828
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_16  ;; 0x43fe1824
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_17  ;; 0x43fe1820
        STR      R0,[R1, #+0]
//  206     DDRD8 = DDRD9 = DDRD10 = DDRD11 = 0; //输入
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_18  ;; 0x43fe1aac
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_19  ;; 0x43fe1aa8
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_20  ;; 0x43fe1aa4
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_21  ;; 0x43fe1aa0
        STR      R0,[R1, #+0]
//  207     if ( PTD8_I )
        LDR.N    R0,??DataTable4_22  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_19
//  208     {     
//  209       while(PTD8_I);
??check_keyboard_20:
        LDR.N    R0,??DataTable4_22  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_20
//  210       
//  211       keyboard_ans = _B;
        MOVS     R0,#+7
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  212     }
//  213     if ( PTD9_I )
??check_keyboard_19:
        LDR.N    R0,??DataTable4_24  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_21
//  214     {
//  215       while(PTD9_I);
??check_keyboard_22:
        LDR.N    R0,??DataTable4_24  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_22
//  216       
//  217       keyboard_ans = _6;
        MOVS     R0,#+6
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  218     }
//  219     if ( PTD10_I )
??check_keyboard_21:
        LDR.N    R0,??DataTable4_25  ;; 0x43fe1a28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_23
//  220     {
//  221       while(PTD10_I);
??check_keyboard_24:
        LDR.N    R0,??DataTable4_25  ;; 0x43fe1a28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_24
//  222       
//  223       keyboard_ans = _5;
        MOVS     R0,#+5
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  224     }
//  225     if ( PTD11_I )
??check_keyboard_23:
        LDR.N    R0,??DataTable4_26  ;; 0x43fe1a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_25
//  226     {
//  227       while(PTD11_I);
??check_keyboard_26:
        LDR.N    R0,??DataTable4_26  ;; 0x43fe1a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_26
//  228       
//  229       keyboard_ans = _4;
        MOVS     R0,#+4
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  230     }
//  231     deal_keyboard();
??check_keyboard_25:
        BL       deal_keyboard
//  232   } 
//  233   
//  234   if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin15))
??check_keyboard_18:
        LDR.N    R0,??DataTable4_11  ;; 0x4004c0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BPL.N    ??check_keyboard_27
//  235   {
//  236     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable4_11  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  237     LPLD_GPIO_DisableIrq(gpio_inittype);  
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_DisableIrq
//  238     
//  239     
//  240     DDRD15 = 1 ;//输出
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_31  ;; 0x43fe1abc
        STR      R0,[R1, #+0]
//  241     PTD15_O = 1;//输出0；
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_32  ;; 0x43fe183c
        STR      R0,[R1, #+0]
//  242     PTD8_O = PTD9_O = PTD10_O = PTD11_O = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_14  ;; 0x43fe182c
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_15  ;; 0x43fe1828
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_16  ;; 0x43fe1824
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_17  ;; 0x43fe1820
        STR      R0,[R1, #+0]
//  243     DDRD8 = DDRD9 = DDRD10 = DDRD11 = 0; //输入
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_18  ;; 0x43fe1aac
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_19  ;; 0x43fe1aa8
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_20  ;; 0x43fe1aa4
        STR      R0,[R1, #+0]
        LDR.N    R1,??DataTable4_21  ;; 0x43fe1aa0
        STR      R0,[R1, #+0]
//  244     if ( PTD8_I )
        LDR.N    R0,??DataTable4_22  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_28
//  245     {
//  246       while(PTD8_I);
??check_keyboard_29:
        LDR.N    R0,??DataTable4_22  ;; 0x43fe1a20
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_29
//  247       
//  248       keyboard_ans = _A;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  249     }
//  250     if ( PTD9_I )
??check_keyboard_28:
        LDR.N    R0,??DataTable4_24  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_30
//  251     {
//  252       while(PTD9_I);
??check_keyboard_31:
        LDR.N    R0,??DataTable4_24  ;; 0x43fe1a24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_31
//  253       
//  254       keyboard_ans = _3;
        MOVS     R0,#+2
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  255     }
//  256     if ( PTD10_I )
??check_keyboard_30:
        LDR.N    R0,??DataTable4_25  ;; 0x43fe1a28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_32
//  257     {
//  258       while(PTD10_I);
??check_keyboard_33:
        LDR.N    R0,??DataTable4_25  ;; 0x43fe1a28
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_33
//  259       
//  260       keyboard_ans =  _2;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  261     }
//  262     if ( PTD11_I )
??check_keyboard_32:
        LDR.N    R0,??DataTable4_26  ;; 0x43fe1a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??check_keyboard_34
//  263     {
//  264       while(PTD11_I);
??check_keyboard_35:
        LDR.N    R0,??DataTable4_26  ;; 0x43fe1a2c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??check_keyboard_35
//  265       
//  266       keyboard_ans = _1;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_23
        STRB     R0,[R1, #+0]
//  267     }
//  268     deal_keyboard();
??check_keyboard_34:
        BL       deal_keyboard
//  269   } 
//  270   
//  271   keyboard_init();  
??check_keyboard_27:
        BL       keyboard_init
//  272   BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+24
        LDR.N    R0,??DataTable4_3  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  273 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  274 
//  275 
//  276 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  277 void deal_keyboard()
//  278 {
//  279   switch(keyboard_ans)
deal_keyboard:
        LDR.N    R0,??DataTable4_23
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??deal_keyboard_0
        CMP      R0,#+1
        BEQ.N    ??deal_keyboard_1
        CMP      R0,#+2
        BEQ.N    ??deal_keyboard_2
        CMP      R0,#+4
        BEQ.N    ??deal_keyboard_3
        CMP      R0,#+6
        BEQ.N    ??deal_keyboard_4
        CMP      R0,#+9
        BEQ.N    ??deal_keyboard_5
        CMP      R0,#+11
        BEQ.N    ??deal_keyboard_6
        CMP      R0,#+15
        BEQ.N    ??deal_keyboard_6
        B.N      ??deal_keyboard_7
//  280   {
//  281     //换位
//  282     case(_1):
//  283       break;
??deal_keyboard_0:
        B.N      ??deal_keyboard_7
//  284       case(_3):
//  285         
//  286         break;
??deal_keyboard_2:
        B.N      ??deal_keyboard_7
//  287         
//  288         //参数推减
//  289         case(_2):
//  290           
//  291           break;
??deal_keyboard_1:
        B.N      ??deal_keyboard_7
//  292           
//  293           case(_8):
//  294             
//  295             break;
??deal_keyboard_5:
        B.N      ??deal_keyboard_7
//  296             
//  297             //翻页
//  298             case(_4):
//  299               
//  300               
//  301               break;
??deal_keyboard_3:
        B.N      ??deal_keyboard_7
//  302               
//  303               case(_6):
//  304                 
//  305                 
//  306                 break;
??deal_keyboard_4:
        B.N      ??deal_keyboard_7
//  307                 
//  308                 case(_C):
//  309                   
//  310                   case(_D): 
//  311                     break;
//  312                     
//  313   }
//  314   
//  315 }
??deal_keyboard_6:
??deal_keyboard_7:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0xa0003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     check_sw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x43fe2218

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x43fe221c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x43fe2228

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x43fe222c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x43fe2230

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x90002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x43fe1ab0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x43fe1830

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0x43fe182c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x43fe1828

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0x43fe1824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0x43fe1820

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0x43fe1aac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0x43fe1aa8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     0x43fe1aa4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0x43fe1aa0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0x43fe1a20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     keyboard_ans

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     0x43fe1a24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     0x43fe1a28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     0x43fe1a2c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     0x43fe1ab4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     0x43fe1834

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     0x43fe1ab8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     0x43fe1838

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     0x43fe1abc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     0x43fe183c

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  316 
//  317 
// 
//     1 byte  in section .data
// 1 578 bytes in section .text
// 
// 1 578 bytes of CODE memory
//     1 byte  of DATA memory
//
//Errors: none
//Warnings: none
