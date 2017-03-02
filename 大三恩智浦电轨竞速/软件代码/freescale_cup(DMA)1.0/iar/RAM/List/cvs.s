///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Mar/2016  20:36:08
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\SENSOR\cvs.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\SENSOR\cvs.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\SENSOR\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\cvs.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_DMA_Init
        EXTERN LPLD_GPIO_Init
        EXTERN __aeabi_memcpy4

        PUBLIC DMA_cntget0
        PUBLIC DMA_cntget1
        PUBLIC ICDMA_init
        PUBLIC ICGPIO_init
        PUBLIC count_init
        PUBLIC dma_init
        PUBLIC gpio_init
        PUBLIC trick

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\SENSOR\cvs.c
//    1 #include "include.h"
//    2 
//    3 //DMA 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 GPIO_InitTypeDef ICGPIO_init;
ICGPIO_init:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    5 DMA_InitTypeDef ICDMA_init;
ICDMA_init:
        DS8 44
//    6 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//    7 uint8 trick[2] = {0,0};
trick:
        DS8 2
//    8 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void gpio_init()
//   10 {
gpio_init:
        PUSH     {R7,LR}
//   11   ICGPIO_init.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable3  ;; 0x400ff000
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//   12   ICGPIO_init.GPIO_Pins = GPIO_Pin19;
        MOVS     R0,#+524288
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+4]
//   13   ICGPIO_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+12]
//   14   ICGPIO_init.GPIO_PinControl = IRQC_DMAFA | INPUT_PULL_UP; //
        LDR.N    R0,??DataTable3_2  ;; 0x20003
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+8]
//   15   LPLD_GPIO_Init(ICGPIO_init); 
        LDR.N    R1,??DataTable3_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   16   
//   17   ICGPIO_init.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable3_3  ;; 0x400ff040
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+0]
//   18   ICGPIO_init.GPIO_Pins = GPIO_Pin0;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+4]
//   19   ICGPIO_init.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_1
        STRB     R0,[R1, #+12]
//   20   ICGPIO_init.GPIO_PinControl = IRQC_DMAFA | INPUT_PULL_UP; //
        LDR.N    R0,??DataTable3_2  ;; 0x20003
        LDR.N    R1,??DataTable3_1
        STR      R0,[R1, #+8]
//   21   LPLD_GPIO_Init(ICGPIO_init); 
        LDR.N    R1,??DataTable3_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   22 }
        POP      {R0,PC}          ;; return
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void dma_init()
//   25 {
dma_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   26   //DMA参数配置
//   27   ICDMA_init.DMA_CHx = DMA_CH0;    //CH0通道
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+0]
//   28   ICDMA_init.DMA_Req = PORTA_DMAREQ;       //PORTE为请求源
        MOVS     R0,#+49
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+1]
//   29   ICDMA_init.DMA_MajorLoopCnt = 0x7fff; //主循环计数值：行采集点数，宽度
        MOVW     R0,#+32767
        LDR.N    R1,??DataTable3_4
        STRH     R0,[R1, #+4]
//   30   ICDMA_init.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+8]
//   31   ICDMA_init.DMA_SourceAddr = (uint32)&trick[0];        //源地址：PTD8~15
        LDR.N    R0,??DataTable3_5
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+12]
//   32   ICDMA_init.DMA_DestAddr =  (uint32)&trick[1];      //目的地址：存放图像的数组
        LDR.N    R0,??DataTable3_6
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+24]
//   33   ICDMA_init.DMA_DestAddrOffset = 0;       //目的地址偏移：每次读入增加1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_4
        STRH     R0,[R1, #+30]
//   34   ICDMA_init.DMA_AutoDisableReq = TRUE;    //自动禁用请求
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+36]
//   35   
//   36   //初始化DMA
//   37   LPLD_DMA_Init(ICDMA_init);
        LDR.N    R1,??DataTable3_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//   38   
