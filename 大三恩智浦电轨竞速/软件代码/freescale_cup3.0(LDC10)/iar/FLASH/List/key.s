///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  16:39:14
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\ITAC\key.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\ITAC\key.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\key.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_EnableIrq
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_memcpy4
        EXTERN bz_set
        EXTERN sensor_isr

        PUBLIC key
        PUBLIC key_init

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\ITAC\key.c
//    1 #include "include.h"
//    2 
//    3 
//    4 #define KEY_A  PTB20_I
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void key_init()
//    7 {
key_init:
        PUSH     {LR}
        SUB      SP,SP,#+28
//    8   GPIO_InitTypeDef key_inittype;
//    9   
//   10   key_inittype.GPIO_PTx = PTB;
        LDR.N    R0,??DataTable1  ;; 0x400ff040
        STR      R0,[SP, #+4]
//   11   key_inittype.GPIO_Pins = GPIO_Pin17 | GPIO_Pin20 | GPIO_Pin21 | GPIO_Pin22 | GPIO_Pin23; 
        MOVS     R0,#+15859712
        STR      R0,[SP, #+8]
//   12   key_inittype.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   13   key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_FA; //上拉 下降沿触发外部中断
        LDR.N    R0,??DataTable1_1  ;; 0xa0003
        STR      R0,[SP, #+12]
//   14   key_inittype.GPIO_Isr = key;
        ADR.W    R0,key
        STR      R0,[SP, #+20]
//   15   LPLD_GPIO_Init(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   16   
//   17   //使能中断
//   18   LPLD_GPIO_EnableIrq(key_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   19 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   20 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   21 void key()
//   22 {
key:
        PUSH     {R4,LR}
//   23   uint8 i = 0;
        MOVS     R4,#+0
//   24 
//   25   // bz_set(datarec);
//   26   if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin23) //上 中断
        LDR.N    R0,??DataTable1_2  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+8
        BPL.N    ??key_0
//   27   {
//   28     LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_2  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//   29     
//   30     //操作
//   31     
//   32     return;
        B.N      ??key_1
//   33   }
//   34   
//   35   if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin20) //中 中断
??key_0:
        LDR.N    R0,??DataTable1_2  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+11
        BPL.N    ??key_2
//   36   {
//   37     LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_2  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//   38     
//   39     //操作
//   40     
//   41     if(KEY_A == 0)
        LDR.N    R0,??DataTable1_3  ;; 0x43fe0a50
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??key_3
//   42     {
//   43       //去抖
//   44       LPLD_LPTMR_DelayMs(5);
        MOVS     R0,#+5
        BL       LPLD_LPTMR_DelayMs
//   45       
//   46       if(KEY_A == 0)
        LDR.N    R0,??DataTable1_3  ;; 0x43fe0a50
        LDR      R0,[R0, #+0]
//   47       {
//   48         
//   49       }
//   50       
//   51         //直到按键松开再运行
//   52         while(KEY_A == 0)
??key_4:
        LDR.N    R0,??DataTable1_3  ;; 0x43fe0a50
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??key_5
//   53         {
//   54           for(i=0;i<250;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??key_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+250
        BGE.N    ??key_4
//   55           {
//   56             
//   57            LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//   58           sensor_isr();
        BL       sensor_isr
//   59          // PIT2_init();
//   60           }
        ADDS     R4,R4,#+1
        B.N      ??key_6
//   61         
//   62         } 
//   63        
//   64         bz_set(datarec);
??key_5:
        MOVS     R0,#+1
        BL       bz_set
//   65       }
//   66       
//   67     return;
??key_3:
        B.N      ??key_1
//   68   }
//   69 
//   70   if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin22) //左 中断
??key_2:
        LDR.N    R0,??DataTable1_2  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+9
        BPL.N    ??key_7
//   71   {
//   72     LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_2  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//   73     
//   74     //操作
//   75     
//   76     return;
        B.N      ??key_1
//   77   }
//   78 
//   79   if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin17) //右 中断
??key_7:
        LDR.N    R0,??DataTable1_2  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??key_8
//   80   {
//   81     LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_2  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//   82     
//   83     //操作
//   84     
//   85     return;
        B.N      ??key_1
//   86   }
//   87 
//   88   if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin21) //下 中断
??key_8:
        LDR.N    R0,??DataTable1_2  ;; 0x4004a0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+10
        BPL.N    ??key_9
//   89   {
//   90     LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_2  ;; 0x4004a0a0
        STR      R0,[R1, #+0]
//   91     
//   92     //操作
//   93     
//   94     return;
        B.N      ??key_1
//   95   }
//   96   
//   97   
//   98   
//   99 }
??key_9:
??key_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0xa0003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x4004a0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x43fe0a50

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
// 238 bytes in section .text
// 
// 238 bytes of CODE memory
//
//Errors: none
//Warnings: none
