///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:42
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\SENSOR\del_sensor.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\SENSOR\del_sensor.c" -D LPLD_K60 -lCN
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
//        冲击华南赛 1车\iar\FLASH\List\del_sensor.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LDC1614_read_meas
        EXTERN LDC_data
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_i2d
        EXTERN ctl
        EXTERN flag_cross
        EXTERN flag_ramp
        EXTERN `push`
        EXTERN ramp_Enable

        PUBLIC DateAnalyse
        PUBLIC line
        PUBLIC ramp
        PUBLIC ramp_cnt
        PUBLIC sensor
        PUBLIC sensor_isr
        PUBLIC sensor_offset

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\SENSOR\del_sensor.c
//    1 #include "include.h"
//    2 
//    3 //大线圈

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 struct _line line;
line:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 struct _sensor sensor ;
sensor:
        DS8 100
//    6 
//    7 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    8 void sensor_isr()
//    9 {
sensor_isr:
        PUSH     {R4,LR}
//   10   
//   11   uint16 i = 0;
        MOVS     R4,#+0
//   12   sensor.max[0] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+76]
//   13   sensor.max[1] = 0;  
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+78]
//   14   sensor.max[2] = 0;  
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+80]
//   15   
//   16   sensor.min[0] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+82]
//   17   sensor.min[1] = 0;  
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+84]
//   18   sensor.min[2] = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+86]
//   19   
//   20   
//   21   for(i=0;i<150;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??sensor_isr_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+150
        BGE.W    ??sensor_isr_1
//   22   {
//   23     LPLD_LPTMR_DelayMs(5);
        MOVS     R0,#+5
        BL       LPLD_LPTMR_DelayMs
//   24     LDC1614_read_meas();
        BL       LDC1614_read_meas
//   25     
//   26     sensor.data[0] = LDC_data[0] - 1550800;
        LDR.W    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_2  ;; 0xffe85630
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+52]
//   27     sensor.data[0] /= 35;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+52]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+52]
//   28     sensor.data[0] -= sensor.offset[0];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+52]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+52]
//   29     
//   30     sensor.data[1] = LDC_data[1] - 1564560;
        LDR.W    R0,??DataTable3_1
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable3_3  ;; 0xffe82070
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+56]
//   31     sensor.data[1] /= 35;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+56]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+56]
//   32     sensor.data[1] -= sensor.offset[1];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+56]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+56]
//   33     
//   34     sensor.data[2] = LDC_data[2] - 1552200;
        LDR.W    R0,??DataTable3_1
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable3_4  ;; 0xffe850b8
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+60]
//   35     sensor.data[2] /= 35;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+60]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+60]
//   36     sensor.data[2] -= sensor.offset[2];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+60]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+60]
//   37     
//   38     
//   39     sensor.search[0] = (int32)(sensor.data[1] - sensor.data[2] );
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+56]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+60]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+40]
//   40     
//   41     sensor.search[1] = (int32)(sensor.data[1] - sensor.data[0] );
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+56]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+52]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+44]
//   42     
//   43     sensor.search[2] = (int32)(sensor.data[0] - sensor.data[2] );
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+52]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+60]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+48]
//   44 
//   45 //    if(sensor.search[0] > 200)
//   46 //    LPLD_UART_PutChar(FreeCarsUARTPort,sensor.search[0] - 200);
//   47 //    if(sensor.search[0] > 200)
//   48 //    LPLD_UART_PutChar(FreeCarsUARTPort,sensor.search[1] - 200);
//   49     
//   50     if(sensor.search[0] > sensor.max[0] && sensor.search[0]  < 600)
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+76]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+40]
        CMP      R0,R1
        BGE.N    ??sensor_isr_2
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+40]
        CMP      R0,#+600
        BGE.N    ??sensor_isr_2
//   51     {
//   52       sensor.max[0] = sensor.search[0];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+40]
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+76]
        B.N      ??sensor_isr_3
//   53       
//   54     }
//   55     else if(sensor.search[0] < sensor.min[0] && sensor.search[0] > -600)
??sensor_isr_2:
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+40]
        LDR.W    R1,??DataTable3
        LDRSH    R1,[R1, #+82]
        CMP      R0,R1
        BGE.N    ??sensor_isr_3
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+40]
        LDR.W    R1,??DataTable3_5  ;; 0xfffffda9
        CMP      R0,R1
        BLT.N    ??sensor_isr_3
