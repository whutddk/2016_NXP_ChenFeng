///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       05/Mar/2016  08:12:24
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c
//    Command line =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c -D LPLD_K60 -D
//        USE_K60DZ10 -lCN
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\HW_MCG.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_WRITE 0x1
        #define SHF_EXECINSTR 0x4

        PUBLIC LPLD_PLL_Setup
        PUBLIC LPLD_Set_SYS_DIV
        PUBLIC g_bus_clock
        PUBLIC g_core_clock
        PUBLIC g_flash_clock
        PUBLIC g_flexbus_clock

// D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_MCG.c
//    1 /**
//    2  * @file HW_MCG.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MCG�ײ�ģ����غ���
//    6  *
//    7  * ���Ľ���:�������޸�
//    8  *
//    9  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   15  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   16  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   17  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   18  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   19  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   20  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   21  */
//   22 #include "common.h"
//   23 #include "HW_MCG.h"
//   24 
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 uint32 g_core_clock = -1ul;
g_core_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   27 uint32 g_bus_clock = -1ul;
g_bus_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   28 uint32 g_flash_clock = -1ul;
g_flash_clock:
        DATA
        DC32 4294967295

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   29 uint32 g_flexbus_clock = -1ul;
g_flexbus_clock:
        DATA
        DC32 4294967295
//   30 
//   31 /*
//   32  * LPLD_PLL_Setup
//   33  * ��ʼ���ں�ʱ�Ӽ�����ϵͳʱ��
//   34  * 
//   35  * ����:
//   36  *    core_clk_mhz--�����ں�ʱ��Ƶ��
//   37  *      |__PLLx--�μ�HAL_MCG.h�е�PLL_option����
//   38  *
//   39  * ���:
//   40  *    �ں�Ƶ�ʣ���λMHz
//   41  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   42 uint8 LPLD_PLL_Setup(PllOptionEnum_Type core_clk_mhz)
//   43 {
LPLD_PLL_Setup:
        PUSH     {R3-R11,LR}
        MOV      R11,R0
//   44   uint8 pll_freq;
//   45   uint8 prdiv, vdiv;
//   46   uint8 core_div, bus_div, flexbus_div, flash_div;
//   47 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)
//   48 /*
//   49  *************************************************
//   50   ��LPLDע�⡿MCG�ؼ�ϵ��
//   51   prdiv(PLL��Ƶϵ��): 0~31(1~32)
//   52   vdiv(PLL��Ƶϵ��): 0~31(24~55)
//   53   PLL�ο�ʱ�ӷ�Χ: 2MHz~4MHz
//   54   PLL�ο�ʱ�� = �ⲿ�ο�ʱ��(CANNED_OSC_CLK_HZ)/prdiv
//   55   CoreClk = PLL�ο�ʱ�� x PLL��Ƶϵ�� /OUTDIV1
//   56  *************************************************
//   57  */
//   58  
//   59   // ����MK60DZ10��˵��core_clk_mhz���鲻Ҫ����100����������Ϊ���200
//   60   core_clk_mhz = (PllOptionEnum_Type)(core_clk_mhz>200u?200u:core_clk_mhz);
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+201
        BCC.N    ??LPLD_PLL_Setup_0
        MOVS     R11,#+200
        B.N      ??LPLD_PLL_Setup_1
//   61   
//   62   // ����������Ƶѡ���Ƶ�ͱ�Ƶϵ��
//   63   switch(core_clk_mhz)
??LPLD_PLL_Setup_0:
??LPLD_PLL_Setup_1:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOV      R0,R11
        CMP      R0,#+48
        BEQ.N    ??LPLD_PLL_Setup_2
        CMP      R0,#+50
        BEQ.N    ??LPLD_PLL_Setup_3
        CMP      R0,#+96
        BEQ.N    ??LPLD_PLL_Setup_4
        CMP      R0,#+100
        BEQ.N    ??LPLD_PLL_Setup_5
        CMP      R0,#+120
        BEQ.N    ??LPLD_PLL_Setup_6
        CMP      R0,#+150
        BEQ.N    ??LPLD_PLL_Setup_7
        CMP      R0,#+180
        BEQ.N    ??LPLD_PLL_Setup_8
        CMP      R0,#+200
        BEQ.N    ??LPLD_PLL_Setup_9
        B.N      ??LPLD_PLL_Setup_10
