///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:17
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\CTL\motto.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\CTL\motto.c" -D LPLD_K60 -lCN
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
//        1.9\iar\FLASH\List\motto.s
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
        EXTERN abs
        EXTERN bz_set
        EXTERN ctl
        EXTERN flag_ramp
        EXTERN line
        EXTERN `push`
        EXTERN ramp_Enable
        EXTERN ramp_cnt

        PUBLIC Straight_Flag
        PUBLIC ctl_sped
        PUBLIC motto_getsped
        PUBLIC motto_set
        PUBLIC speed_down_flag
        PUBLIC speed_up_Enable

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\CTL\motto.c
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
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+160]
        LDR.W    R1,??DataTable2_1  ;; 0x46147001
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_0
//    8   {
//    9     ctl.motto.out = 9500;
        LDR.W    R0,??DataTable2_2  ;; 0x46147000
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+160]
        B.N      ??motto_set_1
//   10   }
//   11   else if ( ctl.motto.out < -9500 )
??motto_set_0:
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+160]
        LDR.W    R1,??DataTable2_3  ;; 0xc6147000
        BL       __aeabi_cfcmple
        BCS.N    ??motto_set_1
//   12   {
//   13     ctl.motto.out = -9500;
        LDR.W    R0,??DataTable2_3  ;; 0xc6147000
        LDR.W    R1,??DataTable2
        STR      R0,[R1, #+160]
//   14   }
//   15   
//   16   if ( ctl.motto.out >= 0.000000  )
??motto_set_1:
        LDR.W    R0,??DataTable2
        LDR      R0,[R0, #+160]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_2
//   17   {
//   18     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) ( ctl.motto.out ) );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+160]
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
        LDR      R0,[R0, #+160]
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
        LDR      R0,[R0, #+160]
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
        LDR      R0,[R0, #+160]
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
        STRH     R0,[R1, #+100]
//   38   
//   39   LPLD_FTM_ClearCounter(FTM2);
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_ClearCounter
//   40   push(5,ctl.motto.sped_cur);  
        LDR.N    R0,??DataTable2
        LDRH     R1,[R0, #+100]
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

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   48 boolean speed_down_flag;
speed_down_flag:
        DS8 1
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void ctl_sped() //速度控制，增量式PI控制
//   51 {
ctl_sped:
        PUSH     {R7,LR}
//   52   
//   53   if(1 == speed_up_Enable)
        LDR.N    R0,??DataTable2_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_0
//   54   {
//   55     if(line.pos < 52 && line.pos > -52)
        LDR.N    R0,??DataTable2_7
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+52
        BGE.N    ??ctl_sped_1
        LDR.N    R0,??DataTable2_7
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+51
        BLT.N    ??ctl_sped_1
//   56     {
//   57       ctl.motto.distance += ctl.motto.sped_cur;
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+180]
        LDR.N    R1,??DataTable2
        LDRH     R1,[R1, #+100]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+180]
//   58       
//   59       if(ctl.motto.distance >= 5000)
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+180]
        MOVW     R1,#+5000
        CMP      R0,R1
        BLT.N    ??ctl_sped_2
//   60       {
//   61         ctl.motto.v_error = 150;
        MOVS     R0,#+150
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+106]
//   62         
//   63         speed_down_flag = 1;//减速标志
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
//   64         if(ctl.motto.distance > 20000)
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+180]
        MOVW     R1,#+20001
        CMP      R0,R1
        BLT.N    ??ctl_sped_3
//   65         {
//   66           ctl.motto.distance = 8000;
        MOV      R0,#+8000
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+180]
        B.N      ??ctl_sped_3
//   67         }
//   68       }
//   69       else
//   70       {
//   71         Straight_Flag = 0;  
??ctl_sped_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_9
        STRB     R0,[R1, #+0]
        B.N      ??ctl_sped_3
//   72       }
//   73     }
//   74     
//   75     else if(1 == speed_down_flag && abs(line.pos) < 62 )
??ctl_sped_1:
        LDR.N    R0,??DataTable2_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_4
        LDR.N    R0,??DataTable2_7
        LDRSH    R0,[R0, #+10]
        BL       __aeabi_i2f
        BL       abs
        CMP      R0,#+62
        BGE.N    ??ctl_sped_4
//   76     {
//   77         ctl.motto.v_error = 150 - (abs(line.pos) - 52) * 15;
        LDR.N    R0,??DataTable2_7
        LDRSH    R0,[R0, #+10]
        BL       __aeabi_i2f
        BL       abs
        SUBS     R0,R0,#+52
        MOVS     R1,#+15
        MULS     R0,R1,R0
        RSBS     R0,R0,#+150
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+106]
        B.N      ??ctl_sped_3
//   78     }
//   79     else
//   80     {
//   81       ctl.motto.v_error = 0;
??ctl_sped_4:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+106]
//   82       ctl.motto.distance = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+180]
//   83       speed_down_flag = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_8
        STRB     R0,[R1, #+0]
        B.N      ??ctl_sped_3
//   84     }
//   85   }
//   86   
//   87   else
//   88   {
//   89     ctl.motto.v_error = 0;
??ctl_sped_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+106]
//   90   }
//   91   ctl.motto.aim = ctl.motto.v + ctl.motto.v_error;
??ctl_sped_3:
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+104]
        LDR.N    R1,??DataTable2
        LDRH     R1,[R1, #+106]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+102]
//   92   
//   93   
//   94   if(1 == flag_ramp)     //坡道未正常关闭，则一定距离后关闭
        LDR.N    R0,??DataTable2_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_5
//   95   {
//   96     ctl.motto.ramp += ctl.motto.sped_cur;
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+184]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+100]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+184]
//   97     ctl.motto.aim = ctl.motto.v;
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+104]
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+102]
//   98     
//   99     if(ctl.motto.ramp > 80000)    //计距离强制置0
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+184]
        LDR.N    R1,??DataTable2_11  ;; 0x13881
        CMP      R0,R1
        BLT.N    ??ctl_sped_6