//   39     //DMA参数配置
//   40   ICDMA_init.DMA_CHx = DMA_CH1;    //CH0通道
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+0]
//   41   ICDMA_init.DMA_Req = PORTB_DMAREQ;       //PORTE为请求源
        MOVS     R0,#+50
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+1]
//   42   ICDMA_init.DMA_MajorLoopCnt = 0x7fff; //主循环计数值：行采集点数，宽度
        MOVW     R0,#+32767
        LDR.N    R1,??DataTable3_4
        STRH     R0,[R1, #+4]
//   43   ICDMA_init.DMA_MinorByteCnt = 1; //次循环字节计数：每次读入1字节
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+8]
//   44   ICDMA_init.DMA_SourceAddr = (uint32)&trick[0];        //源地址：PTD8~15
        LDR.N    R0,??DataTable3_5
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+12]
//   45   ICDMA_init.DMA_DestAddr =  (uint32)&trick[1];      //目的地址：存放图像的数组
        LDR.N    R0,??DataTable3_6
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+24]
//   46   ICDMA_init.DMA_DestAddrOffset = 0;       //目的地址偏移：每次读入增加1
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_4
        STRH     R0,[R1, #+30]
//   47   ICDMA_init.DMA_AutoDisableReq = TRUE;    //自动禁用请求
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+36]
//   48   
//   49   LPLD_DMA_Init(ICDMA_init);
        LDR.N    R1,??DataTable3_4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+44
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_DMA_Init
//   50   
//   51   //检测到场开始信号，加载目的地址
//   52     LPLD_DMA_LoadDstAddr(DMA_CH0,&trick[1]);
        LDR.N    R0,??DataTable3_6
        LDR.N    R1,??DataTable3_7  ;; 0x40009010
        STR      R0,[R1, #+0]
//   53     LPLD_DMA_EnableReq(DMA_CH0);  
        LDR.N    R0,??DataTable3_8  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable3_8  ;; 0x4000800c
        STR      R0,[R1, #+0]
//   54     
//   55       //检测到场开始信号，加载目的地址
//   56     LPLD_DMA_LoadDstAddr(DMA_CH1,&trick[1]);
        LDR.N    R0,??DataTable3_6
        LDR.N    R1,??DataTable3_9  ;; 0x40009030
        STR      R0,[R1, #+0]
//   57     LPLD_DMA_EnableReq(DMA_CH1);  
        LDR.N    R0,??DataTable3_8  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable3_8  ;; 0x4000800c
        STR      R0,[R1, #+0]
//   58 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   59 
//   60 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   61 uint32 count_init = 0x7fff;
count_init:
        DATA
        DC32 32767
//   62 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 uint32 DMA_cntget0()
//   64 {
//   65   uint32 temp ;
//   66   temp = count_init - DMA0->TCD[0].CITER_ELINKNO;
DMA_cntget0:
        LDR.N    R1,??DataTable3_10
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable3_11  ;; 0x40009016
        LDRH     R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R1,R2
        MOVS     R0,R1
//   67     DMA0->TCD[0].CITER_ELINKNO = 0x7fff;
        MOVW     R1,#+32767
        LDR.N    R2,??DataTable3_11  ;; 0x40009016
        STRH     R1,[R2, #+0]
//   68     LPLD_DMA_LoadDstAddr(DMA_CH0,&trick[1]);
        LDR.N    R1,??DataTable3_6
        LDR.N    R2,??DataTable3_7  ;; 0x40009010
        STR      R1,[R2, #+0]
//   69     LPLD_DMA_EnableReq(DMA_CH0);  
        LDR.N    R1,??DataTable3_8  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR.N    R2,??DataTable3_8  ;; 0x4000800c
        STR      R1,[R2, #+0]
//   70   return  temp;
        BX       LR               ;; return
//   71 }
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 uint32 DMA_cntget1()
//   74 {
//   75   uint32 temp ;
//   76   temp = count_init - DMA0->TCD[1].CITER_ELINKNO;
DMA_cntget1:
        LDR.N    R1,??DataTable3_10
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable3_12  ;; 0x40009036
        LDRH     R2,[R2, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        SUBS     R1,R1,R2
        MOVS     R0,R1
//   77     DMA0->TCD[1].CITER_ELINKNO = 0x7fff;
        MOVW     R1,#+32767
        LDR.N    R2,??DataTable3_12  ;; 0x40009036
        STRH     R1,[R2, #+0]
//   78     LPLD_DMA_LoadDstAddr(DMA_CH1,&trick[1]);
        LDR.N    R1,??DataTable3_6
        LDR.N    R2,??DataTable3_9  ;; 0x40009030
        STR      R1,[R2, #+0]
//   79     LPLD_DMA_EnableReq(DMA_CH1);  
        LDR.N    R1,??DataTable3_8  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x2
        LDR.N    R2,??DataTable3_8  ;; 0x4000800c
        STR      R1,[R2, #+0]
//   80   return  temp;
        BX       LR               ;; return
//   81 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     ICGPIO_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x20003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     ICDMA_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     trick

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     trick+0x1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x40009030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     count_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x40009016

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0x40009036

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
//  66 bytes in section .bss
//   4 bytes in section .data
// 410 bytes in section .text
// 
// 410 bytes of CODE memory
//  70 bytes of DATA memory
//
//Errors: none
//Warnings: none