//   56     {
//   57       sensor.min[0] = sensor.search[0];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+40]
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+82]
//   58     }
//   59     
//   60     
//   61     
//   62     if(sensor.search[1] > sensor.max[1] && sensor.search[1]  < 600 )
??sensor_isr_3:
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+78]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+44]
        CMP      R0,R1
        BGE.N    ??sensor_isr_4
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+44]
        CMP      R0,#+600
        BGE.N    ??sensor_isr_4
//   63     {
//   64       sensor.max[1] = sensor.search[1];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+44]
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+78]
        B.N      ??sensor_isr_5
//   65       
//   66     }
//   67     else if(sensor.search[1] < sensor.min[1] && sensor.search[1] > -600)
??sensor_isr_4:
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+44]
        LDR.W    R1,??DataTable3
        LDRSH    R1,[R1, #+84]
        CMP      R0,R1
        BGE.N    ??sensor_isr_5
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+44]
        LDR.W    R1,??DataTable3_5  ;; 0xfffffda9
        CMP      R0,R1
        BLT.N    ??sensor_isr_5
//   68     {
//   69       sensor.min[1] = sensor.search[1];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+44]
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+84]
//   70     }
//   71     
//   72     
//   73     if(sensor.search[2] > sensor.max[2] && sensor.search[2]  < 600)
??sensor_isr_5:
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+80]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+48]
        CMP      R0,R1
        BGE.N    ??sensor_isr_6
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+48]
        CMP      R0,#+600
        BGE.N    ??sensor_isr_6
//   74     {
//   75       sensor.max[2] = sensor.search[2];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+48]
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+80]
        B.N      ??sensor_isr_7
//   76       
//   77     }
//   78     else if(sensor.search[2] < sensor.min[2] && sensor.search[2] > -600)
??sensor_isr_6:
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+48]
        LDR.W    R1,??DataTable3
        LDRSH    R1,[R1, #+86]
        CMP      R0,R1
        BGE.N    ??sensor_isr_7
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+48]
        LDR.W    R1,??DataTable3_5  ;; 0xfffffda9
        CMP      R0,R1
        BLT.N    ??sensor_isr_7
//   79     {
//   80       sensor.min[2] = sensor.search[2];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+48]
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+86]
//   81     }
//   82     
//   83   }
??sensor_isr_7:
        ADDS     R4,R4,#+1
        B.N      ??sensor_isr_0
//   84   
//   85   
//   86   
//   87   //BZ is not working here,
//   88   BZ_ON;
??sensor_isr_1:
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   89   LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   90   LPLD_LPTMR_DelayMs(50);
        MOVS     R0,#+50
        BL       LPLD_LPTMR_DelayMs
//   91   BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   92   LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   93   LPLD_LPTMR_DelayMs(100);
        MOVS     R0,#+100
        BL       LPLD_LPTMR_DelayMs
//   94   BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   95   LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   96   LPLD_LPTMR_DelayMs(50);
        MOVS     R0,#+50
        BL       LPLD_LPTMR_DelayMs
//   97   BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   98   LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   99   LPLD_LPTMR_DelayMs(100);
        MOVS     R0,#+100
        BL       LPLD_LPTMR_DelayMs
//  100   BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  101   LED_ON;
        MOVS     R2,#+0
        MOVS     R1,#+11
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  102   LPLD_LPTMR_DelayMs(50);
        MOVS     R0,#+50
        BL       LPLD_LPTMR_DelayMs
//  103   BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  104   LED_OFF;
        MOVS     R2,#+1
        MOVS     R1,#+11
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  105   
//  106   
//  107 //  LPLD_UART_PutChar(FreeCarsUARTPort,110);
//  108 //  LPLD_UART_PutChar(FreeCarsUARTPort,110);
//  109 //  
//  110 //  LPLD_UART_PutChar(FreeCarsUARTPort,sensor.max[0] - 200);
//  111 //  LPLD_UART_PutChar(FreeCarsUARTPort,sensor.max[1] - 200);
//  112 }
        POP      {R4,PC}          ;; return
