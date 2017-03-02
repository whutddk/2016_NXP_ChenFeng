///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:43
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\CTL\dirctl.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\CTL\dirctl.c" -D LPLD_K60 -lCN
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
//        冲击华南赛 1车\iar\FLASH\List\dirctl.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN ctl
        EXTERN flag_bihuan
        EXTERN line
        EXTERN `push`
        EXTERN speed_up_Enable

        PUBLIC S3010_CTL
        PUBLIC abs

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\CTL\dirctl.c
//    1 //舵机位置控制
//    2 #include "include.h"
//    3 
//    4 //方向控制
//    5 
//    6 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    7 void S3010_CTL()
//    8 {
S3010_CTL:
        PUSH     {R3-R9,LR}
//    9   
//   10   if(ctl.motto.v > 375 && 1 == flag_bihuan)
        LDR.N    R0,??DataTable0
        LDRSH    R0,[R0, #+92]
        CMP      R0,#+376
        BLT.N    ??S3010_CTL_0
        LDR.N    R0,??DataTable0_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??S3010_CTL_0
//   11   {
//   12     //155
//   13     if(line.pos > 110 || line.pos < -110)     //大偏差
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+111
        BGE.N    ??S3010_CTL_1
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+110
        BGE.N    ??S3010_CTL_2
//   14     {
//   15       ctl.S3010.Kp = ctl.S3010.Kp_B;
??S3010_CTL_1:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   16       ctl.S3010.Kd = ctl.S3010.Kd_B;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+40]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
//   17       
//   18       ctl.motto.KP = ctl.motto.Kp_B;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+116]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+168]
//   19       ctl.motto.KD = ctl.motto.Kd_B;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+128]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+172]
        B.N      ??S3010_CTL_3
//   20 
//   21     }
//   22     else if(line.pos > 35 || line.pos < -35)  //中偏差
??S3010_CTL_2:
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+36
        BGE.N    ??S3010_CTL_4
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+35
        BGE.N    ??S3010_CTL_5
//   23     {
//   24       ctl.S3010.Kp = ctl.S3010.Kp_M;
??S3010_CTL_4:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   25       ctl.S3010.Kd = ctl.S3010.Kd_M;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+36]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
//   26       
//   27       ctl.motto.KP = ctl.motto.Kp_B;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+116]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+168]
//   28       ctl.motto.KD = ctl.motto.Kd_B;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+128]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+172]
        B.N      ??S3010_CTL_3
//   29 
//   30     }
//   31     else                                       //小偏差
//   32     {
//   33       ctl.S3010.Kp = ctl.S3010.Kp_S;
??S3010_CTL_5:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   34       ctl.S3010.Kd = ctl.S3010.Kd_S;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+32]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
//   35       
//   36       
//   37       ctl.motto.KP = ctl.motto.Kp_S;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+108]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+168]
//   38       ctl.motto.KD = ctl.motto.Kd_S;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+120]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+172]
        B.N      ??S3010_CTL_3
