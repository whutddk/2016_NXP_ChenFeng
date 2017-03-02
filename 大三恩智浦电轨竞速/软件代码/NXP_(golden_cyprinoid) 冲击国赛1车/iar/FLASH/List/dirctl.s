///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\CTL\dirctl.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\CTL\dirctl.c" -D LPLD_K60 -lCN
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
//        1.9\iar\FLASH\List\dirctl.s
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

        PUBLIC S3010_CTL
        PUBLIC abs

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\CTL\dirctl.c
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
        PUSH     {R4-R6,R8,R9,LR}
//    9   int i;
//   10   if(ctl.motto.v > 375 && 1 == flag_bihuan)
        LDR.N    R0,??DataTable0
        LDRSH    R0,[R0, #+104]
        CMP      R0,#+376
        BLT.N    ??S3010_CTL_0
        LDR.N    R0,??DataTable0_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??S3010_CTL_0
//   11   {
//   12     if(line.pos > 140 || line.pos < -140)     //大偏差
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+141
        BGE.N    ??S3010_CTL_1
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+140
        BGE.N    ??S3010_CTL_2
//   13     {
//   14       ctl.S3010.Kp = ctl.S3010.Kp_B;
??S3010_CTL_1:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+32]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   15       ctl.S3010.Kd = ctl.S3010.Kd_B;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+48]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
        B.N      ??S3010_CTL_3
//   16     }
//   17     else if(line.pos > 85 || line.pos < -85)     //大偏差
??S3010_CTL_2:
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+86
        BGE.N    ??S3010_CTL_4
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+85
        BGE.N    ??S3010_CTL_5
//   18     {
//   19       ctl.S3010.Kp = ctl.S3010.Kp_M2;
??S3010_CTL_4:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   20       ctl.S3010.Kd = ctl.S3010.Kp_M2;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+28]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
        B.N      ??S3010_CTL_3
//   21     }
//   22     else if(line.pos > 35 || line.pos < -35)  //中偏差
??S3010_CTL_5:
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+36
        BGE.N    ??S3010_CTL_6
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+35
        BGE.N    ??S3010_CTL_7
//   23     {
//   24       ctl.S3010.Kp = ctl.S3010.Kp_M1;
??S3010_CTL_6:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+24]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   25       ctl.S3010.Kd = ctl.S3010.Kd_M1;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+40]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
        B.N      ??S3010_CTL_3
//   26     }
//   27     else                                       //小偏差
//   28     {
//   29       ctl.S3010.Kp = ctl.S3010.Kp_S;
??S3010_CTL_7:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   30       ctl.S3010.Kd = ctl.S3010.Kd_S;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+36]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
        B.N      ??S3010_CTL_3
//   31     }
//   32     
//   33   }
//   34   
//   35   else
//   36   {
//   37     ctl.S3010.Kp = ctl.S3010.Kp_S;
??S3010_CTL_0:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+20]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+8]
//   38     ctl.S3010.Kd = ctl.S3010.Kd_S;
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+36]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+16]
//   39   }
//   40   
//   41   
//   42   
//   43   ctl.S3010.error[0] = line.pos ;
??S3010_CTL_3:
        LDR.N    R0,??DataTable0_2
        LDRSH    R0,[R0, #+10]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+64]
//   44   
//   45   ctl.S3010.result[0] = ctl.S3010.Kp * ctl.S3010.error[0];
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+8]
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+64]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+52]
//   46   
//   47   
//   48   
//   49   ctl.S3010.KD[0] = ctl.S3010.error[0] - ctl.S3010.error[1];
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable0
        LDR      R1,[R1, #+68]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+88]
//   50   
//   51   for(i=0;i<3;i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??S3010_CTL_8:
        CMP      R6,#+3
        BGE.N    ??S3010_CTL_9
//   52   {
//   53     ctl.S3010.KD[i] = ctl.S3010.error[i] - ctl.S3010.error[i+1];
        LDR.N    R0,??DataTable0
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable0
        ADDS     R1,R1,R6, LSL #+2
        LDR      R1,[R1, #+68]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable0
        ADDS     R1,R1,R6, LSL #+2
        STR      R0,[R1, #+88]
//   54     
//   55     if(ctl.S3010.KD[i] > 20)
        LDR.N    R0,??DataTable0
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+88]
        LDR.N    R1,??DataTable0_3  ;; 0x41a00001
        BL       __aeabi_cfrcmple
        BHI.N    ??S3010_CTL_10
//   56     {
//   57       ctl.S3010.KD[i] = 20;
        LDR.N    R0,??DataTable0_4  ;; 0x41a00000
        LDR.N    R1,??DataTable0
        ADDS     R1,R1,R6, LSL #+2
        STR      R0,[R1, #+88]
        B.N      ??S3010_CTL_11
//   58     }
//   59     else if(ctl.S3010.KD[i] < -20)
??S3010_CTL_10:
        LDR.N    R0,??DataTable0
        ADDS     R0,R0,R6, LSL #+2
        LDR      R0,[R0, #+88]
        LDR.N    R1,??DataTable0_5  ;; 0xc1a00000
        BL       __aeabi_cfcmple
        BCS.N    ??S3010_CTL_11
//   60     {
//   61       ctl.S3010.KD[i] = -20;
        LDR.N    R0,??DataTable0_5  ;; 0xc1a00000
        LDR.N    R1,??DataTable0
        ADDS     R1,R1,R6, LSL #+2
        STR      R0,[R1, #+88]
//   62     }
//   63   }
??S3010_CTL_11:
        ADDS     R6,R6,#+1
        B.N      ??S3010_CTL_8
//   64 
//   65   ctl.S3010.result[1] = ctl.S3010.Kd * (0.6*(float)(ctl.S3010.KD[0])+0.2*(float)(ctl.S3010.KD[0])+0.2*(float)(ctl.S3010.KD[0]));
??S3010_CTL_9:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+16]
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+88]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable0_6  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+88]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable0_7  ;; 0x9999999a
        LDR.N    R3,??DataTable0_8  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+88]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable0_7  ;; 0x9999999a
        LDR.N    R3,??DataTable0_8  ;; 0x3fc99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+56]
