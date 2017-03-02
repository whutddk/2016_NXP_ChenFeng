///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       12/Mar/2016  16:29:03
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_ADC.c
//    Command line =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_ADC.c -D LPLD_K60 -D
//        USE_K60DZ10 -lCN
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\HW_ADC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC ADC0_IRQHandler
        PUBLIC ADC1_IRQHandler
        PUBLIC ADC_ISR
        PUBLIC LPLD_ADC_Chn_Enable
        PUBLIC LPLD_ADC_Deinit
        PUBLIC LPLD_ADC_DisableIrq
        PUBLIC LPLD_ADC_EnableConversion
        PUBLIC LPLD_ADC_EnableIrq
        PUBLIC LPLD_ADC_Get
        PUBLIC LPLD_ADC_GetResult
        PUBLIC LPLD_ADC_GetSC1nCOCO
        PUBLIC LPLD_ADC_Init

// D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_ADC.c
//    1 /**
//    2  * @file HW_ADC.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief ADC底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable10  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R3,R0,#+5
        STR      R1,[R2, R3, LSL #+2]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable10_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R3,R0,#+5
        STR      R1,[R2, R3, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_ADC.h"
//   24 
//   25 //用户自定义中断服务函数数组
//   26 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 ADC_ISR_CALLBACK ADC_ISR[2];
ADC_ISR:
        DS8 8
//   28 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   29 ADC_ISR_CALLBACK ADC_ISR[4];
//   30 #endif
//   31 static uint8 LPLD_ADC_Cal(ADC_Type *);
//   32 
//   33 /*
//   34  * LPLD_ADC_Init
//   35  * ADC通用初始化函数，选择ADCx、采集模式、精度等参数
//   36  * 
//   37  * 参数:
//   38  *    adc_init_structure--ADC初始化结构体，
//   39  *                        具体定义见ADC_InitTypeDef
//   40  *
//   41  * 输出:
//   42  *    0--配置错误
//   43  *    1--配置成功
//   44  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 uint8 LPLD_ADC_Init(ADC_InitTypeDef adc_init_structure)
//   46 {
LPLD_ADC_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R11,LR}
//   47   uint8 i;
//   48   ADC_Type *adcx = adc_init_structure.ADC_Adcx;
        LDR      R4,[SP, #+40]
//   49   uint8 diff = adc_init_structure.ADC_DiffMode;
        LDRB     R5,[SP, #+44]
//   50   uint8 mode = adc_init_structure.ADC_BitMode;
        LDRB     R0,[SP, #+45]
        STRB     R0,[SP, #+1]
//   51   uint8 time = adc_init_structure.ADC_SampleTimeCfg;
        LDRB     R6,[SP, #+46]
//   52   uint8 ltime = adc_init_structure.ADC_LongSampleTimeSel;
        LDRB     R0,[SP, #+47]
        STRB     R0,[SP, #+0]
//   53   uint8 avg = adc_init_structure.ADC_HwAvgSel;
        LDRB     R7,[SP, #+48]
//   54   uint8 muxab = adc_init_structure.ADC_MuxSel;
        LDRB     R8,[SP, #+50]
//   55   uint8 pga = adc_init_structure.ADC_PgaGain;
        LDRB     R9,[SP, #+49]
//   56   uint8 hwtrg = adc_init_structure.ADC_HwTrgCfg;
        LDRB     R10,[SP, #+52]
//   57   ADC_ISR_CALLBACK isr_func = adc_init_structure.ADC_Isr;
        LDR      R11,[SP, #+56]
//   58   
//   59   //参数检查
//   60   ASSERT( (diff==ADC_SE)||(diff==ADC_DIFF) );  //判断模式选择
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??LPLD_ADC_Init_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BEQ.N    ??LPLD_ADC_Init_0
        MOVS     R1,#+60
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   61   ASSERT( mode<=SE_16BIT );       //判断精度选择
??LPLD_ADC_Init_0:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+4
        BLT.N    ??LPLD_ADC_Init_1
        MOVS     R1,#+61
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   62   ASSERT( (time==SAMTIME_SHORT)||(time==SAMTIME_LONG) );  //判断采样时间选择
??LPLD_ADC_Init_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??LPLD_ADC_Init_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+16
        BEQ.N    ??LPLD_ADC_Init_2
        MOVS     R1,#+62
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   63   ASSERT( ltime<=LSAMTIME_2EX );  //判断长采样时间
??LPLD_ADC_Init_2:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+4
        BLT.N    ??LPLD_ADC_Init_3
        MOVS     R1,#+63
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   64   ASSERT( (avg&0x3)<=(HW_32AVG&0x3) );  //判断硬件平均
??LPLD_ADC_Init_3:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R0,R7,#0x3
        CMP      R0,#+4
        BCC.N    ??LPLD_ADC_Init_4
        MOVS     R1,#+64
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   65   ASSERT( (muxab==MUX_ADXXA)||(muxab==MUX_ADXXB) );  //判断ADC复用AB选择
??LPLD_ADC_Init_4:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_ADC_Init_5
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+16
        BEQ.N    ??LPLD_ADC_Init_5
        MOVS     R1,#+65
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   66   ASSERT( (pga&0x7)<=(LSAMTIME_2EX&0x7));  //判断PGA
??LPLD_ADC_Init_5:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ANDS     R0,R9,#0x7
        CMP      R0,#+4
        BLT.N    ??LPLD_ADC_Init_6
        MOVS     R1,#+66
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   67   
//   68   //配置ADC时钟
//   69   if(adcx == ADC0)
??LPLD_ADC_Init_6:
        LDR.W    R0,??DataTable10_3  ;; 0x4003b000
        CMP      R4,R0
        BNE.N    ??LPLD_ADC_Init_7
//   70   {
//   71     i=0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//   72     SIM->SCGC6 |= SIM_SCGC6_ADC0_MASK;   // 开启ADC0时钟
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_ADC_Init_8
//   73   }
//   74   else if(adcx == ADC1)
??LPLD_ADC_Init_7:
        LDR.W    R0,??DataTable10_5  ;; 0x400bb000
        CMP      R4,R0
        BNE.N    ??LPLD_ADC_Init_9
//   75   {
//   76     i=1;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
//   77     SIM->SCGC3 |= SIM_SCGC3_ADC1_MASK;   // 开启ADC1时钟
        LDR.W    R0,??DataTable10_6  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable10_6  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_ADC_Init_8
//   78   }
//   79 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   80   else if(adcx == ADC2)
//   81   {
//   82     i=2;
//   83     SIM->SCGC6 |= SIM_SCGC6_ADC2_MASK;   // 开启ADC1时钟
//   84   }
//   85   else if(adcx == ADC3)
//   86   {
//   87     i=3;
//   88     SIM->SCGC3 |= SIM_SCGC3_ADC3_MASK;   // 开启ADC1时钟
//   89   }
//   90 #endif
//   91   else 
//   92   {
//   93     return 0;
??LPLD_ADC_Init_9:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Init_10
//   94   }
//   95 
//   96   if(adc_init_structure.ADC_CalEnable == TRUE)
??LPLD_ADC_Init_8:
        LDRB     R0,[SP, #+51]
        CMP      R0,#+1
        BNE.N    ??LPLD_ADC_Init_11
//   97     LPLD_ADC_Cal(adcx);  //进行ADC校准
        MOVS     R0,R4
        BL       LPLD_ADC_Cal
//   98   
//   99   //设置ADCCFG1寄存器
//  100   adcx->CFG1  =  0& (~ADC_CFG1_ADLPC_MASK)         // 重新为正常使用进行配置
//  101                   | ADC_CFG1_ADIV(ADIV_1)          // ADC输入时钟分频为 1
//  102                   | time                           // 设置长短时间采样模式
//  103                   | ADC_CFG1_ADICLK(ADICLK_BUS_2)  // ADC输入时钟源为 BusClk
//  104                   | ADC_CFG1_MODE(mode);           //设置ADC转换精度
??LPLD_ADC_Init_11:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[SP, #+1]
        LSLS     R0,R0,#+2
        ANDS     R0,R0,#0xC
        ORRS     R0,R0,R6
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+8]
//  105 
//  106   //设置ADCCFG2寄存器
//  107   adcx->CFG2 = 0 & (~ADC_CFG2_ADACKEN_MASK)   //禁用异步时钟输出
//  108                  | muxab        // ADC复用选择
//  109                  | ADC_CFG2_ADHSC_MASK        // 高速转换
//  110                  | ADC_CFG2_ADLSTS(ltime);    // 长采样时间时钟周期选择
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDRB     R0,[SP, #+0]
        ANDS     R0,R0,#0x3
        ORRS     R0,R0,R8
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+12]
//  111                                               // 总采样周期见K60技术文档 page:840
//  112   //用于设定阈值
//  113   adcx->CV1  = 0x1234u ; 
        MOVW     R0,#+4660
        STR      R0,[R4, #+24]
//  114   adcx->CV2  = 0x5678u ;
        MOVW     R0,#+22136
        STR      R0,[R4, #+28]
//  115   
//  116   adcx->SC2  = 0 | (hwtrg & ADC_SC2_ADTRG_MASK) //设置触发方式
//  117                  & (~ADC_SC2_ACFE_MASK)         //关闭比较功能
//  118                  & (~ADC_SC2_DMAEN_MASK)        //关闭DMA
//  119                  |  ADC_SC2_ACREN_MASK          //使能范围比较
//  120                  |  ADC_SC2_ACFGT_MASK          //使能大于比较功能
//  121                  |  ADC_SC2_REFSEL(REFSEL_EXT); //选择外部参考源VREFH和VREFL
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R0,R10,#0x40
        ORRS     R0,R0,#0x18
        STR      R0,[R4, #+32]
//  122   
//  123   if(adc_init_structure.ADC_DmaEnable == TRUE) 
        LDRB     R0,[SP, #+53]
        CMP      R0,#+1
        BNE.N    ??LPLD_ADC_Init_12
//  124     adcx->SC2  |= ADC_SC2_DMAEN_MASK;   //使能DMA
        LDR      R0,[R4, #+32]
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+32]
//  125 
//  126   adcx->SC3  = 0 & (~ADC_SC3_CAL_MASK)          //关闭校准
//  127                  & (~ADC_SC3_ADCO_MASK)         //选择一次转换
//  128                  |  avg;        //硬件平均
??LPLD_ADC_Init_12:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R7,[R4, #+36]
//  129   
//  130   adcx->PGA  = pga<<ADC_PGA_PGAG_SHIFT; 
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSLS     R0,R9,#+16
        STR      R0,[R4, #+80]
//  131   
//  132   //校准完毕后再重新初始化ADC寄存器
//  133   //adcx->SC1[0] = ADC_SC1_ADCH(AD31);    //复位SC1
//  134   adcx->SC1[hwtrg & 0x01] = diff;         //设置单端、差分输入
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R0,R10,#0x1
        STR      R5,[R4, R0, LSL #+2]
//  135   
//  136   if(isr_func!= NULL)
        MOV      R0,R11
        CMP      R0,#+0
        BEQ.N    ??LPLD_ADC_Init_13
//  137   {
//  138     ADC_ISR[i] = isr_func;
        LDR.W    R0,??DataTable10_7
        LDRB     R1,[SP, #+2]
        STR      R11,[R0, R1, LSL #+2]
//  139   }
//  140   
//  141   return 1;
??LPLD_ADC_Init_13:
        MOVS     R0,#+1
??LPLD_ADC_Init_10:
        POP      {R1,R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  142 }
//  143 
//  144 /*
//  145  * LPLD_ADC_Deinit
//  146  * ADC反初始化函数，禁用ADC模块
//  147  * 
//  148  * 参数:
//  149  *    adc_init_structure--ADC初始化结构体，
//  150  *                        具体定义见ADC_InitTypeDef
//  151  *
//  152  * 输出:
//  153  *    0--配置错误
//  154  *    1--配置成功
//  155  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  156 uint8 LPLD_ADC_Deinit(ADC_InitTypeDef adc_init_structure)
//  157 {
LPLD_ADC_Deinit:
        PUSH     {R0-R3}
//  158   ADC_Type *adcx = adc_init_structure.ADC_Adcx;
        LDR      R1,[SP, #+0]
//  159   uint8 hwtrg = adc_init_structure.ADC_HwTrgCfg;
        LDRB     R2,[SP, #+12]
//  160   
//  161   adcx->SC1[hwtrg & 0x01] = ADC_SC1_ADCH(AD31);    //复位SC1
        MOVS     R0,#+31
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R3,R2,#0x1
        STR      R0,[R1, R3, LSL #+2]
//  162   
//  163   //配置ADC时钟
//  164   if(adcx == ADC0)
        LDR.W    R0,??DataTable10_3  ;; 0x4003b000
        CMP      R1,R0
        BNE.N    ??LPLD_ADC_Deinit_0
//  165   {
//  166     SIM->SCGC6 &= ~(SIM_SCGC6_ADC0_MASK);   // 关闭ADC0时钟
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.W    R3,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R3, #+0]
        B.N      ??LPLD_ADC_Deinit_1
//  167   }
//  168   else if(adcx == ADC1)
??LPLD_ADC_Deinit_0:
        LDR.W    R0,??DataTable10_5  ;; 0x400bb000
        CMP      R1,R0
        BNE.N    ??LPLD_ADC_Deinit_2
//  169   {
//  170     SIM->SCGC3 &= ~(SIM_SCGC3_ADC1_MASK);   // 关闭ADC1时钟
        LDR.W    R0,??DataTable10_6  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8000000
        LDR.W    R3,??DataTable10_6  ;; 0x40048030
        STR      R0,[R3, #+0]
        B.N      ??LPLD_ADC_Deinit_1
//  171   }
//  172 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  173   else if(adcx == ADC2)
//  174   {
//  175     SIM->SCGC3 &= ~(SIM_SCGC6_ADC2_MASK);   // 开启ADC1时钟
//  176   }
//  177   else if(adcx == ADC3)
//  178   {
//  179     SIM->SCGC3 &= ~(SIM_SCGC3_ADC3_MASK);   // 开启ADC1时钟
//  180   }
//  181 #endif
//  182   else 
//  183   {
//  184     return 0;
??LPLD_ADC_Deinit_2:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Deinit_3
//  185   }
//  186   
//  187   return 1;
??LPLD_ADC_Deinit_1:
        MOVS     R0,#+1
??LPLD_ADC_Deinit_3:
        ADD      SP,SP,#+16
        BX       LR               ;; return
//  188 }
//  189 
//  190 /*
//  191  * LPLD_ADC_Get
//  192  * 软件触发模式获取AD转换结果
//  193  * 
//  194  * 参数:
//  195  *    adcx--ADCx模块号
//  196  *      |__ADC0          --ADC0
//  197  *      |__ADC1          --ADC1
//  198  *      <注:只有MK60F系列含有ADC2,ADC3>
//  199  *      |__ADC2          --ADC2
//  200  *      |__ADC3          --ADC3
//  201  *    chn--ADC采集输入通道,详见技术手册K60P144M100SF2RM第118页
//  202  *      ADC0
//  203  *      |__DAD0          --差分(ADC0_DP0和ADC0_DM0)/单端(ADC0_DP0)
//  204  *      |__DAD1          --差分(ADC0_DP1和ADC0_DM1)/单端(ADC0_DP1)
//  205  *      |__DAD2          --差分(PGA0_DP和PGA0_DM)/单端(PGA0_DP)
//  206  *      |__DAD3          --差分(ADC0_DP3和ADC0_DM3)/单端(ADC0_DP3)
//  207  *      |__AD4           --单端A(保留)/单端B(ADC0_SE4b--PTC2)
//  208  *      |__AD5           --单端A(保留)/单端B(ADC0_SE5b--PTD1)
//  209  *      |__AD6           --单端A(保留)/单端B(ADC0_SE6b--PTD5)
//  210  *      |__AD7           --单端A(保留)/单端B(ADC0_SE7b--PTD6)
//  211  *      |__AD8           --单端(ADC0_SE8--PTB0)
//  212  *      |__AD9           --单端(ADC0_SE9--PTB1)
//  213  *      |__AD10          --单端(ADC0_SE10--PTA7)
//  214  *      |__AD11          --单端(ADC0_SE11--PTA8)
//  215  *      |__AD12          --单端(ADC0_SE12--PTB2)
//  216  *      |__AD13          --单端(ADC0_SE13--PTB3)
//  217  *      |__AD14          --单端(ADC0_SE14--PTC0)
//  218  *      |__AD15          --单端(ADC0_SE15--PTC1)
//  219  *      |__AD16          --单端(ADC0_SE16)
//  220  *      |__AD17          --单端(ADC0_SE17-PTE24)
//  221  *      |__AD18          --单端(ADC0_SE18--PTE25)
//  222  *      |__AD19          --单端(ADC0_DM0)
//  223  *      |__AD20          --单端(ADC0_DM1)
//  224  *      |__AD23          --单端(DAC0)
//  225  *      |__AD26          --温度传感器
//  226  *      |__AD27          --Bandgap
//  227  *      |__AD29          --差分(-VREFH)/单端(VREFH)
//  228  *      |__AD30          --单端(VREFL)
//  229  *      ADC1
//  230  *      |__DAD0          --差分(ADC1_DP0和ADC1_DM0)/单端(ADC1_DP0)
//  231  *      |__DAD1          --差分(ADC1_DP1和ADC1_DM1)/单端(ADC1_DP1)
//  232  *      |__DAD2          --差分(PGA1_DP和PGA1_DM)/单端(PGA1_DP)
//  233  *      |__DAD3          --差分(ADC1_DP3和ADC1_DM3)/单端(ADC1_DP3)
//  234  *      |__AD4           --单端A(ADC1_SE4a--PTE0)/单端B(ADC1_SE4b--PTC8)
//  235  *      |__AD5           --单端A(ADC1_SE5a--PTE1)/单端B(ADC1_SE5b--PTC9)
//  236  *      |__AD6           --单端A(ADC1_SE6a--PTE2)/单端B(ADC1_SE6b--PTC10)
//  237  *      |__AD7           --单端A(ADC1_SE7a--PTE3)/单端B(ADC1_SE7b--PTC11)
//  238  *      |__AD8           --单端(ADC1_SE8--PTB0)
//  239  *      |__AD9           --单端(ADC1_SE9--PTB1)
//  240  *      |__AD10          --单端(ADC1_SE10--PTB4)
//  241  *      |__AD11          --单端(ADC1_SE11--PTB5)
//  242  *      |__AD12          --单端(ADC1_SE12--PTB6)
//  243  *      |__AD13          --单端(ADC1_SE13--PTB7)
//  244  *      |__AD14          --单端(ADC1_SE14--PTB10)
//  245  *      |__AD15          --单端(ADC1_SE15--PTB11)
//  246  *      |__AD16          --单端(ADC1_SE16)
//  247  *      |__AD17          --单端(ADC1_SE17--PTA17)
//  248  *      |__AD18          --单端(VREF)
//  249  *      |__AD19          --单端(ADC1_DM0)
//  250  *      |__AD20          --单端(ADC1_DM1)
//  251  *      |__AD23          --单端(DAC1)
//  252  *      |__AD26          --温度传感器
//  253  *      |__AD27          --Bandgap
//  254  *      |__AD29          --差分(-VREFH)/单端(VREFH)
//  255  *      |__AD30          --单端(VREFL)
//  256  *      <注:只有MK60F系列含有ADC2,ADC3>
//  257  *          详见技术手册K60P144M120SF2RM第131页
//  258  *      ADC2      
//  259  *      |__DAD0          --差分(ADC2_DP0和ADC2_DM0)/单端(ADC2_DP0)
//  260  *      |__DAD1          --差分(ADC2_DP1和ADC2_DM1)/单端(ADC2_DP1)
//  261  *      |__DAD2          --差分(PGA2_DP和PGA2_DM)/单端(PGA2_DP)
//  262  *      |__DAD3          --差分(ADC2_DP3和ADC2_DM3)/单端(ADC2_DP3)
//  263  *      |__AD4           --单端A(ADC2_SE4a--PTB20)/单端B(保留)
//  264  *      |__AD5           --单端A(ADC2_SE5a--PTB21)/单端B(保留)
//  265  *      |__AD6           --单端A(保留)/单端B(保留)
//  266  *      |__AD7           --单端A(保留)/单端B(保留)
//  267  *      |__AD8           --单端(ADC2_SE8--PTB0)
//  268  *      |__AD9           --单端(ADC2_SE9--PTB1)
//  269  *      |__AD10          --单端(ADC2_SE10)
//  270  *      |__AD11          --单端(ADC2_SE11)
//  271  *      |__AD12          --单端(ADC2_SE12--PTA29)
//  272  *      |__AD13          --单端(ADC2_SE13--PTA28)
//  273  *      |__AD14          --单端(ADC2_SE14--PTA27)
//  274  *      |__AD15          --单端(ADC2_SE15--PTA26)
//  275  *      |__AD16          --单端(ADC2_SE16--PTE8)
//  276  *      |__AD17          --单端(ADC2_SE17--PTE9)
//  277  *      |__AD18          --单端(ADC2_SE18)
//  278  *      |__AD19          --单端(ADC2_DM0)
//  279  *      |__AD20          --单端(ADC2_DM1)
//  280  *      |__AD23          --单端(DAC2)
//  281  *      |__AD26          --温度传感器
//  282  *      |__AD27          --Bandgap
//  283  *      |__AD29          --差分(-VREFH)/单端(VREFH)
//  284  *      |__AD30          --单端(VREFL)
//  285  *      ADC3
//  286  *      |__DAD0          --差分(ADC3_DP0和ADC3_DM0)/单端(ADC3_DP0)
//  287  *      |__DAD1          --差分(ADC3_DP1和ADC3_DM1)/单端(ADC3_DP1)
//  288  *      |__DAD2          --差分(PGA3_DP和PGA3_DM)/单端(PGA3_DP)
//  289  *      |__DAD3          --差分(ADC3_DP3和ADC3_DM3)/单端(ADC3_DP3)
//  290  *      |__AD4           --单端A(ADC3_SE4a--PTA10)/单端B(ADC3_SE4b--PTE27)
//  291  *      |__AD5           --单端A(ADC3_SE5a--PTA9)/单端B(ADC3_SE5b--PTE26)
//  292  *      |__AD6           --单端A(ADC3_SE6a--PTA6)/单端B(保留)
//  293  *      |__AD7           --单端A(ADC3_SE7a--PTE28)/单端B(保留)
//  294  *      |__AD8           --单端(ADC3_SE8--PTB0)
//  295  *      |__AD9           --单端(ADC3_SE9--PTB1)
//  296  *      |__AD10          --单端(ADC3_SE10)
//  297  *      |__AD11          --单端(ADC3_SE11)
//  298  *      |__AD12          --单端(ADC3_SE12)
//  299  *      |__AD13          --单端(ADC3_SE13)
//  300  *      |__AD14          --单端(ADC3_SE14)
//  301  *      |__AD15          --单端(ADC3_SE15--PTA11)
//  302  *      |__AD16          --单端(ADC3_SE16--PTE11)
//  303  *      |__AD17          --单端(ADC3_SE17--PTE12)
//  304  *      |__AD18          --单端(VREF)
//  305  *      |__AD19          --单端(ADC3_DM0)
//  306  *      |__AD20          --单端(ADC3_DM1)
//  307  *      |__AD23          --单端(DAC3)
//  308  *      |__AD26          --温度传感器
//  309  *      |__AD27          --Bandgap
//  310  *      |__AD29          --差分(-VREFH)/单端(VREFH)
//  311  *      |__AD30          --单端(VREFL)
//  312  * 输出:
//  313  *    AD通道转换值(右对齐)，若为差分转换结果，则为二进制补码格式(需强制转换为int16)
//  314  *
//  315  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  316 uint16 LPLD_ADC_Get(ADC_Type *adcx, AdcChnEnum_Type chn)
//  317 {
//  318   adcx->SC1[0] &= ~(ADC_SC1_AIEN_MASK);
LPLD_ADC_Get:
        LDR      R2,[R0, #+0]
        BICS     R2,R2,#0x40
        STR      R2,[R0, #+0]
//  319   adcx->SC1[0] &= ~(ADC_SC1_ADCH_MASK);
        LDR      R2,[R0, #+0]
        LSRS     R2,R2,#+5
        LSLS     R2,R2,#+5
        STR      R2,[R0, #+0]
//  320   adcx->SC1[0] |= ADC_SC1_ADCH(chn);
        LDR      R2,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R3,R1,#0x1F
        ORRS     R2,R3,R2
        STR      R2,[R0, #+0]
//  321   while((adcx->SC1[0]&ADC_SC1_COCO_MASK) == 0); //等待转换完成  
??LPLD_ADC_Get_0:
        LDR      R2,[R0, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??LPLD_ADC_Get_0
//  322   return adcx->R[0];
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  323 }
//  324 
//  325 /*
//  326  * LPLD_ADC_EnableConversion
//  327  * 使能ADCx转换通道，用于软件中断、硬件触发等模式
//  328  * 
//  329  * 参数:
//  330  *    adcx--ADCx模块号
//  331  *      |__ADC0          --ADC0
//  332  *      |__ADC1          --ADC1
//  333  *      <注:只有MK60F系列含有ADC2,ADC3>
//  334  *      |__ADC2          --ADC2
//  335  *      |__ADC3          --ADC3
//  336  *    chn--ADC采集输入通道,详见技术手册K60P144M100SF2RM第118页
//  337  *      取值同LPLD_ADC_Get形参chn
//  338  *      <注:只有MK60F系列含有ADC2,ADC3>
//  339  *          MK60F详见技术手册K60P144M120SF2RM第131页
//  340  *    ab--SC1寄存器A、B通道选择
//  341  *      |__0          --A转换通道
//  342  *      |__1          --B转换通道
//  343  *    irq--是否使能转换完成中断
//  344  *      |__TRUE       --使能转换完成中断
//  345  *      |__FALSE      --禁用转换完成中断
//  346  *
//  347  * 输出:
//  348  *    无
//  349  *
//  350  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  351 void LPLD_ADC_EnableConversion(ADC_Type *adcx, AdcChnEnum_Type chn, uint8 ab, boolean irq)
//  352 {
LPLD_ADC_EnableConversion:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  353   //参数检查
//  354   ASSERT( ab<=1 );  //判断AB控制寄存器
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BLT.N    ??LPLD_ADC_EnableConversion_0
        MOV      R1,#+354
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  355   ASSERT( irq<=1 );  //判断是否使能中断
??LPLD_ADC_EnableConversion_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BLT.N    ??LPLD_ADC_EnableConversion_1
        MOVW     R1,#+355
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  356   if(irq == TRUE)
??LPLD_ADC_EnableConversion_1:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_ADC_EnableConversion_2
//  357   {
//  358     adcx->SC1[ab] |= (ADC_SC1_AIEN_MASK);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R4, R6, LSL #+2]
        ORRS     R0,R0,#0x40
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R4, R6, LSL #+2]
//  359   }
//  360   adcx->SC1[ab] &= ~(ADC_SC1_ADCH_MASK);
??LPLD_ADC_EnableConversion_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R4, R6, LSL #+2]
        LSRS     R0,R0,#+5
        LSLS     R0,R0,#+5
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R4, R6, LSL #+2]
//  361   adcx->SC1[ab] |= ADC_SC1_ADCH(chn);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R4, R6, LSL #+2]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R1,R5,#0x1F
        ORRS     R0,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R4, R6, LSL #+2]
//  362 }
        POP      {R0,R4-R7,PC}    ;; return
//  363 
//  364 /*
//  365  * LPLD_ADC_GetResult
//  366  * 获取AD转换结果
//  367  * 
//  368  * 参数:
//  369  *    adcx--ADCx模块号
//  370  *      |__ADC0          --ADC0
//  371  *      |__ADC1          --ADC1
//  372  *      <注:只有MK60F系列含有ADC2,ADC3>
//  373  *      |__ADC2          --ADC2
//  374  *      |__ADC3          --ADC3
//  375  *    ab--SC1寄存器A、B通道选择
//  376  *      |__0          --A转换通道
//  377  *      |__1          --B转换通道
//  378  *
//  379  * 输出:
//  380  *    AD通道转换值(右对齐)，若为差分转换结果，则为二进制补码格式(需强制转换为int16)
//  381  *
//  382  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  383 uint16 LPLD_ADC_GetResult(ADC_Type *adcx, uint8 ab)
//  384 {
LPLD_ADC_GetResult:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  385   //参数检查
//  386   ASSERT( ab<=1 );  //判断AB控制寄存器
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BLT.N    ??LPLD_ADC_GetResult_0
        MOV      R1,#+386
        LDR.N    R0,??DataTable10_2
        BL       assert_failed
//  387   return adcx->R[ab];
??LPLD_ADC_GetResult_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//  388 }
//  389 
//  390 /*
//  391  * LPLD_ADC_GetSC1nCOCO
//  392  * 获取SC1寄存器中COCO位置1的编号
//  393  * 
//  394  * 参数:
//  395  *    adcx--ADCx模块号
//  396  *      |__ADC0          --ADC0
//  397  *      |__ADC1          --ADC1
//  398  *      <注:只有MK60F系列含有ADC2,ADC3>
//  399  *      |__ADC2          --ADC2
//  400  *      |__ADC3          --ADC3
//  401  *
//  402  * 输出:
//  403 *    0--SC1A寄存器COCO位置1
//  404 *    1--SC1B寄存器COCO位置1
//  405  *
//  406  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  407 uint8 LPLD_ADC_GetSC1nCOCO(ADC_Type *adcx)
//  408 {
LPLD_ADC_GetSC1nCOCO:
        MOVS     R1,R0
//  409   if(adcx->SC1[0] & ADC_SC1_COCO_MASK)
        LDR      R0,[R1, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_ADC_GetSC1nCOCO_0
//  410     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_GetSC1nCOCO_1
//  411   if(adcx->SC1[1] & ADC_SC1_COCO_MASK)
??LPLD_ADC_GetSC1nCOCO_0:
        LDR      R0,[R1, #+4]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_ADC_GetSC1nCOCO_2
//  412     return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_ADC_GetSC1nCOCO_1
//  413   return -1;
??LPLD_ADC_GetSC1nCOCO_2:
        MOVS     R0,#+255
??LPLD_ADC_GetSC1nCOCO_1:
        BX       LR               ;; return
//  414 }
//  415 
//  416 /*
//  417  * LPLD_ADC_EnableIrq
//  418  * 使能ADCx中断
//  419  * 
//  420  * 参数:
//  421  *    adc_init_structure--PIT初始化结构体，
//  422  *                        具体定义见ADC_InitTypeDef
//  423  *
//  424  * 输出:
//  425  *    0--配置错误
//  426  *    1--配置成功
//  427  *
//  428  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  429 uint8 LPLD_ADC_EnableIrq(ADC_InitTypeDef adc_init_structure)
//  430 {
LPLD_ADC_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R3-R5,LR}
//  431   uint8 i;
//  432   ADC_Type *adcx = adc_init_structure.ADC_Adcx;
        LDR      R5,[SP, #+16]
//  433   
//  434   if(adcx == ADC0)
        LDR.N    R0,??DataTable10_3  ;; 0x4003b000
        CMP      R5,R0
        BNE.N    ??LPLD_ADC_EnableIrq_0
//  435     i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LPLD_ADC_EnableIrq_1
//  436   else if(adcx == ADC1)
??LPLD_ADC_EnableIrq_0:
        LDR.N    R0,??DataTable10_5  ;; 0x400bb000
        CMP      R5,R0
        BNE.N    ??LPLD_ADC_EnableIrq_2
//  437     i=1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??LPLD_ADC_EnableIrq_1
//  438 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  439   else if(adcx == ADC2)
//  440     i=2;
//  441   else if(adcx == ADC3)
//  442     i=3;
//  443 #endif
//  444   else
//  445     return 0;
??LPLD_ADC_EnableIrq_2:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_EnableIrq_3
//  446 
//  447   enable_irq((IRQn_Type)(ADC0_IRQn + i));
??LPLD_ADC_EnableIrq_1:
        ADDS     R0,R4,#+57
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  448   
//  449   return 1;
        MOVS     R0,#+1
??LPLD_ADC_EnableIrq_3:
        POP      {R1,R4,R5}
        LDR      PC,[SP], #+20    ;; return
//  450 }
//  451 
//  452 /*
//  453  * LPLD_ADC_DisableIrq
//  454  * 禁用ADCx中断
//  455  * 
//  456  * 参数:
//  457  *    adc_init_structure--PIT初始化结构体，
//  458  *                        具体定义见ADC_InitTypeDef
//  459  *
//  460  * 输出:
//  461  *    0--配置错误
//  462  *    1--配置成功
//  463  *
//  464  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  465 uint8 LPLD_ADC_DisableIrq(ADC_InitTypeDef adc_init_structure)
//  466 {
LPLD_ADC_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R3-R5,LR}
//  467   uint8 i;
//  468   ADC_Type *adcx = adc_init_structure.ADC_Adcx;
        LDR      R5,[SP, #+16]
//  469   
//  470   if(adcx == ADC0)
        LDR.N    R0,??DataTable10_3  ;; 0x4003b000
        CMP      R5,R0
        BNE.N    ??LPLD_ADC_DisableIrq_0
//  471     i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LPLD_ADC_DisableIrq_1
//  472   else if(adcx == ADC1)
??LPLD_ADC_DisableIrq_0:
        LDR.N    R0,??DataTable10_5  ;; 0x400bb000
        CMP      R5,R0
        BNE.N    ??LPLD_ADC_DisableIrq_2
//  473     i=1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??LPLD_ADC_DisableIrq_1
//  474 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  475   else if(adcx == ADC2)
//  476     i=2;
//  477   else if(adcx == ADC3)
//  478     i=3;
//  479 #endif
//  480   else
//  481     return 0;
??LPLD_ADC_DisableIrq_2:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_DisableIrq_3
//  482 
//  483   disable_irq((IRQn_Type)(ADC0_IRQn + i));
??LPLD_ADC_DisableIrq_1:
        ADDS     R0,R4,#+57
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  484   
//  485   return 1;
        MOVS     R0,#+1
??LPLD_ADC_DisableIrq_3:
        POP      {R1,R4,R5}
        LDR      PC,[SP], #+20    ;; return
//  486 }
//  487 
//  488 /*
//  489  * LPLD_ADC_Chn_Enable
//  490  * 使能ADCx相应转换通道的AD采集功能
//  491  * 
//  492  * 参数:
//  493  *    adcx--ADCx模块号
//  494  *      |__ADC0          --ADC0
//  495  *      |__ADC1          --ADC1
//  496  *      <注:只有MK60F系列含有ADC2,ADC3>
//  497  *      |__ADC2          --ADC2
//  498  *      |__ADC3          --ADC3
//  499  *    chn--ADC采集输入通道,详见技术手册K60P144M100SF2RM第118页
//  500  *      ADC0
//  501  *      |__DAD0          --差分(ADC0_DP0和ADC0_DM0)/单端(ADC0_DP0)
//  502  *      |__DAD1          --差分(ADC0_DP1和ADC0_DM1)/单端(ADC0_DP1)
//  503  *      |__DAD2          --差分(PGA0_DP和PGA0_DM)/单端(PGA0_DP)
//  504  *      |__DAD3          --差分(ADC0_DP3和ADC0_DM3)/单端(ADC0_DP3)
//  505  *      |__AD4           --单端A(保留)/单端B(ADC0_SE4b--PTC2)
//  506  *      |__AD5           --单端A(保留)/单端B(ADC0_SE5b--PTD1)
//  507  *      |__AD6           --单端A(保留)/单端B(ADC0_SE6b--PTD5)
//  508  *      |__AD7           --单端A(保留)/单端B(ADC0_SE7b--PTD6)
//  509  *      |__AD8           --单端(ADC0_SE8--PTB0)
//  510  *      |__AD9           --单端(ADC0_SE9--PTB1)
//  511  *      |__AD10          --单端(ADC0_SE10--PTA7)
//  512  *      |__AD11          --单端(ADC0_SE11--PTA8)
//  513  *      |__AD12          --单端(ADC0_SE12--PTB2)
//  514  *      |__AD13          --单端(ADC0_SE13--PTB3)
//  515  *      |__AD14          --单端(ADC0_SE14--PTC0)
//  516  *      |__AD15          --单端(ADC0_SE15--PTC1)
//  517  *      |__AD16          --单端(ADC0_SE16)
//  518  *      |__AD17          --单端(ADC0_SE17-PTE24)
//  519  *      |__AD18          --单端(ADC0_SE18--PTE25)
//  520  *      |__AD19          --单端(ADC0_DM0)
//  521  *      |__AD20          --单端(ADC0_DM1)
//  522  *      |__AD23          --单端(DAC0)
//  523  *      |__AD26          --温度传感器
//  524  *      |__AD27          --Bandgap
//  525  *      |__AD29          --差分(-VREFH)/单端(VREFH)
//  526  *      |__AD30          --单端(VREFL)
//  527  *      ADC1
//  528  *      |__DAD0          --差分(ADC1_DP0和ADC1_DM0)/单端(ADC1_DP0)
//  529  *      |__DAD1          --差分(ADC1_DP1和ADC1_DM1)/单端(ADC1_DP1)
//  530  *      |__DAD2          --差分(PGA1_DP和PGA1_DM)/单端(PGA1_DP)
//  531  *      |__DAD3          --差分(ADC1_DP3和ADC1_DM3)/单端(ADC1_DP3)
//  532  *      |__AD4           --单端A(ADC1_SE4a--PTE0)/单端B(ADC1_SE4b--PTC8)
//  533  *      |__AD5           --单端A(ADC1_SE5a--PTE1)/单端B(ADC1_SE5b--PTC9)
//  534  *      |__AD6           --单端A(ADC1_SE6a--PTE2)/单端B(ADC1_SE6b--PTC10)
//  535  *      |__AD7           --单端A(ADC1_SE7a--PTE3)/单端B(ADC1_SE7b--PTC11)
//  536  *      |__AD8           --单端(ADC1_SE8--PTB0)
//  537  *      |__AD9           --单端(ADC1_SE9--PTB1)
//  538  *      |__AD10          --单端(ADC1_SE10--PTB4)
//  539  *      |__AD11          --单端(ADC1_SE11--PTB5)
//  540  *      |__AD12          --单端(ADC1_SE12--PTB6)
//  541  *      |__AD13          --单端(ADC1_SE13--PTB7)
//  542  *      |__AD14          --单端(ADC1_SE14--PTB10)
//  543  *      |__AD15          --单端(ADC1_SE15--PTB11)
//  544  *      |__AD16          --单端(ADC1_SE16)
//  545  *      |__AD17          --单端(ADC1_SE17--PTA17)
//  546  *      |__AD18          --单端(VREF)
//  547  *      |__AD19          --单端(ADC1_DM0)
//  548  *      |__AD20          --单端(ADC1_DM1)
//  549  *      |__AD23          --单端(DAC1)
//  550  *      |__AD26          --温度传感器
//  551  *      |__AD27          --Bandgap
//  552  *      |__AD29          --差分(-VREFH)/单端(VREFH)
//  553  *      |__AD30          --单端(VREFL)
//  554  *      <注:只有MK60F系列含有ADC2,ADC3>
//  555  *          详见技术手册K60P144M120SF2RM第131页
//  556  *      ADC2      
//  557  *      |__DAD0          --差分(ADC2_DP0和ADC2_DM0)/单端(ADC2_DP0)
//  558  *      |__DAD1          --差分(ADC2_DP1和ADC2_DM1)/单端(ADC2_DP1)
//  559  *      |__DAD2          --差分(PGA2_DP和PGA2_DM)/单端(PGA2_DP)
//  560  *      |__DAD3          --差分(ADC2_DP3和ADC2_DM3)/单端(ADC2_DP3)
//  561  *      |__AD4           --单端A(ADC2_SE4a--PTB20)/单端B(保留)
//  562  *      |__AD5           --单端A(ADC2_SE5a--PTB21)/单端B(保留)
//  563  *      |__AD6           --单端A(保留)/单端B(保留)
//  564  *      |__AD7           --单端A(保留)/单端B(保留)
//  565  *      |__AD8           --单端(ADC2_SE8--PTB0)
//  566  *      |__AD9           --单端(ADC2_SE9--PTB1)
//  567  *      |__AD10          --单端(ADC2_SE10)
//  568  *      |__AD11          --单端(ADC2_SE11)
//  569  *      |__AD12          --单端(ADC2_SE12--PTA29)
//  570  *      |__AD13          --单端(ADC2_SE13--PTA28)
//  571  *      |__AD14          --单端(ADC2_SE14--PTA27)
//  572  *      |__AD15          --单端(ADC2_SE15--PTA26)
//  573  *      |__AD16          --单端(ADC2_SE16--PTE8)
//  574  *      |__AD17          --单端(ADC2_SE17--PTE9)
//  575  *      |__AD18          --单端(ADC2_SE18)
//  576  *      |__AD19          --单端(ADC2_DM0)
//  577  *      |__AD20          --单端(ADC2_DM1)
//  578  *      |__AD23          --单端(DAC2)
//  579  *      |__AD26          --温度传感器
//  580  *      |__AD27          --Bandgap
//  581  *      |__AD29          --差分(-VREFH)/单端(VREFH)
//  582  *      |__AD30          --单端(VREFL)
//  583  *      ADC3
//  584  *      |__DAD0          --差分(ADC3_DP0和ADC3_DM0)/单端(ADC3_DP0)
//  585  *      |__DAD1          --差分(ADC3_DP1和ADC3_DM1)/单端(ADC3_DP1)
//  586  *      |__DAD2          --差分(PGA3_DP和PGA3_DM)/单端(PGA3_DP)
//  587  *      |__DAD3          --差分(ADC3_DP3和ADC3_DM3)/单端(ADC3_DP3)
//  588  *      |__AD4           --单端A(ADC3_SE4a--PTA10)/单端B(ADC3_SE4b--PTE27)
//  589  *      |__AD5           --单端A(ADC3_SE5a--PTA9)/单端B(ADC3_SE5b--PTE26)
//  590  *      |__AD6           --单端A(ADC3_SE6a--PTA6)/单端B(保留)
//  591  *      |__AD7           --单端A(ADC3_SE7a--PTE28)/单端B(保留)
//  592  *      |__AD8           --单端(ADC3_SE8--PTB0)
//  593  *      |__AD9           --单端(ADC3_SE9--PTB1)
//  594  *      |__AD10          --单端(ADC3_SE10)
//  595  *      |__AD11          --单端(ADC3_SE11)
//  596  *      |__AD12          --单端(ADC3_SE12)
//  597  *      |__AD13          --单端(ADC3_SE13)
//  598  *      |__AD14          --单端(ADC3_SE14)
//  599  *      |__AD15          --单端(ADC3_SE15--PTA11)
//  600  *      |__AD16          --单端(ADC3_SE16--PTE11)
//  601  *      |__AD17          --单端(ADC3_SE17--PTE12)
//  602  *      |__AD18          --单端(VREF)
//  603  *      |__AD19          --单端(ADC3_DM0)
//  604  *      |__AD20          --单端(ADC3_DM1)
//  605  *      |__AD23          --单端(DAC3)
//  606  *      |__AD26          --温度传感器
//  607  *      |__AD27          --Bandgap
//  608  *      |__AD29          --差分(-VREFH)/单端(VREFH)
//  609  *      |__AD30          --单端(VREFL)
//  610  * 输出:
//  611  *    0--配置错误
//  612  *    1--配置成功
//  613  *
//  614  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  615 uint8 LPLD_ADC_Chn_Enable(ADC_Type *adcx, AdcChnEnum_Type chn)
//  616 {
LPLD_ADC_Chn_Enable:
        PUSH     {R4}
        MOVS     R2,R0
//  617   //判断复用引脚是a或b
//  618   uint8 mux = (adcx->CFG2 & ADC_CFG2_MUXSEL_MASK)>>ADC_CFG2_MUXSEL_SHIFT;
        LDR      R0,[R2, #+12]
        UBFX     R3,R0,#+4,#+1
//  619     
//  620   if(chn > AD30)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+31
        BLT.N    ??LPLD_ADC_Chn_Enable_0
//  621     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
//  622   
//  623   //不同的通道对应不同的引脚，因此需要判断并配置
//  624   if(adcx == ADC0)
??LPLD_ADC_Chn_Enable_0:
        LDR.N    R0,??DataTable10_3  ;; 0x4003b000
        CMP      R2,R0
        BNE.N    ??LPLD_ADC_Chn_Enable_2
//  625   {
//  626     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_3
        SUBS     R0,R0,#+4
        BEQ.N    ??LPLD_ADC_Chn_Enable_4
        SUBS     R0,R0,#+1
        BEQ.N    ??LPLD_ADC_Chn_Enable_5
        SUBS     R0,R0,#+1
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_6
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_7
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_8
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_9
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_10
        SUBS     R0,R0,#+2
        BEQ.N    ??LPLD_ADC_Chn_Enable_11
        SUBS     R0,R0,#+1
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_12
        SUBS     R0,R0,#+2
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_13
        SUBS     R0,R0,#+4
        BEQ.N    ??LPLD_ADC_Chn_Enable_13
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_13
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_13
        B.N      ??LPLD_ADC_Chn_Enable_14
//  627     {
//  628       case DAD0:   //ADC0_DP0 -- PGA0_DP
//  629       case DAD1:   //ADC0_DP1 -- PGA2_DP
//  630       case DAD2:   //PGA0_DP
//  631       case DAD3:   //ADC0_DP3 -- PGA1_DP
//  632         break;
??LPLD_ADC_Chn_Enable_3:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  633       case AD4:   //ADC0_SE4b -- PTC2     
//  634         if(mux == 1)    //b
??LPLD_ADC_Chn_Enable_4:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??LPLD_ADC_Chn_Enable_16
//  635           PORTC->PCR[2] =  PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R4,??DataTable10_8  ;; 0x4004b008
        STR      R0,[R4, #+0]
//  636         break;
??LPLD_ADC_Chn_Enable_16:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  637       case AD5:   //ADC0_SE5b -- PTD1     
//  638         if(mux == 1)    //b
??LPLD_ADC_Chn_Enable_5:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??LPLD_ADC_Chn_Enable_17
//  639           PORTD->PCR[1] =  PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R4,??DataTable10_9  ;; 0x4004c004
        STR      R0,[R4, #+0]
//  640         break;
??LPLD_ADC_Chn_Enable_17:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  641       case AD6:   //ADC0_SE6b -- PTD5
//  642       case AD7:   //ADC0_SE7b -- PTD6     
//  643         if(mux == 1)    //b
??LPLD_ADC_Chn_Enable_6:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+1
        BNE.N    ??LPLD_ADC_Chn_Enable_18
//  644           PORTD->PCR[chn-1] =  PORT_PCR_MUX(0);
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+311296
        STR      R0,[R4, #-4]
//  645         break;
??LPLD_ADC_Chn_Enable_18:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  646       case AD8:  //ADC0_SE8 -- PTB0
//  647       case AD9:  //ADC0_SE9 -- PTB1
//  648         PORTB->PCR[chn-8] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_7:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+303104
        STR      R0,[R4, #-32]
//  649         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  650       case AD10:  //ADC0_SE10 -- PTA7
//  651       case AD11:  //ADC0_SE11 -- PTA8
//  652         PORTA->PCR[chn-3] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_8:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+299008
        STR      R0,[R4, #-12]
//  653         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  654       case AD12:  //ADC0_SE12 -- PTB2
//  655       case AD13:  //ADC0_SE13 -- PTB3
//  656         PORTB->PCR[chn-10] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_9:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+303104
        STR      R0,[R4, #-40]
//  657         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  658       case AD14:  //ADC0_SE14 -- PTC0
//  659       case AD15:  //ADC0_SE15 -- PTC1
//  660         PORTC->PCR[chn-14] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_10:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+307200
        STR      R0,[R4, #-56]
//  661         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  662       case AD16:   //ADC0_SE16
//  663         break;
??LPLD_ADC_Chn_Enable_11:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  664       case AD17:   //ADC0_SE17 -- PTE24
//  665       case AD18:   //ADC0_SE18 -- PTE25
//  666         PORTE->PCR[chn+7] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_12:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+315392
        STR      R0,[R4, #+28]
//  667         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  668       case AD19:   //ADC0_DM0 -- PGA0_DM
//  669       case AD20:   //ADC0_DM1 -- PGA2_DM
//  670       case AD23:   //ADC0_SE23 -- DAC0_OUT
//  671       case AD26:   //Temperature Sensor (S.E)
//  672       case AD27:   //Bandgap (S.E)
//  673       case AD29:   //VREFH (S.E)
//  674       case AD30:   //VREFL
//  675         break;
??LPLD_ADC_Chn_Enable_13:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  676       default:
//  677         return 0;  
??LPLD_ADC_Chn_Enable_14:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
//  678     }
//  679   }
//  680   else if(adcx == ADC1)
??LPLD_ADC_Chn_Enable_2:
        LDR.N    R0,??DataTable10_5  ;; 0x400bb000
        CMP      R2,R0
        BNE.N    ??LPLD_ADC_Chn_Enable_19
//  681   {
//  682     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_20
        SUBS     R0,R0,#+4
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_21
        SUBS     R0,R0,#+4
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_22
        SUBS     R0,R0,#+2
        CMP      R0,#+3
        BLS.N    ??LPLD_ADC_Chn_Enable_23
        SUBS     R0,R0,#+4
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_24
        SUBS     R0,R0,#+2
        BEQ.N    ??LPLD_ADC_Chn_Enable_25
        SUBS     R0,R0,#+1
        BEQ.N    ??LPLD_ADC_Chn_Enable_26
        SUBS     R0,R0,#+1
        CMP      R0,#+2
        BLS.N    ??LPLD_ADC_Chn_Enable_27
        SUBS     R0,R0,#+5
        BEQ.N    ??LPLD_ADC_Chn_Enable_27
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_27
        SUBS     R0,R0,#+3
        CMP      R0,#+1
        BLS.N    ??LPLD_ADC_Chn_Enable_27
        B.N      ??LPLD_ADC_Chn_Enable_28
//  683     {
//  684       case DAD0:   //ADC1_DP0 -- PGA1_DP
//  685       case DAD1:   //ADC1_DP1 -- PGA3_DP
//  686       case DAD2:   //PGA1_DP 
//  687       case DAD3:   //ADC1_DP3 -- PGA0_DP
//  688         break;
??LPLD_ADC_Chn_Enable_20:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  689       case AD4:   //ADC1_SE4a -- PTE0     //ADC1_SE4b -- PTC8
//  690       case AD5:   //ADC1_SE5a -- PTE1     //ADC1_SE5b -- PTC9
//  691       case AD6:   //ADC1_SE6a -- PTE2     //ADC1_SE6b -- PTC10
//  692       case AD7:   //ADC1_SE7a -- PTE3     //ADC1_SE7b -- PTC11
//  693         if(mux == 0)    //a
??LPLD_ADC_Chn_Enable_21:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R3,#+0
        BNE.N    ??LPLD_ADC_Chn_Enable_29
//  694           PORTE->PCR[chn-4] =  PORT_PCR_MUX(0);
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+315392
        STR      R0,[R4, #-16]
        B.N      ??LPLD_ADC_Chn_Enable_30
//  695         else            //b
//  696           PORTC->PCR[chn+4] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_29:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+307200
        STR      R0,[R4, #+16]
//  697         break;
??LPLD_ADC_Chn_Enable_30:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  698       case AD8:  //ADC1_SE8 -- PTB0
//  699       case AD9:  //ADC1_SE9 -- PTB1
//  700         PORTB->PCR[chn-8] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_22:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+303104
        STR      R0,[R4, #-32]
//  701         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  702       case AD10:  //ADC1_SE10 -- PTB4
//  703       case AD11:  //ADC1_SE11 -- PTB5
//  704       case AD12:  //ADC1_SE12 -- PTB6
//  705       case AD13:  //ADC1_SE13 -- PTB7
//  706         PORTB->PCR[chn-6] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_23:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+303104
        STR      R0,[R4, #-24]
//  707         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  708       case AD14:  //ADC1_SE14 -- PTB10
//  709       case AD15:  //ADC1_SE15 -- PTB11
//  710         PORTB->PCR[chn-4] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_24:
        MOVS     R0,#+0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LSLS     R4,R1,#+2
        ADD      R4,R4,#+1073741824
        ADDS     R4,R4,#+303104
        STR      R0,[R4, #-16]
//  711         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  712       case AD16:   //ADC1_SE16
//  713         break;
??LPLD_ADC_Chn_Enable_25:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  714       case AD17:  //ADC1_SE17 -- PTA17
//  715         PORTA->PCR[chn] =  PORT_PCR_MUX(0);
??LPLD_ADC_Chn_Enable_26:
        MOVS     R0,#+0
        LDR.N    R4,??DataTable10_10  ;; 0x40049000
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STR      R0,[R4, R1, LSL #+2]
//  716         break;
        B.N      ??LPLD_ADC_Chn_Enable_15
//  717       case AD18:   //VREF Output
//  718       case AD19:   //ADC1_DM0 -- PGA1_DM
//  719       case AD20:   //ADC1_DM1 -- PGA3_DM
//  720       case AD23:   //DAC1_OUT 
//  721       case AD26:   //Temperature Sensor (S.E)
//  722       case AD27:   //Bandgap (S.E)
//  723       case AD29:   //VREFH (S.E)
//  724       case AD30:   //VREFL
//  725         break;
??LPLD_ADC_Chn_Enable_27:
        B.N      ??LPLD_ADC_Chn_Enable_15
//  726       default:
//  727         return 0;  
??LPLD_ADC_Chn_Enable_28:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
//  728     }
//  729   }
//  730 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  731   else if(adcx == ADC2)
//  732   {
//  733     switch(chn)
//  734     {
//  735       case DAD0:   //ADC2_DP0 -- PGA1_DP
//  736       case DAD1:   //ADC2_DP1 -- PGA3_DP
//  737       case DAD2:   //PGA2_DP 
//  738       case DAD3:   //ADC2_DP3 -- PGA0_DP
//  739         break;
//  740       case AD4:   //ADC2_SE4a -- PTB20     
//  741       case AD5:   //ADC2_SE5a -- PTB21
//  742         if(mux == 0)    //a
//  743           PORTB->PCR[chn+16] =  PORT_PCR_MUX(0);
//  744         //else            //b
//  745           //PORTC->PCR[chn+4] =  PORT_PCR_MUX(0);
//  746         break;
//  747       case AD6:  //ADC1_SE6      
//  748       case AD7:  //ADC1_SE7
//  749         break;        
//  750       case AD8:  //ADC2_SE8 -- PTB0
//  751       case AD9:  //ADC2_SE9 -- PTB1
//  752         PORTB->PCR[chn-8] =  PORT_PCR_MUX(0);
//  753         break;
//  754       case AD10:  //ADC1_SE10
//  755       case AD11:  //ADC1_SE11
//  756         break;
//  757       case AD12:  //ADC2_SE12 -- PTA29
//  758       case AD13:  //ADC2_SE13 -- PTA28
//  759       case AD14:  //ADC2_SE14 -- PTA27
//  760       case AD15:  //ADC2_SE15 -- PTA26
//  761         PORTA->PCR[41-chn] =  PORT_PCR_MUX(0);
//  762         break;
//  763       case AD16:   //ADC2_SE16 -- PTE8
//  764       case AD17:   //ADC2_SE17 -- PTE9
//  765         PORTE->PCR[chn-8] =  PORT_PCR_MUX(0);
//  766         break;
//  767       case AD18:   //VREF Output
//  768       case AD19:   //ADC1_DM0 -- PGA1_DM
//  769       case AD20:   //ADC1_DM1 -- PGA3_DM
//  770       case AD23:   //DAC1_OUT 
//  771       case AD26:   //Temperature Sensor (S.E)
//  772       case AD27:   //Bandgap (S.E)
//  773       case AD29:   //VREFH (S.E)
//  774       case AD30:   //VREFL
//  775         break;
//  776       default:
//  777         return 0;  
//  778     }
//  779   }
//  780   else if(adcx == ADC3)
//  781   {
//  782     switch(chn)
//  783     {
//  784       case DAD0:   //ADC3_DP0 -- PGA1_DP
//  785       case DAD1:   //ADC3_DP1 -- PGA3_DP
//  786       case DAD2:   //PGA3_DP 
//  787       case DAD3:   //ADC3_DP3 -- PGA0_DP
//  788         break;
//  789       case AD4:   //ADC3_SE4a -- PTA10  //ADC3_SE4b -- PTE27   
//  790       case AD5:   //ADC3_SE5a -- PTA9   //ADC3_SE5b -- PTE26
//  791         if(mux == 0)    //a
//  792           PORTA->PCR[14 - chn] =  PORT_PCR_MUX(0);
//  793         else            //b
//  794           PORTE->PCR[31 - chn] =  PORT_PCR_MUX(0);
//  795         break;
//  796       case AD6:   //ADC3_SE6a--PTA6
//  797         PORTA->PCR[6] =  PORT_PCR_MUX(0);
//  798         break;     
//  799       case AD7:   //ADC3_SE7a--PTE28
//  800         PORTE->PCR[28] =  PORT_PCR_MUX(0);
//  801         break;       
//  802       case AD8:  //ADC3_SE8 -- PTB0
//  803       case AD9:  //ADC3_SE9 -- PTB1
//  804         PORTB->PCR[chn-8] =  PORT_PCR_MUX(0);
//  805         break;
//  806       case AD10:  //ADC3_SE10
//  807       case AD11:  //ADC3_SE11
//  808       case AD12:  //ADC3_SE12 
//  809       case AD13:  //ADC3_SE13 
//  810       case AD14:  //ADC3_SE14 
//  811         break;
//  812       case AD15:  //ADC3_SE15 -- PTA11
//  813         PORTA->PCR[11] =  PORT_PCR_MUX(0);
//  814         break;
//  815       case AD16:   //ADC3_SE16 -- PTE11
//  816       case AD17:   //ADC3_SE17 -- PTE12
//  817         PORTE->PCR[chn-5] =  PORT_PCR_MUX(0);
//  818         break;
//  819       case AD18:   //VREF Output
//  820       case AD19:   //ADC1_DM0 -- PGA1_DM
//  821       case AD20:   //ADC1_DM1 -- PGA3_DM
//  822       case AD23:   //DAC1_OUT 
//  823       case AD26:   //Temperature Sensor (S.E)
//  824       case AD27:   //Bandgap (S.E)
//  825       case AD29:   //VREFH (S.E)
//  826       case AD30:   //VREFL
//  827         break;
//  828       default:
//  829         return 0;  
//  830     }
//  831   }
//  832 #endif
//  833   else
//  834   {
//  835     return 0;
??LPLD_ADC_Chn_Enable_19:
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Chn_Enable_1
//  836   }
//  837   
//  838   return 1;
??LPLD_ADC_Chn_Enable_15:
        MOVS     R0,#+1
??LPLD_ADC_Chn_Enable_1:
        POP      {R4}
        BX       LR               ;; return
//  839 }
//  840 
//  841 /*
//  842  * ADC_Cal
//  843  * ADC模块校准函数，内部调用
//  844  * 
//  845  * 参数:
//  846  *    adcx--ADC模块号
//  847  *      |__ADC0         -ADC0模块
//  848  *      |__ADC1         -ADC1模块
//  849  *      <注:只有MK60F系列含有ADC2,ADC3>
//  850  *      |__ADC2         -ADC0模块
//  851  *      |__ADC3         -ADC1模块
//  852  * 输出:
//  853  *    0--配置错误
//  854  *    1--配置成功
//  855  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  856 static uint8 LPLD_ADC_Cal(ADC_Type *adcx)
//  857 {
LPLD_ADC_Cal:
        MOVS     R1,R0
//  858   uint16 cal_var;
//  859     
//  860   //为自动校准配置参数
//  861   //为提高校准精度，需配置为：
//  862   //32次硬件平均、ADCK不超过4MHz
//  863   //参考高=Vdda、正常功耗模式
//  864   //可忽略的配置：
//  865   //输入通道、转换模式连续功能、比较功能、精度、差分单端
//  866   //设置ADCCFG1寄存器
//  867   adcx->CFG1  = 0 &(~ADC_CFG1_ADLPC_MASK)          // 正常功耗配置
//  868                   | ADC_CFG1_ADIV(ADIV_8)          // ADC输入时钟分频为8
//  869                   | ADC_CFG1_ADLSMP_MASK           // 设置长时间采样模式
//  870                   | ADC_CFG1_ADICLK(ADICLK_BUS_2); // ADC输入时钟源为 BusClk/2
        MOVS     R0,#+113
        STR      R0,[R1, #+8]
//  871 
//  872   //设置ADCCFG2寄存器
//  873   adcx->CFG2 = 0 & (~ADC_CFG2_ADACKEN_MASK)
//  874                  | ADC_CFG2_ADHSC_MASK         // 高速转换
//  875                  | ADC_CFG2_ADLSTS(LSAMTIME_20EX); // 长采样时间时钟周期选择 额外20个时钟周期，共24个ADCK周期
        MOVS     R0,#+4
        STR      R0,[R1, #+12]
//  876                                                // 总采样周期见K60技术文档 page:840
//  877   //用于设定阈值
//  878   adcx->CV1  = 0x1234u ; 
        MOVW     R0,#+4660
        STR      R0,[R1, #+24]
//  879   adcx->CV2  = 0x5678u ;
        MOVW     R0,#+22136
        STR      R0,[R1, #+28]
//  880   
//  881   adcx->SC2 = 0 & (~ADC_SC2_ADTRG_MASK)        //使能软件触发作为校准
//  882                 | ADC_SC2_REFSEL(REFSEL_EXT);  //选择外部参考源VREFH和VREFL
        MOVS     R0,#+0
        STR      R0,[R1, #+32]
//  883     
//  884   adcx->SC3 &= ( ~ADC_SC3_ADCO_MASK & ~ADC_SC3_AVGS_MASK );  //设置单次转换，清除平均标志
        LDR      R0,[R1, #+36]
        BICS     R0,R0,#0xB
        STR      R0,[R1, #+36]
//  885   adcx->SC3 |= ( ADC_SC3_AVGE_MASK | ADC_SC3_AVGS(HW_32AVG) );//打开平均标志，设置到最大采样平准
        LDR      R0,[R1, #+36]
        ORRS     R0,R0,#0x7
        STR      R0,[R1, #+36]
//  886   
//  887   adcx->SC3 |= ADC_SC3_CAL_MASK ;                            //开始校准
        LDR      R0,[R1, #+36]
        ORRS     R0,R0,#0x80
        STR      R0,[R1, #+36]
//  888   
//  889   while((adcx->SC1[0] & ADC_SC1_COCO_MASK)== 0x00 );         //等待校准完成
??LPLD_ADC_Cal_0:
        LDR      R0,[R1, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_ADC_Cal_0
//  890   	
//  891   if ((adcx->SC3& ADC_SC3_CALF_MASK) == ADC_SC3_CALF_MASK )
        LDR      R0,[R1, #+36]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_ADC_Cal_1
//  892   {  
//  893    return 0;    //检查到校准错误，返回错误
        MOVS     R0,#+0
        B.N      ??LPLD_ADC_Cal_2
//  894   }
//  895   // Calculate plus-side calibration
//  896   cal_var  = 0x00;
??LPLD_ADC_Cal_1:
        MOVS     R0,#+0
        MOVS     R2,R0
//  897   cal_var  = adcx->CLP0;       
        LDR      R0,[R1, #+76]
        MOVS     R2,R0
//  898   cal_var += adcx->CLP1;      
        LDR      R0,[R1, #+72]
        ADDS     R2,R0,R2
//  899   cal_var += adcx->CLP2;      
        LDR      R0,[R1, #+68]
        ADDS     R2,R0,R2
//  900   cal_var += adcx->CLP3;      
        LDR      R0,[R1, #+64]
        ADDS     R2,R0,R2
//  901   cal_var += adcx->CLP4;      
        LDR      R0,[R1, #+60]
        ADDS     R2,R0,R2
//  902   cal_var += adcx->CLPS;      
        LDR      R0,[R1, #+56]
        ADDS     R2,R0,R2
//  903   cal_var  = cal_var/2;
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R0,#+2
        SDIV     R2,R2,R0
//  904   cal_var |= 0x8000; // Set MSB
        ORRS     R2,R2,#0x8000
//  905   
//  906   adcx->PG = ADC_PG_PG(cal_var);
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R1, #+44]
//  907 
//  908   // Calculate minus-side calibration
//  909   cal_var = 0x00;
        MOVS     R0,#+0
        MOVS     R2,R0
//  910   cal_var =  adcx->CLM0; 
        LDR      R0,[R1, #+108]
        MOVS     R2,R0
//  911   cal_var += adcx->CLM1;
        LDR      R0,[R1, #+104]
        ADDS     R2,R0,R2
//  912   cal_var += adcx->CLM2;
        LDR      R0,[R1, #+100]
        ADDS     R2,R0,R2
//  913   cal_var += adcx->CLM3;
        LDR      R0,[R1, #+96]
        ADDS     R2,R0,R2
//  914   cal_var += adcx->CLM4;
        LDR      R0,[R1, #+92]
        ADDS     R2,R0,R2
//  915   cal_var += adcx->CLMS;
        LDR      R0,[R1, #+88]
        ADDS     R2,R0,R2
//  916   cal_var = cal_var/2;
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R0,#+2
        SDIV     R2,R2,R0
//  917   cal_var |= 0x8000; // Set MSB
        ORRS     R2,R2,#0x8000
//  918 
//  919   adcx->MG   = ADC_MG_MG(cal_var); 
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R1, #+48]
//  920   adcx->SC3 &= ~ADC_SC3_CAL_MASK ; //清除校验标志
        LDR      R0,[R1, #+36]
        BICS     R0,R0,#0x80
        STR      R0,[R1, #+36]
//  921   
//  922   return 1;
        MOVS     R0,#+1
??LPLD_ADC_Cal_2:
        BX       LR               ;; return
//  923 }
//  924 
//  925 /*
//  926  * ADC0--ADC1中断处理函数
//  927  * 与启动文件startup_K60.s中的中断向量表关联
//  928  * 用户无需修改，程序自动进入对应通道中断函数
//  929  */
//  930 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  931 void ADC0_IRQHandler(void)
//  932 {
ADC0_IRQHandler:
        PUSH     {R7,LR}
//  933 #if (UCOS_II > 0u)
//  934   OS_CPU_SR  cpu_sr = 0u;
//  935   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  936   OSIntEnter();
//  937   OS_EXIT_CRITICAL();
//  938 #endif
//  939   
//  940   //调用用户自定义中断服务
//  941   ADC_ISR[0]();  
        LDR.N    R0,??DataTable10_7
        LDR      R0,[R0, #+0]
        BLX      R0
//  942   
//  943 #if (UCOS_II > 0u)
//  944   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  945 #endif
//  946 }
        POP      {R0,PC}          ;; return
//  947 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  948 void ADC1_IRQHandler(void)
//  949 {
ADC1_IRQHandler:
        PUSH     {R7,LR}
//  950 #if (UCOS_II > 0u)
//  951   OS_CPU_SR  cpu_sr = 0u;
//  952   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  953   OSIntEnter();
//  954   OS_EXIT_CRITICAL();
//  955 #endif
//  956   
//  957   //调用用户自定义中断服务
//  958   ADC_ISR[1]();  
        LDR.N    R0,??DataTable10_7
        LDR      R0,[R0, #+4]
        BLX      R0
//  959   
//  960 #if (UCOS_II > 0u)
//  961   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  962 #endif
//  963 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x4003b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x400bb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     ADC_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     0x4004c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x40049000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_0:
        DATA
        DC8 44H, 3AH, 5CH, 4CH, 50H, 4CH, 44H, 56H
        DC8 33H, 2EH, 31H, 5CH, 4CH, 50H, 4CH, 44H
        DC8 5FH, 4FH, 53H, 4BH, 69H, 6EH, 65H, 74H
        DC8 69H, 73H, 5FH, 56H, 33H, 5CH, 6CH, 69H
        DC8 62H, 5CH, 4CH, 50H, 4CH, 44H, 5CH, 48H
        DC8 57H, 5CH, 48H, 57H, 5FH, 41H, 44H, 43H
        DC8 2EH, 63H, 0
        DC8 0

        END
//  964 
//  965 #if defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  966 void ADC2_IRQHandler(void)
//  967 {
//  968 #if (UCOS_II > 0u)
//  969   OS_CPU_SR  cpu_sr = 0u;
//  970   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  971   OSIntEnter();
//  972   OS_EXIT_CRITICAL();
//  973 #endif
//  974   
//  975   //调用用户自定义中断服务
//  976   ADC_ISR[2]();  
//  977   
//  978 #if (UCOS_II > 0u)
//  979   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  980 #endif
//  981 }
//  982 
//  983 void ADC3_IRQHandler(void)
//  984 {
//  985 #if (UCOS_II > 0u)
//  986   OS_CPU_SR  cpu_sr = 0u;
//  987   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  988   OSIntEnter();
//  989   OS_EXIT_CRITICAL();
//  990 #endif
//  991   
//  992   //调用用户自定义中断服务
//  993   ADC_ISR[2]();  
//  994   
//  995 #if (UCOS_II > 0u)
//  996   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  997 #endif
//  998 }
//  999 #endif
// 1000 
// 
//     8 bytes in section .bss
//    52 bytes in section .rodata
// 1 570 bytes in section .text
// 
// 1 570 bytes of CODE  memory
//    52 bytes of CONST memory
//     8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
