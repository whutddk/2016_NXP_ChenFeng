///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       14/Aug/2016  11:12:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\CTL\RC.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\CTL\RC.c
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
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\RC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Input_b
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_memcpy4
        EXTERN bz_set
        EXTERN ctl

        PUBLIC RC_init
        PUBLIC check_sw
        PUBLIC order

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\CTL\RC.c
//    1 #include "include.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 void order()
//    4 {
order:
        PUSH     {R7,LR}
//    5   LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//    6   LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable2  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//    7   
//    8   if ( PTD0_I )//BBBBBDDDDDD
        LDR.N    R0,??DataTable2_1  ;; 0x43fe1a00
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??order_0
//    9   {
//   10     bz_set(datarec);
        MOVS     R0,#+1
        BL       bz_set
//   11     ctl.flag_on = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_2
        STRB     R0,[R1, #+0]
        B.N      ??order_1
//   12   }
//   13 
//   14   else if( PTD2_I  )/////AAAAAAAAAACCCCCCCC
??order_0:
        LDR.N    R0,??DataTable2_3  ;; 0x43fe1a08
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??order_1
//   15   {
//   16     bz_set(datarec);
        MOVS     R0,#+1
        BL       bz_set
//   17     ctl.flag_on = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_2
        STRB     R0,[R1, #+0]
//   18   }
//   19 
//   20   else
//   21   {}
//   22 //  if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin0)||LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin2))
//   23 //  {
//   24 //    LPLD_GPIO_ClearIntFlag(PORTD);
//   25 //    bz_set(datarec);
//   26 //    
//   27 //    //BBBBBBBBBBBBBBBBB DDDDDD
//   28 //  }
//   29 //  if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin1)||LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin3))
//   30 //  {
//   31 //    LPLD_GPIO_ClearIntFlag(PORTD);
//   32 //    bz_set(datarec);
//   33 //    
//   34 //    //AAAAAAAAAAAAAAAAAAAA CCCCCCC
//   35 //  }
//   36 
//   37   
//   38 }
??order_1:
        POP      {R0,PC}          ;; return
//   39   
//   40   
//   41 
//   42 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void RC_init()
//   44 {
RC_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   45   GPIO_InitTypeDef RCgpio_inittype;
//   46   RCgpio_inittype.GPIO_PTx = PTD;
        LDR.N    R0,??DataTable2_4  ;; 0x400ff0c0
        STR      R0,[SP, #+4]
//   47   RCgpio_inittype.GPIO_Pins = GPIO_Pin0 | GPIO_Pin1 |  GPIO_Pin2 |  GPIO_Pin3 ; 
        MOVS     R0,#+15
        STR      R0,[SP, #+8]
//   48   RCgpio_inittype.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   49   RCgpio_inittype.GPIO_PinControl = INPUT_PULL_DOWN | IRQC_RI; //
        LDR.N    R0,??DataTable2_5  ;; 0x90002
        STR      R0,[SP, #+12]
//   50   RCgpio_inittype.GPIO_Isr =  order;
        LDR.N    R0,??DataTable2_6
        STR      R0,[SP, #+20]
//   51   LPLD_GPIO_Init(RCgpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   52   LPLD_GPIO_EnableIrq(RCgpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   53 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   54 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   55 void check_sw()
//   56 {
check_sw:
        PUSH     {R7,LR}
//   57  
//   58   LPLD_LPTMR_DelayMs(100);
        MOVS     R0,#+100
        BL       LPLD_LPTMR_DelayMs
//   59   if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin6))//up
        LDR.N    R0,??DataTable2_7  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??check_sw_0
//   60   { 
//   61     ctl.flag_on = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_2
        STRB     R0,[R1, #+0]
//   62     while( !LPLD_GPIO_Input_b(PTE, 6) );
??check_sw_1:
        MOVS     R1,#+6
        LDR.N    R0,??DataTable2_8  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??check_sw_1
//   63   }
//   64   
//   65   if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin7))//left
??check_sw_0:
        LDR.N    R0,??DataTable2_7  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??check_sw_2
//   66   {
//   67     ctl.flag_start = 1; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_2
        STRB     R0,[R1, #+1]
//   68     while( !LPLD_GPIO_Input_b(PTE, 7) );
??check_sw_3:
        MOVS     R1,#+7
        LDR.N    R0,??DataTable2_8  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??check_sw_3
//   69   }
//   70     if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin10))//down
??check_sw_2:
        LDR.N    R0,??DataTable2_7  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??check_sw_4
//   71   {
//   72     ctl.flag_on = 0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_2
        STRB     R0,[R1, #+0]
//   73     while( !LPLD_GPIO_Input_b(PTE, 10) );
??check_sw_5:
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_8  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??check_sw_5
//   74   }
//   75   
//   76   if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin11))//click
??check_sw_4:
        LDR.N    R0,??DataTable2_7  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BPL.N    ??check_sw_6
//   77   {
//   78     //bz_set(datarec);
//   79     ctl.current_sum = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_2
        STR      R0,[R1, #+12]
//   80     while( !LPLD_GPIO_Input_b(PTE, 11) );
??check_sw_7:
        MOVS     R1,#+11
        LDR.N    R0,??DataTable2_8  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??check_sw_7
//   81   }
//   82   if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin12))//right
??check_sw_6:
        LDR.N    R0,??DataTable2_7  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BPL.N    ??check_sw_8
//   83   {
//   84     ctl.flag_start = 0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_2
        STRB     R0,[R1, #+1]
//   85     while( !LPLD_GPIO_Input_b(PTE, 12));
??check_sw_9:
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2_8  ;; 0x400ff100
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??check_sw_9
//   86   }
//   87   bz_set(datarec);
??check_sw_8:
        MOVS     R0,#+1
        BL       bz_set
//   88   LPLD_GPIO_ClearIntFlag(PORTE);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable2_7  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   89 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x43fe1a00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x43fe1a08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x90002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     order

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x400ff100

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
// 316 bytes in section .text
// 
// 316 bytes of CODE memory
//
//Errors: none
//Warnings: none
