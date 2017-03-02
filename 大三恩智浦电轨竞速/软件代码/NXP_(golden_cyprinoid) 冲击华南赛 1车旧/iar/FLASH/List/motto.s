///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:56
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\CTL\motto.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\CTL\motto.c" -D LPLD_K60 -lCN
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
//        冲击华南赛 1车\iar\FLASH\List\motto.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN bz_set
        EXTERN ctl
        EXTERN flag_ramp
        EXTERN `push`
        EXTERN ramp_Enable
        EXTERN ramp_cnt

        PUBLIC Straight_Flag
        PUBLIC ctl_sped
        PUBLIC motto_getsped
        PUBLIC motto_set
        PUBLIC speed_up_Enable

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\CTL\motto.c
//    1 //电机控制
//    2 #include "include.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void motto_set()
//    5 {
motto_set:
        PUSH     {R7,LR}
//    6   //限幅
//    7   if ( ctl.motto.out > 9500 )
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        LDR.N    R1,??DataTable2_1  ;; 0x46147001
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_0
//    8   {
//    9     ctl.motto.out = 9500;
        LDR.N    R0,??DataTable2_2  ;; 0x46147000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+140]
        B.N      ??motto_set_1
//   10   }
//   11   else if ( ctl.motto.out < -9500 )
??motto_set_0:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        LDR.N    R1,??DataTable2_3  ;; 0xc6147000
        BL       __aeabi_cfcmple
        BCS.N    ??motto_set_1
//   12   {
//   13     ctl.motto.out = -9500;
        LDR.N    R0,??DataTable2_3  ;; 0xc6147000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+140]
//   14   }
//   15   
//   16   if ( ctl.motto.out >= 0.000000  )
??motto_set_1:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_2
//   17   {
//   18     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) ( ctl.motto.out ) );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   19     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (uint32) 0 );
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
        B.N      ??motto_set_3
//   20   }
//   21   else if ( ctl.motto.out < 0.000000 )
??motto_set_2:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        MOVS     R1,#+0
        BL       __aeabi_cfcmple
        BCS.N    ??motto_set_3
//   22   {
//   23     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   24     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, (uint32) ( -ctl.motto.out ) );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   25   }
//   26   
//   27   push(6,ctl.motto.out);
??motto_set_3:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+6
        BL       `push`
//   28 }
        POP      {R0,PC}          ;; return
//   29 
//   30 
//   31 
//   32 //轮子172mm 5000个脉冲
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void motto_getsped()
//   35 {
motto_getsped:
        PUSH     {R7,LR}
//   36   
//   37   ctl.motto.sped_cur =  -LPLD_FTM_GetCounter(FTM2)  ;//赋值需要不可以连等
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_GetCounter
        RSBS     R0,R0,#+0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+88]
//   38   
//   39   LPLD_FTM_ClearCounter(FTM2);
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_ClearCounter
//   40   push(5,ctl.motto.sped_cur);  
        LDR.N    R0,??DataTable2
        LDRH     R1,[R0, #+88]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+5
        BL       `push`
//   41 }
        POP      {R0,PC}          ;; return
//   42 
//   43 
//   44 
//   45 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   46 int8 Straight_Flag=1;
Straight_Flag:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   47 boolean speed_up_Enable;
speed_up_Enable:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 void ctl_sped() //速度控制，增量式PI控制
//   49 {
ctl_sped:
        PUSH     {R7,LR}
//   50   
//   51   if(1 == speed_up_Enable)
        LDR.N    R0,??DataTable2_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_0
//   52   {
//   53     if(ctl.motto.v_error > 160)
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+94]
        CMP      R0,#+161
        BLT.N    ??ctl_sped_1
//   54     {
//   55       ctl.motto.v_error = 160;
        MOVS     R0,#+160
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+94]
        B.N      ??ctl_sped_2
//   56     }
//   57     else if(ctl.motto.v_error < 25)
??ctl_sped_1:
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+94]
        CMP      R0,#+25
        BGE.N    ??ctl_sped_2
//   58     {
//   59       ctl.motto.v_error = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+94]
//   60     }
//   61     
//   62     ctl.motto.v_error = 150 - ctl.motto.v_error;
??ctl_sped_2:
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+94]
        RSBS     R0,R0,#+150
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+94]
//   63   }
//   64   
//   65     ctl.motto.aim = ctl.motto.v + ctl.motto.v_error;
??ctl_sped_0:
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+92]
        LDR.N    R1,??DataTable2
        LDRH     R1,[R1, #+94]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+90]
//   66 
//   67     
//   68   if(1 == flag_ramp)     //坡道未正常关闭，则一定距离后关闭
        LDR.N    R0,??DataTable2_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_3
//   69   {
//   70     ctl.motto.ramp += ctl.motto.sped_cur;
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+164]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+88]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+164]
//   71     ctl.motto.aim = ctl.motto.v;
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+92]
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+90]
//   72     
//   73     if(ctl.motto.ramp > 80000)    //计距离强制置0
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+164]
        LDR.N    R1,??DataTable2_8  ;; 0x13881
        CMP      R0,R1
        BLT.N    ??ctl_sped_4
