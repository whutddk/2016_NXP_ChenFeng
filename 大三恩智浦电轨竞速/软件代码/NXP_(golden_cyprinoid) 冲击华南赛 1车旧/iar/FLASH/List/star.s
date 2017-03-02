///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:58
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\ITAC\star.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\ITAC\star.c" -D LPLD_K60 -lCN
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
//        冲击华南赛 1车\iar\FLASH\List\star.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AIM_Buff
        EXTERN Dir_Buff
        EXTERN GUI
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_i2f
        EXTERN bz_set
        EXTERN ctl
        EXTERN debug_Enable
        EXTERN flag_bihuan
        EXTERN flag_stop
        EXTERN kaihuan_Buff
        EXTERN timer_debug

        PUBLIC star

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\ITAC\star.c
//    1 #include "include.h"
//    2 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    3 void star()
//    4 {
star:
        PUSH     {R7,LR}
//    5   if(1 == flag_bihuan)     //闭环参数
        LDR.N    R0,??star_0
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??star_1
//    6   {
//    7     if(GUI.para.AI > 0 && GUI.para.AI < 3)
        LDR.N    R0,??star_0+0x4
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??star_2
        LDR.N    R0,??star_0+0x4
        LDRB     R0,[R0, #+4]
        CMP      R0,#+3
        BGE.N    ??star_2
//    8     {
//    9       ctl.motto.v = AIM_Buff[GUI.para.AI-1];
        LDR.N    R0,??star_0+0x8
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        ADDS     R0,R0,R1, LSL #+1
        LDRH     R0,[R0, #-2]
        LDR.N    R1,??star_0+0xC
        STRH     R0,[R1, #+92]
//   10       ctl.S3010.Kp_S = Dir_Buff[GUI.para.AI*2-2];
        LDR.N    R0,??star_0+0x10
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+20]
//   11       ctl.S3010.Kd_S = Dir_Buff[GUI.para.AI*2-1];
        LDR.N    R0,??star_0+0x10
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-4]
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+32]
        B.N      ??star_3
//   12       
//   13     }
//   14     else if(GUI.para.AI >= 3)       //高速转向参数分段
??star_2:
        LDR.N    R0,??star_0+0x4
        LDRB     R0,[R0, #+4]
        CMP      R0,#+3
        BLT.W    ??star_3
//   15     {
//   16       ctl.motto.v = AIM_Buff[GUI.para.AI-1];
        LDR.N    R0,??star_0+0x8
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        ADDS     R0,R0,R1, LSL #+1
        LDRH     R0,[R0, #-2]
        LDR.N    R1,??star_0+0xC
        STRH     R0,[R1, #+92]
//   17       ctl.S3010.Kp_S = Dir_Buff[GUI.para.AI*6-14];
        LDR.N    R0,??star_0+0x10
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-56]
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+20]
//   18       ctl.S3010.Kd_S = Dir_Buff[GUI.para.AI*6-13];
        LDR.N    R0,??star_0+0x10
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-52]
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+32]
//   19       
//   20       ctl.S3010.Kp_M = Dir_Buff[GUI.para.AI*6-12];
        LDR.N    R0,??star_0+0x10
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-48]
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+24]
//   21       ctl.S3010.Kd_M = Dir_Buff[GUI.para.AI*6-11];
        LDR.N    R0,??star_0+0x10
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-44]
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+36]
//   22       
//   23       ctl.S3010.Kp_B = Dir_Buff[GUI.para.AI*6-10];
        LDR.N    R0,??star_0+0x10
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-40]
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+28]
//   24       ctl.S3010.Kd_B = Dir_Buff[GUI.para.AI*6-9];
        LDR.N    R0,??star_0+0x10
        LDR.N    R1,??star_0+0x4
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-36]
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+40]
        B.N      ??star_3
