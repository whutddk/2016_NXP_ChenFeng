///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       14/Aug/2016  11:14:40
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\CTL\control.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\CTL\control.c
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
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_ADC_Get
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN OLED_CLS
        EXTERN OLED_P8x16Str
        EXTERN OLED_PrintInt16
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_ui2d
        EXTERN bz_cnt
        EXTERN send_cnt
        EXTERN timer_cnt

        PUBLIC CTL_isr
        PUBLIC ctl
        PUBLIC meterage
        PUBLIC relay_OFF
        PUBLIC relay_ON
        PUBLIC show

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\project\NXP_powerctl\app\CTL\control.c
//    1 //控制部分通用代码
//    2 #include "include.h"
//    3 #include "math.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 struct _ctl ctl;
ctl:
        DS8 20
//    5 
//    6 
//    7 
//    8 
//    9 //控制中断函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   10 void CTL_isr()//控制系统调度 //1ms
//   11 {
CTL_isr:
        PUSH     {R7,LR}
//   12   {
//   13     timer_cnt++ ;
        LDR.N    R0,??DataTable4_3
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3
        STRH     R0,[R1, #+0]
//   14     bz_cnt++;
        LDR.N    R0,??DataTable4_4
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_4
        STRH     R0,[R1, #+0]
//   15     send_cnt++;
        LDR.N    R0,??DataTable4_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_5
        STRB     R0,[R1, #+0]
//   16     
//   17     
//   18     if (timer_cnt == 1000)//1s
        LDR.N    R0,??DataTable4_3
        LDRH     R0,[R0, #+0]
        CMP      R0,#+1000
        BNE.N    ??CTL_isr_0
//   19     {
//   20       timer_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STRH     R0,[R1, #+0]
//   21     }
//   22   }
//   23   
//   24   {
//   25     if ( ctl.flag_on == 1 )
??CTL_isr_0:
        LDR.N    R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_1
//   26     {
//   27       relay_ON();
        BL       relay_ON
        B.N      ??CTL_isr_2
//   28     }
//   29     else
//   30     {
//   31       relay_OFF();
??CTL_isr_1:
        BL       relay_OFF
//   32     }
//   33     if ( ctl.flag_start == 1)
??CTL_isr_2:
        LDR.N    R0,??DataTable4_6
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_3
//   34     {
//   35       meterage();
        BL       meterage
//   36     }
//   37     
//   38   }
//   39 }
??CTL_isr_3:
        POP      {R0,PC}          ;; return
//   40 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 void relay_ON()
//   42 {
relay_ON:
        PUSH     {R7,LR}
//   43   LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 9999);
        MOVW     R2,#+9999
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_7  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   44 }
        POP      {R0,PC}          ;; return
//   45 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   46 void relay_OFF()
//   47 {
relay_OFF:
        PUSH     {R7,LR}
//   48    LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_7  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   49 }
        POP      {R0,PC}          ;; return
//   50 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void meterage()
//   52 {
meterage:
        PUSH     {R7,LR}
//   53   static uint8 cnt = 0;
//   54   ctl.current = LPLD_ADC_Get(ADC0, AD8) ;
        MOVS     R1,#+8
        LDR.N    R0,??DataTable4_8  ;; 0x4003b000
        BL       LPLD_ADC_Get
        LDR.N    R1,??DataTable4_6
        STR      R0,[R1, #+4]
//   55   if (  ctl.current > ctl.current_offset  )
        LDR.N    R0,??DataTable4_6
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable4_6
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BCS.N    ??meterage_0
//   56   {
//   57     ctl.current_sum += ( ctl.current - ctl.current_offset );
        LDR.N    R0,??DataTable4_6
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable4_6
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable4_6
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable4_6
        STR      R0,[R1, #+12]
        B.N      ??meterage_1
//   58   }
//   59   else
//   60   {
//   61     ctl.current_sum -= ( ctl.current - ctl.current_offset );
??meterage_0:
        LDR.N    R0,??DataTable4_6
        LDR      R0,[R0, #+12]
        LDR.N    R1,??DataTable4_6
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable4_6
        LDR      R1,[R1, #+8]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable4_6
        STR      R0,[R1, #+12]
//   62   }
//   63   
//   64   ctl.POWER = ( ctl.current_sum / 32768. * 5 ) * 2    
//   65     * 12. * 0.001 ;
??meterage_1:
        LDR.N    R0,??DataTable4_6
        LDR      R0,[R0, #+12]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_9  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_10  ;; 0x40140000
        BL       __aeabi_dmul
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_11  ;; 0x40280000
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable4_12  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable4_13  ;; 0x3f50624d
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable4_6
        STR      R0,[R1, #+16]
//   66   cnt++;
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_14
        STRB     R0,[R1, #+0]
//   67   if ( cnt == 100 )
        LDR.N    R0,??DataTable4_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+100
        BNE.N    ??meterage_2
//   68   {
//   69     cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_14
        STRB     R0,[R1, #+0]
//   70     show();
        BL       show
//   71   }
//   72 }
??meterage_2:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??cnt:
        DS8 1
//   73 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void show()
//   75 {
show:
        PUSH     {R7,LR}
//   76   OLED_CLS();
        BL       OLED_CLS
//   77   OLED_P8x16Str(0,0,"WUT");
        ADR.N    R2,??DataTable4  ;; "WUT"
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//   78   
//   79   OLED_PrintInt16( 0,2,(int16)( (ctl.current - ctl.current_offset) / 32768. * 5000.) *2 );
        LDR.N    R0,??DataTable4_6
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable4_6
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        BL       __aeabi_ui2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_9  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_15  ;; 0x40b38800
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        LSLS     R2,R0,#+1
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_PrintInt16
//   80   OLED_P8x16Str(80,2 ,"mA" );
        ADR.N    R2,??DataTable4_1  ;; 0x6D, 0x41, 0x00, 0x00
        MOVS     R1,#+2
        MOVS     R0,#+80
        BL       OLED_P8x16Str
//   81   
//   82   OLED_PrintInt16( 0,4,(int16)( ctl.POWER ));
        LDR.N    R0,??DataTable4_6
        LDR      R2,[R0, #+16]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_PrintInt16
//   83   OLED_P8x16Str(80,4 ,"W*s" );
        ADR.N    R2,??DataTable4_2  ;; "W*s"
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       OLED_P8x16Str
//   84 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC8      "WUT"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC8      0x6D, 0x41, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC8      "W*s"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     timer_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     bz_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     send_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x40e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x40140000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x40280000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x3f50624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     ??cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x40b38800

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "WUT"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "mA"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "W*s"

        END
//   85 
// 
//  21 bytes in section .bss
//  12 bytes in section .rodata
// 430 bytes in section .text
// 
// 430 bytes of CODE  memory
//  12 bytes of CONST memory
//  21 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
