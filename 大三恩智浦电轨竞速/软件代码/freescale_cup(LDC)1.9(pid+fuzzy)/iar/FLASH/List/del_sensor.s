///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\SENSOR\del_sensor.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\SENSOR\del_sensor.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\sensor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\del_sensor.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LDC1614_read_meas
        EXTERN LDC_data
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_i2d
        EXTERN `push`

        PUBLIC DateAnalyse
        PUBLIC line
        PUBLIC sensor
        PUBLIC sensor_isr
        PUBLIC sensor_offset

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\SENSOR\del_sensor.c
//    1 #include "include.h"
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 struct _line line;
line:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 struct _sensor sensor ;
sensor:
        DS8 64
//    6 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    7 void sensor_isr()
//    8 {
//    9  
//   10 }
sensor_isr:
        BX       LR               ;; return
//   11 
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void sensor_offset()//开机取偏差
//   14 {
sensor_offset:
        PUSH     {R4,LR}
//   15   uint8 i;
//   16   
//   17   LDC1614_read_meas();
        BL       LDC1614_read_meas
//   18   LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//   19   
//   20   sensor.offset[0] = LDC_data[0];
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   21   sensor.offset[1] = LDC_data[1];
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   22   sensor.offset[2] = LDC_data[2];
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+8]
//   23   
//   24   for ( i = 0 ;i < 100; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??sensor_offset_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BGE.N    ??sensor_offset_1
//   25   {
//   26     LDC1614_read_meas();
        BL       LDC1614_read_meas