//  113 
//  114 
//  115 
//  116 
//  117 
//  118 
//  119 
//  120 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 void sensor_offset()//开机取偏差
//  122 {
sensor_offset:
        PUSH     {R4,LR}
//  123   
//  124   
//  125   uint8 i;
//  126   
//  127   LDC1614_read_meas();
        BL       LDC1614_read_meas
//  128   LPLD_LPTMR_DelayMs(5);
        MOVS     R0,#+5
        BL       LPLD_LPTMR_DelayMs
//  129   
//  130   sensor.collect[0] = LDC_data[0];
        LDR.W    R0,??DataTable3_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+28]
//  131   sensor.collect[1] = LDC_data[1];
        LDR.W    R0,??DataTable3_1
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+32]
//  132   sensor.collect[2] = LDC_data[2];
        LDR.W    R0,??DataTable3_1
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+36]
//  133   
//  134   for ( i = 0 ;i < 15; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??sensor_offset_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+15
        BGE.N    ??sensor_offset_1
//  135   {
//  136     LDC1614_read_meas();
        BL       LDC1614_read_meas
//  137     LPLD_LPTMR_DelayMs(5);
        MOVS     R0,#+5
        BL       LPLD_LPTMR_DelayMs
//  138     
//  139     sensor.collect[0] += LDC_data[0];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+28]
        LDR.W    R1,??DataTable3_1
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+28]
//  140     sensor.collect[1] += LDC_data[1];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+32]
        LDR.W    R1,??DataTable3_1
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+32]
//  141     sensor.collect[2] += LDC_data[2];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+36]
        LDR.W    R1,??DataTable3_1
        LDR      R1,[R1, #+8]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+36]
//  142     
//  143     sensor.collect[0] /= 2;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+28]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+28]
//  144     sensor.collect[1] /= 2;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+32]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+32]
//  145     sensor.collect[2] /= 2;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+36]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+36]
//  146   }
        ADDS     R4,R4,#+1
        B.N      ??sensor_offset_0
//  147   
//  148   
//  149   
//  150   sensor.offset[0] = sensor.collect[0] - 1550800;
??sensor_offset_1:
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+28]
        LDR.W    R1,??DataTable3_2  ;; 0xffe85630
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+0]
//  151   sensor.offset[0] = sensor.offset[0] / 35;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+0]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+0]
//  152   
//  153   sensor.offset[1] = sensor.collect[1] - 1564560;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+32]
        LDR.W    R1,??DataTable3_3  ;; 0xffe82070
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+4]
//  154   sensor.offset[1] = sensor.offset[1] / 35;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+4]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+4]
//  155   
//  156   
//  157   sensor.offset[2] = sensor.collect[2] - 1552200;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+36]
        LDR.W    R1,??DataTable3_4  ;; 0xffe850b8
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+8]
//  158   sensor.offset[2] = sensor.offset[2] / 35;
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+8]
        MOVS     R1,#+35
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable3
        STR      R0,[R1, #+8]
//  159   
//  160 }
        POP      {R4,PC}          ;; return
//  161 
//  162 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  163 uint8 ramp_cnt;
ramp_cnt:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 void ramp()
//  165 {
ramp:
        PUSH     {R4-R6,LR}
//  166   uint8 i,j,k;
//  167   j = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  168   k = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  169   for(i=5;i>0;i--)
        MOVS     R0,#+5
        MOVS     R4,R0
??ramp_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??ramp_1
//  170   {
//  171     sensor.data_buff[i] = sensor.data_buff[i-1];
        LDR.W    R0,??DataTable3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+1
        LDRH     R0,[R0, #+86]
        LDR.W    R1,??DataTable3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R1,R4, LSL #+1
        STRH     R0,[R1, #+88]
//  172   }
        SUBS     R4,R4,#+1
        B.N      ??ramp_0
//  173   
//  174   
//  175   if(sensor.data[2] - sensor.data[0]> 0)
??ramp_1:
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+60]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+52]
        SUBS     R0,R0,R1
        CMP      R0,#+1
        BLT.N    ??ramp_2
//  176     
//  177     sensor.data_sum = sensor.data[3] + sensor.data[2] - sensor.data[0];
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+64]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+60]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+52]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+74]
        B.N      ??ramp_3
