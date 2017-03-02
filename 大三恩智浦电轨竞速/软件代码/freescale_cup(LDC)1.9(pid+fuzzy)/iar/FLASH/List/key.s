///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:56
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\key.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\key.c"
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\key.s
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
        PUBLIC key_inittype

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\key.c
//    1 #include "include.h"
//    2 
//    3 
//    4 #define KEY_A  PTE7_I
//    5 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 GPIO_InitTypeDef key_inittype;
key_inittype:
        DS8 20
//    7 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    8 void key_init()
//    9 {
key_init:
        PUSH     {R7,LR}
//   10   
//   11   key_inittype.GPIO_PTx = PTE;
        LDR.N    R0,??DataTable1  ;; 0x400ff100
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   12   key_inittype.GPIO_Pins = GPIO_Pin6 | GPIO_Pin7 | GPIO_Pin10 | GPIO_Pin11 | GPIO_Pin12; 
        MOV      R0,#+7360
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+4]
//   13   key_inittype.GPIO_Dir = DIR_INPUT;        //输入
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_1
        STRB     R0,[R1, #+12]
//   14   key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_FA; //上拉 下降沿触发外部中断
        LDR.N    R0,??DataTable1_2  ;; 0xa0003
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+8]
//   15   key_inittype.GPIO_Isr = key;
        ADR.W    R0,key
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+16]
//   16   LPLD_GPIO_Init(key_inittype);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   17   
//   18   //使能中断
//   19   LPLD_GPIO_EnableIrq(key_inittype);
        LDR.N    R1,??DataTable1_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_EnableIrq
//   20 }
        POP      {R0,PC}          ;; return
//   21 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   22 void key()
//   23 {
key:
        PUSH     {R4,LR}
//   24   uint8 i = 0;
        MOVS     R4,#+0
//   25   
//   26   
//   27   
//   28   // bz_set(datarec);
//   29   if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin6) //上 中断
        LDR.N    R0,??DataTable1_3  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??key_0
//   30   {
//   31     LPLD_GPIO_ClearIntFlag(PORTE);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_3  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   32     
//   33     //操作
//   34     
//   35     return;
        B.N      ??key_1
//   36   }
//   37   
//   38   
//   39   
//   40   
//   41   
//   42   if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin7) //中 中断
??key_0:
        LDR.N    R0,??DataTable1_3  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??key_2
//   43   {
//   44     LPLD_GPIO_ClearIntFlag(PORTE);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_3  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   45     
//   46     //操作
//   47     
//   48     if(KEY_A == 0)
        LDR.N    R0,??DataTable1_4  ;; 0x43fe221c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??key_3
//   49     {
//   50       //去抖
//   51       LPLD_LPTMR_DelayMs(5);
        MOVS     R0,#+5
        BL       LPLD_LPTMR_DelayMs
//   52       
//   53       if(KEY_A == 0)
        LDR.N    R0,??DataTable1_4  ;; 0x43fe221c
        LDR      R0,[R0, #+0]
//   54       {
//   55         
//   56       }
//   57       
//   58         //直到按键松开再运行
//   59         while(KEY_A == 0)
??key_4:
        LDR.N    R0,??DataTable1_4  ;; 0x43fe221c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??key_5
//   60         {
//   61           for(i=0;i<250;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??key_6:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+250
        BGE.N    ??key_4
//   62           {
//   63             
//   64            LPLD_LPTMR_DelayMs(10);
        MOVS     R0,#+10
        BL       LPLD_LPTMR_DelayMs
//   65           sensor_isr();
        BL       sensor_isr
//   66          // PIT2_init();
//   67           }
        ADDS     R4,R4,#+1
        B.N      ??key_6
//   68         
//   69         } 
//   70        
//   71         bz_set(datarec);
??key_5:
        MOVS     R0,#+1
        BL       bz_set
//   72       }
//   73       
//   74     return;
??key_3:
        B.N      ??key_1
//   75   }
//   76   
//   77   
//   78   
//   79   
//   80   
//   81   if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin10) //左 中断
??key_2:
        LDR.N    R0,??DataTable1_3  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??key_7
//   82   {
//   83     LPLD_GPIO_ClearIntFlag(PORTE);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_3  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   84     
//   85     //操作
//   86     
//   87     return;
        B.N      ??key_1
//   88   }
//   89   
//   90   
//   91   
//   92   
//   93   if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin11) //右 中断
??key_7:
        LDR.N    R0,??DataTable1_3  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BPL.N    ??key_8
//   94   {
//   95     LPLD_GPIO_ClearIntFlag(PORTE);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_3  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//   96     
//   97     //操作
//   98     
//   99     return;
        B.N      ??key_1
//  100   }
//  101   
//  102   
//  103   
//  104   if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin12) //下 中断
??key_8:
        LDR.N    R0,??DataTable1_3  ;; 0x4004d0a0
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BPL.N    ??key_9
//  105   {
//  106     LPLD_GPIO_ClearIntFlag(PORTE);//清中断标志
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_3  ;; 0x4004d0a0
        STR      R0,[R1, #+0]
//  107     
//  108     //操作
//  109     
//  110     return;
        B.N      ??key_1
//  111   }
//  112   
//  113   
//  114   
//  115 }
??key_9:
??key_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     key_inittype

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0xa0003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x4004d0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x43fe221c

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
//  20 bytes in section .bss
// 246 bytes in section .text
// 
// 246 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
