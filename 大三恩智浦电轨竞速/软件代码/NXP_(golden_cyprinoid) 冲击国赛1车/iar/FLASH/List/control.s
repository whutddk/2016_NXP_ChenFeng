///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:07
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\CTL\control.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\CTL\control.c" -D LPLD_K60 -lCN
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
//        1.9\iar\FLASH\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN DateAnalyse
        EXTERN GUI
        EXTERN LDC1614_init
        EXTERN LDC1614_read_meas
        EXTERN LDC1614_start_meas
        EXTERN LDC_READ
        EXTERN LDC_data
        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_LPTMR_DelayMs
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
        EXTERN temp

        PUBLIC CTL_SEN_init
        PUBLIC CTL_isr
        PUBLIC cross_Enable
        PUBLIC ctl
        PUBLIC flag_bihuan
        PUBLIC flag_cross
        PUBLIC flag_ramp
        PUBLIC ramp_Enable

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\CTL\control.c
//    1 //控制部分通用代码
//    2 #include "include.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 struct _ctl ctl;
ctl:
        DS8 200
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
        STR      R0,[R1, #+36]
//   12   //  ctl.S3010.Kd_B = 0;
//   13   
//   14   ctl.motto.Kp_B = 0.75;
        MOVS     R0,#+1061158912
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+132]
//   15   ctl.motto.Kd_B = 10;
        LDR.N    R0,??DataTable1_3  ;; 0x41200000
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+148]
//   16   ctl.motto.Kp_S = 0.4;
        LDR.N    R0,??DataTable1_4  ;; 0x3ecccccd
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+120]
//   17   ctl.motto.Kd_S = 1.2;
        LDR.N    R0,??DataTable1_5  ;; 0x3f99999a
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+136]
//   18   
//   19   
//   20   ctl.motto.v_error = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+106]
//   21   
//   22   ctl.motto.v = 675;
        MOVW     R0,#+675
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+104]
//   23   
//   24   ctl.motto.Kp = 2;
        MOVS     R0,#+1073741824
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+108]
//   25   ctl.motto.Ki = 35;
        LDR.N    R0,??DataTable1_6  ;; 0x420c0000
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+112]
//   26   
//   27   ctl.motto.out = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+160]
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
//   36   sensor.min[1] = -270;  //249
        LDR.N    R0,??DataTable1_9  ;; 0xfffffef2
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+84]
//   37   sensor.min[2] = -282;
        LDR.N    R0,??DataTable1_10  ;; 0xfffffee6
        LDR.N    R1,??DataTable1_8
        STRH     R0,[R1, #+86]
//   38   
//   39   ctl.motto.distance = 5000;
        MOVW     R0,#+5000
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+180]
//   40   GUI.para.endline_time = 15 ;
        MOVS     R0,#+15
        LDR.N    R1,??DataTable1_11
        STRH     R0,[R1, #+4]
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
        LDR.N    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1_12
        STRB     R0,[R1, #+0]
//   59   /*LDC_GETDATA*/
//   60   
//   61   
//   62   LDC1614_read_meas();
        BL       LDC1614_read_meas
//   63   
//   64   sensor.data[0] = LDC_data[0] - 1589300;
        LDR.N    R0,??DataTable1_13
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_14  ;; 0xffe7bfcc
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+52]
//   65   sensor.data[0] /= 35;
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+52]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+52]
//   66   sensor.data[0] -= sensor.offset[0];
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+52]
        LDR.N    R1,??DataTable1_8
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+52]
//   67   
//   68   sensor.data[1] = LDC_data[1] - 1559900;
        LDR.N    R0,??DataTable1_13
        LDR      R0,[R0, #+4]
        LDR.N    R1,??DataTable1_15  ;; 0xffe832a4
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+56]
//   69   sensor.data[1] /= 35;
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+56]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+56]
//   70   sensor.data[1] -= sensor.offset[1];
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+56]
        LDR.N    R1,??DataTable1_8
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+56]
//   71   
//   72   sensor.data[3] = sensor.data[1] + 15;   //坡道时使用
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+56]
        ADDS     R0,R0,#+15
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+64]
//   73   if(sensor.data[3] < 1)
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+64]
        CMP      R0,#+1
        BGE.N    ??CTL_isr_0
