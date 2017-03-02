///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       18/Oct/2015  16:10:11
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\IMG\CCD.c
//    Command line =  
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\IMG\CCD.c
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
//        X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\iar\FLASH\List\CCD.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_ADC_Chn_Enable
        EXTERN LPLD_ADC_Get
        EXTERN LPLD_ADC_Init
        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Output_b
        EXTERN __aeabi_memcpy4
        EXTERN img

        PUBLIC CCD_init
        PUBLIC ImageCapture
        PUBLIC SamplingDelay
        PUBLIC StartIntegration
        PUBLIC ccdadc_struct
        PUBLIC ccdgpio_struct

// X:\whutddk\飞思卡尔\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup1.0\app\IMG\CCD.c
//    1 #include "include.h"
//    2 
//    3 
//    4 /*************************************************************************
//    5 *                             蓝宙电子工作室
//    6 *
//    7 *  函数名称：CCD_init
//    8 *  功能说明：CCD初始化
//    9 *  参数说明：
//   10 *  函数返回：无
//   11 *  修改时间：2012-10-20
//   12 *  备    注：李锐戈 2015 9 13
//   13 *************************************************************************/
//   14 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   15 GPIO_InitTypeDef ccdgpio_struct;
ccdgpio_struct:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   16 ADC_InitTypeDef ccdadc_struct;
ccdadc_struct:
        DS8 20
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void CCD_init()
//   19 {
CCD_init:
        PUSH     {R7,LR}
