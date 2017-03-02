///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  16:39:16
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\motto.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\motto.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\sensor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\motto.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_ClearCounter
        EXTERN LPLD_FTM_GetCounter
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_f2iz
        EXTERN __aeabi_f2uiz
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN ctl
        EXTERN `push`

        PUBLIC Straight_Flag
        PUBLIC ctl_sped
        PUBLIC motto_getsped
        PUBLIC motto_set

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\CTL\motto.c
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
//    7   if ( ctl.motto.out > 7000 )
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+96]
        LDR.N    R1,??DataTable2_1  ;; 0x45dac001
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_0
//    8   {
//    9     ctl.motto.out = 7000;
        LDR.N    R0,??DataTable2_2  ;; 0x45dac000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+96]
        B.N      ??motto_set_1
//   10   }
//   11   else if ( ctl.motto.out < -7000 )
??motto_set_0:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+96]
        LDR.N    R1,??DataTable2_3  ;; 0xc5dac000
        BL       __aeabi_cfcmple
        BCS.N    ??motto_set_1
//   12   {
//   13     ctl.motto.out = -7000;
        LDR.N    R0,??DataTable2_3  ;; 0xc5dac000
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+96]
//   14   }
//   15 
//   16   if ( ctl.motto.out >= 0.000000  )
??motto_set_1:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+96]
        MOVS     R1,#+0
        BL       __aeabi_cfrcmple
        BHI.N    ??motto_set_2
//   17   {
//   18     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, (uint32) ( ctl.motto.out ) );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+96]
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
        LDR      R0,[R0, #+96]
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
        LDR      R0,[R0, #+96]
        EORS     R0,R0,#0x80000000
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   25   }
//   26   
//   27   push(14,ctl.motto.out);
??motto_set_3:
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+96]
        BL       __aeabi_f2iz
        MOVS     R1,R0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+14
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
//   37   ctl.motto.sped_cur =  LPLD_FTM_GetCounter(FTM2)  ;//赋值需要不可以连等
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_GetCounter
        LDR.N    R1,??DataTable2
        STRH     R0,[R1, #+56]
//   38   
//   39   LPLD_FTM_ClearCounter(FTM2);
        LDR.N    R0,??DataTable2_5  ;; 0x400b8000
        BL       LPLD_FTM_ClearCounter
//   40   
//   41 }
        POP      {R0,PC}          ;; return
//   42 
//   43 
//   44 
//   45 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   46 int8 Straight_Flag=0;
Straight_Flag:
        DS8 1
//   47 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 void ctl_sped() //速度控制，增量式PI控制
//   49 {
ctl_sped:
        PUSH     {R7,LR}
//   50 //  if(line.pos > 60 || line.pos < -60)
//   51 //  {   
//   52 //    ctl.motto.distance += ctl.motto.sped_cur;
//   53 //    
//   54 //    if(ctl.motto.distance >= 5000)
//   55 //    {
//   56 //      Straight_Flag = 1;
//   57 //    }  
//   58 //    else
//   59 //    {
//   60 //      Straight_Flag =0;  
//   61 //    }  
//   62 //  }
//   63 //  else
//   64 //  {
//   65 //    Straight_Flag = 0;
//   66 //    ctl.motto.distance = 0;
//   67 //  }
//   68 //  if(Straight_Flag == 1)
//   69 //  {
//   70 //    ctl.motto.error[1] =   ctl.motto.aim * 1.15 - ctl.motto.sped_cur;
//   71 //    
//   72 //  }
//   73 //  else
//   74 //  {
//   75     ctl.motto.error[1] =   ctl.motto.aim  - ctl.motto.sped_cur;
        LDR.N    R0,??DataTable2
        LDRSH    R0,[R0, #+58]
        LDR.N    R1,??DataTable2
        LDRSH    R1,[R1, #+56]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+104]
//   76  // }
//   77   ctl.motto.result[1]  = (-ctl.motto.Kp)  * ( ctl.motto.error[1] - ctl.motto.error[0] );
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+104]
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+100]
        BL       __aeabi_fsub
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+60]
        EORS     R1,R1,#0x80000000
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+92]
//   78   ctl.motto.result[1] += (-ctl.motto.Ki)  *   ctl.motto.error[1];
        LDR.N    R0,??DataTable2
        LDR      R1,[R0, #+64]
        EORS     R1,R1,#0x80000000
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+104]
        BL       __aeabi_fmul
        LDR.N    R1,??DataTable2
        LDR      R1,[R1, #+92]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+92]
//   79   
//   80   ctl.motto.error[0] = ctl.motto.error[1];  
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+104]
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+100]
//   81   ctl.motto.out += ctl.motto.result[1];
        LDR.N    R0,??DataTable2
        LDR      R1,[R0, #+96]
        LDR.N    R0,??DataTable2
        LDR      R0,[R0, #+92]
        BL       __aeabi_fadd
        LDR.N    R1,??DataTable2
        STR      R0,[R1, #+96]
//   82   
//   83   
//   84   push(4,ctl.motto.aim);
        LDR.N    R0,??DataTable2
        LDRH     R1,[R0, #+58]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+4
        BL       `push`
//   85   push(5,ctl.motto.sped_cur);
        LDR.N    R0,??DataTable2
        LDRH     R1,[R0, #+56]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+5
        BL       `push`
//   86 }
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
        DC32     0x45dac001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x45dac000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0xc5dac000

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

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   87 
//   88 
//   89 
// 
//   1 byte  in section .bss
// 320 bytes in section .text
// 
// 320 bytes of CODE memory
//   1 byte  of DATA memory
//
//Errors: none
//Warnings: 1
