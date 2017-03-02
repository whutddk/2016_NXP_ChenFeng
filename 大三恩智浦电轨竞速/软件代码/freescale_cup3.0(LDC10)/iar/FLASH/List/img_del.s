///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       18/Oct/2015  16:10:13
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\IMG\img_del.c
//    Command line =  
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\IMG\img_del.c
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\List\
//        -lB
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\List\
//        -o
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\MAIN\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\BSP\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\CTL\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\IMG\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\app\ITAC\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\CPU\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\common\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\LPLD\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\LPLD\HW\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\FatFs\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\FatFs\option\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\USB\common\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\USB\driver\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\USB\descriptor\
//        -I
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\..\..\..\lib\USB\class\
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\List\img_del.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_i2f
        EXTERN __aeabi_memclr4
        EXTERN __aeabi_ui2f

        PUBLIC OST_AVE
        PUBLIC OTSU_Method
        PUBLIC img

// X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\IMG\img_del.c
//    1 #include "include.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    3 struct _img img;
img:
        DS8 432
//    4 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void OST_AVE()
//    6 {
OST_AVE:
        PUSH     {R4}
//    7   uint8 i ;
//    8   uint8 max = 0;
        MOVS     R0,#+0
//    9   uint8 min = 255;
        MOVS     R1,#+255
//   10   
//   11   for ( i = 0;i < 128; i++ )
        MOVS     R3,#+0
        MOVS     R2,R3
??OST_AVE_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+128
        BGE.N    ??OST_AVE_1
//   12   {
//   13     if ( img.Pixel[0][i] > max )
        LDR.N    R3,??DataTable1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R3,[R2, R3]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R3
        BCS.N    ??OST_AVE_2
//   14     {
//   15       max = img.Pixel[0][i];
        LDR.N    R3,??DataTable1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R3,[R2, R3]
        MOVS     R0,R3
//   16     }
//   17     if ( img.Pixel[0][i] < min )
??OST_AVE_2:
        LDR.N    R3,??DataTable1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R3,[R2, R3]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R3,R1
        BCS.N    ??OST_AVE_3
//   18     {
//   19       min = img.Pixel[0][i];
        LDR.N    R3,??DataTable1
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R3,[R2, R3]
        MOVS     R1,R3
//   20     }
//   21   }
??OST_AVE_3:
        ADDS     R2,R2,#+1
        B.N      ??OST_AVE_0