//  178   else
//  179     sensor.data_sum = sensor.data[3] + sensor.data[0] - sensor.data[2];
??ramp_2:
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+64]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+52]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+60]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+74]
//  180   
//  181   sensor.data_buff[0] = sensor.data_sum;
??ramp_3:
        LDR.W    R0,??DataTable3
        LDRH     R0,[R0, #+74]
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+88]
//  182   
//  183   push(12,sensor.data_sum);
        LDR.W    R0,??DataTable3
        LDRH     R1,[R0, #+74]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+12
        BL       `push`
//  184   
//  185   if(sensor.data_buff[i]>800 && sensor.data_buff[i]<5000)
        LDR.W    R0,??DataTable3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+1
        LDRSH    R0,[R0, #+88]
        CMP      R0,#+800
        BLE.N    ??ramp_4
        LDR.W    R0,??DataTable3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+1
        LDRSH    R0,[R0, #+88]
        MOVW     R1,#+5000
        CMP      R0,R1
        BGE.N    ??ramp_4
//  186     for(i=0;i<6;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??ramp_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BGE.N    ??ramp_6
//  187     {
//  188       if(sensor.data_buff[i]>900 && sensor.data[3] > 500)
        LDR.W    R0,??DataTable3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+1
        LDRSH    R0,[R0, #+88]
        CMP      R0,#+900
        BLE.N    ??ramp_7
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+64]
        CMP      R0,#+500
        BLE.N    ??ramp_7
//  189         j++;
        ADDS     R5,R5,#+1
//  190     }
??ramp_7:
        ADDS     R4,R4,#+1
        B.N      ??ramp_5
//  191   else if(sensor.data_buff[i] < 600)
??ramp_4:
        LDR.W    R0,??DataTable3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+1
        LDRSH    R0,[R0, #+88]
        CMP      R0,#+600
        BGE.N    ??ramp_6
//  192     for(i=0;i<6;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??ramp_8:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BGE.N    ??ramp_6
//  193     {
//  194       if(sensor.data_buff[i] < 700)
        LDR.W    R0,??DataTable3
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+1
        LDRSH    R0,[R0, #+88]
        CMP      R0,#+700
        BGE.N    ??ramp_9
//  195         k++;
        ADDS     R6,R6,#+1
//  196     }
??ramp_9:
        ADDS     R4,R4,#+1
        B.N      ??ramp_8
//  197   
//  198   
//  199   
//  200   if(j>5)
??ramp_6:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+6
        BLT.N    ??ramp_10
//  201   {
//  202     flag_ramp = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_7
        STRB     R0,[R1, #+0]
//  203     BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  204     
//  205     if(ramp_cnt == 2)
        LDR.W    R0,??DataTable3_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??ramp_11
//  206       ramp_cnt = 3;  //下坡
        MOVS     R0,#+3
        LDR.W    R1,??DataTable3_8
        STRB     R0,[R1, #+0]
        B.N      ??ramp_10
//  207     else if(ramp_cnt == 0)
??ramp_11:
        LDR.W    R0,??DataTable3_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ramp_10
//  208       ramp_cnt = 1;  //上坡
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_8
        STRB     R0,[R1, #+0]
//  209   }
//  210   
//  211   if(flag_ramp == 1)
??ramp_10:
        LDR.W    R0,??DataTable3_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ramp_12
//  212   {
//  213     if(k>5)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+6
        BLT.N    ??ramp_12
//  214     {
//  215       if(ramp_cnt == 3)  //坡道正常完成
        LDR.W    R0,??DataTable3_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??ramp_13
//  216       {
//  217         flag_ramp = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_7
        STRB     R0,[R1, #+0]
//  218         BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.W    R0,??DataTable3_6  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//  219         ramp_cnt = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_8
        STRB     R0,[R1, #+0]
//  220         ctl.motto.ramp = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, #+164]
//  221         ramp_Enable = 0;//坡道检测使能关闭，一定距离后开启
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_10
        STRB     R0,[R1, #+0]
        B.N      ??ramp_12
//  222         
//  223       }
//  224       else if(ramp_cnt == 1)
??ramp_13:
        LDR.W    R0,??DataTable3_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ramp_12
//  225         ramp_cnt = 2;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable3_8
        STRB     R0,[R1, #+0]
//  226       
//  227     }
//  228   }
//  229 }
??ramp_12:
        POP      {R4-R6,PC}       ;; return
//  230 
//  231 
//  232 
//  233 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 void DateAnalyse()
//  235 {
DateAnalyse:
        PUSH     {R3-R7,LR}
//  236   
//  237   sensor.error[0]
//  238     = (int32)(sensor.data[1] - sensor.data[2] );  //中间-左边
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+56]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+60]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+68]
//  239   
//  240   sensor.error[1]
//  241     = (int32)(sensor.data[1] - sensor.data[0] ); //中间-右边
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+56]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+52]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+70]
//  242   
//  243   sensor.error[2]
//  244     = (int32)(sensor.data[0] - sensor.data[2] );  //右边-左边
        LDR.W    R0,??DataTable3
        LDR      R0,[R0, #+52]
        LDR.W    R1,??DataTable3
        LDR      R1,[R1, #+60]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+72]
//  245   
//  246   
//  247   
//  248 //  push(14,sensor.error[0]);
//  249 //  push(15,sensor.error[1]);
//  250 //  push(16,sensor.error[2]);
//  251   
//  252   
//  253   
//  254   //拟合限幅
//  255   if(sensor.error[0] > 0)
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        CMP      R0,#+1
        BLT.N    ??DateAnalyse_0
//  256   {
//  257     sensor.error[0] = (int16)(sensor.error[0] * 258.0 / sensor.max[0] );
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_11  ;; 0x40702000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+76]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+68]
        B.N      ??DateAnalyse_1
//  258     
//  259   }
//  260   
//  261   else
//  262   {
//  263     sensor.error[0] = (int16)(sensor.error[0] * (-273.0) / sensor.min[0] );
??DateAnalyse_0:
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_12  ;; 0xc0711000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+82]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+68]
//  264   }
//  265   
//  266   
//  267   
//  268   
//  269   if(sensor.error[1] > 0)
??DateAnalyse_1:
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        CMP      R0,#+1
        BLT.N    ??DateAnalyse_2
//  270   {
//  271     sensor.error[1] = (int16)(sensor.error[1] * 253.0 / sensor.max[1] );
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_13  ;; 0x406fa000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+78]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+70]
        B.N      ??DateAnalyse_3
//  272     
//  273     
//  274   }
//  275   
//  276   else
//  277   {
//  278     sensor.error[1] = (int16)(sensor.error[1] * (-249.0) / sensor.min[1] );
??DateAnalyse_2:
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_14  ;; 0xc06f2000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+84]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+70]
//  279   }
//  280   
//  281   
//  282   
//  283   
//  284   
//  285   if(sensor.error[2] > 0)
??DateAnalyse_3:
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+72]
        CMP      R0,#+1
        BLT.N    ??DateAnalyse_4