//   27     LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//   28     
//   29     sensor.offset[0] += LDC_data[0];
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   30     sensor.offset[1] += LDC_data[1];
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+4]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   31     sensor.offset[2] += LDC_data[2];
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable1
        LDR      R1,[R1, #+8]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+8]
//   32     
//   33     sensor.offset[0] /= 2;
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   34     sensor.offset[1] /= 2;
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+4]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   35     sensor.offset[2] /= 2;
        LDR.W    R0,??DataTable1_1
        LDR      R0,[R0, #+8]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STR      R0,[R1, #+8]
//   36   }
        ADDS     R4,R4,#+1
        B.N      ??sensor_offset_0
//   37   
//   38 }
??sensor_offset_1:
        POP      {R4,PC}          ;; return
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void DateAnalyse()
//   41 {
DateAnalyse:
        PUSH     {R3-R7,LR}
//   42   sensor.measure[0] = LDC_data[0] - sensor.offset[0];
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable1_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+12]
//   43   sensor.measure[1] = LDC_data[1] - sensor.offset[1];
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable1_1
        LDR      R1,[R1, #+4]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+14]
//   44   sensor.measure[2] = LDC_data[2] - sensor.offset[2];
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable1_1
        LDR      R1,[R1, #+8]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+16]
//   45   
//   46   //从左往右为    0 2 1
//   47   sensor.error[0] = sensor.measure[1] - sensor.measure[0];
        LDR.W    R0,??DataTable1_1
        LDRH     R0,[R0, #+14]
        LDR.W    R1,??DataTable1_1
        LDRH     R1,[R1, #+12]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+32]
//   48   sensor.error[1] = sensor.measure[1] - sensor.measure[2];
        LDR.W    R0,??DataTable1_1
        LDRH     R0,[R0, #+14]
        LDR.W    R1,??DataTable1_1
        LDRH     R1,[R1, #+16]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+34]
//   49   sensor.error[2] = sensor.measure[2] - sensor.measure[0];
        LDR.W    R0,??DataTable1_1
        LDRH     R0,[R0, #+16]
        LDR.W    R1,??DataTable1_1
        LDRH     R1,[R1, #+12]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+36]
//   50     
//   51   sensor.error[0] /= 100;
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+32]
//   52   sensor.error[1] /= 100;
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+34]
//   53   sensor.error[2] /= 100;
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        MOVS     R1,#+100
        SDIV     R0,R0,R1
        LDR.W    R1,??DataTable1_1
        STRH     R0,[R1, #+36]
//   54   push(35,sensor.error[0]);
        LDR.W    R0,??DataTable1_1
        LDRH     R1,[R0, #+32]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+35
        BL       `push`
//   55   push(36,sensor.error[1]);
        LDR.W    R0,??DataTable1_1
        LDRH     R1,[R0, #+34]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+36
        BL       `push`
//   56   push(37,sensor.error[2]);
        LDR.W    R0,??DataTable1_1
        LDRH     R1,[R0, #+36]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+37
        BL       `push`
//   57   
//   58   //push(37,sensor.measure[0]);
//   59   //push(38,sensor.measure[1]);
//   60   //push(39,sensor.measure[2]);
//   61   
//   62 //    if ( ( sensor.error[0] < 6 && sensor.error[0] > -6 ) 
//   63 //        || ( sensor.error[1] < 6 && sensor.error[1] > -6 ) 
//   64 //          || //( sensor.measure[0] < 200 && sensor.measure[0] > -200))
//   65 //  {
//   66 //    return;
//   67 //  }
//   68 //    else
//   69     {
//   70       line.flag1 = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_2
        STRB     R0,[R1, #+0]
//   71       line.flag2 = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable1_2
        STRB     R0,[R1, #+1]
//   72        if ( ! ( (sensor.error[0] < 5 && sensor.error[0] > -1 && sensor.error[2] > 0) ) )
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        CMP      R0,#+5
        BGE.N    ??DateAnalyse_0
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        CMP      R0,#+0
        BMI.N    ??DateAnalyse_0
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        CMP      R0,#+1
        BGE.W    ??DateAnalyse_1
//   73          //不在这段 
//   74       {
//   75         line.pos[1] = 
//   76           150 
//   77             + 123*sensor.error[0] 
//   78               - 203.1*sensor.error[2]
//   79                 - 105.6*sensor.error[0]*sensor.error[0] 
//   80                   + 180.5*sensor.error[0]*sensor.error[2]  
//   81                     -175.9*sensor.error[2]*sensor.error[2] 
//   82                       -29.74*sensor.error[0]*sensor.error[0]*sensor.error[0] 
//   83                         +50.59*sensor.error[0]*sensor.error[0]*sensor.error[2]
//   84                           -150.8*sensor.error[0]*sensor.error[2]*sensor.error[2]
//   85                             + 144.4*sensor.error[2]*sensor.error[2]*sensor.error[2];
??DateAnalyse_0:
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        MOVS     R1,#+123
        SMULBB   R0,R0,R1
        ADDS     R0,R0,#+150
        BL       __aeabi_i2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.W    R3,??DataTable1_3  ;; 0x40696333
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable1_4  ;; 0x405a6666
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable1_5  ;; 0x40669000
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable1_6  ;; 0xcccccccd
        LDR.W    R3,??DataTable1_7  ;; 0x4065fccc
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable1_8  ;; 0xa3d70a3d
        LDR.W    R3,??DataTable1_9  ;; 0x403dbd70
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable1_10  ;; 0x1eb851ec
        LDR.W    R3,??DataTable1_11  ;; 0x40494b85
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+32]
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable1_12  ;; 0x9999999a
        LDR.W    R3,??DataTable1_13  ;; 0x4062d999
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.W    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable1_6  ;; 0xcccccccd
        LDR.N    R3,??DataTable1_14  ;; 0x40620ccc
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+4]
//   86         
//   87         if ( line.pos[1] > -110 && line.pos[1] < 110 ) //enable
        LDR.N    R0,??DataTable1_2
        LDRSH    R0,[R0, #+4]
        CMN      R0,#+109
        BLT.N    ??DateAnalyse_1
        LDR.N    R0,??DataTable1_2
        LDRSH    R0,[R0, #+4]
        CMP      R0,#+110
        BGE.N    ??DateAnalyse_1
//   88         {
//   89           line.flag1 =1; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_2
        STRB     R0,[R1, #+0]
//   90         }
//   91       }
//   92       
//   93       if ( !( (sensor.error[1] < 5 ) && (sensor.error[1] > -1) && ( sensor.error[2] < 0 ) ))
??DateAnalyse_1:
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        CMP      R0,#+5
        BGE.N    ??DateAnalyse_2
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        CMP      R0,#+0
        BMI.N    ??DateAnalyse_2
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        CMP      R0,#+0
        BMI.W    ??DateAnalyse_3
//   94       {
//   95         line.pos[2] =  
//   96         -175 
//   97           -194.3*sensor.error[1] 
//   98             -283*sensor.error[2] 
//   99               + 165.5*sensor.error[1]*sensor.error[1] 
//  100                 + 280*sensor.error[1]*sensor.error[2] 
//  101                   + 222.4*sensor.error[2]*sensor.error[2] 
//  102                     + 47.54*sensor.error[1]*sensor.error[1]*sensor.error[1] 
//  103                       + 135.1*sensor.error[1]*sensor.error[1]*sensor.error[2] 
//  104                         + 299*sensor.error[1]*sensor.error[2]*sensor.error[2] 
//  105                           + 222*sensor.error[2]*sensor.error[2]*sensor.error[2];
??DateAnalyse_2:
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable1_12  ;; 0x9999999a
        LDR.N    R3,??DataTable1_15  ;; 0x40684999
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_16  ;; 0xc065e000
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        MOVW     R1,#+283
        SMULBB   R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_17  ;; 0x4064b000
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        LDR.N    R1,??DataTable1_1
        LDRSH    R1,[R1, #+36]
        SMULBB   R0,R0,R1
        MOV      R1,#+280
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable1_6  ;; 0xcccccccd
        LDR.N    R3,??DataTable1_18  ;; 0x406bcccc
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable1_19  ;; 0xb851eb85
        LDR.N    R3,??DataTable1_20  ;; 0x4047c51e
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        BL       __aeabi_i2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable1_21  ;; 0x4060e333
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        BL       __aeabi_i2d
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+34]
        LDR.N    R1,??DataTable1_1
        LDRSH    R1,[R1, #+36]
        SMULBB   R0,R0,R1
        LDR.N    R1,??DataTable1_1
        LDRSH    R1,[R1, #+36]
        MULS     R0,R1,R0
        MOVW     R1,#+299
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+36]
        LDR.N    R1,??DataTable1_1
        LDRSH    R1,[R1, #+36]
        SMULBB   R0,R0,R1
        LDR.N    R1,??DataTable1_1
        LDRSH    R1,[R1, #+36]
        MULS     R0,R1,R0
        MOVS     R1,#+222
        MULS     R0,R1,R0
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+6]
//  106         if ( line.pos[2] > -110 && line.pos [2] < 110 )
        LDR.N    R0,??DataTable1_2
        LDRSH    R0,[R0, #+6]
        CMN      R0,#+109
        BLT.N    ??DateAnalyse_3
        LDR.N    R0,??DataTable1_2
        LDRSH    R0,[R0, #+6]
        CMP      R0,#+110
        BGE.N    ??DateAnalyse_3
//  107         {
//  108           line.flag2 =1; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_2
        STRB     R0,[R1, #+1]
//  109         }
//  110       }
//  111       
//  112       if ( line.flag1 && line.flag2 )
??DateAnalyse_3:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DateAnalyse_4
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??DateAnalyse_4
//  113       {
//  114         line.pos[3] = line.pos[0];
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+2]
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+8]
//  115         line.pos[0] = ( line.pos[1] +line.pos[2] ) / 2;
        LDR.N    R0,??DataTable1_2
        LDRSH    R0,[R0, #+4]
        LDR.N    R1,??DataTable1_2
        LDRSH    R1,[R1, #+6]
        ADDS     R0,R1,R0
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+2]
        B.N      ??DateAnalyse_5
//  116       }
//  117       else if ( line.flag1 && !line.flag2 )
??DateAnalyse_4:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??DateAnalyse_6
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??DateAnalyse_6
//  118       {
//  119         line.pos[3] = line.pos[0];
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+2]
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+8]
//  120         line.pos[0] = line.pos[1] ;
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+4]
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+2]
        B.N      ??DateAnalyse_5
//  121       }
//  122       else if ( !line.flag1 && line.flag2 )
??DateAnalyse_6:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??DateAnalyse_7
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??DateAnalyse_7
//  123       {
//  124         line.pos[3] = line.pos[0];
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+2]
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+8]
//  125         line.pos[0] = line.pos[2];
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+6]
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+2]
        B.N      ??DateAnalyse_5
//  126       }
//  127       else if ( !line.flag1 && !line.flag2 )
??DateAnalyse_7:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??DateAnalyse_5
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??DateAnalyse_5
//  128       {
//  129         line.pos[0] = line.pos[3];
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+8]
        LDR.N    R1,??DataTable1_2
        STRH     R0,[R1, #+2]
//  130       }
//  131     
//  132            
//  133            
//  134         
//  135 ///*protest*/      
//  136 //      if ( ( line.pos[0] - line.pos[1] ) >= 20 )
//  137 //      {
//  138 //        line.pos[0] = line.pos[1] + 20;
//  139 //      }
//  140 //      else if ( ( line.pos[0] - line.pos[1] ) <= -210 )
//  141 //      {
//  142 //        line.pos[0] = line.pos[1] - 20;
//  143 //      }
//  144 //      
//  145 //      line.pos[1] = line.pos[0];
//  146       
//  147       push(0,line.pos[0]);
??DateAnalyse_5:
        LDR.N    R0,??DataTable1_2
        LDRH     R1,[R0, #+2]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,#+0
        BL       `push`
//  148     }             
//  149 }
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     LDC_data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x40696333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x405a6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x40669000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     0x4065fccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     0xa3d70a3d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x403dbd70

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x1eb851ec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     0x40494b85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     0x4062d999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0x40620ccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0x40684999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     0xc065e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     0x4064b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     0x406bcccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     0xb851eb85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     0x4047c51e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     0x4060e333

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  150 
// 
//    76 bytes in section .bss
// 1 840 bytes in section .text
// 
// 1 840 bytes of CODE memory
//    76 bytes of DATA memory
//
//Errors: none
//Warnings: 2
