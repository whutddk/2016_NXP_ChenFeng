///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  17:41:23
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\SENSOR\DEV_LDC1000.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\SENSOR\DEV_LDC1000.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\DEV_LDC1000.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_SYSTICK_DelayUs
        EXTERN SPI_GPIO_Init
        EXTERN SPI_Read_Buf
        EXTERN SPI_WriteReg

        PUBLIC LDC1000_init
        PUBLIC LDC1000_read
        PUBLIC orgVal
        PUBLIC result

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\SENSOR\DEV_LDC1000.c
//    1 #include "include.h"
//    2 #include "DEV_LDC1000.h"
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 uint8 orgVal[30] = {0};
orgVal:
        DS8 32

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void LDC1000_init()
//    6 {
LDC1000_init:
        PUSH     {R7,LR}
//    7   SPI_GPIO_Init();
        BL       SPI_GPIO_Init
//    8   SPI_WriteReg(LDC1000_CMD_RPMAX,0x00 );
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       SPI_WriteReg
//    9   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   10   SPI_WriteReg(LDC1000_CMD_RPMIN,0x3f);
        MOVS     R1,#+63
        MOVS     R0,#+2
        BL       SPI_WriteReg
//   11   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   12   SPI_WriteReg(LDC1000_CMD_SENSORFREQ, 0xA9);
        MOVS     R1,#+169
        MOVS     R0,#+3
        BL       SPI_WriteReg
//   13   LPLD_SYSTICK_DelayUs(5); //谐振频率计算方法见《浮点科技电轨传感器调试手册》
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   14   SPI_WriteReg(LDC1000_CMD_LDCCONFIG, 0x17);
        MOVS     R1,#+23
        MOVS     R0,#+4
        BL       SPI_WriteReg
//   15   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   16   SPI_WriteReg(LDC1000_CMD_CLKCONFIG, 0x00);
        MOVS     R1,#+0
        MOVS     R0,#+5
        BL       SPI_WriteReg
//   17   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   18   SPI_WriteReg(LDC1000_CMD_INTCONFIG, 0x02);
        MOVS     R1,#+2
        MOVS     R0,#+10
        BL       SPI_WriteReg
//   19   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   20   SPI_WriteReg(LDC1000_CMD_PWRCONFIG, 0x01);
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       SPI_WriteReg
//   21   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   22   SPI_WriteReg(LDC1000_CMD_THRESHILSB, 0x50);
        MOVS     R1,#+80
        MOVS     R0,#+6
        BL       SPI_WriteReg
//   23   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   24   SPI_WriteReg(LDC1000_CMD_THRESHIMSB, 0x14);
        MOVS     R1,#+20
        MOVS     R0,#+7
        BL       SPI_WriteReg
//   25   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   26   SPI_WriteReg(LDC1000_CMD_THRESLOLSB, 0xC0);
        MOVS     R1,#+192
        MOVS     R0,#+8
        BL       SPI_WriteReg
//   27   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   28   SPI_WriteReg(LDC1000_CMD_THRESLOMSB, 0x12);
        MOVS     R1,#+18
        MOVS     R0,#+9
        BL       SPI_WriteReg
//   29   LPLD_SYSTICK_DelayUs(5);
        MOVS     R0,#+5
        BL       LPLD_SYSTICK_DelayUs
//   30   //FLOAT_Singal_SPI_Write(LDC1000_CMD_PWRCONFIG,0x01);	
//   31   SPI_Read_Buf(LDC1000_CMD_REVID,&orgVal[0],12);
        MOVS     R2,#+12
        LDR.N    R1,??DataTable1
        MOVS     R0,#+0
        BL       SPI_Read_Buf
//   32 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   33 uint16 result  = 0;
result:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void LDC1000_read()
//   35 {
LDC1000_read:
        PUSH     {R7,LR}
//   36   uint8 temp[2] = {0}; 
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
//   37   SPI_Read_Buf(LDC1000_CMD_REVID,&orgVal[0],12);
        MOVS     R2,#+12
        LDR.N    R1,??DataTable1
        MOVS     R0,#+0
        BL       SPI_Read_Buf
//   38   SPI_Read_Buf(LDC1000_CMD_PROXLSB,&temp[0],2);								 	    		
        MOVS     R2,#+2
        ADD      R1,SP,#+0
        MOVS     R0,#+33
        BL       SPI_Read_Buf
//   39   result = temp[0]<<8 | temp[1];
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        ORRS     R0,R1,R0, LSL #+8
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
//   40 }
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
        DC32     result

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
//  34 bytes in section .bss
//   2 bytes in section .rodata
// 226 bytes in section .text
// 
// 226 bytes of CODE  memory
//   2 bytes of CONST memory
//  34 bytes of DATA  memory
//
//Errors: none
//Warnings: none