//  100     {
//  101       flag_ramp = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_10
        STRB     R0,[R1, #+0]
//  102       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable2_12  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  103       ctl.motto.ramp = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+184]
//  104       ramp_Enable = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_13
        STRB     R0,[R1, #+0]
//  105       bz_set(warn);
        MOVS     R0,#+2
        BL       bz_set
//  106       ramp_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_14
        STRB     R0,[R1, #+0]
        B.N      ??ctl_sped_6
//  107     }
//  108   }
//  109   else if(ramp_Enable == 0)        //隔大约2m检测下一个坡道
??ctl_sped_5:
        LDR.N    R0,??DataTable2_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ctl_sped_6
//  110   {
//  111     
//  112     ctl.motto.ramp += ctl.motto.sped_cur;
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+184]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+100]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+184]
//  113     if(1 == speed_up_Enable)
        LDR.N    R0,??DataTable2_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_7
//  114     {
//  115       if(ctl.motto.ramp < 9000)
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+184]
        MOVW     R1,#+9000
        CMP      R0,R1
        BGE.N    ??ctl_sped_7
//  116         ctl.motto.aim = ctl.motto.v + (ctl.motto.ramp / 60);
        LDR.N    R0,??DataTable2
        LDRH     R0,[R0, #+104]
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+184]
        MOVS     R2,#+60
        SDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+102]
//  117     }
//  118     
//  119     if(ctl.motto.ramp > 80000)
??ctl_sped_7:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+184]
        LDR.N    R1,??DataTable2_11  ;; 0x13881
        CMP      R0,R1
        BLT.N    ??ctl_sped_6
//  120     {
//  121       ctl.motto.ramp = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+184]
//  122       ramp_Enable = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_13
        STRB     R0,[R1, #+0]
//  123     }
//  124   }
//  125   
//  126   //  push(11,ctl.motto.ramp/10);
//  127   
//  128   
//  129   
//  130   ctl.motto.error[1] =   ctl.motto.aim  - ctl.motto.sped_cur;
??ctl_sped_6:
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+102]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+100]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+168]
//  131   //  if(abs(ctl.motto.error[1]) > 50)
//  132   //  {
//  133   //    if(ctl.motto.error[1] > 50)
//  134   //      ctl.motto.out = ;
//  135   //  }
//  136   
//  137   ctl.motto.result[0]  = ctl.motto.Kp  * ( ctl.motto.error[1] - ctl.motto.error[0] );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+168]
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+164]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+108]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+152]
//  138   ctl.motto.result[1] = ctl.motto.Ki  *   ctl.motto.error[1];
        LDR.N    R0,??DataTable2
        LDR      R1,[R0, #+112]
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+168]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+156]
//  139   
//  140   ctl.motto.error[0] = ctl.motto.error[1];  
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+168]
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+164]
//  141   ctl.motto.out += ctl.motto.result[0] + ctl.motto.result[1];
        LDR.N    R0,??DataTable2
        LDR      R1,[R0, #+152]
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+156]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+160]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+160]
//  142   
//  143   
//  144   
//  145   if(1 == ramp_cnt)
        LDR.N    R0,??DataTable2_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ctl_sped_8
//  146   {
//  147     if(ctl.motto.error[1] < -40)
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+168]
        LDR.N    R1,??DataTable2_15  ;; 0xc2200000
        BL       __aeabi_cfcmple
        BCS.N    ??ctl_sped_8
//  148       if(ctl.motto.out > -1000)
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+160]
        LDR.N    R1,??DataTable2_16  ;; 0xc479ffff
        BL       __aeabi_cfrcmple
        BHI.N    ??ctl_sped_8
//  149         ctl.motto.out = -1000;
        LDR.N    R0,??DataTable2_17  ;; 0xc47a0000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+160]
//  150   }
//  151   push(4,ctl.motto.aim);
??ctl_sped_8:
        LDR.N    R0,??DataTable2
        LDRH     R1,[R0, #+102]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+4
        BL       `push`
//  152   push(11,ctl.motto.result[0]);
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+152]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+11
        BL       `push`
//  153   push(12,ctl.motto.result[1]);
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+156]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+12
        BL       `push`
//  154 }
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
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     speed_down_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     Straight_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     flag_ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x13881

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     ramp_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     ramp_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     0xc2200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     0xc479ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
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
// 
//   2 bytes in section .bss
//   1 byte  in section .data
// 932 bytes in section .text
// 
// 932 bytes of CODE memory
//   3 bytes of DATA memory
//
//Errors: none
//Warnings: 3