//   64   {
//   65   case PLL_48:
//   66 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   67     prdiv = 24u; //50Mhz/ 25 = 2Mhz
??LPLD_PLL_Setup_2:
        MOVS     R0,#+24
        MOVS     R5,R0
//   68 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//   69     prdiv = 3u;  //8Mhz/ 4 = 2Mhz
//   70 #endif
//   71     vdiv = 0u;  // 2Mhz * 24 = 48Mhz
        MOVS     R0,#+0
        MOVS     R6,R0
//   72     break;
        B.N      ??LPLD_PLL_Setup_11
//   73   case PLL_50:
//   74 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   75     prdiv = 24u; //50Mhz/ 25 = 2Mhz
??LPLD_PLL_Setup_3:
        MOVS     R0,#+24
        MOVS     R5,R0
//   76 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//   77     prdiv = 3u; //8Mhz/ 4 = 2Mhz
//   78 #endif
//   79     vdiv = 1u; // 2Mhz * 25 = 50Mhz
        MOVS     R0,#+1
        MOVS     R6,R0
//   80     break;
        B.N      ??LPLD_PLL_Setup_11
//   81   case PLL_96:
//   82 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   83     prdiv = 24u; //50Mhz/ 25 = 2Mhz
??LPLD_PLL_Setup_4:
        MOVS     R0,#+24
        MOVS     R5,R0
//   84 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//   85     prdiv = 3u; //8Mhz/ 4 = 2Mhz
//   86 #endif
//   87     vdiv = 24u; //2Mhz * 48 = 96Mhz
        MOVS     R0,#+24
        MOVS     R6,R0
//   88     break;
        B.N      ??LPLD_PLL_Setup_11
//   89   case PLL_100:
//   90 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   91     prdiv = 24u; //50Mhz/ 25 = 2Mhz
??LPLD_PLL_Setup_5:
        MOVS     R0,#+24
        MOVS     R5,R0
//   92 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//   93     prdiv = 3u; //8Mhz/ 4 = 2Mhz
//   94 #endif
//   95     vdiv = 26u; //2Mhz * 50 = 100Mhz
        MOVS     R0,#+26
        MOVS     R6,R0
//   96     break;
        B.N      ??LPLD_PLL_Setup_11
//   97   case PLL_120:
//   98 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//   99     prdiv = 19u; //50Mhz/ 20 = 2.5Mhz
??LPLD_PLL_Setup_6:
        MOVS     R0,#+19
        MOVS     R5,R0
//  100     vdiv = 24u;  //2.5Mhz * 48 = 120Mhz
        MOVS     R0,#+24
        MOVS     R6,R0
//  101 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  102     prdiv = 1u; //8Mhz/ 2 = 4Mhz
//  103     vdiv  = 6u; //4Mhz * 30 = 120Mhz
//  104 #endif
//  105     break;
        B.N      ??LPLD_PLL_Setup_11
//  106   case PLL_150:
//  107 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  108     prdiv = 15u; //50Mhz/ 16 = 3.3Mhz
??LPLD_PLL_Setup_7:
        MOVS     R0,#+15
        MOVS     R5,R0
//  109     vdiv = 24u;  //3.3Mhz * 48 = 156.4Mhz
        MOVS     R0,#+24
        MOVS     R6,R0
//  110 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  111     prdiv = 1u; //8Mhz/ 2 = 4Mhz
//  112     vdiv  = 13u; //4Mhz * 37 = 148Mhz
//  113 #endif
//  114     break;
        B.N      ??LPLD_PLL_Setup_11
//  115   case PLL_180:
//  116 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  117     prdiv = 14u; //50Mhz/ 15 = 3.3Mhz
??LPLD_PLL_Setup_8:
        MOVS     R0,#+14
        MOVS     R5,R0
//  118     vdiv = 30u;  //3.3Mhz * 54 = 178.2Mhz
        MOVS     R0,#+30
        MOVS     R6,R0
//  119 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  120     prdiv = 1u;  //8Mhz/ 2 = 4Mhz
//  121     vdiv = 21u;  //4Mhz * 45 = 180Mhz
//  122 #endif
//  123     break;
        B.N      ??LPLD_PLL_Setup_11
//  124   case PLL_200:
//  125 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  126     prdiv = 12u; 
??LPLD_PLL_Setup_9:
        MOVS     R0,#+12
        MOVS     R5,R0
//  127     vdiv = 28u;
        MOVS     R0,#+28
        MOVS     R6,R0