//   66   ctl.S3010.result[0] += ctl.S3010.result[1];
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+52]
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+56]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+52]
//   67   
//   68   
//   69   ctl.S3010.error[3]= ctl.S3010.error[2];
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+72]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+76]
//   70   ctl.S3010.error[2]= ctl.S3010.error[1];
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+68]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+72]
//   71   ctl.S3010.error[1]= ctl.S3010.error[0];
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+64]
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+68]
//   72   
//   73   
//   74   ctl.S3010.out = ctl.S3010.result[0] + 750;
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+52]
        LDR.N    R0,??DataTable0_9  ;; 0x443b8000
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+60]
//   75   if ( ctl.S3010.out > 839 )
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable0_10  ;; 0x4451c001
        BL       __aeabi_cfrcmple
        BHI.N    ??S3010_CTL_12
//   76   {
//   77     ctl.S3010.out = 839;
        LDR.N    R0,??DataTable0_11  ;; 0x4451c000
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+60]
//   78   }
//   79   if ( ctl.S3010.out < 661)
??S3010_CTL_12:
        LDR.N    R0,??DataTable0
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable0_12  ;; 0x44254000
        BL       __aeabi_cfcmple
        BCS.N    ??S3010_CTL_13
//   80   {
//   81     ctl.S3010.out = 661;
        LDR.N    R0,??DataTable0_12  ;; 0x44254000
        LDR.N    R1,??DataTable0
        STR      R0,[R1, #+60]
//   82   }
//   83   
//   84   
//   85   //最后控制结果的输出
//   86   push(7,(ctl.S3010.out - 750 ));
??S3010_CTL_13:
        LDR.N    R0,??DataTable0
        LDR      R1,[R0, #+60]
        LDR.N    R0,??DataTable0_13  ;; 0xc43b8000
        BL       __aeabi_fadd
        BL       __aeabi_f2iz
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+7
        BL       `push`
//   87 //  push(12,ctl.S3010.result[1]);
//   88   
//   89 }
        POP      {R4-R6,R8,R9,PC}  ;; return

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
        DC32     0x41a00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     0xc1a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     0x3fe33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_7:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_8:
        DC32     0x3fc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_9:
        DC32     0x443b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_10:
        DC32     0x4451c001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_11:
        DC32     0x4451c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_12:
        DC32     0x44254000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_13:
        DC32     0xc43b8000
//   90 
//   91 
//   92 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   93 int16 abs(float A)
//   94 
//   95 {
abs:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   96   int16 B;
//   97   if(A >= 0)
        MOVS     R0,R4
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??abs_0
//   98     B = A;
        MOVS     R0,R4
        BL       __aeabi_f2iz
        MOVS     R5,R0
        B.N      ??abs_1
//   99   else
//  100     B = -A;
??abs_0:
        MOVS     R0,R4
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2iz
        MOVS     R5,R0
//  101   
//  102   return B;
??abs_1:
        MOVS     R0,R5
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//  103 }

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
// 636 bytes in section .text
// 
// 636 bytes of CODE memory
//
//Errors: none
//Warnings: 3