//  286   {
//  287     sensor.error[2] = (int16)(sensor.error[2] * 252.0 / sensor.max[2] );
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+72]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_15  ;; 0x406f8000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+80]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+72]
        B.N      ??DateAnalyse_5
//  288     
//  289   }
//  290   
//  291   else
//  292   {
//  293     sensor.error[2] = (int16)(sensor.error[2] * (-282.0) / sensor.min[2] );
??DateAnalyse_4:
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+72]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_16  ;; 0xc071a000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+86]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable3
        STRH     R0,[R1, #+72]
//  294   }
//  295   
//  296 
//  297   push(0,sensor.error[0]);
??DateAnalyse_5:
        LDR.W    R0,??DataTable3
        LDRH     R1,[R0, #+68]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       `push`
//  298   push(1,sensor.error[1]);
        LDR.W    R0,??DataTable3
        LDRH     R1,[R0, #+70]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+1
        BL       `push`
//  299   push(2,sensor.error[2]);
        LDR.W    R0,??DataTable3
        LDRH     R1,[R0, #+72]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+2
        BL       `push`
//  300   
//  301   
//  302   
//  303   
//  304   //完全丢线
//  305   if(sensor.error[0] < 8 && sensor.error[0] > -8 && sensor.error[1] < 9 && sensor.error[1] > -8
//  306      && (line.flag_road == 2||line.flag_road == 3))
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        CMP      R0,#+8
        BGE.N    ??DateAnalyse_6
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        CMN      R0,#+7
        BLT.N    ??DateAnalyse_6
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        CMP      R0,#+9
        BGE.N    ??DateAnalyse_6
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        CMN      R0,#+7
        BLT.N    ??DateAnalyse_6
        LDR.W    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??DateAnalyse_7
        LDR.W    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??DateAnalyse_6
//  307     
//  308   {
//  309     line.flag_lose = 0;//完全丢线
??DateAnalyse_7:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable3_17
        STRB     R0,[R1, #+2]
        B.N      ??DateAnalyse_8
//  310   }
//  311   
//  312   
//  313   
//  314   //210--105
//  315   else if( sensor.error[1] <=  7  && sensor.error[2] < -5 && (line.flag_road == 0||line.flag_road == 2))
??DateAnalyse_6:
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        CMP      R0,#+8
        BGE.N    ??DateAnalyse_9
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+72]
        CMN      R0,#+5
        BGE.N    ??DateAnalyse_9
        LDR.W    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DateAnalyse_10
        LDR.W    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??DateAnalyse_9
//  316   {
//  317     line.flag_road = 2;
??DateAnalyse_10:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable3_17
        STRB     R0,[R1, #+0]
//  318     line.flag_lose = 10; //210--105
        MOVS     R0,#+10
        LDR.W    R1,??DataTable3_17
        STRB     R0,[R1, #+2]
//  319     
//  320     line.pos = (int16)( 0.3549  * sensor.error[0] + 208.76);
        LDR.W    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable3_18  ;; 0x7d566cf4
        LDR.W    R3,??DataTable3_19  ;; 0x3fd6b6ae
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable3_20  ;; 0xeb851eb8
        LDR.W    R3,??DataTable3_21  ;; 0x406a1851
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.W    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
//  321     
//  322     if (line.pos < 105)
        LDR.W    R0,??DataTable3_17
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+105
        BGE.W    ??DateAnalyse_8
//  323     {
//  324       line.pos = 105;
        MOVS     R0,#+105
        LDR.W    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
        B.N      ??DateAnalyse_8
//  325     }
//  326     
//  327   }
//  328   
//  329   
//  330   
//  331   
//  332   //105--0  
//  333   else if(sensor.error[1] > 7 && sensor.error[2] < 0 
//  334           && (line.flag_road == 0||line.flag_road == 1 || line.flag_road == 2))
??DateAnalyse_9:
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        CMP      R0,#+8
        BLT.W    ??DateAnalyse_11
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+72]
        CMP      R0,#+0
        BPL.N    ??DateAnalyse_11
        LDR.W    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DateAnalyse_12
        LDR.W    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??DateAnalyse_12
        LDR.W    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??DateAnalyse_11
//  335     
//  336   {
//  337     line.flag_road = 0;
??DateAnalyse_12:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+0]
//  338     line.flag_lose = 20;//105--0 
        MOVS     R0,#+20
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+2]
//  339     
//  340     line.pos = (int16)( -0.0000007 * sensor.error[0] * sensor.error[0] * sensor.error[0]
//  341                        + 0.00002 * sensor.error[0]* sensor.error[0]
//  342                          - 0.1388 * sensor.error[0]
//  343                            + 50.151);
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable3_22  ;; 0x4765195f
        LDR.N    R3,??DataTable3_23  ;; 0xbea77cf4
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable3_24  ;; 0x88e368f1
        LDR.N    R3,??DataTable3_25  ;; 0x3ef4f8b5
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable3_26  ;; 0xca57a787
        LDR.N    R3,??DataTable3_27  ;; 0x3fc1c432
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        LDR.N    R2,??DataTable3_28  ;; 0xf7ced917
        LDR.N    R3,??DataTable3_29  ;; 0x40491353
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
//  344     if (line.pos > 105)   //限幅
        LDR.N    R0,??DataTable3_17
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+106
        BLT.N    ??DateAnalyse_13
//  345     {
//  346       line.pos = 105;
        MOVS     R0,#+105
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
        B.N      ??DateAnalyse_8
//  347     }
//  348     
//  349     else if (line.pos < 0)
??DateAnalyse_13:
        LDR.N    R0,??DataTable3_17
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+0
        BPL.W    ??DateAnalyse_8
//  350     {
//  351       line.pos = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
        B.N      ??DateAnalyse_8
//  352     }
//  353             
//  354   }
//  355   
//  356   
//  357   
//  358   
//  359   //0-- -105
//  360   else if(sensor.error[0] > 7  && sensor.error[2] >= 0
//  361           && (line.flag_road == 0||line.flag_road == 1 || line.flag_road == 3))
??DateAnalyse_11:
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        CMP      R0,#+8
        BLT.N    ??DateAnalyse_14
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+72]
        CMP      R0,#+0
        BMI.N    ??DateAnalyse_14
        LDR.N    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DateAnalyse_15
        LDR.N    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??DateAnalyse_15
        LDR.N    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??DateAnalyse_14
//  362   {
//  363     
//  364     line.flag_road = 1;
??DateAnalyse_15:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+0]
//  365     line.flag_lose = 30; //0-- -105
        MOVS     R0,#+30
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+2]
//  366     
//  367     line.pos = (int16)( 
//  368                        0.000001 * sensor.error[1]  * sensor.error[1] * sensor.error[1]
//  369                          + 0.00004 * sensor.error[1]  *sensor.error[1]
//  370                            + 0.1466 * sensor.error[1]  
//  371                              - 59.245 );
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable3_30  ;; 0xa0b5ed8d
        LDR.N    R3,??DataTable3_31  ;; 0x3eb0c6f7
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable3_24  ;; 0x88e368f1
        LDR.N    R3,??DataTable3_32  ;; 0x3f04f8b5
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable3_33  ;; 0xeecbfb16
        LDR.N    R3,??DataTable3_34  ;; 0x3fc2c3c9
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.N    R2,??DataTable3_35  ;; 0x28f5c28f
        LDR.N    R3,??DataTable3_36  ;; 0xc04d9f5c
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
//  372     if (line.pos > 0)   //限幅
        LDR.N    R0,??DataTable3_17
        LDRSH    R0,[R0, #+10]
        CMP      R0,#+1
        BLT.N    ??DateAnalyse_16
//  373     {
//  374       line.pos = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
        B.N      ??DateAnalyse_8
//  375     }
//  376     else if (line.pos < -105)
??DateAnalyse_16:
        LDR.N    R0,??DataTable3_17
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+105
        BGE.N    ??DateAnalyse_8
//  377     {
//  378       line.pos = -105;
        MVNS     R0,#+104
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
        B.N      ??DateAnalyse_8
//  379     }
//  380         
//  381   }
//  382   
//  383   
//  384   
//  385   //-105 --  -210
//  386   else if(sensor.error[0] <= 7  && sensor.error[2] > 1 && (line.flag_road == 1||line.flag_road == 3))
??DateAnalyse_14:
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+68]
        CMP      R0,#+8
        BGE.N    ??DateAnalyse_17
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+72]
        CMP      R0,#+2
        BLT.N    ??DateAnalyse_17
        LDR.N    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??DateAnalyse_18
        LDR.N    R0,??DataTable3_17
        LDRSB    R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??DateAnalyse_17