//  128 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  129     prdiv = 1u;  //8Mhz/ 2 = 4Mhz
//  130     vdiv = 26u;  //4Mhz * 50 = 200Mhz
//  131 #endif
//  132     break;
        B.N      ??LPLD_PLL_Setup_11
//  133   default:
//  134     return LPLD_PLL_Setup(PLL_96);
??LPLD_PLL_Setup_10:
        MOVS     R0,#+96
        BL       LPLD_PLL_Setup
        B.N      ??LPLD_PLL_Setup_12
//  135   }
//  136 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  137  /*
//  138  *************************************************
//  139   ��LPLDע�⡿MCG�ؼ�ϵ��
//  140   prdiv(PLL��Ƶϵ��): 0~7(1~8)
//  141   vdiv(PLL��Ƶϵ��): 0~31(16~47)
//  142   PLL�ο�ʱ�ӷ�Χ: 8MHz~16MHz
//  143   PLL�ο�ʱ�� = �ⲿ�ο�ʱ��(CANNED_OSC_CLK_HZ)/prdiv
//  144   PLL���ʱ�ӷ�Χ: 90MHz~180MHz
//  145   PLL���ʱ�� = PLL�ο�ʱ�� x vdiv��PLL��Ƶϵ����/2
//  146   CoreClk = PLL���ʱ�� /OUTDIV1
//  147  *************************************************
//  148 */
//  149   
//  150   // ����MK60F12��˵��core_clk_mhz���鲻Ҫ����120����������Ϊ���200
//  151   // ����MK60F15��˵��core_clk_mhz���鲻Ҫ����150����������Ϊ���200
//  152   core_clk_mhz = (PllOptionEnum_Type)(core_clk_mhz>200u?200u:core_clk_mhz);
//  153   // ����������Ƶѡ���Ƶ�ͱ�Ƶϵ��
//  154   switch(core_clk_mhz)
//  155   {
//  156   case PLL_100:
//  157 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  158     prdiv = 4u; //50Mhz / 5 = 10Mhz
//  159     vdiv = 4u;  //10Mhz * 20 /2 = 100Mhz
//  160 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  161     prdiv = 0u; //8Mhz / 1 = 8Mhz
//  162     vdiv = 9u;  //8Mhz * 25 /2 = 100Mhz
//  163 #endif
//  164     break;
//  165   case PLL_120:
//  166 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  167     prdiv = 4u; //50Mhz / 5 = 10Mhz
//  168     vdiv = 8u;  //10Mhz * 24 /2 = 120Mhz
//  169 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  170     prdiv = 0u; //8Mhz / 1 = 8Mhz
//  171     vdiv = 14u; //8Mhz * 30 /2 = 120Mhz
//  172 #endif
//  173     break;
//  174   case PLL_150:
//  175 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  176     prdiv = 4u; //50Mhz / 5 = 10Mhz
//  177     vdiv = 14u; //10Mhz * 30 /2 = 150Mhz
//  178 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  179     prdiv = 0u; //8Mhz / 1 = 8Mhz
//  180     vdiv = 22u; //8Mhz * 38 /2 = 152Mhz
//  181 #endif
//  182     break;
//  183   case PLL_180:
//  184 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  185     prdiv = 4u; //50Mhz / 5 = 10Mhz
//  186     vdiv = 20u; //10Mhz * 36 /2 = 180Mhz
//  187 #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  188     prdiv = 0u; //8Mhz / 1 = 8Mhz
//  189     vdiv = 29u; //8Mhz * 45 /2 = 180Mhz    
//  190 #endif
//  191     break;
//  192   case PLL_200:
//  193 #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  194     prdiv = 3u;  //50Mhz / 4 = 12.5Mhz
//  195     vdiv = 16u;  //12.5Mhz * 32 / 2 = 200
//  196 #endif
//  197     break;
//  198   default:
//  199     return LPLD_PLL_Setup(PLL_120);
//  200   } 
//  201 #endif
//  202   
//  203   pll_freq = core_clk_mhz * 1;
??LPLD_PLL_Setup_11:
        MOV      R4,R11
//  204   core_div = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  205   if((bus_div = (uint8)(core_clk_mhz/BUS_CLK_MHZ - 1u)) == (uint8)-1)
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+50
        UDIV     R0,R11,R0
        SUBS     R0,R0,#+1
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+255
        BNE.N    ??LPLD_PLL_Setup_13