//   74     {
//   75       flag_ramp = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_7
        STRB     R0,[R1, #+0]
//   76       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_9  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   77       ctl.motto.ramp = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+164]
//   78       ramp_Enable = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
//   79       bz_set(warn);
        MOVS     R0,#+2
        BL       bz_set
//   80       ramp_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_11
        STRB     R0,[R1, #+0]
        B.N      ??ctl_sped_4
//   81     }
//   82   }
//   83    else if(ramp_Enable == 0)        //隔大约2m检测下一个坡道
??ctl_sped_3:
        LDR.N    R0,??DataTable2_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ctl_sped_4
//   84    {
//   85      ctl.motto.ramp += ctl.motto.sped_cur;
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+164]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+88]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+164]
//   86      if(ctl.motto.ramp > 80000)
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+164]
        LDR.N    R1,??DataTable2_8  ;; 0x13881
        CMP      R0,R1
        BLT.N    ??ctl_sped_4
//   87      {
//   88        ctl.motto.ramp = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+164]
//   89        ramp_Enable = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
//   90      }
//   91    }
//   92   
//   93 //  push(11,ctl.motto.ramp/10);
//   94     
//   95  
//   96   
//   97   ctl.motto.error[1] =   ctl.motto.aim  - ctl.motto.sped_cur;
??ctl_sped_4:
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+90]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+88]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+148]
//   98   
//   99   ctl.motto.result[1]  = ctl.motto.Kp  * ( ctl.motto.error[1] - ctl.motto.error[0] );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+148]
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+144]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+96]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+136]
//  100   ctl.motto.result[1] += ctl.motto.Ki  *   ctl.motto.error[1];
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+100]
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+148]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+136]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+136]
//  101   
//  102   ctl.motto.error[0] = ctl.motto.error[1];  
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+148]
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+144]
//  103   ctl.motto.out += ctl.motto.result[1];
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+136]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+140]
//  104 
//  105   
//  106   
//  107   if(1 == ramp_cnt)
        LDR.N    R0,??DataTable2_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_5
//  108   {
//  109     if(ctl.motto.error[1] < -40)
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+148]
        LDR.N    R1,??DataTable2_12  ;; 0xc2200000
        BL       __aeabi_cfcmple
        BCS.N    ??ctl_sped_5
//  110       if(ctl.motto.out > -1000)
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+140]
        LDR.N    R1,??DataTable2_13  ;; 0xc479ffff
        BL       __aeabi_cfrcmple
        BHI.N    ??ctl_sped_5
//  111       ctl.motto.out = -1000;
        LDR.N    R0,??DataTable2_14  ;; 0xc47a0000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+140]
//  112   }
//  113   push(4,ctl.motto.aim);
??ctl_sped_5:
        LDR.N    R0,??DataTable2
        LDRH     R1,[R0, #+90]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+4
        BL       `push`
//  114 
//  115 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x46147001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x46147000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0xc6147000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     speed_up_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     flag_ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x13881

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     ramp_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     ramp_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0xc2200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     0xc479ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     0xc47a0000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  116 
//  117 
//  118 
//  119 /*
//  120 void ctl_sped() //速度控制，增量式PI控制
//  121 {
//  122   
//  123   if(line.pos < 50 && line.pos > -50)
//  124   {   
//  125     ctl.motto.distance += ctl.motto.sped_cur;
//  126     
//  127     if(ctl.motto.distance >= 3000)
//  128     {
//  129       Straight_Flag = 1;
//  130       
//  131       if(ctl.motto.distance > 20000)
//  132       {
//  133         ctl.motto.distance = 8000;
//  134       }
//  135     }  
//  136     else
//  137     {
//  138       Straight_Flag = 0;  
//  139     }  
//  140   }
//  141   
//  142   else
//  143   {
//  144     Straight_Flag = 0;
//  145     ctl.motto.distance = 0;
//  146   }
//  147   
//  148   
//  149   
//  150   if(Straight_Flag == 1)
//  151     
//  152   {
//  153     ctl.motto.aim = ctl.motto.v * 1.4;
//  154   // BZ_ON;
//  155   }
//  156   
//  157   else
//  158   {
//  159     ctl.motto.aim = ctl.motto.v;
//  160     //BZ_OFF;
//  161   }
//  162   
//  163   
//  164   ctl.motto.error[1] =   ctl.motto.aim  - ctl.motto.sped_cur;
//  165   
//  166   ctl.motto.result[1]  = (ctl.motto.Kp)  * ( ctl.motto.error[1] - ctl.motto.error[0] );
//  167   ctl.motto.result[1] += (ctl.motto.Ki)  *   ctl.motto.error[1];
//  168   
//  169   ctl.motto.error[0] = ctl.motto.error[1];  
//  170   ctl.motto.out += ctl.motto.result[1];
//  171   
//  172     
//  173   push(4,ctl.motto.aim);
//  174 
//  175 }*/
// 
//   1 byte  in section .bss
//   1 byte  in section .data
// 674 bytes in section .text
// 
// 674 bytes of CODE memory
//   2 bytes of DATA memory
//
//Errors: none
//Warnings: 1