//  387     
//  388   {
//  389     line.flag_road = 3;
??DateAnalyse_18:
        MOVS     R0,#+3
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+0]
//  390     line.flag_lose = 40;//-105 --  -210
        MOVS     R0,#+40
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+2]
//  391     
//  392     
//  393     line.pos = (int16)(  -0.3649 * sensor.error[1] - 208.76);
        LDR.N    R0,??DataTable3
        LDRSH    R0,[R0, #+70]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable3_37  ;; 0x8793dd98
        LDR.N    R3,??DataTable3_38  ;; 0xbfd75a85
        BL       __aeabi_dmul
        LDR.N    R2,??DataTable3_20  ;; 0xeb851eb8
        LDR.N    R3,??DataTable3_39  ;; 0xc06a1851
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
//  394     
//  395     if (line.pos > -105)     //限幅
        LDR.N    R0,??DataTable3_17
        LDRSH    R0,[R0, #+10]
        CMN      R0,#+104
        BLT.N    ??DateAnalyse_8
//  396     {
//  397       line.pos = -105;
        MVNS     R0,#+104
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
        B.N      ??DateAnalyse_8
//  398     }
//  399     
//  400   }
//  401   
//  402   
//  403   
//  404   else
//  405   {
//  406     line.flag_lose = 50;  //error
??DateAnalyse_17:
        MOVS     R0,#+50
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+2]
//  407     line.pos = line.pos_last; 
        LDR.N    R0,??DataTable3_17
        LDRH     R0,[R0, #+8]
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
//  408     
//  409     //bz_set(cross);
//  410   }
//  411   
//  412   if(flag_cross == 1)   //尝试处理十字
??DateAnalyse_8:
        LDR.N    R0,??DataTable3_40
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??DateAnalyse_19
//  413   {
//  414 //    bz_set(cross);
//  415      line.flag_lose = 60; //十字
        MOVS     R0,#+60
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+2]
//  416      
//  417      line.flag_road = line.flag_road_last;//十字不改变道路类型
        LDR.N    R0,??DataTable3_17
        LDRB     R0,[R0, #+1]
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+0]
//  418      
//  419     if(line.pos_last - line.pos > 20 || line.pos_last - line.pos < -20)
        LDR.N    R0,??DataTable3_17
        LDRSH    R0,[R0, #+8]
        LDR.N    R1,??DataTable3_17
        LDRSH    R1,[R1, #+10]
        SUBS     R0,R0,R1
        CMP      R0,#+21
        BGE.N    ??DateAnalyse_20
        LDR.N    R0,??DataTable3_17
        LDRSH    R0,[R0, #+8]
        LDR.N    R1,??DataTable3_17
        LDRSH    R1,[R1, #+10]
        SUBS     R0,R0,R1
        CMN      R0,#+20
        BGE.N    ??DateAnalyse_19
//  420       line.pos = line.pos_last;
??DateAnalyse_20:
        LDR.N    R0,??DataTable3_17
        LDRH     R0,[R0, #+8]
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+10]
//  421   }
//  422   
//  423   
//  424   line.pos_last = line.pos; 
??DateAnalyse_19:
        LDR.N    R0,??DataTable3_17
        LDRH     R0,[R0, #+10]
        LDR.N    R1,??DataTable3_17
        STRH     R0,[R1, #+8]
//  425   line.flag_road_last = line.flag_road;
        LDR.N    R0,??DataTable3_17
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable3_17
        STRB     R0,[R1, #+1]
//  426   
//  427   push(8,line.flag_lose);
        LDR.N    R0,??DataTable3_17
        LDRSB    R1,[R0, #+2]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+8
        BL       `push`
//  428   push(9,line.flag_road);
        LDR.N    R0,??DataTable3_17
        LDRSB    R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+9
        BL       `push`
//  429   push(10,line.pos_d);
        LDR.N    R0,??DataTable3_17
        LDRH     R1,[R0, #+6]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+10
        BL       `push`
//  430 
//  431   
//  432 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     LDC_data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0xffe85630

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0xffe82070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0xffe850b8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0xfffffda9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     flag_ramp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     ramp_cnt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     ramp_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x40702000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0xc0711000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x406fa000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0xc06f2000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x406f8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0xc071a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     0x7d566cf4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     0x3fd6b6ae

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     0xeb851eb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     0x406a1851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     0x4765195f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     0xbea77cf4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     0x88e368f1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     0x3ef4f8b5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     0xca57a787

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     0x3fc1c432

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     0xf7ced917

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     0x40491353

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     0xa0b5ed8d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     0x3eb0c6f7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     0x3f04f8b5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     0xeecbfb16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_34:
        DC32     0x3fc2c3c9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_35:
        DC32     0x28f5c28f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_36:
        DC32     0xc04d9f5c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_37:
        DC32     0x8793dd98

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_38:
        DC32     0xbfd75a85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_39:
        DC32     0xc06a1851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_40:
        DC32     flag_cross

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
//   113 bytes in section .bss
// 3 232 bytes in section .text
// 
// 3 232 bytes of CODE memory
//   113 bytes of DATA memory
//
//Errors: none
//Warnings: none