//   22   
//   23   img.THR = min + ( max - min ) / 2;
??OST_AVE_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R3,R0,R1
        MOVS     R4,#+2
        SDIV     R3,R3,R4
        ADDS     R3,R3,R1
        LDR.N    R4,??DataTable1
        STRB     R3,[R4, #+384]
//   24 }
        POP      {R4}
        BX       LR               ;; return
//   25 
//   26 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   27 void OTSU_Method()
//   28 {
OTSU_Method:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+556
//   29   uint8* ImgAddr = &img.Pixel[0][0];            //指针指向像素BUFF
        LDR.N    R0,??DataTable1
        STR      R0,[SP, #+12]
//   30   
//   31   //初始化
//   32   uint16 GrayLevel[256]={ 0 };         //buff直方图
        ADD      R0,SP,#+44
        MOV      R1,#+512
        BL       __aeabi_memclr4
//   33   float u0 = 0 , u1 = 0;
        MOVS     R9,#+0
        MOVS     R8,#+0
//   34   float w0 = 0 , w1 = 0 , RlTempO , RlMaxO = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
        MOVS     R0,#+0
        STR      R0,[SP, #+40]
        MOVS     R0,#+0
        STR      R0,[SP, #+32]
//   35   uint16 Size = 0;
        MOVS     R0,#+0
        STRH     R0,[SP, #+8]
//   36   uint32 TotalGrayLevel = 0 ;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   37   uint16 Count = 0 ;
        MOVS     R0,#+0
        STRH     R0,[SP, #+6]
//   38   uint32 CurrentGrayLevel ;
//   39   uint32 SumGray = 0;
        MOVS     R4,#+0
//   40   uint8   ThresholdVal = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   41   uint32 Total;
//   42   int32  p;
//   43   uint8 j ,i;
//   44   uint16 Gray;
//   45   uint8 num;
//   46   
//   47   uint16* GrayPtr = & GrayLevel[0];
        ADD      R11,SP,#+44
//   48     
//   49     //直方图统计
//   50     for(j = 0; j < CCD_USED ; j ++) //只用0,1不用BUFF【2】 n个ccd一起统计
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
??OTSU_Method_0:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+0
        BNE.N    ??OTSU_Method_1
//   51     {
//   52       ImgAddr = &img.Pixel[0][0] + j * 128;
        LDR.N    R0,??DataTable1
        LDRB     R1,[SP, #+4]
        MOVS     R2,#+128
        MLA      R0,R2,R1,R0
        STR      R0,[SP, #+12]
//   53       for( i = 0; i < 127; i = i+ 2)
        MOVS     R0,#+0
        MOVS     R6,R0
??OTSU_Method_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+127
        BGE.N    ??OTSU_Method_3
//   54       {                                                 //只统计了半个图
//   55         if( *(ImgAddr + i) > CCD_GIT )               //对原始曲线进行一个限幅，防止反光
        LDR      R0,[SP, #+12]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R0]
        CMP      R0,#+191
        BLT.N    ??OTSU_Method_4
//   56         {
//   57           *(ImgAddr + i) = CCD_GIT;                //对原始曲线进行一个限幅，防止反光
        MOVS     R0,#+190
        LDR      R1,[SP, #+12]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R0,[R6, R1]
//   58         }
//   59         GrayLevel[*(ImgAddr + i)]++;               //直方图统计
??OTSU_Method_4:
        ADD      R0,SP,#+44
        LDR      R1,[SP, #+12]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R1,[R6, R1]
        ADD      R2,SP,#+44
        LDR      R3,[SP, #+12]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R3,[R6, R3]
        LDRH     R2,[R2, R3, LSL #+1]
        ADDS     R2,R2,#+1
        STRH     R2,[R0, R1, LSL #+1]
//   60       }
        ADDS     R6,R6,#+2
        B.N      ??OTSU_Method_2
//   61 //      if( j == 0 )
//   62 //        FindMaxMinGray(GrayLevel);     //未知用途，暂时屏蔽
//   63     }  
??OTSU_Method_3:
        LDRB     R0,[SP, #+4]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+4]
        B.N      ??OTSU_Method_0
//   64     
//   65     //平均滤波
//   66     for( Gray = 0; Gray < 256; Gray++ )     //灰度遍历
??OTSU_Method_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??OTSU_Method_5:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+255
        BGT.N    ??OTSU_Method_6
//   67     {
//   68       Total = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
//   69       for( num = 0; num < 5; num++ )         //这种滤波？？？？
        MOVS     R0,#+0
        MOVS     R7,R0
??OTSU_Method_7:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+5
        BGE.N    ??OTSU_Method_8
//   70       {
//   71         p = Gray + num;
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTAH    R0,R7,R5
        STR      R0,[SP, #+20]
//   72         if( p > 255 ) 
        LDR      R0,[SP, #+20]
        CMP      R0,#+255
        BLE.N    ??OTSU_Method_9
//   73         { 
//   74           p = 255; 
        MOVS     R0,#+255
        STR      R0,[SP, #+20]
//   75         }
//   76         Total += GrayLevel[p];
??OTSU_Method_9:
        LDR      R0,[SP, #+24]
        ADD      R1,SP,#+44
        LDR      R2,[SP, #+20]
        LDRH     R1,[R1, R2, LSL #+1]
        UXTAH    R0,R0,R1
        STR      R0,[SP, #+24]
//   77       }
        ADDS     R7,R7,#+1
        B.N      ??OTSU_Method_7
//   78       GrayLevel[Gray] = (uint8)((float)Total / 5 + 0.5);    //合成到一个灰度值的数目
??OTSU_Method_8:
        LDR      R0,[SP, #+24]
        BL       __aeabi_ui2f
        LDR.N    R1,??DataTable1_1  ;; 0x40a00000
        BL       __aeabi_fdiv
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_2  ;; 0x3fe00000
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      R1,SP,#+44
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STRH     R0,[R1, R5, LSL #+1]
//   79     }
        ADDS     R5,R5,#+1
        B.N      ??OTSU_Method_5
//   80     
//   81     
//   82     //求出总像素值
//   83     for(Gray = 0; Gray <= 255; Gray++)
??OTSU_Method_6:
        MOVS     R0,#+0
        MOVS     R5,R0
??OTSU_Method_10:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+255
        BGT.N    ??OTSU_Method_11
//   84     {
//   85       if( *(GrayPtr) != 0 )
        LDRH     R0,[R11, #+0]
        CMP      R0,#+0
        BEQ.N    ??OTSU_Method_12
//   86       {
//   87         TotalGrayLevel += (uint32)(*(GrayPtr) * i); //总的质量距
        LDR      R0,[SP, #+16]
        LDRH     R1,[R11, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MLA      R0,R6,R1,R0
        STR      R0,[SP, #+16]
//   88         Size += *(GrayPtr);                         //总的点数
        LDRH     R0,[SP, #+8]
        LDRH     R1,[R11, #+0]
        ADDS     R0,R1,R0
        STRH     R0,[SP, #+8]
//   89       }
//   90       GrayPtr++;
??OTSU_Method_12:
        ADDS     R11,R11,#+2
//   91     }
        ADDS     R5,R5,#+1
        B.N      ??OTSU_Method_10
//   92     
//   93     
//   94     //遍历寻找最大
//   95     for(CurrentGrayLevel = 0; CurrentGrayLevel < 256; CurrentGrayLevel++)
??OTSU_Method_11:
        MOVS     R0,#+0
        MOV      R10,R0
??OTSU_Method_13:
        CMP      R10,#+255
        BHI.N    ??OTSU_Method_14
//   96     {
//   97       if(SumGray == TotalGrayLevel)   //居然会超？？？？？
        LDR      R0,[SP, #+16]
        CMP      R4,R0
        BEQ.N    ??OTSU_Method_14
//   98       {
//   99         break;
//  100       }
//  101       if(GrayLevel[CurrentGrayLevel] == 0)
??OTSU_Method_15:
        ADD      R0,SP,#+44
        LDRH     R0,[R0, R10, LSL #+1]
        CMP      R0,#+0
        BEQ.N    ??OTSU_Method_16
//  102       {
//  103         continue;
//  104       }
//  105       
//  106       SumGray += (uint32)(GrayLevel[CurrentGrayLevel] * CurrentGrayLevel);   //前景质量距
??OTSU_Method_17:
        ADD      R0,SP,#+44
        LDRH     R0,[R0, R10, LSL #+1]
        MLA      R4,R10,R0,R4
//  107       Count += GrayLevel[CurrentGrayLevel];     //前景点数                                                      
        LDRH     R0,[SP, #+6]
        ADD      R1,SP,#+44
        LDRH     R1,[R1, R10, LSL #+1]
        ADDS     R0,R1,R0
        STRH     R0,[SP, #+6]
//  108       
//  109       w0 = (float)Count / Size;                 //不除SiZE也可以,不影响最大值点的位置
        LDRH     R0,[SP, #+6]
        BL       __aeabi_ui2f
        STR      R0,[SP, #+0]
        LDRH     R0,[SP, #+8]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        LDR      R0,[SP, #+0]
        BL       __aeabi_fdiv
        STR      R0,[SP, #+28]
//  110       u0 = (Count == 0 ? 0 : ((float)SumGray / Count));
        LDRH     R0,[SP, #+6]
        CMP      R0,#+0
        BNE.N    ??OTSU_Method_18
        MOVS     R9,#+0
        B.N      ??OTSU_Method_19
??OTSU_Method_18:
        MOVS     R0,R4
        BL       __aeabi_ui2f
        MOV      R9,R0
        LDRH     R0,[SP, #+6]
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOV      R0,R9
        BL       __aeabi_fdiv
        MOV      R9,R0
//  111       
//  112       w1 = (float)(1 - w0);
??OTSU_Method_19:
        MOVS     R0,#+1065353216
        LDR      R1,[SP, #+28]
        BL       __aeabi_fsub
        STR      R0,[SP, #+40]
//  113       u1 = ( Size - Count != 0 ? (float)(TotalGrayLevel - SumGray) / (Size - Count) : 0 );
        LDRH     R0,[SP, #+8]
        LDRH     R1,[SP, #+6]
        SUBS     R0,R0,R1
        CMP      R0,#+0
        BEQ.N    ??OTSU_Method_20
        LDR      R0,[SP, #+16]
        SUBS     R0,R0,R4
        BL       __aeabi_ui2f
        MOV      R8,R0
        LDRH     R0,[SP, #+8]
        LDRH     R1,[SP, #+6]
        SUBS     R0,R0,R1
        BL       __aeabi_i2f
        MOVS     R1,R0
        MOV      R0,R8
        BL       __aeabi_fdiv
        MOV      R8,R0
        B.N      ??OTSU_Method_21
??OTSU_Method_20:
        MOVS     R8,#+0
//  114       
//  115       RlTempO = w0 * w1 * (u0 - u1) * (u0 - u1);
??OTSU_Method_21:
        LDR      R0,[SP, #+28]
        LDR      R1,[SP, #+40]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOV      R0,R9
        MOV      R1,R8
        BL       __aeabi_fsub
        LDR      R1,[SP, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+0]
        MOV      R0,R9
        MOV      R1,R8
        BL       __aeabi_fsub
        LDR      R1,[SP, #+0]
        BL       __aeabi_fmul
        STR      R0,[SP, #+36]
//  116       if(RlTempO > RlMaxO)
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+36]
        BL       __aeabi_cfcmple
        BCS.N    ??OTSU_Method_16
//  117       {
//  118         RlMaxO = RlTempO;
        LDR      R0,[SP, #+36]
        STR      R0,[SP, #+32]
//  119         //img.THR = (uint8)CurrentGrayLevel;
//  120         ThresholdVal = (uint8)CurrentGrayLevel;
        MOV      R0,R10
        STRB     R0,[SP, #+5]
//  121       }
//  122     }
??OTSU_Method_16:
        ADDS     R10,R10,#+1
        B.N      ??OTSU_Method_13
//  123     
//  124   
//  125   img.THR =  ThresholdVal ;
??OTSU_Method_14:
        LDRB     R0,[SP, #+5]
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+384]
//  126 }
        ADD      SP,SP,#+556
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     img

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x40a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x3fe00000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC16 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        END
//  127 
//  128 
// 
// 432 bytes in section .bss
// 512 bytes in section .rodata
// 694 bytes in section .text
// 
// 694 bytes of CODE  memory
// 512 bytes of CONST memory
// 432 bytes of DATA  memory
//
//Errors: none
//Warnings: none
