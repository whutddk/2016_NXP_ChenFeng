///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:42
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\CTL\control.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\CTL\control.c" -D LPLD_K60 -lCN
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
//        冲击华南赛 1车\iar\FLASH\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DateAnalyse
        EXTERN GUI
        EXTERN LDC1614_read_meas
        EXTERN LDC_data
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Output_b
        EXTERN S3010_CTL
        EXTERN __aeabi_f2uiz
        EXTERN ctl_sped
        EXTERN flag_stop
        EXTERN line
        EXTERN motto_getsped
        EXTERN motto_set
        EXTERN `push`
        EXTERN ramp
        EXTERN safty_check
        EXTERN sensor

        PUBLIC CTL_SEN_init
        PUBLIC CTL_isr
        PUBLIC cross_Enable
        PUBLIC ctl
        PUBLIC flag_bihuan
        PUBLIC flag_cross
        PUBLIC flag_ramp
        PUBLIC ramp_Enable

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\CTL\control.c
//    1 //控制部分通用代码
//    2 #include "include.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 struct _ctl ctl;
ctl:
        DS8 176
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void CTL_SEN_init()//控制参数初始化
//    7 {
//    8   ctl.S3010.Kp_S = 0.39;
CTL_SEN_init:
        LDR.N    R0,??DataTable1  ;; 0x3ec7ae14
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+20]
//    9   //  ctl.S3010.Kp_B = 0;
//   10   //  
//   11   ctl.S3010.Kd_S = 0.3;
        LDR.N    R0,??DataTable1_2  ;; 0x3e99999a
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+32]
//   12   //  ctl.S3010.Kd_B = 0;
//   13   
//   14   ctl.motto.Kp_B = 0.75;
        MOVS     R0,#+1061158912
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+116]
//   15   ctl.motto.Kd_B = 10;
        LDR.N    R0,??DataTable1_3  ;; 0x41200000
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+128]
//   16   ctl.motto.Kp_S = 0.4;
        LDR.N    R0,??DataTable1_4  ;; 0x3ecccccd
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+108]
//   17   ctl.motto.Kd_S = 1.2;
        LDR.N    R0,??DataTable1_5  ;; 0x3f99999a
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+120]
//   18   
//   19   
//   20   ctl.motto.v_error = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+94]
//   21   
//   22   ctl.motto.v = 675;
        MOVW     R0,#+675
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+92]
//   23   
//   24   ctl.motto.Kp = 2;
        MOVS     R0,#+1073741824
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+96]
//   25   ctl.motto.Ki = 6;
        LDR.N    R0,??DataTable1_6  ;; 0x40c00000
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+100]
//   26   
//   27   ctl.motto.out = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+140]
//   28    
//   29   line.pos = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_7
        STRH     R0,[R1, #+10]
//   30   
//   31   sensor.max[0] = 258;
        MOV      R0,#+258
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+76]
//   32   sensor.max[1] = 253;  
        MOVS     R0,#+253
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+78]
//   33   sensor.max[2] = 252;  
        MOVS     R0,#+252
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+80]
//   34 
//   35   sensor.min[0] = -273;
        MVNS     R0,#+272
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+82]
//   36   sensor.min[1] = -249;  
        MVNS     R0,#+248
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+84]
//   37   sensor.min[2] = -282;
        LDR.N    R0,??DataTable1_9  ;; 0xfffffee6
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+86]
//   38   
//   39   ctl.motto.distance = 5000;
        MOVW     R0,#+5000
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+160]
//   40   GUI.para.endline_time = 15 ;
        MOVS     R0,#+15
        LDR.N    R1,??DataTable1_10
        STRB     R0,[R1, #+3]
//   41   
//   42 }
        BX       LR               ;; return
//   43 
//   44 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   45 boolean flag_bihuan = 1;
flag_bihuan:
        DATA
        DC8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   46 boolean ramp_Enable = 1;
ramp_Enable:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   47 boolean flag_ramp;
flag_ramp:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   48 boolean cross_Enable = 1;
cross_Enable:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   49 boolean flag_cross;
flag_cross:
        DS8 1
//   50 
//   51 
//   52 //控制中断函数

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void CTL_isr()//控制系统调度 //20ms
//   54 {
CTL_isr:
        PUSH     {R7,LR}
//   55   //LPLD_GPIO_Output_b(PTD,1,0);
//   56   static uint8 cnt = 0;
//   57   
//   58   cnt++;
        LDR.N    R0,??DataTable1_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_11
        STRB     R0,[R1, #+0]
//   59   /*LDC_GETDATA*/
//   60   LDC1614_read_meas();
        BL       LDC1614_read_meas
//   61   
//   62   sensor.data[0] = LDC_data[0] - 1550800;
        LDR.N    R0,??DataTable1_12
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_13  ;; 0xffe85630
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+52]
//   63   sensor.data[0] /= 35;
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+52]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+52]
//   64   sensor.data[0] -= sensor.offset[0];
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+52]
        LDR.N    R1,??DataTable1_8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+52]
//   65   
//   66   sensor.data[1] = LDC_data[1] - 1564560;
        LDR.N    R0,??DataTable1_12
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable1_14  ;; 0xffe82070
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+56]
//   67   sensor.data[1] /= 35;
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+56]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+56]
//   68   sensor.data[1] -= sensor.offset[1];
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+56]
        LDR.N    R1,??DataTable1_8
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+56]
//   69   
//   70   sensor.data[3] = sensor.data[1] + 15;   //坡道时使用
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+56]
        ADDS     R0,R0,#+15
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+64]
//   71   if(sensor.data[3] < 1)
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+64]
        CMP      R0,#+1
        BGE.N    ??CTL_isr_0