//   20   ccdgpio_struct.GPIO_PTx = PTA;
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+0]
//   21   ccdgpio_struct.GPIO_Pins = GPIO_Pin28 | GPIO_Pin29 ;
        MOVS     R0,#+805306368
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+4]
//   22   ccdgpio_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+12]
//   23   ccdgpio_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+13]
//   24   ccdgpio_struct.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   25   LPLD_GPIO_Init(ccdgpio_struct);//SI CLK
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   26   
//   27   ccdadc_struct.ADC_Adcx = ADC0;
        LDR.N    R0,??DataTable2_2  ;; 0x4003b000
        LDR.N    R1,??DataTable2_3
        STR      R0,[R1, #+0]
//   28   ccdadc_struct.ADC_BitMode = SE_8BIT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+5]
//   29   ccdadc_struct.ADC_DiffMode = ADC_SE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+4]
//   30   ccdadc_struct.ADC_SampleTimeCfg = SAMTIME_SHORT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+6]
//   31   ccdadc_struct.ADC_HwAvgSel = HW_DISAVG ;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+8]
//   32   ccdadc_struct.ADC_CalEnable = TRUE;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+11]
//   33   ccdadc_struct.ADC_DmaEnable = FALSE;        //使能DMA
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+13]
//   34   ccdadc_struct.ADC_HwTrgCfg = HW_TRGDSABLE;      //配置为硬件触发转换
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_3
        STRB     R0,[R1, #+12]
//   35   
//   36   LPLD_ADC_Init(ccdadc_struct);
        LDR.N    R1,??DataTable2_3
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_ADC_Init
//   37   LPLD_ADC_Chn_Enable(ADC0, AD8); //ccd0
        MOVS     R1,#+8
        LDR.N    R0,??DataTable2_2  ;; 0x4003b000
        BL       LPLD_ADC_Chn_Enable
//   38   LPLD_ADC_Chn_Enable(ADC0, AD9); //ccd1
        MOVS     R1,#+9
        LDR.N    R0,??DataTable2_2  ;; 0x4003b000
        BL       LPLD_ADC_Chn_Enable
//   39   LPLD_ADC_Chn_Enable(ADC0, AD12); //ccd2
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2_2  ;; 0x4003b000
        BL       LPLD_ADC_Chn_Enable
//   40 }
        POP      {R0,PC}          ;; return
//   41 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   42 void StartIntegration(void) 
//   43 {
StartIntegration:
        PUSH     {R4,LR}
//   44   
//   45   uint8 i;
//   46   
//   47   SI_SetVal();            /* SI  = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   48   SamplingDelay();
        BL       SamplingDelay
//   49   CLK_SetVal();           /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   50   SamplingDelay();
        BL       SamplingDelay
//   51   SI_ClrVal();            /* SI  = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   52   SamplingDelay();
        BL       SamplingDelay
//   53   CLK_ClrVal();           /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   54   
//   55   for(i=0; i<127; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??StartIntegration_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BGE.N    ??StartIntegration_1
//   56   {
//   57     SamplingDelay();
        BL       SamplingDelay
//   58     SamplingDelay();
        BL       SamplingDelay
//   59     CLK_SetVal();       /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   60     SamplingDelay();
        BL       SamplingDelay
//   61     SamplingDelay();
        BL       SamplingDelay
//   62     CLK_ClrVal();       /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   63   }
        ADDS     R4,R4,#+1
        B.N      ??StartIntegration_0
//   64   SamplingDelay();
??StartIntegration_1:
        BL       SamplingDelay
//   65   SamplingDelay();
        BL       SamplingDelay
//   66   CLK_SetVal();           /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   67   SamplingDelay();
        BL       SamplingDelay
//   68   SamplingDelay();
        BL       SamplingDelay
//   69   CLK_ClrVal();           /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   70 }
        POP      {R4,PC}          ;; return
//   71 
//   72 
//   73 /*************************************************************************
//   74 *                           蓝宙电子工作室
//   75 *
//   76 *  函数名称：ImageCapture
//   77 *  功能说明：CCD采样程序
//   78 *  参数说明：* ImageData   采样数组
//   79 *  函数返回：无
//   80 *  修改时间：2012-10-20
//   81 *  备    注：
//   82 *ImageData =  ad_once(ADC1, AD6a, ADC_8bit);
//   83 *************************************************************************/
//   84 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 void ImageCapture() 
//   86 {
ImageCapture:
        PUSH     {R4-R6,LR}
//   87   
//   88   uint8_t i;
//   89   uint8 *i1 = &img.Pixel[0][0];
        LDR.N    R5,??DataTable2_4
//   90   uint8 *i2 = &img.Pixel[1][0];
        LDR.N    R6,??DataTable2_5
//   91   extern uint8_t AtemP ;
//   92   
//   93   SI_SetVal();            /* SI  = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+28
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   94   SamplingDelay();
        BL       SamplingDelay
//   95   CLK_SetVal();           /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   96   SamplingDelay();
        BL       SamplingDelay
//   97   SI_ClrVal();            /* SI  = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+28
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//   98   SamplingDelay();
        BL       SamplingDelay
//   99   
//  100   //Delay 10us for sample the first pixel
//  101   /**/
//  102   for(i = 0; i < 250; i++) {                    //更改250，让CCD的图像看上去比较平滑，
        MOVS     R0,#+0
        MOVS     R4,R0
??ImageCapture_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+250
        BGE.N    ??ImageCapture_1
//  103     SamplingDelay() ;  //200ns                  //把该值改大或者改小达到自己满意的结果。
        BL       SamplingDelay
//  104   }
        ADDS     R4,R4,#+1
        B.N      ??ImageCapture_0
//  105   
//  106   //Sampling Pixel 1
//  107   
//  108   *i1 =  LPLD_ADC_Get(ADC0, AD9);
??ImageCapture_1:
        MOVS     R1,#+9
        LDR.N    R0,??DataTable2_2  ;; 0x4003b000
        BL       LPLD_ADC_Get
        STRB     R0,[R5, #+0]
//  109   i1 ++ ;
        ADDS     R5,R5,#+1
//  110   *i2 =  LPLD_ADC_Get(ADC0, AD12);
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2_2  ;; 0x4003b000
        BL       LPLD_ADC_Get
        STRB     R0,[R6, #+0]
//  111   i2 ++ ;
        ADDS     R6,R6,#+1
//  112   CLK_ClrVal();           /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  113   
//  114   for(i=0; i<127; i++) {
        MOVS     R0,#+0
        MOVS     R4,R0
??ImageCapture_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+127
        BGE.N    ??ImageCapture_3
//  115     SamplingDelay();
        BL       SamplingDelay
//  116     SamplingDelay();
        BL       SamplingDelay
//  117     CLK_SetVal();       /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  118     SamplingDelay();
        BL       SamplingDelay
//  119     SamplingDelay();
        BL       SamplingDelay
//  120     //Sampling Pixel 2~128
//  121     
//  122     *i1 =  LPLD_ADC_Get(ADC0, AD9);
        MOVS     R1,#+9
        LDR.N    R0,??DataTable2_2  ;; 0x4003b000
        BL       LPLD_ADC_Get
        STRB     R0,[R5, #+0]
//  123     *i2 =  LPLD_ADC_Get(ADC0, AD12);
        MOVS     R1,#+12
        LDR.N    R0,??DataTable2_2  ;; 0x4003b000
        BL       LPLD_ADC_Get
        STRB     R0,[R6, #+0]
//  124     i1 ++ ;
        ADDS     R5,R5,#+1
//  125     i2 ++;
        ADDS     R6,R6,#+1
//  126     CLK_ClrVal();       /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  127   }
        ADDS     R4,R4,#+1
        B.N      ??ImageCapture_2
//  128   SamplingDelay();
??ImageCapture_3:
        BL       SamplingDelay
//  129   SamplingDelay();
        BL       SamplingDelay
//  130   CLK_SetVal();           /* CLK = 1 */
        MOVS     R2,#+1
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  131   SamplingDelay();
        BL       SamplingDelay
//  132   SamplingDelay();
        BL       SamplingDelay
//  133   CLK_ClrVal();           /* CLK = 0 */
        MOVS     R2,#+0
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x400ff000
        BL       LPLD_GPIO_Output_b
//  134   
//  135 }
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x400ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ccdgpio_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     ccdadc_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     img

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     img+0x80
//  136 
//  137 
//  138 
//  139 
//  140 /*************************************************************************
//  141 *                           蓝宙电子工作室
//  142 *
//  143 *  函数名称：SamplingDelay
//  144 *  功能说明：CCD延时程序 200ns
//  145 *  参数说明：
//  146 *  函数返回：无
//  147 *  修改时间：2012-10-20
//  148 *  备    注：
//  149 *************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  150 void SamplingDelay(void)
//  151 {
SamplingDelay:
        SUB      SP,SP,#+4
//  152   vuint8 i ;
//  153   for(i=0;i<1;i++) 
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
??SamplingDelay_0:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??SamplingDelay_1
//  154   {
//  155     asm("nop");
        nop
//  156     asm("nop");
        nop
//  157   }
        LDRB     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??SamplingDelay_0
//  158   
//  159 }
??SamplingDelay_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  160 
//  161 
// 
//  40 bytes in section .bss
// 558 bytes in section .text
// 
// 558 bytes of CODE memory
//  40 bytes of DATA memory
//
//Errors: none
//Warnings: none