//  206   {
//  207     bus_div = 0;
        MOVS     R0,#+0
        MOV      R8,R0
        B.N      ??LPLD_PLL_Setup_14
//  208   }
//  209   else if(core_clk_mhz/(bus_div+1) > BUS_CLK_MHZ)
??LPLD_PLL_Setup_13:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        ADDS     R0,R8,#+1
        SDIV     R0,R11,R0
        CMP      R0,#+51
        BCC.N    ??LPLD_PLL_Setup_14
//  210   {
//  211     bus_div += 1;
        ADDS     R8,R8,#+1
//  212   }
//  213   if((flexbus_div = (core_clk_mhz/FLEXBUS_CLK_MHZ - 1u)) == (uint8)-1)
??LPLD_PLL_Setup_14:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+50
        UDIV     R0,R11,R0
        SUBS     R0,R0,#+1
        MOV      R9,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+255
        BNE.N    ??LPLD_PLL_Setup_15
//  214   {
//  215     flexbus_div = 0;
        MOVS     R0,#+0
        MOV      R9,R0
        B.N      ??LPLD_PLL_Setup_16
//  216   }
//  217   else if(core_clk_mhz/(flexbus_div+1) > FLEXBUS_CLK_MHZ)
??LPLD_PLL_Setup_15:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ADDS     R0,R9,#+1
        SDIV     R0,R11,R0
        CMP      R0,#+51
        BCC.N    ??LPLD_PLL_Setup_16
//  218   {
//  219     flexbus_div += 1;
        ADDS     R9,R9,#+1
//  220   }
//  221   if((flash_div = (core_clk_mhz/FLASH_CLK_MHZ - 1u)) == (uint8)-1)
??LPLD_PLL_Setup_16:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+25
        UDIV     R0,R11,R0
        SUBS     R0,R0,#+1
        MOV      R10,R0
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+255
        BNE.N    ??LPLD_PLL_Setup_17
//  222   {
//  223     flash_div = 0;
        MOVS     R0,#+0
        MOV      R10,R0
        B.N      ??LPLD_PLL_Setup_18
//  224   }
//  225   else if(core_clk_mhz/(flash_div+1) > FLASH_CLK_MHZ)
??LPLD_PLL_Setup_17:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ADDS     R0,R10,#+1
        SDIV     R0,R11,R0
        CMP      R0,#+26
        BCC.N    ??LPLD_PLL_Setup_18
//  226   {
//  227     flash_div += 1;
        ADDS     R10,R10,#+1