//   25       
//   26     }
//   27     
//   28     else  // AI = 0
//   29     {
//   30       
//   31     }
//   32   }
//   33   
//   34   else                      //开环参数
//   35   {
//   36     switch(GUI.para.AI)
??star_1:
        LDR.N    R0,??star_0+0x4
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BEQ.N    ??star_4
        BCC.N    ??star_3
        CMP      R0,#+3
        BEQ.N    ??star_5
        BCC.N    ??star_6
        B.N      ??star_3
//   37     {
//   38       case(1):
//   39         ctl.motto.out = kaihuan_Buff[0];
??star_4:
        LDR.N    R0,??star_0+0x14
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+140]
//   40         ctl.S3010.Kp_S = 0.39;
        LDR.N    R0,??star_0+0x18  ;; 0x3ec7ae14
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+20]
//   41         ctl.S3010.Kd_S = 0.5;
        MOVS     R0,#+1056964608
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+32]
//   42         break;
        B.N      ??star_3
//   43         
//   44         case(2):
//   45           ctl.motto.out = kaihuan_Buff[1];
??star_6:
        LDR.N    R0,??star_0+0x14
        LDRSH    R0,[R0, #+2]
        BL       __aeabi_i2f
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+140]
//   46           ctl.S3010.Kp_S = 0.4;
        LDR.N    R0,??star_0+0x1C  ;; 0x3ecccccd
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+20]
//   47           ctl.S3010.Kd_S = 1.2;
        LDR.N    R0,??star_0+0x20  ;; 0x3f99999a
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+32]
//   48           break;
        B.N      ??star_3
//   49           
//   50           case(3):
//   51             ctl.motto.out = kaihuan_Buff[2];
??star_5:
        LDR.N    R0,??star_0+0x14
        LDRSH    R0,[R0, #+4]
        BL       __aeabi_i2f
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+140]
//   52             ctl.S3010.Kp_S = 0.41;
        LDR.N    R0,??star_0+0x24  ;; 0x3ed1eb85
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+20]
//   53             ctl.S3010.Kd_S = 1.5;
        MOVS     R0,#+1069547520
        LDR.N    R1,??star_0+0xC
        STR      R0,[R1, #+32]
//   54             break;
//   55             
//   56             
//   57     default: ;
//   58     }
//   59   }
//   60   
//   61   
//   62   LPLD_LPTMR_DelayMs(1500);
??star_3:
        MOVW     R0,#+1500
        BL       LPLD_LPTMR_DelayMs
//   63   bz_set(ready);//初始化完毕，蜂鸣器提示
        MOVS     R0,#+0
        BL       bz_set
//   64   
//   65   if(1 == debug_Enable)
        LDR.N    R0,??star_0+0x28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??star_7
//   66   {
//   67     timer_debug();
        BL       timer_debug
//   68   }
//   69   
//   70   flag_stop = 0;
??star_7:
        MOVS     R0,#+0
        LDR.N    R1,??star_0+0x2C
        STRB     R0,[R1, #+0]
//   71   
//   72 }
        POP      {R0,PC}          ;; return
        DATA
??star_0:
        DC32     flag_bihuan
        DC32     GUI
        DC32     AIM_Buff
        DC32     ctl
        DC32     Dir_Buff
        DC32     kaihuan_Buff
        DC32     0x3ec7ae14
        DC32     0x3ecccccd
        DC32     0x3f99999a
        DC32     0x3ed1eb85
        DC32     debug_Enable
        DC32     flag_stop

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//   73 
//   74 
//   75 /*
//   76 void portc_isr()
//   77 {
//   78   uint16 i,j;
//   79   i = GUI.para.endline_time * 1000;
//   80   
//   81   j = LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin15);
//   82   if( j > 0)
//   83   {
//   84     LPLD_GPIO_ClearIntFlag(PORTD);
//   85   
//   86   if(1 == GUI.para.endline &&  timer_cnt > i)  //一个可调的值
//   87   {
//   88     flag_bihuan = 0;
//   89     ctl.motto.out = 0;
//   90     timer_cnt = 0;
//   91   }
//   92   bz_set(datarec);
//   93   }
//   94 }*/
// 
// 444 bytes in section .text
// 
// 444 bytes of CODE memory
//
//Errors: none
//Warnings: none
