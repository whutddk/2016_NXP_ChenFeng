///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  17:38:46
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\SENSOR\DEV_LDC1051.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\SENSOR\DEV_LDC1051.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\DEV_LDC1051.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_SYSTICK_DelayUs
        EXTERN SPI_GPIO_Init
        EXTERN SPI_Read_Buf
        EXTERN SPI_WriteReg
        EXTERN orgVal

        PUBLIC LDC1051_STATUE
        PUBLIC LDC1051_init
        PUBLIC LDC1051_read
        PUBLIC LDC1051_result

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\SENSOR\DEV_LDC1051.c
//    1 #include "include.h"
//    2 #include "DEV_LDC1051.h"
//    3 
//    4 extern uint8 orgVal[30];

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void LDC1051_init()
//    6 {
LDC1051_init:
        PUSH     {R7,LR}
//    7   SPI_GPIO_Init();
        BL       SPI_GPIO_Init
//    8   LPLD_SYSTICK_DelayUs(15); 
        MOVS     R0,#+15
        BL       LPLD_SYSTICK_DelayUs
//    9   SPI_WriteReg(LDC1051_RPMAX,0x15);
        MOVS     R1,#+21
        MOVS     R0,#+1
        BL       SPI_WriteReg
//   10   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   11   SPI_WriteReg(LDC1051_RPMIN,0x31);
        MOVS     R1,#+49
        MOVS     R0,#+2
        BL       SPI_WriteReg
//   12   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   13   SPI_WriteReg(LDC1051_WATCHDOG, 0x7c);
        MOVS     R1,#+124
        MOVS     R0,#+3
        BL       SPI_WriteReg
//   14   LPLD_SYSTICK_DelayUs(5); 
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   15   SPI_WriteReg(LDC1051_LDCCONFIG, 0x12);
        MOVS     R1,#+18
        MOVS     R0,#+4
        BL       SPI_WriteReg
//   16   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   17   SPI_WriteReg(LDC1051_INTCONFIG, 0x02);
        MOVS     R1,#+2
        MOVS     R0,#+10
        BL       SPI_WriteReg
//   18   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   19   SPI_WriteReg(LDC1051_PWRCONFIG, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       SPI_WriteReg
//   20   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   21   //SPI_WriteReg(LDC1051_THRESHIMSB, 0x14);
//   22   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   23   //SPI_WriteReg(LDC1051_THRESLOMSB, 0x12);
//   24   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   25   SPI_Read_Buf(LDC1051_DEVID,&orgVal[0],12);
        MOVS     R2,#+12
        LDR.N    R1,??DataTable1
        MOVS     R0,#+0
        BL       SPI_Read_Buf
//   26 }
        POP      {R0,PC}          ;; return
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   28 uint8 LDC1051_result;
LDC1051_result:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   29 uint8 LDC1051_STATUE;
LDC1051_STATUE:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   30 void LDC1051_read()
//   31 {
LDC1051_read:
        PUSH     {R7,LR}
//   32   uint8 temp[2] = {0}; 
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
//   33   SPI_Read_Buf(LDC1051_DEVID,&orgVal[0],12);
        MOVS     R2,#+12
        LDR.N    R1,??DataTable1
        MOVS     R0,#+0
        BL       SPI_Read_Buf
//   34   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   35   SPI_Read_Buf(LDC1051_STATUS,&LDC1051_STATUE,12);
        MOVS     R2,#+12
        LDR.N    R1,??DataTable1_1
        MOVS     R0,#+32
        BL       SPI_Read_Buf
//   36   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   37   SPI_Read_Buf(LDC1051_PROXMSB,&LDC1051_result,1);								 	    		
        MOVS     R2,#+1
        LDR.N    R1,??DataTable1_2
        MOVS     R0,#+34
        BL       SPI_Read_Buf
//   38   //result = temp[0];
//   39 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     orgVal

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     LDC1051_STATUE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     LDC1051_result

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 0, 0

        END
// 
//   2 bytes in section .bss
//   2 bytes in section .rodata
// 184 bytes in section .text
// 
// 184 bytes of CODE  memory
//   2 bytes of CONST memory
//   2 bytes of DATA  memory
//
//Errors: none
//Warnings: 1