//  228   }
//  229  
//  230 #if defined(CPU_MK60DZ10)
//  231   
//  232   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  233   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  234   // �����ƶ��� FBE ģʽ
//  235   MCG->C2 = 0;
??LPLD_PLL_Setup_18:
        MOVS     R0,#+0
        LDR.N    R1,??LPLD_PLL_Setup_19  ;; 0x40064001
        STRB     R0,[R1, #+0]
//  236   // ������ʼ����ɺ�,�ͷ�����״̬�µ� oscillator �� GPIO 
//  237   SIM->SCGC4 |= SIM_SCGC4_LLWU_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_19+0x4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??LPLD_PLL_Setup_19+0x4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  238   LLWU->CS |= LLWU_CS_ACKISO_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_19+0x8  ;; 0x4007c008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??LPLD_PLL_Setup_19+0x8  ;; 0x4007c008
        STRB     R0,[R1, #+0]
//  239   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  240   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  241   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
        MOVS     R0,#+152
        LDR.N    R1,??LPLD_PLL_Setup_19+0xC  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  242   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
??LPLD_PLL_Setup_20:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI.N    ??LPLD_PLL_Setup_20
//  243   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
??LPLD_PLL_Setup_21:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+2
        BNE.N    ??LPLD_PLL_Setup_21
//  244   // ����FBEģʽ
//  245   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  246   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  247   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  248   MCG->C5 = MCG_C5_PRDIV(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
        ANDS     R0,R5,#0x1F
        LDR.N    R1,??LPLD_PLL_Setup_19+0x14  ;; 0x40064004
        STRB     R0,[R1, #+0]
//  249   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  250   MCG->C6 = 0x0;
        MOVS     R0,#+0
        LDR.N    R1,??LPLD_PLL_Setup_19+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  251   //����ϵͳʱ�ӷ�Ƶϵ��
//  252   LPLD_Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        MOV      R3,R10
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        MOV      R2,R9
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R1,R8
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        BL       LPLD_Set_SYS_DIV
//  253   //���ñ�Ƶϵ��
//  254   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(vdiv); 
        ANDS     R0,R6,#0x1F
        ORRS     R0,R0,#0x40
        LDR.N    R1,??LPLD_PLL_Setup_19+0x18  ;; 0x40064005
        STRB     R0,[R1, #+0]
//  255   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
??LPLD_PLL_Setup_22:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_PLL_Setup_22
//  256   while (!(MCG->S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
??LPLD_PLL_Setup_23:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_PLL_Setup_23
//  257   // �Ѿ�����PBEģʽ
//  258   // ����CLKS ����PEEģʽ
//  259   MCG->C1 &= ~MCG_C1_CLKS_MASK;
        LDR.N    R0,??LPLD_PLL_Setup_19+0xC  ;; 0x40064000
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        LDR.N    R1,??LPLD_PLL_Setup_19+0xC  ;; 0x40064000
        STRB     R0,[R1, #+0]
//  260   // Wait for clock status bits to update
//  261   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
??LPLD_PLL_Setup_24:
        LDR.N    R0,??LPLD_PLL_Setup_19+0x10  ;; 0x40064006
        LDRB     R0,[R0, #+0]
        UBFX     R0,R0,#+2,#+2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+3
        BNE.N    ??LPLD_PLL_Setup_24
//  262   // �Ѿ�����PEEģʽ
//  263   
//  264   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  265   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  266   // �����ƶ��� FBE ģʽ
//  267   MCG->C2 = MCG_C2_RANGE(0x01) | MCG_C2_HGO_MASK | MCG_C2_EREFS_MASK;
//  268   // ������ʼ����ɺ�,�ͷ�����״̬�µ� oscillator �� GPIO 
//  269   SIM->SCGC4 |= SIM_SCGC4_LLWU_MASK;
//  270   LLWU->CS |= LLWU_CS_ACKISO_MASK;
//  271   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
//  272   while (!(MCG->S & MCG_S_OSCINIT_MASK)) {}; //�ȴ�C2[EREFS]��ʼ��
//  273   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  274   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  275   // ����FBEģʽ
//  276   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  277   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  278   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  279   MCG->C5 = MCG_C5_PRDIV(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
//  280   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  281   MCG->C6 = 0x0;
//  282   //����ϵͳʱ�ӷ�Ƶϵ��
//  283   LPLD_Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
//  284   //���ñ�Ƶϵ��
//  285   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV(vdiv); 
//  286   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  287   while (!(MCG->S & MCG_S_LOCK_MASK)){}; // Wait for LOCK bit to set
//  288   // �Ѿ�����PBEģʽ
//  289   // ����CLKS ����PEEģʽ
//  290   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  291   // Wait for clock status bits to update
//  292   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  293   #endif
//  294   
//  295 #elif (defined(CPU_MK60D10)) 
//  296   
//  297   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  298   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  299   // �����ƶ��� FBE ģʽ
//  300   MCG->C2 = 0;
//  301   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  302   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  303   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);  
//  304   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  305   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  306   // ����FBEģʽ
//  307   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  308   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  309   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  310   MCG->C5 = MCG_C5_PRDIV0(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
//  311   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  312   MCG->C6 = 0x0;
//  313   //����ϵͳʱ�ӷ�Ƶϵ��
//  314   LPLD_Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
//  315   //���ñ�Ƶϵ��
//  316   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(vdiv); 
//  317   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  318   while (!(MCG->S & MCG_S_LOCK0_MASK)){}; // Wait for LOCK bit to set
//  319   // �Ѿ�����PBEģʽ
//  320   // ����CLKS ����PEEģʽ
//  321   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  322   // Wait for clock status bits to update
//  323   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  324   // �Ѿ�����PEEģʽ
//  325   
//  326   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  327   
//  328   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  329   // �����ƶ��� FBE ģʽ
//  330   MCG->C2 = MCG_C2_RANGE0(0x01) | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK;
//  331 
//  332   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
//  333   while (!(MCG->S & MCG_S_OSCINIT0_MASK)) {}; //�ȴ�C2[EREFS]��ʼ��
//  334   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  335   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  336   // ����FBEģʽ
//  337   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV=5
//  338   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  339   // ���� 2MHz �Ĳο�ʱ�Ӹ� PLL.
//  340   MCG->C5 = MCG_C5_PRDIV0(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ�� 
//  341   // ȷ��MCG_C6���ڸ�λ״̬,��ֹLOLIE��PLL����ʱ�ӿ�����,��PLL VCO��Ƶ��
//  342   MCG->C6 = 0x0;
//  343   //����ϵͳʱ�ӷ�Ƶϵ��
//  344   LPLD_Set_SYS_DIV(core_div, bus_div, flexbus_div, flash_div);  
//  345   //���ñ�Ƶϵ��
//  346   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(vdiv); 
//  347   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  348   while (!(MCG->S & MCG_S_LOCK0_MASK)){}; // Wait for LOCK bit to set
//  349   // �Ѿ�����PBEģʽ
//  350   // ����CLKS ����PEEģʽ
//  351   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  352   // Wait for clock status bits to update
//  353   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  354   
//  355   #endif
//  356   
//  357 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  358   
//  359   if (PMC->REGSC &  PMC_REGSC_ACKISO_MASK)
//  360         PMC->REGSC |= PMC_REGSC_ACKISO_MASK;
//  361   /*ע�⣺PLL��ʼ����������ϵͳʱ�ӷ�Ƶ��
//  362     ����ϵͳʱ�ӷ�Ƶ������PLL֮ǰ����*/ 
//  363   SIM->CLKDIV1 = ( 0
//  364                   | SIM_CLKDIV1_OUTDIV1(core_div)   //�����ں˷�Ƶ
//  365                   | SIM_CLKDIV1_OUTDIV2(bus_div)   //���������Ƶ
//  366                   | SIM_CLKDIV1_OUTDIV3(flexbus_div)   //����FlexBus��Ƶ
//  367                   | SIM_CLKDIV1_OUTDIV4(flash_div) );//����FLASH��Ƶ
//  368   //��ʼ��������ʱ�ӣ�ϵͳ�ں���Ƶ������ʱ�ӡ�FlexBusʱ�ӡ�Flashʱ��
//  369   
//  370   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  371   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  372   // �����ƶ��� FBE ģʽ
//  373   MCG->C2 = MCG_C2_RANGE0(1);
//  374   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  375   // CLKS=2, FRDIV=5, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  376   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(5);
//  377   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  378   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  379   // ����FBEģʽ
//  380   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV
//  381   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  382   // ���� 10MHz �Ĳο�ʱ�Ӹ� PLL.
//  383   MCG->C6 |= MCG_C6_CME0_MASK;
//  384   MCG->C5 = MCG_C5_PRDIV0(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ��
//  385   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(vdiv); 
//  386   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  387   while (!(MCG->S & MCG_S_LOCK0_MASK)){}; // Wait for LOCK bit to set
//  388   // �Ѿ�����PBEģʽ
//  389   // ����CLKS ����PEEģʽ
//  390   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  391   // Wait for clock status bits to update
//  392   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  393   // �Ѿ�����PEEģʽ
//  394   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  395   // ������踴λ�� MCG ģ��Ĭ��Ϊ FEI ģʽ
//  396   // �����ƶ��� FBE ģʽ
//  397   MCG->C2 = MCG_C2_RANGE0(1) | MCG_C2_HGO0_MASK | MCG_C2_EREFS0_MASK;
//  398   // ѡ���ⲿ oscilator ���ο���Ƶ�� and ���� IREFS �����ⲿosc
//  399   // CLKS=2, FRDIV=3, IREFS=0, IRCLKEN=0, IREFSTEN=0
//  400   MCG->C1 = MCG_C1_CLKS(2) | MCG_C1_FRDIV(3);
//  401   while (!(MCG->S & MCG_S_OSCINIT0_MASK)) {}; //�ȴ�C2[EREFS]��ʼ��
//  402   while (MCG->S & MCG_S_IREFST_MASK){}; // �ȴ��ο�ʱ������
//  403   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x2){}; // �ȴ�ʱ��״̬��ʾΪ�ⲿ�ο�ʱ��(ext ref clk)
//  404   // ����FBEģʽ
//  405   // ���� PLL �ο���Ƶ��, PLLCLKEN=0, PLLSTEN=0, PRDIV
//  406   // �þ���Ƶ����ѡ�� PRDIV ֵ. ������Ƶ�ʾ����ʱ��֧��
//  407   // ���� 10MHz �Ĳο�ʱ�Ӹ� PLL.
//  408   MCG->C6 |= MCG_C6_CME0_MASK;
//  409   MCG->C5 = MCG_C5_PRDIV0(prdiv); // ���� PLL ƥ�侧��Ĳο���Ƶ��
//  410   MCG->C6 = MCG_C6_PLLS_MASK | MCG_C6_VDIV0(vdiv); 
//  411   while (!(MCG->S & MCG_S_PLLST_MASK)){}; // wait for PLL status bit to set
//  412   while (!(MCG->S & MCG_S_LOCK0_MASK)){}; // Wait for LOCK bit to set
//  413   // �Ѿ�����PBEģʽ
//  414   // ����CLKS ����PEEģʽ
//  415   MCG->C1 &= ~MCG_C1_CLKS_MASK;
//  416   // Wait for clock status bits to update
//  417   while (((MCG->S & MCG_S_CLKST_MASK) >> MCG_S_CLKST_SHIFT) != 0x3){};
//  418   // �Ѿ�����PEEģʽ
//  419   #endif
//  420 #endif  
//  421   return pll_freq;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_PLL_Setup_12:
        POP      {R1,R4-R11,PC}   ;; return
        Nop      
        DATA
??LPLD_PLL_Setup_19:
        DC32     0x40064001
        DC32     0x40048034
        DC32     0x4007c008
        DC32     0x40064000
        DC32     0x40064006
        DC32     0x40064004
        DC32     0x40064005
//  422 } 
//  423 
//  424 /*
//  425  * LPLD_Set_SYS_DIV
//  426  * ����ϵͳʼ�շ�Ƶ
//  427  *
//  428  * ˵��:
//  429  * ��δ�����������RAM�У�Ŀ���Ƿ�ֹ�����ܷɣ�����ٷ��ĵ�errata e2448.
//  430  * ��Flashʱ�ӷ�Ƶ�ı��ʱ��FlashԤ��ȡ�������.
//  431  * ��ֹ��Flash���������´���.
//  432  * ��Ԥ��ȡ������ʹ��֮ǰ������ʱ�ӷ�Ƶ�ı����һ��С����ʱ.
//  433  *
//  434  * ����:
//  435  *    outdiv1~outdiv4--�ֱ�Ϊcore, bus, FlexBus, Flashʱ�ӷ�Ƶϵ��
//  436  */

        SECTION `.textrw`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, SHF_WRITE | SHF_EXECINSTR
        THUMB
//  437 RAMFUNC void LPLD_Set_SYS_DIV(uint32 outdiv1, uint32 outdiv2, uint32 outdiv3, uint32 outdiv4)
//  438 {
LPLD_Set_SYS_DIV:
        PUSH     {R4-R7}
//  439   uint32 temp_reg;
//  440   uint8 i;
//  441   
//  442   temp_reg = FMC->PFAPR; // ���� FMC_PFAPR �Ĵ���
        LDR.N    R6,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R6,[R6, #+0]
        MOVS     R4,R6
//  443   
//  444   // ���� M0PFD �� M7PFD Ϊ 1 ����Ԥ�ȶ�ȡ
//  445   FMC->PFAPR |= FMC_PFAPR_M7PFD_MASK | FMC_PFAPR_M6PFD_MASK | FMC_PFAPR_M5PFD_MASK
//  446              | FMC_PFAPR_M4PFD_MASK | FMC_PFAPR_M3PFD_MASK | FMC_PFAPR_M2PFD_MASK
//  447              | FMC_PFAPR_M1PFD_MASK | FMC_PFAPR_M0PFD_MASK;
        LDR.N    R6,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0xFF0000
        LDR.N    R7,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        STR      R6,[R7, #+0]
//  448   
//  449   // ����ʱ�ӷ�ƵΪ����ֵ  
//  450   SIM->CLKDIV1 = SIM_CLKDIV1_OUTDIV1(outdiv1) | SIM_CLKDIV1_OUTDIV2(outdiv2) 
//  451               | SIM_CLKDIV1_OUTDIV3(outdiv3) | SIM_CLKDIV1_OUTDIV4(outdiv4);
        LSLS     R6,R1,#+24
        ANDS     R6,R6,#0xF000000
        ORRS     R6,R6,R0, LSL #+28
        LSLS     R7,R2,#+20
        ANDS     R7,R7,#0xF00000
        ORRS     R6,R7,R6
        LSLS     R7,R3,#+16
        ANDS     R7,R7,#0xF0000
        ORRS     R6,R7,R6
        LDR.N    R7,??LPLD_Set_SYS_DIV_0+0x4  ;; 0x40048044
        STR      R6,[R7, #+0]
//  452 
//  453   // ��ʱһС��ʱ��ȴ��ı�
//  454   for (i = 0 ; i < outdiv4 ; i++)
        MOVS     R6,#+0
        MOVS     R5,R6
??LPLD_Set_SYS_DIV_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R3
        BCS.N    ??LPLD_Set_SYS_DIV_2
        ADDS     R5,R5,#+1
        B.N      ??LPLD_Set_SYS_DIV_1
//  455   {}
//  456   
//  457   FMC->PFAPR = temp_reg; // �ظ�ԭ�ȵ� FMC_PFAPR �Ĵ���ֵ
??LPLD_Set_SYS_DIV_2:
        LDR.N    R6,??LPLD_Set_SYS_DIV_0  ;; 0x4001f000
        STR      R4,[R6, #+0]
//  458   
//  459   return;
        POP      {R4-R7}
        BX       LR               ;; return
        DATA
??LPLD_Set_SYS_DIV_0:
        DC32     0x4001f000
        DC32     0x40048044
//  460 } // set_sys_dividers

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  461 
//  462 /*******************************************
//  463 *         MK60F12 & 15
//  464 *  MCGOUT = PLL output frequency/2
//  465 *  PLL = (Crystal / PRDIV0 ) * VDIV0
//  466 ********************************************
//  467 PRDIV0 Divide Factor
//  468 ********************************************
//  469 PRDIV0  Va
//  470 ********************************************
//  471 000     1
//  472 001     2
//  473 010     3
//  474 011     4
//  475 100     5
//  476 101     6
//  477 110     7
//  478 111     8
//  479 ********************************************
//  480 VDIV0 MultiplyFactor
//  481 ********************************************
//  482 VDIV0 Va VDIV0 Va VDIV0 Va VDIV0 Va
//  483 ********************************************
//  484 00000 16 01000 24 10000 32 11000 40
//  485 00001 17 01001 25 10001 33 11001 41
//  486 00010 18 01010 26 10010 34 11010 42
//  487 00011 19 01011 27 10011 35 11011 43
//  488 00100 20 01100 28 10100 36 11100 44
//  489 00101 21 01101 29 10101 37 11101 45
//  490 00110 22 01110 30 10110 38 11110 46
//  491 00111 23 01111 31 10111 39 11111 47
//  492 ********************************************/
//  493 
//  494 /********************************************
//  495 *             MK60DZ10
//  496 *  MCGOUT = PLL output frequency
//  497 *  PLL = (Crystal / PRDIV0 ) * VDIV0
//  498 *********************************************
//  499 PRDIV DivideFactor
//  500 *********************************************
//  501 PRDIV0 Va PRDIV0 Va PRDIV0 Va PRDIV0 Va
//  502 *********************************************
//  503 00000  1  01000   9 10000  17 11000  25
//  504 00001  2  01001  10 10001  18 11001  Reserved
//  505 00010  3  01010  11 10010  19 11010  Reserved
//  506 00011  4  01011  12 10011  20 11011  Reserved
//  507 00100  5  01100  13 10100  21 11100  Reserved
//  508 00101  6  01101  14 10101  22 11101  Reserved
//  509 00110  7  01110  15 10110  23 11110  Reserved
//  510 00111  8  01111  16 10111  24 11111  Reserved
//  511 *********************************************
//  512 VDIV MultiplyFactor
//  513 *********************************************
//  514 VDIV0 Va VDIV0 Va VDIV0 Va VDIV0 Va
//  515 *********************************************
//  516 00000 24 01000 32 10000 40 11000 48
//  517 00001 25 01001 33 10001 41 11001 49
//  518 00010 26 01010 34 10010 42 11010 50
//  519 00011 27 01011 35 10011 43 11011 51
//  520 00100 28 01100 36 10100 44 11100 52
//  521 00101 29 01101 37 10101 45 11101 53
//  522 00110 30 01110 38 10110 46 11110 54
//  523 00111 31 01111 39 10111 47 11111 55
//  524 *********************************************/
// 
//  16 bytes in section .data
// 508 bytes in section .text
//  80 bytes in section .textrw
// 
// 588 bytes of CODE memory
//  16 bytes of DATA memory
//
//Errors: none
//Warnings: none