//   74   {
//   75     sensor.data[3] = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+64]
//   76   }
//   77   
//   78   sensor.data[2] = LDC_data[2] - 1570500;
??CTL_isr_0:
        LDR.N    R0,??DataTable1_13
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable1_16  ;; 0xffe8093c
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+60]
//   79   sensor.data[2] /= 35;
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+60]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+60]
//   80   sensor.data[2] -= sensor.offset[2];
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+60]
        LDR.N    R1,??DataTable1_8
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.N    R1,??DataTable1_8
        STR      R0,[R1, #+60]
//   81   
//   82   
//   83   temp = LDC_READ(0x08);  
        MOVS     R0,#+8
        BL       LDC_READ
        LDR.N    R1,??DataTable1_17
        STRH     R0,[R1, #+0]
//   84   if(LDC_data[0]==0 && LDC_data[1]==0 && LDC_data[2]==0)
        LDR.N    R0,??DataTable1_13
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CTL_isr_1
        LDR.N    R0,??DataTable1_13
        LDR      R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??CTL_isr_1
        LDR.N    R0,??DataTable1_13
        LDR      R0,[R0, #+8]
        CMP      R0,#+0
        BNE.N    ??CTL_isr_1
//   85   {
//   86     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1_18  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   87     ctl.motto.v = 300;
        MOV      R0,#+300
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+104]
//   88     LDC1614_init();
        BL       LDC1614_init
//   89     LDC1614_start_meas();
        BL       LDC1614_start_meas
//   90     LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//   91   }
//   92   
//   93   push(13,temp);
??CTL_isr_1:
        LDR.N    R0,??DataTable1_17
        LDRH     R1,[R0, #+0]
        MOVS     R0,#+13
        BL       `push`
//   94   
//   95   if(cross_Enable == 1)     //十字
        LDR.N    R0,??DataTable1_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_2
//   96   {
//   97     if(sensor.data[0] > 35 && sensor.data[2] > 35)
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+52]
        CMP      R0,#+36
        BLT.N    ??CTL_isr_3
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+60]
        CMP      R0,#+36
        BLT.N    ??CTL_isr_3
//   98       flag_cross = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_20
        STRB     R0,[R1, #+0]
        B.N      ??CTL_isr_2
//   99     
//  100     else
//  101     {
//  102       flag_cross = 0;
??CTL_isr_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_20
        STRB     R0,[R1, #+0]
//  103     }
//  104   }
//  105   
//  106   
//  107   if(ramp_Enable == 1)
??CTL_isr_2:
        LDR.N    R0,??DataTable1_21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_4
//  108   {
//  109     ramp();
        BL       ramp
//  110   }
//  111   
//  112 //  push(13,ramp_cnt);
//  113   push(14,sensor.data[0] );
??CTL_isr_4:
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R0, #+52]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+14
        BL       `push`
//  114   push(15,sensor.data[3] );
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R0, #+64]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+15
        BL       `push`
//  115   push(16,sensor.data[2] );
        LDR.N    R0,??DataTable1_8
        LDR      R1,[R0, #+60]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+16
        BL       `push`
//  116   
//  117   if(1 == flag_ramp)
        LDR.N    R0,??DataTable1_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_5
//  118   {
//  119     //BZ_ON;
//  120     
//  121     line.flag_lose = 70; //坡道
        MOVS     R0,#+70
        LDR.N    R1,??DataTable1_7
        STRB     R0,[R1, #+2]
//  122     if(sensor.data[3] > 25)
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+64]
        CMP      R0,#+26
        BLT.N    ??CTL_isr_6
//  123     {
//  124       line.pos = 25*(sensor.data[2] - sensor.data[0])/sensor.data[3];
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
        B.N      ??CTL_isr_6
//  125     }
//  126     else
//  127     {
//  128       
//  129     }
//  130   }
//  131   else
//  132   {
//  133     DateAnalyse();
??CTL_isr_5:
        BL       DateAnalyse
//  134   }
//  135   
//  136   
//  137   if(line.pos > 210)//偏差限幅
??CTL_isr_6:
        LDR.N    R0,??DataTable1_7
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+211
        BLT.N    ??CTL_isr_7
//  138     line.pos = 210;
        MOVS     R0,#+210
        LDR.N    R1,??DataTable1_7
        STRH     R0,[R1, #+10]
        B.N      ??CTL_isr_8
//  139   else if (line.pos < -210)
??CTL_isr_7:
        LDR.N    R0,??DataTable1_7
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+210
        BGE.N    ??CTL_isr_8
//  140     line.pos = -210;
        MVNS     R0,#+209
        LDR.N    R1,??DataTable1_7
        STRH     R0,[R1, #+10]
//  141   
//  142   push(3,line.pos);  
??CTL_isr_8:
        LDR.N    R0,??DataTable1_7
        LDRH     R1,[R0, #+10]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+3
        BL       `push`
//  143   
//  144   if ( flag_stop == 0 ) //无急停标志
        LDR.N    R0,??DataTable1_23
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??CTL_isr_9
//  145   {
//  146     S3010_CTL();
        BL       S3010_CTL
//  147     
//  148     //20ms中断区
//  149     if ( cnt >= 4 )
        LDR.N    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BLT.N    ??CTL_isr_10
//  150     {
//  151       cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_12
        STRB     R0,[R1, #+0]
//  152       LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, (uint32) ctl.S3010.out ); 
        LDR.N    R0,??DataTable1_1
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2uiz
        MOVS     R2,R0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_24  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//  153       
//  154     }
//  155     
//  156     motto_getsped();//测速
??CTL_isr_10:
        BL       motto_getsped
//  157     
//  158     if(1 == flag_bihuan)  //开环标志位
        LDR.N    R0,??DataTable1_25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??CTL_isr_11
//  159     {
//  160       ctl_sped();//速度控制
        BL       ctl_sped
//  161     }
//  162     motto_set();//电机输出    
??CTL_isr_11:
        BL       motto_set
        B.N      ??CTL_isr_12
//  163     
//  164   }
//  165   else
//  166   {
//  167     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0 );
??CTL_isr_9:
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  168     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0 );
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable1_26  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//  169         
//  170   }
//  171   //此处是代码冗余
//  172   safty_check();
??CTL_isr_12:
        BL       safty_check
//  173   
//  174 // LPLD_GPIO_Output_b(PTD,1,1);
//  175 
//  176 }
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
        DC32     0x420c0000

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
        DC32     0xfffffef2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0xfffffee6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     GUI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     ??cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     LDC_data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0xffe7bfcc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0xffe832a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     0xffe8093c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     cross_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     flag_cross

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     ramp_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_22:
        DC32     flag_ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_23:
        DC32     flag_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_24:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_25:
        DC32     flag_bihuan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_26:
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
// 203 bytes in section .bss
//   3 bytes in section .data
// 788 bytes in section .text
// 
// 788 bytes of CODE memory
// 206 bytes of DATA memory
//
//Errors: none
//Warnings: none