//   39     }
//   40     
//   41   }
//   42   
//   43   else
//   44   {
//   45     ctl.S3010.Kp = ctl.S3010.Kp_S;
??S3010_CTL_0:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   46     ctl.S3010.Kd = ctl.S3010.Kd_S;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+32]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
//   47   }
//   48   
//   49   ctl.S3010.error[0] = line.pos ;
??S3010_CTL_3:
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+56]
//   50   
//   51   ctl.S3010.result[0] = ctl.S3010.Kp * ctl.S3010.error[0];
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+8]
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+56]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+44]
//   52   
//   53   ctl.S3010.result[0] += ctl.S3010.Kd * (0.6*(float)(ctl.S3010.error[0]-ctl.S3010.error[1])+0.2*(float)(ctl.S3010.error[1]-ctl.S3010.error[2])+0.2*(float)(ctl.S3010.error[2]-ctl.S3010.error[3]));
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+44]
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+16]
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+56]
        LDR.N    R1,??DataTable0
        LDR      R1,[R1, #+60]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable0_3  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable0
        LDR      R1,[R1, #+64]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable0_4  ;; 0x9999999a
        LDR.N    R3,??DataTable0_5  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable0
        LDR      R1,[R1, #+68]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable0_4  ;; 0x9999999a
        LDR.N    R3,??DataTable0_5  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+44]
//   54   
//   55   if(1 == speed_up_Enable)
        LDR.N    R0,??DataTable0_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??S3010_CTL_6
//   56   {
//   57     ctl.motto.v_error = abs(ctl.motto.KP * ctl.S3010.error[0]);
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+168]
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+56]
        BL       __aeabi_fmul
        BL       abs
        LDR.N    R1,??DataTable0
        STRH     R0,[R1, #+94]
//   58     ctl.motto.v_error += abs(ctl.motto.KD * (0.6*(float)(ctl.S3010.error[0]-ctl.S3010.error[1])+0.2*(float)(ctl.S3010.error[1]-ctl.S3010.error[2])+0.2*(float)(ctl.S3010.error[2]-ctl.S3010.error[3])));
        LDR.N    R0,??DataTable0
        LDRH     R8,[R0, #+94]
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+172]
        BL       __aeabi_f2d
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+56]
        LDR.N    R1,??DataTable0
        LDR      R1,[R1, #+60]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable0_3  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable0
        LDR      R1,[R1, #+64]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable0_4  ;; 0x9999999a
        LDR.N    R3,??DataTable0_5  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable0
        LDR      R1,[R1, #+68]
        BL       __aeabi_fsub
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable0_4  ;; 0x9999999a
        LDR.N    R3,??DataTable0_5  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        BL       abs
        ADDS     R0,R0,R8
        LDR.N    R1,??DataTable0
        STRH     R0,[R1, #+94]
//   59   }
//   60   
//   61   
//   62   ctl.S3010.error[3]= ctl.S3010.error[2];
??S3010_CTL_6:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+68]
//   63   ctl.S3010.error[2]= ctl.S3010.error[1];
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+64]
//   64   ctl.S3010.error[1]= ctl.S3010.error[0];
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+56]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+60]
//   65   
//   66   
//   67   ctl.S3010.out = ctl.S3010.result[0] + 753;
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+44]
        LDR.N    R0,??DataTable0_7  ;; 0x443c4000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+52]
//   68   if ( ctl.S3010.out > 842 )
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+52]
        LDR.N    R1,??DataTable0_8  ;; 0x44528001
        BL       __aeabi_cfrcmple
        BHI.N    ??S3010_CTL_7
//   69   {
//   70     ctl.S3010.out = 842;
        LDR.N    R0,??DataTable0_9  ;; 0x44528000
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+52]
//   71   }
//   72   if ( ctl.S3010.out < 664)
??S3010_CTL_7:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+52]
        LDR.N    R1,??DataTable0_10  ;; 0x44260000
        BL       __aeabi_cfcmple
        BCS.N    ??S3010_CTL_8
//   73   {
//   74     ctl.S3010.out = 664;
        LDR.N    R0,??DataTable0_10  ;; 0x44260000
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+52]
//   75   }
//   76   
//   77   
//   78   //最后控制结果的输出
//   79   push(7,(ctl.S3010.out - 753 ));
??S3010_CTL_8:
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+52]
        LDR.N    R0,??DataTable0_11  ;; 0xc43c4000
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+7
        BL       `push`
//   80 //  push(16,ctl.motto.v_error);
//   81 
//   82   
//   83 }
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     flag_bihuan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     0x3fe33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     speed_up_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_7:
        DC32     0x443c4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_8:
        DC32     0x44528001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_9:
        DC32     0x44528000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_10:
        DC32     0x44260000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_11:
        DC32     0xc43c4000
//   84 
//   85 
//   86 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   87 int16 abs(float A)
//   88 
//   89 {
abs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   90   int16 B;
//   91   if(A >= 0)
        MOVS     R0,R4
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??abs_0
//   92     B = A;
        MOVS     R0,R4
        BL       __aeabi_f2iz
        MOVS     R5,R0
        B.N      ??abs_1
//   93   else
//   94     B = -A;
??abs_0:
        MOVS     R0,R4
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2iz
        MOVS     R5,R0
//   95   
//   96   return B;
??abs_1:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//   97 }

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
// 746 bytes in section .text
// 
// 746 bytes of CODE memory
//
//Errors: none
//Warnings: 3