//   72   {
//   73     sensor.data[3] = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+64]
//   74   }
//   75   
//   76   sensor.data[2] = LDC_data[2] - 1552200;
??CTL_isr_0:
        LDR.N    R0,??DataTable1_12
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable1_15  ;; 0xffe850b8
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+60]
//   77   sensor.data[2] /= 35;
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+60]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+60]
//   78   sensor.data[2] -= sensor.offset[2];
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable1_8
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+60]
//   79   
//   80   if(cross_Enable == 1)     //十字
        LDR.N    R0,??DataTable1_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_1
//   81   {
//   82     if(sensor.data[0] > 35 && sensor.data[1] > 190 && sensor.data[2] > 35)
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+52]
        CMP      R0,#+36
        BLT.N    ??CTL_isr_2
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+56]
        CMP      R0,#+191
        BLT.N    ??CTL_isr_2
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+60]
        CMP      R0,#+36
        BLT.N    ??CTL_isr_2
//   83       flag_cross = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_17
        STRB     R0,[R1, #+0]
        B.N      ??CTL_isr_1
//   84     
//   85     else
//   86     {
//   87       flag_cross = 0;
??CTL_isr_2:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_17
        STRB     R0,[R1, #+0]
//   88     }
//   89   }
//   90   
//   91   
//   92   if(ramp_Enable == 1)
??CTL_isr_1:
        LDR.N    R0,??DataTable1_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_3
//   93   {
//   94     ramp();
        BL       ramp
//   95   }
//   96   
//   97 //  push(13,ramp_cnt);
//   98   push(14,sensor.data[0] );
??CTL_isr_3:
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R0, #+52]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+14
        BL       `push`
//   99   push(15,sensor.data[3] );
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R0, #+64]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+15
        BL       `push`
//  100   push(16,sensor.data[2] );
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R0, #+60]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+16
        BL       `push`
//  101   
//  102   if(1 == flag_ramp)
        LDR.N    R0,??DataTable1_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_4
//  103   {
//  104     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1_20  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  105     
//  106     line.flag_lose = 70; //坡道
        MOVS     R0,#+70
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+2]
//  107     if(sensor.data[3] > 25)
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+64]
        CMP      R0,#+26
        BLT.N    ??CTL_isr_5
//  108     {
//  109       line.pos = 25*(sensor.data[2] - sensor.data[0])/sensor.data[3];
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable1_8
        LDR      R1,[R1, #+52]
        SUBS     R0,R0,R1
        MOVS     R1,#+25
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable1_8
        LDR      R1,[R1, #+64]
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_7
        STRH     R0,[R1, #+10]
        B.N      ??CTL_isr_5
//  110     }
//  111     else
//  112     {
//  113       
//  114     }
//  115   }
//  116   else
//  117   {
//  118     DateAnalyse();
??CTL_isr_4:
        BL       DateAnalyse
//  119   }
//  120   
//  121   
//  122     push(3,line.pos);  
??CTL_isr_5:
        LDR.N    R0,??DataTable1_7
        LDRH     R1,[R0, #+10]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+3
        BL       `push`
//  123   
//  124   if ( flag_stop == 0 ) //无急停标志
        LDR.N    R0,??DataTable1_21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CTL_isr_6
//  125   {
//  126     
//  127     S3010_CTL();
        BL       S3010_CTL
//  128     
//  129     //20ms中断区
//  130     if ( cnt >= 4 )
        LDR.N    R0,??DataTable1_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??CTL_isr_7
//  131     {
//  132       cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_11
        STRB     R0,[R1, #+0]
//  133       LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.out ); 
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+52]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_22  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//  134       
//  135     }
//  136     
//  137     motto_getsped();//测速
??CTL_isr_7:
        BL       motto_getsped
//  138     
//  139     if(1 == flag_bihuan)  //开环标志位
        LDR.N    R0,??DataTable1_23
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_8
//  140     {
//  141       ctl_sped();//速度控制
        BL       ctl_sped
//  142     }
//  143     motto_set();//电机输出    
??CTL_isr_8:
        BL       motto_set
        B.N      ??CTL_isr_9
//  144     
//  145   }
//  146   else
//  147   {
//  148     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
??CTL_isr_6:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_24  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  149     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_24  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  150         
//  151   }
//  152   //此处是代码冗余
//  153   safty_check();
??CTL_isr_9:
        BL       safty_check
//  154   
//  155 
//  156 // LPLD_GPIO_Output_b(PTD,1,1);
//  157 
//  158 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x3ec7ae14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x3e99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x41200000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x3ecccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x3f99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0x40c00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0xfffffee6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     GUI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     ??cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     LDC_data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     0xffe85630

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0xffe82070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0xffe850b8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     cross_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     flag_cross

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     ramp_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     flag_ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     flag_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_22:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_23:
        DC32     flag_bihuan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_24:
        DC32     0x40038000

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
??cnt:
        DS8 1

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
// 179 bytes in section .bss
//   3 bytes in section .data
// 680 bytes in section .text
// 
// 680 bytes of CODE memory
// 182 bytes of DATA memory
//
//Errors: none
//Warnings: none
