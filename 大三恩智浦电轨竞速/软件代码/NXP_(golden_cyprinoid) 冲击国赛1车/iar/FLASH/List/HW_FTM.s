///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:11
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FTM.c
//    Command line =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FTM.c -D LPLD_K60
//        -lCN
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -lB
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -o
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\BSP\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\ITAC\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\CTL\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\MAIN\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\SENSOR\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\CPU\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\common\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\HW\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\DEV\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\option\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\common\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\driver\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\descriptor\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\class\" -On -I D:\IAR\arm\CMSIS\Include\ -D
//        ARM_MATH_CM4
//    List file    =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\HW_FTM.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy4
        EXTERN assert_failed
        EXTERN g_bus_clock

        PUBLIC FTM0_IRQHandler
        PUBLIC FTM1_IRQHandler
        PUBLIC FTM2_IRQHandler
        PUBLIC FTM_ISR
        PUBLIC LPLD_FTM_ClearCHnF
        PUBLIC LPLD_FTM_ClearCounter
        PUBLIC LPLD_FTM_ClearTOF
        PUBLIC LPLD_FTM_Deinit
        PUBLIC LPLD_FTM_DisableChn
        PUBLIC LPLD_FTM_DisableIrq
        PUBLIC LPLD_FTM_EnableIrq
        PUBLIC LPLD_FTM_GetChVal
        PUBLIC LPLD_FTM_GetClkDiv
        PUBLIC LPLD_FTM_GetCounter
        PUBLIC LPLD_FTM_IC_Enable
        PUBLIC LPLD_FTM_Init
        PUBLIC LPLD_FTM_IsCHnF
        PUBLIC LPLD_FTM_IsTOF
        PUBLIC LPLD_FTM_PWM_ChangeDuty
        PUBLIC LPLD_FTM_PWM_Enable
        PUBLIC LPLD_FTM_QD_Disable
        PUBLIC LPLD_FTM_QD_Enable

// E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FTM.c
//    1 /**
//    2  * @file HW_FTM.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FTM�ײ�ģ����غ���
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
//   23 #include "HW_FTM.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 FTM_ISR_CALLBACK FTM_ISR[3];
FTM_ISR:
        DS8 12
//   27 
//   28 static uint8 LPLD_FTM_PWM_Init(FTM_InitTypeDef);
//   29 static uint8 LPLD_FTM_IC_Init(FTM_InitTypeDef);
//   30 static uint8 LPLD_FTM_QD_Init(FTM_InitTypeDef);
//   31 static uint8 LPLD_FTM_DEC_Init(FTM_InitTypeDef);
//   32 static uint8 LPLD_FTM_PinInit(FTM_Type *, FtmChnEnum_Type, PortPinsEnum_Type);
//   33 static uint8 LPLD_FTM_PinDeinit(FTM_Type *, FtmChnEnum_Type);
//   34 
//   35 
//   36 /*
//   37  * LPLD_FTM_Init
//   38  * FTMģ��ͨ�ó�ʼ�����ɳ�ʼ��ΪPWM�����벶���������롢˫�߲���ģʽ
//   39  *
//   40  * ����:
//   41  *    ftm_init_structure--FTM��ʼ���ṹ�壬
//   42  *                        ���嶨���FTM_InitTypeDef
//   43  *
//   44  * ���:
//   45  *    0--���ô���
//   46  *    1--���óɹ�
//   47  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 uint8 LPLD_FTM_Init(FTM_InitTypeDef ftm_init_structure)
//   49 {
LPLD_FTM_Init:
        PUSH     {R0-R3}
        PUSH     {R1-R5,LR}
//   50   uint8 result, i;
//   51   //�������
//   52   ASSERT( ftm_init_structure.FTM_Mode & 
//   53          (FTM_MODE_PWM|FTM_MODE_IC|FTM_MODE_QD|FTM_MODE_DEC));  //�ж�ģʽѡ��
        LDRB     R0,[SP, #+28]
        MOVS     R1,#+15
        TST      R0,R1
        BNE.N    ??LPLD_FTM_Init_0
        MOVS     R1,#+53
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//   54   
//   55   // ʹ��FTMʱ��ģ��
//   56   if(ftm_init_structure.FTM_Ftmx == FTM0)
??LPLD_FTM_Init_0:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable10_3  ;; 0x40038000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Init_1
//   57   {
//   58     i=0; 
        MOVS     R0,#+0
        MOVS     R5,R0
//   59     SIM->SCGC6 |= SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Init_2
//   60   }
//   61   else if(ftm_init_structure.FTM_Ftmx == FTM1)
??LPLD_FTM_Init_1:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable10_5  ;; 0x40039000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Init_3
//   62   {
//   63     i=1;
        MOVS     R0,#+1
        MOVS     R5,R0
//   64     SIM->SCGC6 |= SIM_SCGC6_FTM1_MASK;
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Init_2
//   65   }
//   66   else if(ftm_init_structure.FTM_Ftmx == FTM2)
??LPLD_FTM_Init_3:
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable10_6  ;; 0x400b8000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Init_4
//   67   {
//   68     i=2;
        MOVS     R0,#+2
        MOVS     R5,R0
//   69     SIM->SCGC3 |= SIM_SCGC3_FTM2_MASK;
        LDR.W    R0,??DataTable10_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Init_2
//   70   }
//   71   else
//   72   {
//   73     return 0;
??LPLD_FTM_Init_4:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_Init_5
//   74   }
//   75   
//   76   if(ftm_init_structure.FTM_Mode & FTM_MODE_PWM)
??LPLD_FTM_Init_2:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+31
        BPL.N    ??LPLD_FTM_Init_6
//   77   {
//   78     result = LPLD_FTM_PWM_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_PWM_Init
        MOVS     R4,R0
        B.N      ??LPLD_FTM_Init_7
//   79   }
//   80   else if(ftm_init_structure.FTM_Mode & FTM_MODE_IC)
??LPLD_FTM_Init_6:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+30
        BPL.N    ??LPLD_FTM_Init_8
//   81   {
//   82     result = LPLD_FTM_IC_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_IC_Init
        MOVS     R4,R0
        B.N      ??LPLD_FTM_Init_7
//   83   }
//   84   else if(ftm_init_structure.FTM_Mode & FTM_MODE_QD)
??LPLD_FTM_Init_8:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+29
        BPL.N    ??LPLD_FTM_Init_9
//   85   {
//   86     result = LPLD_FTM_QD_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_QD_Init
        MOVS     R4,R0
        B.N      ??LPLD_FTM_Init_7
//   87   }
//   88   else if(ftm_init_structure.FTM_Mode & FTM_MODE_DEC)
??LPLD_FTM_Init_9:
        LDRB     R0,[SP, #+28]
        LSLS     R0,R0,#+28
        BPL.N    ??LPLD_FTM_Init_7
//   89   {
//   90     result = LPLD_FTM_DEC_Init(ftm_init_structure);
        ADD      R1,SP,#+24
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_DEC_Init
        MOVS     R4,R0
//   91   }
//   92   
//   93   if(result == 1)
??LPLD_FTM_Init_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_FTM_Init_10
//   94   {    
//   95     //�ж��Ƿ�������ж�
//   96     if(ftm_init_structure.FTM_Isr!=NULL)
        LDR      R0,[SP, #+48]
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM_Init_10
//   97     {      
//   98       FTM_ISR[i] = ftm_init_structure.FTM_Isr;
        LDR      R0,[SP, #+48]
        LDR.W    R1,??DataTable10_8
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R1, R5, LSL #+2]
//   99       if(ftm_init_structure.FTM_ToiEnable == TRUE)
        LDRB     R0,[SP, #+44]
        CMP      R0,#+1
        BNE.N    ??LPLD_FTM_Init_10
//  100       {
//  101         ftm_init_structure.FTM_Ftmx->SC |= FTM_SC_TOIE_MASK;
        LDR      R0,[SP, #+24]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR      R1,[SP, #+24]
        STR      R0,[R1, #+0]
//  102       }
//  103     }
//  104   }
//  105   
//  106   return result;
??LPLD_FTM_Init_10:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_FTM_Init_5:
        POP      {R1-R5}
        LDR      PC,[SP], #+20    ;; return
//  107 }
//  108 
//  109 /*
//  110  * LPLD_FTM_Deinit
//  111  * FTMģ��ͨ�÷���ʼ��
//  112  *
//  113  * ����:
//  114  *    ftm_init_structure--FTM��ʼ���ṹ�壬
//  115  *                        ���嶨���FTM_InitTypeDef
//  116  *
//  117  * ���:
//  118  *    0--���ô���
//  119  *    1--���óɹ�
//  120  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  121 uint8 LPLD_FTM_Deinit(FTM_InitTypeDef ftm_init_structure)
//  122 {
LPLD_FTM_Deinit:
        PUSH     {R0-R3}
        PUSH     {R5-R7,LR}
//  123   if(ftm_init_structure.FTM_Ftmx == FTM0)
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable10_3  ;; 0x40038000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Deinit_0
//  124   {
//  125     SIM->SCGC6 &= ~SIM_SCGC6_FTM0_MASK;
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Deinit_1
//  126   }
//  127   else if(ftm_init_structure.FTM_Ftmx == FTM1)
??LPLD_FTM_Deinit_0:
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable10_5  ;; 0x40039000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Deinit_2
//  128   {
//  129     SIM->SCGC6 &= ~SIM_SCGC6_FTM1_MASK;
        LDR.W    R0,??DataTable10_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable10_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Deinit_1
//  130   }
//  131   else if(ftm_init_structure.FTM_Ftmx == FTM2)
??LPLD_FTM_Deinit_2:
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable10_6  ;; 0x400b8000
        CMP      R0,R1
        BNE.N    ??LPLD_FTM_Deinit_3
//  132   {
//  133     SIM->SCGC3 &= ~SIM_SCGC3_FTM2_MASK;
        LDR.W    R0,??DataTable10_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000000
        LDR.W    R1,??DataTable10_7  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FTM_Deinit_1
//  134   }
//  135   else
//  136   {
//  137     return 0;
??LPLD_FTM_Deinit_3:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_Deinit_4
//  138   }
//  139   
//  140   return LPLD_FTM_DisableIrq(ftm_init_structure);
??LPLD_FTM_Deinit_1:
        ADD      R1,SP,#+16
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_FTM_DisableIrq
??LPLD_FTM_Deinit_4:
        POP      {R1-R3}
        LDR      PC,[SP], #+20    ;; return
//  141 }
//  142 
//  143 /*
//  144  * LPLD_FTM_PWM_Enable
//  145  * FTMģ��PWMģʽ���ʹ�ܣ��������ͨ����ռ�ձȡ�ָ����Ӧ�����š����뷽ʽ
//  146  *
//  147  * ����:
//  148  *    ftmx--FTMxģ���
//  149  *      |__FTM0          --FTM0
//  150  *      |__FTM1          --FTM1
//  151  *      |__FTM2          --FTM2
//  152  *    chn--PWM���ͨ��
//  153  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2)
//  154  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2)
//  155  *      |__FTM_Ch2          --FTMxͨ��2(FTM0)
//  156  *      |__FTM_Ch3          --FTMxͨ��3(FTM0)
//  157  *      |__FTM_Ch4          --FTMxͨ��4(FTM0)
//  158  *      |__FTM_Ch5          --FTMxͨ��5(FTM0)
//  159  *      |__FTM_Ch6          --FTMxͨ��6(FTM0)
//  160  *      |__FTM_Ch7          --FTMxͨ��7(FTM0)
//  161  *    duty--PWM���ռ�ձ�
//  162  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  163  *    pin--FTMxͨ����Ӧ������
//  164  *      FTM0
//  165  *       FTM_Ch0-PTA3\PTC1
//  166  *       FTM_Ch1-PTA4\PTC2
//  167  *       FTM_Ch2-PTA5\PTC3
//  168  *       FTM_Ch3-PTA6\PTC4
//  169  *       FTM_Ch4-PTA7\PTD4
//  170  *       FTM_Ch5-PTA0\PTD5
//  171  *       FTM_Ch6-PTA1\PTD6
//  172  *       FTM_Ch7-PTA2\PTD7
//  173  *      FTM1
//  174  *       FTM_Ch0-PTA8\PTA12\PTB0
//  175  *       FTM_Ch1-PTA9\PTA13\PTB1
//  176  *      FTM2
//  177  *       FTM_Ch0-PTA10\PTB18
//  178  *       FTM_Ch1-PTA11\PTB19
//  179  *    align--������뷽ʽ
//  180  *      |__ALIGN_LEFT    --�����
//  181  *      |__ALIGN_RIGHT   --�Ҷ���
//  182  *
//  183  * ���:
//  184  *    0--���ô���
//  185  *    1--���óɹ�
//  186  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  187 uint8 LPLD_FTM_PWM_Enable(FTM_Type *ftmx, FtmChnEnum_Type chn, uint32 duty, PortPinsEnum_Type pin, uint8 align)
//  188 {
LPLD_FTM_PWM_Enable:
        PUSH     {R3-R9,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+32]
//  189   uint32 cv;
//  190   vuint32 mod;
//  191   
//  192   //�������
//  193   ASSERT( duty <= 10000 );                  //�ж�ռ�ձ�
        MOVW     R0,#+10001
        CMP      R7,R0
        BCC.N    ??LPLD_FTM_PWM_Enable_0
        MOVS     R1,#+193
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  194   
//  195   if(!LPLD_FTM_PinInit(ftmx, chn, pin))
??LPLD_FTM_PWM_Enable_0:
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        BL       LPLD_FTM_PinInit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_PWM_Enable_1
//  196     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PWM_Enable_2
//  197   
//  198   //������Ҷ��룬100%-ռ�ձ�
//  199   if(align == ALIGN_RIGHT)
??LPLD_FTM_PWM_Enable_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+36
        BNE.N    ??LPLD_FTM_PWM_Enable_3
//  200   {
//  201     duty = 10000 - duty;
        MOVW     R0,#+10000
        SUBS     R7,R0,R7
//  202   }
//  203   
//  204   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  205   mod = ftmx->MOD;
??LPLD_FTM_PWM_Enable_3:
        LDR      R0,[R5, #+8]
        STR      R0,[SP, #+0]
//  206   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        MUL      R0,R0,R7
        MOVW     R1,#+10000
        UDIV     R0,R0,R1
        MOV      R9,R0
//  207   
//  208   // ����FTMͨ�����ƼĴ��� 
//  209   // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� ����� ELSB:ELSA-10
//  210   // ͨ��ģʽ MSB:MSA-1X, ͨ����Եѡ�� �Ҷ��� ELSB:ELSA-X1
//  211   ftmx->CONTROLS[chn].CnSC = align;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R5,R6, LSL #+3
        STR      R4,[R0, #+12]
//  212   // ����FTMͨ��ֵ
//  213   ftmx->CONTROLS[chn].CnV  = cv;
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R5,R6, LSL #+3
        STR      R9,[R0, #+16]
//  214   
//  215   return 1;
        MOVS     R0,#+1
??LPLD_FTM_PWM_Enable_2:
        POP      {R1,R4-R9,PC}    ;; return
//  216 }
//  217 
//  218 /*
//  219  * LPLD_FTM_PWM_ChangeDuty
//  220  * ���FTMģ��PWMģʽָ��ͨ�������ռ�ձ�
//  221  *
//  222  * ����:
//  223  *    ftmx--FTMxģ���
//  224  *      |__FTM0          --FTM0
//  225  *      |__FTM1          --FTM1
//  226  *      |__FTM2          --FTM2
//  227  *    chn--PWM���ͨ��
//  228  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2)
//  229  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2)
//  230  *      |__FTM_Ch2          --FTMxͨ��2(FTM0)
//  231  *      |__FTM_Ch3          --FTMxͨ��3(FTM0)
//  232  *      |__FTM_Ch4          --FTMxͨ��4(FTM0)
//  233  *      |__FTM_Ch5          --FTMxͨ��5(FTM0)
//  234  *      |__FTM_Ch6          --FTMxͨ��6(FTM0)
//  235  *      |__FTM_Ch7          --FTMxͨ��7(FTM0)
//  236  *    duty--PWM���ռ�ձ�
//  237  *      |__0~10000--ռ�ձ�0.00%~100.00%
//  238  *
//  239  * ���:
//  240  *    0--���ô���
//  241  *    1--���óɹ�
//  242  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  243 uint8 LPLD_FTM_PWM_ChangeDuty(FTM_Type *ftmx, FtmChnEnum_Type chn, uint32 duty)
//  244 {
LPLD_FTM_PWM_ChangeDuty:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  245   uint32 cv;
//  246   vuint32 mod;
//  247   
//  248   //�������
//  249   ASSERT( duty <= 10000 );                  //�ж�ռ�ձ�
        MOVW     R0,#+10001
        CMP      R6,R0
        BCC.N    ??LPLD_FTM_PWM_ChangeDuty_0
        MOVS     R1,#+249
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  250     
//  251   //������Ҷ��룬100%-ռ�ձ�
//  252   if(ftmx->CONTROLS[chn].CnSC & FTM_CnSC_ELSA_MASK)
??LPLD_FTM_PWM_ChangeDuty_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        LSLS     R0,R0,#+29
        BPL.N    ??LPLD_FTM_PWM_ChangeDuty_1
//  253   {
//  254     duty = 10000 - duty;
        MOVW     R0,#+10000
        SUBS     R6,R0,R6
//  255   }
//  256   
//  257   //ռ�ձ� = (CnV-CNTIN)/(MOD-CNTIN+1)
//  258   mod = ftmx->MOD;
??LPLD_FTM_PWM_ChangeDuty_1:
        LDR      R0,[R4, #+8]
        STR      R0,[SP, #+0]
//  259   cv = (duty*(mod-0+1)+0)/10000;
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        MUL      R0,R0,R6
        MOVW     R1,#+10000
        UDIV     R0,R0,R1
        MOVS     R7,R0
//  260  
//  261   // ����FTMͨ��ֵ
//  262   ftmx->CONTROLS[chn].CnV = cv;
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        STR      R7,[R0, #+16]
//  263   
//  264   return 1;
        MOVS     R0,#+1
        POP      {R1,R4-R7,PC}    ;; return
//  265 }
//  266 
//  267 /*
//  268  * LPLD_FTM_DisableChn
//  269  * ����FTMģ��ָ��ͨ�������������
//  270  *
//  271  * ����:
//  272  *    ftmx--FTMxģ���
//  273  *      |__FTM0          --FTM0
//  274  *      |__FTM1          --FTM1
//  275  *      |__FTM2          --FTM2
//  276  *    chn--PWM���ͨ��
//  277  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2)
//  278  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2)
//  279  *      |__FTM_Ch2          --FTMxͨ��2(FTM0)
//  280  *      |__FTM_Ch3          --FTMxͨ��3(FTM0)
//  281  *      |__FTM_Ch4          --FTMxͨ��4(FTM0)
//  282  *      |__FTM_Ch5          --FTMxͨ��5(FTM0)
//  283  *      |__FTM_Ch6          --FTMxͨ��6(FTM0)
//  284  *      |__FTM_Ch7          --FTMxͨ��7(FTM0)
//  285  *
//  286  * ���:
//  287  *    0--���ô���
//  288  *    1--���óɹ�
//  289  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  290 uint8 LPLD_FTM_DisableChn(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  291 {
LPLD_FTM_DisableChn:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  292   LPLD_FTM_PinDeinit(ftmx, chn);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_FTM_PinDeinit
//  293   ftmx->CONTROLS[chn].CnSC = 0;
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  294   ftmx->CONTROLS[chn].CnV  = 0;
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+16]
//  295   
//  296   return 1;
        MOVS     R0,#+1
        POP      {R1,R4,R5,PC}    ;; return
//  297 }
//  298 
//  299 
//  300 
//  301 /*
//  302  * LPLD_FTM_IC_Enable
//  303  * FTMģ�����벶��ģʽ���ʹ�ܣ���������ͨ����ָ����Ӧ�����š������Ե
//  304  *
//  305  * ����:
//  306  *    ftmx--FTMxģ���
//  307  *      |__FTM0          --FTM0
//  308  *      |__FTM1          --FTM1
//  309  *      |__FTM2          --FTM2
//  310  *    chn--PWM���ͨ��
//  311  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2)
//  312  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2)
//  313  *      |__FTM_Ch2          --FTMxͨ��2(FTM0)
//  314  *      |__FTM_Ch3          --FTMxͨ��3(FTM0)
//  315  *      |__FTM_Ch4          --FTMxͨ��4(FTM0)
//  316  *      |__FTM_Ch5          --FTMxͨ��5(FTM0)
//  317  *      |__FTM_Ch6          --FTMxͨ��6(FTM0)
//  318  *      |__FTM_Ch7          --FTMxͨ��7(FTM0)
//  319  *    pin--FTMxͨ����Ӧ������
//  320  *      FTM0
//  321  *       FTM_Ch0-PTA3\PTC1
//  322  *       FTM_Ch1-PTA4\PTC2
//  323  *       FTM_Ch2-PTA5\PTC3
//  324  *       FTM_Ch3-PTA6\PTC4
//  325  *       FTM_Ch4-PTA7\PTD4
//  326  *       FTM_Ch5-PTA0\PTD5
//  327  *       FTM_Ch6-PTA1\PTD6
//  328  *       FTM_Ch7-PTA2\PTD7
//  329  *      FTM1
//  330  *       FTM_Ch0-PTA8\PTA12\PTB0
//  331  *       FTM_Ch1-PTA9\PTA13\PTB1
//  332  *      FTM2
//  333  *       FTM_Ch0-PTA10\PTB18
//  334  *       FTM_Ch1-PTA11\PTB19
//  335  *    capture_edge--�����Ե����
//  336  *      |__CAPTURE_RI    --�����ز���
//  337  *      |__CAPTURE_FA    --�½��ز���
//  338  *      |__CAPTURE_RIFA  --�����½��ز���
//  339  *
//  340  * ���:
//  341  *    0--���ô���
//  342  *    1--���óɹ�
//  343  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  344 uint8 LPLD_FTM_IC_Enable(FTM_Type *ftmx, FtmChnEnum_Type chn, PortPinsEnum_Type pin, uint8 capture_edge)
//  345 {
LPLD_FTM_IC_Enable:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  346   if(!LPLD_FTM_PinInit(ftmx, chn, pin))
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_FTM_PinInit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_IC_Enable_0
//  347     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_IC_Enable_1
//  348   
//  349   ftmx->CONTROLS[chn].CnSC = 0x00;
??LPLD_FTM_IC_Enable_0:
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  350   
//  351   ftmx->CONTROLS[chn].CnSC |= capture_edge;        
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ORRS     R0,R7,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  352   
//  353   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_CHF_MASK);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x80
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  354   ftmx->CONTROLS[chn].CnSC |= FTM_CnSC_CHIE_MASK;         //ʹ��ͨ�����������ж�
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        ORRS     R0,R0,#0x40
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  355   
//  356   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_MSB_MASK);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x20
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  357   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_MSA_MASK);       //���ó�Input captureģʽ
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        BICS     R0,R0,#0x10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  358   
//  359   ftmx->CONTROLS[chn].CnSC &= (~FTM_CnSC_DMA_MASK);       //�ر�DMA
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+3
        LDR      R0,[R0, #+12]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R4,R5, LSL #+3
        STR      R0,[R1, #+12]
//  360   
//  361   return 1;
        MOVS     R0,#+1
??LPLD_FTM_IC_Enable_1:
        POP      {R1,R4-R7,PC}    ;; return
//  362 }
//  363 
//  364 /*
//  365  * LPLD_FTM_IsTOF
//  366  * �ж�FTMx�Ƿ������������жϱ�־
//  367  * 
//  368  * ����:
//  369  *    ftmx--FTMxģ���
//  370  *      |__FTM0          --FTM0
//  371  *      |__FTM1          --FTM1
//  372  *      |__FTM2          --FTM2
//  373  *
//  374  * ���:
//  375  *    TRUE��FALSE
//  376  *
//  377  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  378 __INLINE boolean LPLD_FTM_IsTOF(FTM_Type *ftmx)
//  379 {
//  380   return (boolean)((ftmx->SC & FTM_SC_TOF_MASK)>>FTM_SC_TOF_SHIFT);
LPLD_FTM_IsTOF:
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+7,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  381 }
//  382 
//  383 /*
//  384  * LPLD_FTM_ClearTOF
//  385  * ���FTMx����������жϱ�־
//  386  * 
//  387  * ����:
//  388  *    ftmx--FTMxģ���
//  389  *      |__FTM0          --FTM0
//  390  *      |__FTM1          --FTM1
//  391  *      |__FTM2          --FTM2
//  392  *
//  393  * ���:
//  394  *    ��
//  395  *
//  396  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  397 __INLINE void LPLD_FTM_ClearTOF(FTM_Type *ftmx)
//  398 {
//  399   ftmx->SC = ftmx->SC & ~FTM_SC_TOF_MASK;
LPLD_FTM_ClearTOF:
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x80
        STR      R1,[R0, #+0]
//  400 }
        BX       LR               ;; return
//  401 
//  402 /*
//  403  * LPLD_FTM_IsCHnF
//  404  * �ж�ͨ��n�Ƿ�����жϱ�־
//  405  * 
//  406  * ����:
//  407  *    ftmx--FTMxģ���
//  408  *      |__FTM0          --FTM0
//  409  *      |__FTM1          --FTM1
//  410  *      |__FTM2          --FTM2
//  411  *    chn--PWM���ͨ��
//  412  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2)
//  413  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2)
//  414  *      |__FTM_Ch2          --FTMxͨ��2(FTM0)
//  415  *      |__FTM_Ch3          --FTMxͨ��3(FTM0)
//  416  *      |__FTM_Ch4          --FTMxͨ��4(FTM0)
//  417  *      |__FTM_Ch5          --FTMxͨ��5(FTM0)
//  418  *      |__FTM_Ch6          --FTMxͨ��6(FTM0)
//  419  *      |__FTM_Ch7          --FTMxͨ��7(FTM0)
//  420  *
//  421  * ���:
//  422  *    TRUE��FALSE
//  423  *
//  424  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  425 __INLINE boolean LPLD_FTM_IsCHnF(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  426 {
//  427   return (boolean)((ftmx->CONTROLS[chn].CnSC & FTM_CnSC_CHF_MASK)>>FTM_CnSC_CHF_SHIFT);
LPLD_FTM_IsCHnF:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+3
        LDR      R0,[R0, #+12]
        UBFX     R0,R0,#+7,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  428 }
//  429 
//  430 /*
//  431  * LPLD_FTM_ClearCHnF
//  432  * ���ͨ��n�жϱ�־
//  433  * 
//  434  * ����:
//  435  *    ftmx--FTMxģ���
//  436  *      |__FTM0          --FTM0
//  437  *      |__FTM1          --FTM1
//  438  *      |__FTM2          --FTM2
//  439  *    chn--PWM���ͨ��
//  440  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2)
//  441  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2)
//  442  *      |__FTM_Ch2          --FTMxͨ��2(FTM0)
//  443  *      |__FTM_Ch3          --FTMxͨ��3(FTM0)
//  444  *      |__FTM_Ch4          --FTMxͨ��4(FTM0)
//  445  *      |__FTM_Ch5          --FTMxͨ��5(FTM0)
//  446  *      |__FTM_Ch6          --FTMxͨ��6(FTM0)
//  447  *      |__FTM_Ch7          --FTMxͨ��7(FTM0)
//  448  *
//  449  * ���:
//  450  *    ��
//  451  *
//  452  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  453 __INLINE void LPLD_FTM_ClearCHnF(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  454 {
//  455   ftmx->CONTROLS[chn].CnSC = ftmx->CONTROLS[chn].CnSC & ~FTM_CnSC_CHF_MASK;
LPLD_FTM_ClearCHnF:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R2,R0,R1, LSL #+3
        LDR      R2,[R2, #+12]
        BICS     R2,R2,#0x80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+3
        STR      R2,[R3, #+12]
//  456 }
        BX       LR               ;; return
//  457 
//  458 /*
//  459  * LPLD_FTM_GetChVal
//  460  * ��ȡFTMxͨ��n�����FTMx����ֵ
//  461  * 
//  462  * ����:
//  463  *    ftmx--FTMxģ���
//  464  *      |__FTM0          --FTM0
//  465  *      |__FTM1          --FTM1
//  466  *      |__FTM2          --FTM2
//  467  *    chn--PWM���ͨ��
//  468  *      |__FTM_Ch0          --FTMxͨ��0(FTM0\FTM1\FTM2)
//  469  *      |__FTM_Ch1          --FTMxͨ��1(FTM0\FTM1\FTM2)
//  470  *      |__FTM_Ch2          --FTMxͨ��2(FTM0)
//  471  *      |__FTM_Ch3          --FTMxͨ��3(FTM0)
//  472  *      |__FTM_Ch4          --FTMxͨ��4(FTM0)
//  473  *      |__FTM_Ch5          --FTMxͨ��5(FTM0)
//  474  *      |__FTM_Ch6          --FTMxͨ��6(FTM0)
//  475  *      |__FTM_Ch7          --FTMxͨ��7(FTM0)
//  476  *
//  477  * ���:
//  478  *    0x1~0xFFFF
//  479  *
//  480  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  481 __INLINE uint16 LPLD_FTM_GetChVal(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  482 {
//  483   return ftmx->CONTROLS[chn].CnV;    //��ȡ��Ӧͨ�����񵽵�FTM������ֵ
LPLD_FTM_GetChVal:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+3
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  484 }
//  485 
//  486 /*
//  487  * LPLD_FTM_GetClkDiv
//  488  * ��ȡFTMxʱ�ӷ�Ƶϵ��
//  489  * 
//  490  * ����:
//  491  *    ftmx--FTMxģ���
//  492  *      |__FTM0          --FTM0
//  493  *      |__FTM1          --FTM1
//  494  *      |__FTM2          --FTM2
//  495  *
//  496  * ���:
//  497  *    1��2��4��8��16��32��64��128
//  498  *
//  499  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  500 __INLINE uint8 LPLD_FTM_GetClkDiv(FTM_Type *ftmx)
//  501 {
//  502   return 1u<<((ftmx->SC & FTM_SC_PS_MASK)>>FTM_SC_PS_SHIFT);    //���ʱ�ӷ�Ƶϵ��
LPLD_FTM_GetClkDiv:
        MOVS     R1,#+1
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x7
        LSLS     R0,R1,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  503 }
//  504 
//  505 /*
//  506  * LPLD_FTM_GetCounter
//  507  * ��ȡFTMx������ֵ
//  508  * 
//  509  * ����:
//  510  *    ftmx--FTMxģ���
//  511  *      |__FTM0          --FTM0
//  512  *      |__FTM1          --FTM1
//  513  *      |__FTM2          --FTM2
//  514  *
//  515  * ���:
//  516  *    ��
//  517  *
//  518  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  519 __INLINE uint16 LPLD_FTM_GetCounter(FTM_Type *ftmx)
//  520 {
//  521   return ftmx->CNT;        //��ȡFTMx������ֵ
LPLD_FTM_GetCounter:
        LDR      R0,[R0, #+4]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  522 }
//  523 
//  524 /*
//  525  * LPLD_FTM_ClearCounter
//  526  * ���FTMx������
//  527  * 
//  528  * ����:
//  529  *    ftmx--FTMxģ���
//  530  *      |__FTM0          --FTM0
//  531  *      |__FTM1          --FTM1
//  532  *      |__FTM2          --FTM2
//  533  *
//  534  * ���:
//  535  *    ��
//  536  *
//  537  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  538 __INLINE void LPLD_FTM_ClearCounter(FTM_Type *ftmx)
//  539 {
//  540   ftmx->CNT = 0;        //���FTMx������ֵ
LPLD_FTM_ClearCounter:
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  541 }
        BX       LR               ;; return
//  542 
//  543 /*
//  544  * LPLD_FTM_EnableIrq
//  545  * ʹ��FTMx�ж�
//  546  * 
//  547  * ����:
//  548  *    ftm_init_structure--FTM��ʼ���ṹ�壬
//  549  *                        ���嶨���FTM_InitTypeDef
//  550  *
//  551  * ���:
//  552  *    0--���ô���
//  553  *    1--���óɹ�
//  554  *
//  555  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  556 uint8 LPLD_FTM_EnableIrq(FTM_InitTypeDef ftm_init_structure)
//  557 {
LPLD_FTM_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R3-R5,LR}
//  558   uint8 i;
//  559   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R5,[SP, #+16]
//  560   
//  561   if(ftmx == FTM0)
        LDR.W    R0,??DataTable10_3  ;; 0x40038000
        CMP      R5,R0
        BNE.N    ??LPLD_FTM_EnableIrq_0
//  562     i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LPLD_FTM_EnableIrq_1
//  563   else if(ftmx == FTM1)
??LPLD_FTM_EnableIrq_0:
        LDR.W    R0,??DataTable10_5  ;; 0x40039000
        CMP      R5,R0
        BNE.N    ??LPLD_FTM_EnableIrq_2
//  564     i=1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??LPLD_FTM_EnableIrq_1
//  565   else if(ftmx == FTM2)
??LPLD_FTM_EnableIrq_2:
        LDR.W    R0,??DataTable14  ;; 0x400b8000
        CMP      R5,R0
        BNE.N    ??LPLD_FTM_EnableIrq_3
//  566     i=2;
        MOVS     R0,#+2
        MOVS     R4,R0
        B.N      ??LPLD_FTM_EnableIrq_1
//  567   else
//  568     return 0;
??LPLD_FTM_EnableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_EnableIrq_4
//  569 
//  570   enable_irq((IRQn_Type)(FTM0_IRQn + i));
??LPLD_FTM_EnableIrq_1:
        ADDS     R0,R4,#+62
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_EnableIRQ
//  571   
//  572   return 1;
        MOVS     R0,#+1
??LPLD_FTM_EnableIrq_4:
        POP      {R1,R4,R5}
        LDR      PC,[SP], #+20    ;; return
//  573 }
//  574 
//  575 /*
//  576  * LPLD_FTM_DisableIrq
//  577  * ����FTMx�ж�
//  578  * 
//  579  * ����:
//  580  *    ftm_init_structure--FTM��ʼ���ṹ�壬
//  581  *                        ���嶨���FTM_InitTypeDef
//  582  *
//  583  * ���:
//  584  *    0--���ô���
//  585  *    1--���óɹ�
//  586  *
//  587  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  588 uint8 LPLD_FTM_DisableIrq(FTM_InitTypeDef ftm_init_structure)
//  589 {
LPLD_FTM_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R3-R5,LR}
//  590   uint8 i;
//  591   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R5,[SP, #+16]
//  592   
//  593   if(ftmx == FTM0)
        LDR.W    R0,??DataTable10_3  ;; 0x40038000
        CMP      R5,R0
        BNE.N    ??LPLD_FTM_DisableIrq_0
//  594     i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LPLD_FTM_DisableIrq_1
//  595   else if(ftmx == FTM1)
??LPLD_FTM_DisableIrq_0:
        LDR.W    R0,??DataTable10_5  ;; 0x40039000
        CMP      R5,R0
        BNE.N    ??LPLD_FTM_DisableIrq_2
//  596     i=1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??LPLD_FTM_DisableIrq_1
//  597   else if(ftmx == FTM2)
??LPLD_FTM_DisableIrq_2:
        LDR.W    R0,??DataTable10_6  ;; 0x400b8000
        CMP      R5,R0
        BNE.N    ??LPLD_FTM_DisableIrq_3
//  598     i=2;
        MOVS     R0,#+2
        MOVS     R4,R0
        B.N      ??LPLD_FTM_DisableIrq_1
//  599   else
//  600     return 0;
??LPLD_FTM_DisableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_DisableIrq_4
//  601 
//  602   disable_irq((IRQn_Type)(FTM0_IRQn + i));
??LPLD_FTM_DisableIrq_1:
        ADDS     R0,R4,#+62
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       NVIC_DisableIRQ
//  603   
//  604   return 1;
        MOVS     R0,#+1
??LPLD_FTM_DisableIrq_4:
        POP      {R1,R4,R5}
        LDR      PC,[SP], #+20    ;; return
//  605 }
//  606 
//  607 /*
//  608  * LPLD_FTM_QD_Enable
//  609  * FTMģ����������ģʽ����ʹ�ܣ���������ͨ��PHA��PHB
//  610  *
//  611  * ����:
//  612  *    ftmx--FTMxģ���
//  613  *      |__FTM1          --FTM1
//  614  *      |__FTM2          --FTM2
//  615  *    pha--PHA����ͨ������
//  616  *      FTM1
//  617  *        PTA8\PTA12\PTB0
//  618  *      FTM2
//  619  *        PTA10\PTB18
//  620  *    phb--PHB����ͨ������
//  621  *      FTM1
//  622  *        PTA9\PTA13\PTB1
//  623  *      FTM2
//  624  *        PTA11\PTB19
//  625  *
//  626  * ���:
//  627  *    0--���ô���
//  628  *    1--���óɹ�
//  629  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  630 uint8 LPLD_FTM_QD_Enable(FTM_Type *ftmx, PortPinsEnum_Type pha, PortPinsEnum_Type phb)
//  631 {
LPLD_FTM_QD_Enable:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  632   if(!LPLD_FTM_PinInit(ftmx, FTM_PhA, pha))
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+8
        MOVS     R0,R4
        BL       LPLD_FTM_PinInit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_QD_Enable_0
//  633     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_QD_Enable_1
//  634   if(!LPLD_FTM_PinInit(ftmx, FTM_PhB, phb))
??LPLD_FTM_QD_Enable_0:
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       LPLD_FTM_PinInit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_QD_Enable_2
//  635     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_QD_Enable_1
//  636   
//  637   return 1;
??LPLD_FTM_QD_Enable_2:
        MOVS     R0,#+1
??LPLD_FTM_QD_Enable_1:
        POP      {R4-R6,PC}       ;; return
//  638 }
//  639 
//  640 /*
//  641  * LPLD_FTM_QD_Disable
//  642  * FTMģ����������ģʽ�������
//  643  *
//  644  * ����:
//  645  *    ftmx--FTMxģ���
//  646  *      |__FTM1          --FTM1
//  647  *      |__FTM2          --FTM2
//  648  *
//  649  * ���:
//  650  *    0--���ô���
//  651  *    1--���óɹ�
//  652  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  653 uint8 LPLD_FTM_QD_Disable(FTM_Type *ftmx)
//  654 {
LPLD_FTM_QD_Disable:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  655   if(!LPLD_FTM_PinDeinit(ftmx, FTM_PhA))
        MOVS     R1,#+8
        MOVS     R0,R4
        BL       LPLD_FTM_PinDeinit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_QD_Disable_0
//  656     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_QD_Disable_1
//  657   if(!LPLD_FTM_PinDeinit(ftmx, FTM_PhB))
??LPLD_FTM_QD_Disable_0:
        MOVS     R1,#+9
        MOVS     R0,R4
        BL       LPLD_FTM_PinDeinit
        CMP      R0,#+0
        BNE.N    ??LPLD_FTM_QD_Disable_2
//  658     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_QD_Disable_1
//  659   
//  660   return 1;
??LPLD_FTM_QD_Disable_2:
        MOVS     R0,#+1
??LPLD_FTM_QD_Disable_1:
        POP      {R4,PC}          ;; return
//  661 }
//  662 
//  663 /*
//  664  * LPLD_FTM_PWM_Init
//  665  * FTMģ��PWMģʽ��ʼ�����ڲ�����
//  666  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  667 static uint8 LPLD_FTM_PWM_Init(FTM_InitTypeDef ftm_init_structure)
//  668 {
LPLD_FTM_PWM_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R11,LR}
//  669   uint32 bus_clk_hz;
//  670   uint32 mod, mod2;
//  671   uint8 ps;
//  672   uint32 freq = ftm_init_structure.FTM_PwmFreq;
        LDR      R8,[SP, #+48]
//  673   uint32 dt_en = ftm_init_structure.FTM_PwmDeadtimeCfg;
        LDR      R0,[SP, #+52]
        STR      R0,[SP, #+0]
//  674   uint8 dt_div = ftm_init_structure.FTM_PwmDeadtimeDiv;
        LDRB     R9,[SP, #+56]
//  675   uint8 dt_val = ftm_init_structure.FTM_PwmDeadtimeVal;
        LDRB     R10,[SP, #+57]
//  676   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R11,[SP, #+40]
//  677   
//  678   //�������
//  679   ASSERT( freq );                  //�ж�Ƶ��
        CMP      R8,#+0
        BNE.N    ??LPLD_FTM_PWM_Init_0
        MOVW     R1,#+679
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  680   ASSERT( dt_val<=63 );            //�ж���������ֵ
??LPLD_FTM_PWM_Init_0:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+64
        BLT.N    ??LPLD_FTM_PWM_Init_1
        MOV      R1,#+680
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  681   
//  682   bus_clk_hz = g_bus_clock;
??LPLD_FTM_PWM_Init_1:
        LDR.W    R0,??DataTable14_1
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
//  683   
//  684   if(freq>bus_clk_hz) return 0;
        CMP      R4,R8
        BCS.N    ??LPLD_FTM_PWM_Init_2
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PWM_Init_3
//  685   
//  686   if((mod=bus_clk_hz/(freq*128)) < 0xFFFFu)
??LPLD_FTM_PWM_Init_2:
        MOVS     R0,#+128
        MUL      R0,R0,R8
        UDIV     R0,R4,R0
        MOVS     R5,R0
        MOVW     R0,#+65535
        CMP      R5,R0
        BCS.N    ??LPLD_FTM_PWM_Init_4
//  687   {
//  688     ps = 7;
        MOVS     R0,#+7
        MOVS     R7,R0
//  689     mod2=mod;
        MOVS     R6,R5
//  690     if((mod=bus_clk_hz/(freq*64)) < 0xFFFFu)
        MOVS     R0,#+64
        MUL      R0,R0,R8
        UDIV     R0,R4,R0
        MOVS     R5,R0
        MOVW     R0,#+65535
        CMP      R5,R0
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  691     {
//  692       ps = 6;  
        MOVS     R0,#+6
        MOVS     R7,R0
//  693       mod2=mod;  
        MOVS     R6,R5
//  694       if((mod=bus_clk_hz/(freq*32)) < 0xFFFFu)
        LSLS     R0,R8,#+5
        UDIV     R0,R4,R0
        MOVS     R5,R0
        MOVW     R0,#+65535
        CMP      R5,R0
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  695       {
//  696         ps = 5;  
        MOVS     R0,#+5
        MOVS     R7,R0
//  697         mod2=mod;
        MOVS     R6,R5
//  698         if((mod=bus_clk_hz/(freq*16)) < 0xFFFFu)
        LSLS     R0,R8,#+4
        UDIV     R0,R4,R0
        MOVS     R5,R0
        MOVW     R0,#+65535
        CMP      R5,R0
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  699         {
//  700           ps = 4;  
        MOVS     R0,#+4
        MOVS     R7,R0
//  701           mod2=mod;   
        MOVS     R6,R5
//  702           if((mod=bus_clk_hz/(freq*8)) < 0xFFFFu)
        LSLS     R0,R8,#+3
        UDIV     R0,R4,R0
        MOVS     R5,R0
        MOVW     R0,#+65535
        CMP      R5,R0
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  703           {
//  704             ps = 3;
        MOVS     R0,#+3
        MOVS     R7,R0
//  705             mod2=mod;
        MOVS     R6,R5
//  706             if((mod=bus_clk_hz/(freq*4)) < 0xFFFFu)
        LSLS     R0,R8,#+2
        UDIV     R0,R4,R0
        MOVS     R5,R0
        MOVW     R0,#+65535
        CMP      R5,R0
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  707             {
//  708               ps = 2;
        MOVS     R0,#+2
        MOVS     R7,R0
//  709               mod2=mod;
        MOVS     R6,R5
//  710               if((mod=bus_clk_hz/(freq*2)) < 0xFFFFu)
        LSLS     R0,R8,#+1
        UDIV     R0,R4,R0
        MOVS     R5,R0
        MOVW     R0,#+65535
        CMP      R5,R0
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  711               {
//  712                 ps = 1;
        MOVS     R0,#+1
        MOVS     R7,R0
//  713                 mod2=mod;
        MOVS     R6,R5
//  714                 if((mod=bus_clk_hz/(freq*1)) < 0xFFFFu)
        UDIV     R0,R4,R8
        MOVS     R5,R0
        MOVW     R0,#+65535
        CMP      R5,R0
        BCS.N    ??LPLD_FTM_PWM_Init_5
//  715                 {
//  716                   ps = 0;
        MOVS     R0,#+0
        MOVS     R7,R0
//  717                   mod2=mod;
        MOVS     R6,R5
//  718                 }
//  719               }
//  720             }
//  721           }
//  722         }  
//  723       }
//  724     }
//  725   }
//  726   else
//  727   {
//  728     return 0;
//  729   }
//  730   
//  731   ftmx->SC = 0;
??LPLD_FTM_PWM_Init_5:
        MOVS     R0,#+0
        STR      R0,[R11, #+0]
//  732   
//  733   // ����PWM���ڼ�ռ�ձ�
//  734   //    PWM���� = (MOD-CNTIN+1)*FTMʱ������ :
//  735   // ����FTM������ʼֵ
//  736   ftmx->CNT = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+4]
//  737   ftmx->CNTIN = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+76]
//  738   // ����FTM����MODֵ
//  739   ftmx->MOD = mod2;
        STR      R6,[R11, #+8]
//  740   
//  741   ftmx->DEADTIME = FTM_DEADTIME_DTPS(dt_div) | FTM_DEADTIME_DTVAL(dt_val);
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSLS     R0,R9,#+6
        ANDS     R0,R0,#0xC0
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ANDS     R1,R10,#0x3F
        ORRS     R0,R1,R0
        STR      R0,[R11, #+104]
//  742   ftmx->COMBINE = dt_en;        //ʹ������
        LDR      R0,[SP, #+0]
        STR      R0,[R11, #+100]
//  743   
//  744   // ����FTM���ƼĴ���
//  745   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:8
//  746   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  747   ftmx->SC = FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R0,R7,#0x7
        ORRS     R0,R0,#0x8
        STR      R0,[R11, #+0]
//  748   
//  749   return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_FTM_PWM_Init_3
??LPLD_FTM_PWM_Init_4:
        MOVS     R0,#+0
??LPLD_FTM_PWM_Init_3:
        POP      {R1,R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  750 }
//  751 
//  752 /*
//  753  * LPLD_FTM_IC_Init
//  754  * FTMģ�����벶��ģʽ��ʼ�����ڲ�����
//  755  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  756 static uint8 LPLD_FTM_IC_Init(FTM_InitTypeDef ftm_init_structure)
//  757 {
LPLD_FTM_IC_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R7,LR}
//  758   uint8 i;
//  759   uint8 ps = ftm_init_structure.FTM_ClkDiv;
        LDRB     R5,[SP, #+43]
//  760   FTM_ISR_CALLBACK isr_func = ftm_init_structure.FTM_Isr;
        LDR      R6,[SP, #+48]
//  761   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R7,[SP, #+24]
//  762   
//  763   //�������
//  764   ASSERT( ps <= 7);             //ʱ�ӷ�Ƶϵ��
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BLT.N    ??LPLD_FTM_IC_Init_0
        MOV      R1,#+764
        LDR.W    R0,??DataTable10_2
        BL       assert_failed
//  765   
//  766   ftmx->CONF=FTM_CONF_BDMMODE(0x3);
??LPLD_FTM_IC_Init_0:
        MOVS     R0,#+192
        STR      R0,[R7, #+132]
//  767   
//  768   ftmx->SC = 0;
        MOVS     R0,#+0
        STR      R0,[R7, #+0]
//  769   
//  770   ftmx->CNT = 0;
        MOVS     R0,#+0
        STR      R0,[R7, #+4]
//  771   ftmx->CNTIN = 0;
        MOVS     R0,#+0
        STR      R0,[R7, #+76]
//  772   ftmx->MOD = 0;                           
        MOVS     R0,#+0
        STR      R0,[R7, #+8]
//  773   ftmx->QDCTRL = (~FTM_QDCTRL_QUADEN_MASK); //�ر���������
        MVNS     R0,#+1
        STR      R0,[R7, #+128]
//  774   ftmx->FILTER = 0x00;                      //�ع�����
        MOVS     R0,#+0
        STR      R0,[R7, #+120]
//  775   
//  776   // ����FTM���ƼĴ���
//  777   // ��FTM Counter���ó�Free Counter
//  778   // �����ж�, �Ӽ���ģʽ, ʱ��Դ:System clock��Bus Clk��, ��Ƶϵ��:PS
//  779   // ����SysClk = 50MHz, SC_PS=3, FTM Clk = 50MHz/2^3 = 6.25MHz
//  780   ftmx->SC |= FTM_SC_CLKS(1)|FTM_SC_PS(ps);
        LDR      R0,[R7, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ANDS     R1,R5,#0x7
        ORRS     R1,R1,#0x8
        ORRS     R0,R1,R0
        STR      R0,[R7, #+0]
//  781   //ftmx->SC |= FTM_SC_TOIE_MASK;             //ʹ�ܼ�������ж�
//  782   ftmx->SC &= (~FTM_SC_CPWMS_MASK);         //FTM�Ӽ���
        LDR      R0,[R7, #+0]
        BICS     R0,R0,#0x20
        STR      R0,[R7, #+0]
//  783 
//  784   //�����жϺ�����ڵ�ַ�������ж�
//  785   if(isr_func!=NULL)
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM_IC_Init_1
//  786   {
//  787     if(ftmx == FTM0)
        LDR.W    R0,??DataTable10_3  ;; 0x40038000
        CMP      R7,R0
        BNE.N    ??LPLD_FTM_IC_Init_2
//  788       i=0;
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??LPLD_FTM_IC_Init_3
//  789     else if(ftmx == FTM1)
??LPLD_FTM_IC_Init_2:
        LDR.W    R0,??DataTable10_5  ;; 0x40039000
        CMP      R7,R0
        BNE.N    ??LPLD_FTM_IC_Init_4
//  790       i=1;
        MOVS     R0,#+1
        MOVS     R4,R0
        B.N      ??LPLD_FTM_IC_Init_3
//  791     else if(ftmx == FTM2)
??LPLD_FTM_IC_Init_4:
        LDR.W    R0,??DataTable10_6  ;; 0x400b8000
        CMP      R7,R0
        BNE.N    ??LPLD_FTM_IC_Init_5
//  792       i=2;
        MOVS     R0,#+2
        MOVS     R4,R0
        B.N      ??LPLD_FTM_IC_Init_3
//  793     else
//  794       return 0;
??LPLD_FTM_IC_Init_5:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_IC_Init_6
//  795     FTM_ISR[i] = isr_func;
??LPLD_FTM_IC_Init_3:
        LDR.W    R0,??DataTable10_8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R6,[R0, R4, LSL #+2]
//  796   }
//  797 
//  798   return 1;
??LPLD_FTM_IC_Init_1:
        MOVS     R0,#+1
??LPLD_FTM_IC_Init_6:
        POP      {R1,R4-R7}
        LDR      PC,[SP], #+20    ;; return
//  799 }
//  800 
//  801 /*
//  802  * LPLD_FTM_PinInit
//  803  * ��ʼ��ͨ��nָ�����ŵ�FTM���ù��ܣ��ڲ�����
//  804  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  805 static uint8 LPLD_FTM_PinInit(FTM_Type *ftmx, FtmChnEnum_Type chn, PortPinsEnum_Type pin)
//  806 { 
LPLD_FTM_PinInit:
        PUSH     {R4}
        MOVS     R3,R0
//  807   //����ftmxʹ����Ӧpin��ftm����
//  808   if(ftmx == FTM0)
        LDR.W    R0,??DataTable11  ;; 0x40038000
        CMP      R3,R0
        BNE.W    ??LPLD_FTM_PinInit_0
//  809   {
//  810     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_FTM_PinInit_1
        CMP      R1,#+2
        BEQ.N    ??LPLD_FTM_PinInit_2
        BCC.N    ??LPLD_FTM_PinInit_3
        CMP      R1,#+4
        BEQ.W    ??LPLD_FTM_PinInit_4
        BCC.N    ??LPLD_FTM_PinInit_5
        CMP      R1,#+6
        BEQ.W    ??LPLD_FTM_PinInit_6
        BCC.W    ??LPLD_FTM_PinInit_7
        CMP      R1,#+7
        BEQ.W    ??LPLD_FTM_PinInit_8
        B.N      ??LPLD_FTM_PinInit_9
//  811     {
//  812     case FTM_Ch0:
//  813       if(pin == PTA3)
??LPLD_FTM_PinInit_1:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+3
        BNE.N    ??LPLD_FTM_PinInit_10
//  814         PORTA->PCR[3] = PORTA->PCR[3] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_2  ;; 0x4004900c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_2  ;; 0x4004900c
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_11
//  815       else if(pin == PTC1)
??LPLD_FTM_PinInit_10:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+61
        BNE.N    ??LPLD_FTM_PinInit_12
//  816         PORTC->PCR[1] = PORTC->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable14_3  ;; 0x4004b004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable14_3  ;; 0x4004b004
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_11
//  817       else
//  818         return 0;
??LPLD_FTM_PinInit_12:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  819       break;
??LPLD_FTM_PinInit_11:
        B.N      ??LPLD_FTM_PinInit_14
//  820     case FTM_Ch1:
//  821       if(pin == PTA4)
??LPLD_FTM_PinInit_3:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+4
        BNE.N    ??LPLD_FTM_PinInit_15
//  822         PORTA->PCR[4] = PORTA->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_4  ;; 0x40049010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_4  ;; 0x40049010
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_16
//  823       else if(pin == PTC2)
??LPLD_FTM_PinInit_15:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+62
        BNE.N    ??LPLD_FTM_PinInit_17
//  824         PORTC->PCR[2] = PORTC->PCR[2] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable14_5  ;; 0x4004b008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable14_5  ;; 0x4004b008
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_16
//  825       else
//  826         return 0;
??LPLD_FTM_PinInit_17:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  827       break;
??LPLD_FTM_PinInit_16:
        B.N      ??LPLD_FTM_PinInit_14
//  828     case FTM_Ch2:
//  829       if(pin == PTA5)
??LPLD_FTM_PinInit_2:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+5
        BNE.N    ??LPLD_FTM_PinInit_18
//  830         PORTA->PCR[5] = PORTA->PCR[5] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_6  ;; 0x40049014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_6  ;; 0x40049014
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_19
//  831       else if(pin == PTC3)
??LPLD_FTM_PinInit_18:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+63
        BNE.N    ??LPLD_FTM_PinInit_20
//  832         PORTC->PCR[3] = PORTC->PCR[3] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable14_7  ;; 0x4004b00c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable14_7  ;; 0x4004b00c
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_19
//  833       else
//  834         return 0;
??LPLD_FTM_PinInit_20:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  835       break;
??LPLD_FTM_PinInit_19:
        B.N      ??LPLD_FTM_PinInit_14
//  836     case FTM_Ch3:
//  837       if(pin == PTA6)
??LPLD_FTM_PinInit_5:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+6
        BNE.N    ??LPLD_FTM_PinInit_21
//  838         PORTA->PCR[6] = PORTA->PCR[6] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_8  ;; 0x40049018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_8  ;; 0x40049018
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_22
//  839       else if(pin == PTC4)
??LPLD_FTM_PinInit_21:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+64
        BNE.N    ??LPLD_FTM_PinInit_23
//  840         PORTC->PCR[4] = PORTC->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable14_9  ;; 0x4004b010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable14_9  ;; 0x4004b010
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_22
//  841       else
//  842         return 0;
??LPLD_FTM_PinInit_23:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  843       break;
??LPLD_FTM_PinInit_22:
        B.N      ??LPLD_FTM_PinInit_14
//  844     case FTM_Ch4:
//  845       if(pin == PTA7)
??LPLD_FTM_PinInit_4:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+7
        BNE.N    ??LPLD_FTM_PinInit_24
//  846         PORTA->PCR[7] = PORTA->PCR[7] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_10  ;; 0x4004901c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_10  ;; 0x4004901c
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_25
//  847       else if(pin == PTD4)
??LPLD_FTM_PinInit_24:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+96
        BNE.N    ??LPLD_FTM_PinInit_26
//  848         PORTD->PCR[4] = PORTD->PCR[4] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable14_11  ;; 0x4004c010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable14_11  ;; 0x4004c010
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_25
//  849       else
//  850         return 0;
??LPLD_FTM_PinInit_26:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  851       break;
??LPLD_FTM_PinInit_25:
        B.N      ??LPLD_FTM_PinInit_14
//  852     case FTM_Ch5:
//  853       if(pin == PTA0)
??LPLD_FTM_PinInit_7:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??LPLD_FTM_PinInit_27
//  854         PORTA->PCR[0] = PORTA->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_12  ;; 0x40049000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_12  ;; 0x40049000
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_28
//  855       else if(pin == PTD5)
??LPLD_FTM_PinInit_27:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+97
        BNE.N    ??LPLD_FTM_PinInit_29
//  856         PORTD->PCR[5] = PORTD->PCR[5] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable14_13  ;; 0x4004c014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable14_13  ;; 0x4004c014
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_28
//  857       else
//  858         return 0;
??LPLD_FTM_PinInit_29:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  859       break;
??LPLD_FTM_PinInit_28:
        B.N      ??LPLD_FTM_PinInit_14
//  860     case FTM_Ch6:
//  861       if(pin == PTA1)
??LPLD_FTM_PinInit_6:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+1
        BNE.N    ??LPLD_FTM_PinInit_30
//  862         PORTA->PCR[1] = PORTA->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_14  ;; 0x40049004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_14  ;; 0x40049004
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_31
//  863       else if(pin == PTD6)
??LPLD_FTM_PinInit_30:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+98
        BNE.N    ??LPLD_FTM_PinInit_32
//  864         PORTD->PCR[6] = PORTD->PCR[6] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable14_15  ;; 0x4004c018
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable14_15  ;; 0x4004c018
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_31
//  865       else
//  866         return 0;
??LPLD_FTM_PinInit_32:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  867       break;
??LPLD_FTM_PinInit_31:
        B.N      ??LPLD_FTM_PinInit_14
//  868     case FTM_Ch7:
//  869       if(pin == PTA2)
??LPLD_FTM_PinInit_8:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+2
        BNE.N    ??LPLD_FTM_PinInit_33
//  870         PORTA->PCR[2] = PORTA->PCR[2] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_16  ;; 0x40049008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_16  ;; 0x40049008
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_34
//  871       else if(pin == PTD7)
??LPLD_FTM_PinInit_33:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+99
        BNE.N    ??LPLD_FTM_PinInit_35
//  872         PORTD->PCR[7] = PORTD->PCR[7] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(4);
        LDR.W    R0,??DataTable14_17  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x400
        LDR.W    R4,??DataTable14_17  ;; 0x4004c01c
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_34
//  873       else
//  874         return 0;
??LPLD_FTM_PinInit_35:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  875       break;
??LPLD_FTM_PinInit_34:
        B.N      ??LPLD_FTM_PinInit_14
//  876     default:
//  877       return 0;     
??LPLD_FTM_PinInit_9:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  878     }
//  879   }
//  880   else if(ftmx == FTM1)
??LPLD_FTM_PinInit_0:
        LDR.W    R0,??DataTable11_1  ;; 0x40039000
        CMP      R3,R0
        BNE.W    ??LPLD_FTM_PinInit_36
//  881   {
//  882     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM_PinInit_37
        CMP      R0,#+1
        BEQ.N    ??LPLD_FTM_PinInit_38
        CMP      R0,#+8
        BEQ.N    ??LPLD_FTM_PinInit_39
        CMP      R0,#+9
        BEQ.W    ??LPLD_FTM_PinInit_40
        B.N      ??LPLD_FTM_PinInit_41
//  883     {
//  884     case FTM_Ch0:
//  885       if(pin == PTA8)
??LPLD_FTM_PinInit_37:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+8
        BNE.N    ??LPLD_FTM_PinInit_42
//  886         PORTA->PCR[8] = PORTA->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_18  ;; 0x40049020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_18  ;; 0x40049020
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_43
//  887       else if(pin == PTA12)
??LPLD_FTM_PinInit_42:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+12
        BNE.N    ??LPLD_FTM_PinInit_44
//  888         PORTA->PCR[12] = PORTA->PCR[12] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable14_19  ;; 0x40049030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_19  ;; 0x40049030
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_43
//  889       else if(pin == PTB0)
??LPLD_FTM_PinInit_44:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+32
        BNE.N    ??LPLD_FTM_PinInit_45
//  890         PORTB->PCR[0] = PORTB->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable14_20  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_20  ;; 0x4004a000
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_43
//  891       else
//  892         return 0;
??LPLD_FTM_PinInit_45:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  893       break;
??LPLD_FTM_PinInit_43:
        B.N      ??LPLD_FTM_PinInit_14
//  894     case FTM_Ch1:
//  895       if(pin == PTA9)
??LPLD_FTM_PinInit_38:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BNE.N    ??LPLD_FTM_PinInit_46
//  896         PORTA->PCR[9] = PORTA->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_21  ;; 0x40049024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_21  ;; 0x40049024
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_47
//  897       else if(pin == PTA13)
??LPLD_FTM_PinInit_46:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+13
        BNE.N    ??LPLD_FTM_PinInit_48
//  898         PORTA->PCR[13] = PORTA->PCR[13] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable14_22  ;; 0x40049034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_22  ;; 0x40049034
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_47
//  899       else if(pin == PTB1)
??LPLD_FTM_PinInit_48:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+33
        BNE.N    ??LPLD_FTM_PinInit_49
//  900         PORTB->PCR[1] = PORTB->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable14_23  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_23  ;; 0x4004a004
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_47
//  901       else
//  902         return 0;
??LPLD_FTM_PinInit_49:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  903       break;
??LPLD_FTM_PinInit_47:
        B.N      ??LPLD_FTM_PinInit_14
//  904     case FTM_PhA:
//  905       if(pin == PTA8)
??LPLD_FTM_PinInit_39:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+8
        BNE.N    ??LPLD_FTM_PinInit_50
//  906         PORTA->PCR[8] = PORTA->PCR[8] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable14_18  ;; 0x40049020
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14_18  ;; 0x40049020
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_51
//  907       else if(pin == PTA12)
??LPLD_FTM_PinInit_50:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+12
        BNE.N    ??LPLD_FTM_PinInit_52
//  908         PORTA->PCR[12] = PORTA->PCR[12] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(7);
        LDR.W    R0,??DataTable14_19  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700
        LDR.W    R4,??DataTable14_19  ;; 0x40049030
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_51
//  909       else if(pin == PTB0)
??LPLD_FTM_PinInit_52:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+32
        BNE.N    ??LPLD_FTM_PinInit_53
//  910         PORTB->PCR[0] = PORTB->PCR[0] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
        LDR.W    R0,??DataTable14_20  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14_20  ;; 0x4004a000
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_51
//  911       else
//  912         return 0;
??LPLD_FTM_PinInit_53:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  913       break;
??LPLD_FTM_PinInit_51:
        B.N      ??LPLD_FTM_PinInit_14
//  914     case FTM_PhB:
//  915       if(pin == PTA9)
??LPLD_FTM_PinInit_40:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BNE.N    ??LPLD_FTM_PinInit_54
//  916         PORTA->PCR[9] = PORTA->PCR[9] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable14_21  ;; 0x40049024
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14_21  ;; 0x40049024
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_41
//  917       else if(pin == PTA13)
??LPLD_FTM_PinInit_54:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+13
        BNE.N    ??LPLD_FTM_PinInit_55
//  918         PORTA->PCR[13] = PORTA->PCR[13] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(7);
        LDR.W    R0,??DataTable14_22  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700
        LDR.W    R4,??DataTable14_22  ;; 0x40049034
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_41
//  919       else if(pin == PTB1)
??LPLD_FTM_PinInit_55:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+33
        BNE.N    ??LPLD_FTM_PinInit_56
//  920         PORTB->PCR[1] = PORTB->PCR[1] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
        LDR.W    R0,??DataTable14_23  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14_23  ;; 0x4004a004
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_41
//  921       else
//  922         return 0;
??LPLD_FTM_PinInit_56:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  923     default:
//  924       return 0;   
??LPLD_FTM_PinInit_41:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  925     }
//  926   }
//  927   else if(ftmx == FTM2)
??LPLD_FTM_PinInit_36:
        LDR.N    R0,??DataTable10_6  ;; 0x400b8000
        CMP      R3,R0
        BNE.W    ??LPLD_FTM_PinInit_57
//  928   {
//  929     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM_PinInit_58
        CMP      R0,#+1
        BEQ.N    ??LPLD_FTM_PinInit_59
        CMP      R0,#+8
        BEQ.N    ??LPLD_FTM_PinInit_60
        CMP      R0,#+9
        BEQ.N    ??LPLD_FTM_PinInit_61
        B.N      ??LPLD_FTM_PinInit_62
//  930     {
//  931     case FTM_Ch0:
//  932       if(pin == PTA10)
??LPLD_FTM_PinInit_58:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+10
        BNE.N    ??LPLD_FTM_PinInit_63
//  933         PORTA->PCR[10] = PORTA->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_24  ;; 0x40049028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_24  ;; 0x40049028
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_64
//  934       else if(pin == PTB18)
??LPLD_FTM_PinInit_63:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+50
        BNE.N    ??LPLD_FTM_PinInit_65
//  935         PORTB->PCR[18] = PORTB->PCR[18] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable14_25  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_25  ;; 0x4004a048
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_64
//  936       else
//  937         return 0;
??LPLD_FTM_PinInit_65:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  938       break;
??LPLD_FTM_PinInit_64:
        B.N      ??LPLD_FTM_PinInit_14
//  939     case FTM_Ch1:
//  940       if(pin == PTA11)
??LPLD_FTM_PinInit_59:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+11
        BNE.N    ??LPLD_FTM_PinInit_66
//  941         PORTA->PCR[11] = PORTA->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3); 
        LDR.W    R0,??DataTable14_26  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_26  ;; 0x4004902c
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_67
//  942       else if(pin == PTB19)
??LPLD_FTM_PinInit_66:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+51
        BNE.N    ??LPLD_FTM_PinInit_68
//  943         PORTB->PCR[19] = PORTB->PCR[19] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(3);
        LDR.W    R0,??DataTable14_27  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x300
        LDR.W    R4,??DataTable14_27  ;; 0x4004a04c
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_67
//  944       else
//  945         return 0;
??LPLD_FTM_PinInit_68:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  946       break;
??LPLD_FTM_PinInit_67:
        B.N      ??LPLD_FTM_PinInit_14
//  947     case FTM_PhA:
//  948       if(pin == PTA10)
??LPLD_FTM_PinInit_60:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+10
        BNE.N    ??LPLD_FTM_PinInit_69
//  949         PORTA->PCR[10] = PORTA->PCR[10] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable14_24  ;; 0x40049028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14_24  ;; 0x40049028
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_70
//  950       else if(pin == PTB18)
??LPLD_FTM_PinInit_69:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+50
        BNE.N    ??LPLD_FTM_PinInit_71
//  951         PORTB->PCR[18] = PORTB->PCR[18] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
        LDR.W    R0,??DataTable14_25  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14_25  ;; 0x4004a048
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_70
//  952       else
//  953         return 0;
??LPLD_FTM_PinInit_71:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  954       break;
??LPLD_FTM_PinInit_70:
        B.N      ??LPLD_FTM_PinInit_14
//  955     case FTM_PhB:
//  956       if(pin == PTA11)
??LPLD_FTM_PinInit_61:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+11
        BNE.N    ??LPLD_FTM_PinInit_72
//  957         PORTA->PCR[11] = PORTA->PCR[11] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6); 
        LDR.W    R0,??DataTable14_26  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14_26  ;; 0x4004902c
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_73
//  958       else if(pin == PTB19)
??LPLD_FTM_PinInit_72:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+51
        BNE.N    ??LPLD_FTM_PinInit_74
//  959         PORTB->PCR[19] = PORTB->PCR[19] & ~PORT_PCR_MUX_MASK | PORT_PCR_MUX(6);
        LDR.W    R0,??DataTable14_27  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x700
        ORRS     R0,R0,#0x600
        LDR.W    R4,??DataTable14_27  ;; 0x4004a04c
        STR      R0,[R4, #+0]
        B.N      ??LPLD_FTM_PinInit_73
//  960       else
//  961         return 0;
??LPLD_FTM_PinInit_74:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  962       break;
??LPLD_FTM_PinInit_73:
        B.N      ??LPLD_FTM_PinInit_14
//  963     default:
//  964       return 0;   
??LPLD_FTM_PinInit_62:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  965     }
//  966   }
//  967   else
//  968   {
//  969     return 0;
??LPLD_FTM_PinInit_57:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinInit_13
//  970   }
//  971   return 1;
??LPLD_FTM_PinInit_14:
        MOVS     R0,#+1
??LPLD_FTM_PinInit_13:
        POP      {R4}
        BX       LR               ;; return
//  972 }

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
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x40039000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     FTM_ISR
//  973 
//  974 /*
//  975  * LPLD_FTM_PinInit
//  976  * ����ʼ��ͨ��nָ�����ŵ�FTM���ù��ܣ��ڲ�����
//  977  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  978 static uint8 LPLD_FTM_PinDeinit(FTM_Type *ftmx, FtmChnEnum_Type chn)
//  979 {
LPLD_FTM_PinDeinit:
        MOVS     R2,R0
//  980   //����ftmx������Ӧpin��ftm���ܣ��ظ���Ĭ�Ϲ���
//  981   if(ftmx == FTM0)
        LDR.W    R0,??DataTable11  ;; 0x40038000
        CMP      R2,R0
        BNE.W    ??LPLD_FTM_PinDeinit_0
//  982   {
//  983     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??LPLD_FTM_PinDeinit_1
        CMP      R1,#+2
        BEQ.N    ??LPLD_FTM_PinDeinit_2
        BCC.N    ??LPLD_FTM_PinDeinit_3
        CMP      R1,#+4
        BEQ.N    ??LPLD_FTM_PinDeinit_4
        BCC.N    ??LPLD_FTM_PinDeinit_5
        CMP      R1,#+6
        BEQ.W    ??LPLD_FTM_PinDeinit_6
        BCC.W    ??LPLD_FTM_PinDeinit_7
        CMP      R1,#+7
        BEQ.W    ??LPLD_FTM_PinDeinit_8
        B.N      ??LPLD_FTM_PinDeinit_9
//  984     {
//  985     case FTM_Ch0:
//  986       if((PORTA->PCR[3]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_1:
        LDR.W    R0,??DataTable14_2  ;; 0x4004900c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_10
//  987         PORTA->PCR[3] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_2  ;; 0x4004900c
        STR      R0,[R3, #+0]
//  988       if((PORTC->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_10:
        LDR.W    R0,??DataTable14_3  ;; 0x4004b004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_11
//  989         PORTC->PCR[1] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_3  ;; 0x4004b004
        STR      R0,[R3, #+0]
//  990       break;
??LPLD_FTM_PinDeinit_11:
        B.N      ??LPLD_FTM_PinDeinit_12
//  991     case FTM_Ch1:
//  992       if((PORTA->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_3:
        LDR.W    R0,??DataTable14_4  ;; 0x40049010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_13
//  993         PORTA->PCR[4] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_4  ;; 0x40049010
        STR      R0,[R3, #+0]
//  994       if((PORTC->PCR[2]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_13:
        LDR.W    R0,??DataTable14_5  ;; 0x4004b008
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_14
//  995         PORTC->PCR[2] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_5  ;; 0x4004b008
        STR      R0,[R3, #+0]
//  996       break;
??LPLD_FTM_PinDeinit_14:
        B.N      ??LPLD_FTM_PinDeinit_12
//  997     case FTM_Ch2:
//  998       if((PORTA->PCR[5]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_2:
        LDR.W    R0,??DataTable14_6  ;; 0x40049014
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_15
//  999         PORTA->PCR[5] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_6  ;; 0x40049014
        STR      R0,[R3, #+0]
// 1000       if((PORTC->PCR[3]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_15:
        LDR.W    R0,??DataTable14_7  ;; 0x4004b00c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_16
// 1001         PORTC->PCR[3] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_7  ;; 0x4004b00c
        STR      R0,[R3, #+0]
// 1002       break;
??LPLD_FTM_PinDeinit_16:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1003     case FTM_Ch3:
// 1004       if((PORTA->PCR[6]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_5:
        LDR.W    R0,??DataTable14_8  ;; 0x40049018
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_17
// 1005         PORTA->PCR[6] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_8  ;; 0x40049018
        STR      R0,[R3, #+0]
// 1006       if((PORTC->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_17:
        LDR.W    R0,??DataTable14_9  ;; 0x4004b010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_18
// 1007         PORTC->PCR[4] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_9  ;; 0x4004b010
        STR      R0,[R3, #+0]
// 1008       break;
??LPLD_FTM_PinDeinit_18:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1009     case FTM_Ch4:
// 1010       if((PORTA->PCR[7]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_4:
        LDR.W    R0,??DataTable14_10  ;; 0x4004901c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_19
// 1011         PORTA->PCR[7] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.W    R3,??DataTable14_10  ;; 0x4004901c
        STR      R0,[R3, #+0]
// 1012       if((PORTD->PCR[4]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_19:
        LDR.W    R0,??DataTable14_11  ;; 0x4004c010
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_20
// 1013         PORTD->PCR[4] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_11  ;; 0x4004c010
        STR      R0,[R3, #+0]
// 1014       break;
??LPLD_FTM_PinDeinit_20:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1015     case FTM_Ch5:
// 1016       if((PORTA->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_7:
        LDR.N    R0,??DataTable14_12  ;; 0x40049000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_21
// 1017         PORTA->PCR[0] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_12  ;; 0x40049000
        STR      R0,[R3, #+0]
// 1018       if((PORTD->PCR[5]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_21:
        LDR.N    R0,??DataTable14_13  ;; 0x4004c014
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_22
// 1019         PORTD->PCR[5] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_13  ;; 0x4004c014
        STR      R0,[R3, #+0]
// 1020       break;
??LPLD_FTM_PinDeinit_22:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1021     case FTM_Ch6:
// 1022       if((PORTA->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_6:
        LDR.N    R0,??DataTable14_14  ;; 0x40049004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_23
// 1023         PORTA->PCR[1] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_14  ;; 0x40049004
        STR      R0,[R3, #+0]
// 1024       if((PORTD->PCR[6]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_23:
        LDR.N    R0,??DataTable14_15  ;; 0x4004c018
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_24
// 1025         PORTD->PCR[6] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_15  ;; 0x4004c018
        STR      R0,[R3, #+0]
// 1026       break;
??LPLD_FTM_PinDeinit_24:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1027     case FTM_Ch7:
// 1028       if((PORTA->PCR[2]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_8:
        LDR.N    R0,??DataTable14_16  ;; 0x40049008
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_25
// 1029         PORTA->PCR[2] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_16  ;; 0x40049008
        STR      R0,[R3, #+0]
// 1030       if((PORTD->PCR[7]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(4))
??LPLD_FTM_PinDeinit_25:
        LDR.N    R0,??DataTable14_17  ;; 0x4004c01c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1024
        BNE.N    ??LPLD_FTM_PinDeinit_26
// 1031         PORTD->PCR[7] = PORT_PCR_MUX(0);      
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_17  ;; 0x4004c01c
        STR      R0,[R3, #+0]
// 1032       break;
??LPLD_FTM_PinDeinit_26:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1033     default:
// 1034       return 0;     
??LPLD_FTM_PinDeinit_9:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinDeinit_27
// 1035     }
// 1036   }
// 1037   else if(ftmx == FTM1)
??LPLD_FTM_PinDeinit_0:
        LDR.N    R0,??DataTable11_1  ;; 0x40039000
        CMP      R2,R0
        BNE.W    ??LPLD_FTM_PinDeinit_28
// 1038   {
// 1039     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM_PinDeinit_29
        CMP      R0,#+1
        BEQ.N    ??LPLD_FTM_PinDeinit_30
        CMP      R0,#+8
        BEQ.N    ??LPLD_FTM_PinDeinit_31
        CMP      R0,#+9
        BEQ.N    ??LPLD_FTM_PinDeinit_32
        B.N      ??LPLD_FTM_PinDeinit_33
// 1040     {
// 1041     case FTM_Ch0:
// 1042       if((PORTA->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_29:
        LDR.N    R0,??DataTable14_18  ;; 0x40049020
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_34
// 1043         PORTA->PCR[8] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_18  ;; 0x40049020
        STR      R0,[R3, #+0]
// 1044       if((PORTA->PCR[12]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_34:
        LDR.N    R0,??DataTable14_19  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_35
// 1045         PORTA->PCR[12] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_19  ;; 0x40049030
        STR      R0,[R3, #+0]
// 1046       if((PORTB->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_35:
        LDR.N    R0,??DataTable14_20  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_36
// 1047         PORTB->PCR[0] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_20  ;; 0x4004a000
        STR      R0,[R3, #+0]
// 1048       break;
??LPLD_FTM_PinDeinit_36:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1049     case FTM_Ch1:
// 1050       if((PORTA->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_30:
        LDR.N    R0,??DataTable14_21  ;; 0x40049024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_37
// 1051         PORTA->PCR[9] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_21  ;; 0x40049024
        STR      R0,[R3, #+0]
// 1052       if((PORTA->PCR[13]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_37:
        LDR.N    R0,??DataTable14_22  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_38
// 1053         PORTA->PCR[13] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_22  ;; 0x40049034
        STR      R0,[R3, #+0]
// 1054       if((PORTB->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_38:
        LDR.N    R0,??DataTable14_23  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_39
// 1055         PORTB->PCR[1] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_23  ;; 0x4004a004
        STR      R0,[R3, #+0]
// 1056       break;
??LPLD_FTM_PinDeinit_39:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1057     case FTM_PhA:
// 1058       if((PORTA->PCR[8]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??LPLD_FTM_PinDeinit_31:
        LDR.N    R0,??DataTable14_18  ;; 0x40049020
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_40
// 1059         PORTA->PCR[8] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_18  ;; 0x40049020
        STR      R0,[R3, #+0]
// 1060       if((PORTA->PCR[12]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(7))
??LPLD_FTM_PinDeinit_40:
        LDR.N    R0,??DataTable14_19  ;; 0x40049030
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1792
        BNE.N    ??LPLD_FTM_PinDeinit_41
// 1061         PORTA->PCR[12] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_19  ;; 0x40049030
        STR      R0,[R3, #+0]
// 1062       if((PORTB->PCR[0]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??LPLD_FTM_PinDeinit_41:
        LDR.N    R0,??DataTable14_20  ;; 0x4004a000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_42
// 1063         PORTB->PCR[0] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_20  ;; 0x4004a000
        STR      R0,[R3, #+0]
// 1064       break;
??LPLD_FTM_PinDeinit_42:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1065     case FTM_PhB:
// 1066       if((PORTA->PCR[9]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??LPLD_FTM_PinDeinit_32:
        LDR.N    R0,??DataTable14_21  ;; 0x40049024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_43
// 1067         PORTA->PCR[9] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_21  ;; 0x40049024
        STR      R0,[R3, #+0]
// 1068       if((PORTA->PCR[13]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(7))
??LPLD_FTM_PinDeinit_43:
        LDR.N    R0,??DataTable14_22  ;; 0x40049034
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1792
        BNE.N    ??LPLD_FTM_PinDeinit_44
// 1069         PORTA->PCR[13] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_22  ;; 0x40049034
        STR      R0,[R3, #+0]
// 1070       if((PORTB->PCR[1]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??LPLD_FTM_PinDeinit_44:
        LDR.N    R0,??DataTable14_23  ;; 0x4004a004
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_45
// 1071         PORTB->PCR[1] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_23  ;; 0x4004a004
        STR      R0,[R3, #+0]
// 1072       break;
??LPLD_FTM_PinDeinit_45:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1073     default:
// 1074       return 0;   
??LPLD_FTM_PinDeinit_33:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinDeinit_27
// 1075     }
// 1076   }
// 1077   else if(ftmx == FTM2)
??LPLD_FTM_PinDeinit_28:
        LDR.N    R0,??DataTable14  ;; 0x400b8000
        CMP      R2,R0
        BNE.N    ??LPLD_FTM_PinDeinit_46
// 1078   {
// 1079     switch(chn)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R1
        CMP      R0,#+0
        BEQ.N    ??LPLD_FTM_PinDeinit_47
        CMP      R0,#+1
        BEQ.N    ??LPLD_FTM_PinDeinit_48
        CMP      R0,#+8
        BEQ.N    ??LPLD_FTM_PinDeinit_49
        CMP      R0,#+9
        BEQ.N    ??LPLD_FTM_PinDeinit_50
        B.N      ??LPLD_FTM_PinDeinit_51
// 1080     {
// 1081     case FTM_Ch0:
// 1082       if((PORTA->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_47:
        LDR.N    R0,??DataTable14_24  ;; 0x40049028
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_52
// 1083         PORTA->PCR[10] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_24  ;; 0x40049028
        STR      R0,[R3, #+0]
// 1084       if((PORTB->PCR[18]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_52:
        LDR.N    R0,??DataTable14_25  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_53
// 1085         PORTB->PCR[18] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_25  ;; 0x4004a048
        STR      R0,[R3, #+0]
// 1086       break;
??LPLD_FTM_PinDeinit_53:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1087     case FTM_Ch1:
// 1088       if((PORTA->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_48:
        LDR.N    R0,??DataTable14_26  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_54
// 1089         PORTA->PCR[11] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_26  ;; 0x4004902c
        STR      R0,[R3, #+0]
// 1090       if((PORTB->PCR[19]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(3))
??LPLD_FTM_PinDeinit_54:
        LDR.N    R0,??DataTable14_27  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+768
        BNE.N    ??LPLD_FTM_PinDeinit_55
// 1091         PORTB->PCR[19] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_27  ;; 0x4004a04c
        STR      R0,[R3, #+0]
// 1092       break;
??LPLD_FTM_PinDeinit_55:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1093     case FTM_PhA:
// 1094       if((PORTA->PCR[10]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??LPLD_FTM_PinDeinit_49:
        LDR.N    R0,??DataTable14_24  ;; 0x40049028
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_56
// 1095         PORTA->PCR[10] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_24  ;; 0x40049028
        STR      R0,[R3, #+0]
// 1096       if((PORTB->PCR[18]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??LPLD_FTM_PinDeinit_56:
        LDR.N    R0,??DataTable14_25  ;; 0x4004a048
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_57
// 1097         PORTB->PCR[18] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_25  ;; 0x4004a048
        STR      R0,[R3, #+0]
// 1098       break;
??LPLD_FTM_PinDeinit_57:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1099     case FTM_PhB:
// 1100       if((PORTA->PCR[11]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??LPLD_FTM_PinDeinit_50:
        LDR.N    R0,??DataTable14_26  ;; 0x4004902c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_58
// 1101         PORTA->PCR[11] = PORT_PCR_MUX(0); 
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_26  ;; 0x4004902c
        STR      R0,[R3, #+0]
// 1102       if((PORTB->PCR[19]& PORT_PCR_MUX_MASK) == PORT_PCR_MUX(6))
??LPLD_FTM_PinDeinit_58:
        LDR.N    R0,??DataTable14_27  ;; 0x4004a04c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        CMP      R0,#+1536
        BNE.N    ??LPLD_FTM_PinDeinit_59
// 1103         PORTB->PCR[19] = PORT_PCR_MUX(0);
        MOVS     R0,#+0
        LDR.N    R3,??DataTable14_27  ;; 0x4004a04c
        STR      R0,[R3, #+0]
// 1104       break;
??LPLD_FTM_PinDeinit_59:
        B.N      ??LPLD_FTM_PinDeinit_12
// 1105     default:
// 1106       return 0;   
??LPLD_FTM_PinDeinit_51:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinDeinit_27
// 1107     }
// 1108   }
// 1109   else
// 1110   {
// 1111     return 0;
??LPLD_FTM_PinDeinit_46:
        MOVS     R0,#+0
        B.N      ??LPLD_FTM_PinDeinit_27
// 1112   }
// 1113   return 1;
??LPLD_FTM_PinDeinit_12:
        MOVS     R0,#+1
??LPLD_FTM_PinDeinit_27:
        BX       LR               ;; return
// 1114 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x40039000
// 1115 
// 1116 /*
// 1117  * LPLD_FTM_QD_Init
// 1118  * FTMģ����������ģʽ��ʼ�����ڲ�����
// 1119  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1120 static uint8 LPLD_FTM_QD_Init(FTM_InitTypeDef ftm_init_structure)
// 1121 {
LPLD_FTM_QD_Init:
        PUSH     {R0-R3}
// 1122   uint8 mode = ftm_init_structure.FTM_QdMode;
        LDRB     R1,[SP, #+18]
// 1123   FTM_Type *ftmx = ftm_init_structure.FTM_Ftmx;
        LDR      R2,[SP, #+0]
// 1124  
// 1125   ftmx->MODE |= FTM_MODE_FTMEN_MASK;    //FTM2EN=1   
        LDR      R0,[R2, #+84]
        ORRS     R0,R0,#0x1
        STR      R0,[R2, #+84]
// 1126   
// 1127   ftmx->CNTIN = 0;//FTM0��������ʼֵΪ0  
        MOVS     R0,#+0
        STR      R0,[R2, #+76]
// 1128   ftmx->CNT=0;  
        MOVS     R0,#+0
        STR      R0,[R2, #+4]
// 1129   ftmx->MOD = 0xFFFF;//����ֵ  
        MOVW     R0,#+65535
        STR      R0,[R2, #+8]
// 1130   
// 1131   ftmx->QDCTRL |= mode;     //����ģʽѡ��
        LDR      R0,[R2, #+128]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R1,R0
        STR      R0,[R2, #+128]
// 1132   ftmx->QDCTRL |= FTM_QDCTRL_QUADEN_MASK;       //ʹ����������ģʽ 
        LDR      R0,[R2, #+128]
        ORRS     R0,R0,#0x1
        STR      R0,[R2, #+128]
// 1133 
// 1134   return 1;
        MOVS     R0,#+1
        ADD      SP,SP,#+16
        BX       LR               ;; return
// 1135 }
// 1136 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1137 static uint8 LPLD_FTM_DEC_Init(FTM_InitTypeDef ftm_init_structure)
// 1138 {
LPLD_FTM_DEC_Init:
        PUSH     {R0-R3}
// 1139   
// 1140   return 0;
        MOVS     R0,#+0
        ADD      SP,SP,#+16
        BX       LR               ;; return
// 1141 }
// 1142 
// 1143 /*
// 1144  * FTM0--FTM1�жϴ�����
// 1145  * �������ļ�startup_K60.s�е��ж����������
// 1146  * �û������޸ģ������Զ������Ӧͨ���жϺ���
// 1147  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1148 void FTM0_IRQHandler(void)
// 1149 {
FTM0_IRQHandler:
        PUSH     {R7,LR}
// 1150 #if (UCOS_II > 0u)
// 1151   OS_CPU_SR  cpu_sr = 0u;
// 1152   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1153   OSIntEnter();
// 1154   OS_EXIT_CRITICAL();
// 1155 #endif
// 1156   
// 1157   FTM_ISR[0]();
        LDR.N    R0,??DataTable14_28
        LDR      R0,[R0, #+0]
        BLX      R0
// 1158   
// 1159 #if (UCOS_II > 0u)
// 1160   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1161 #endif
// 1162 }
        POP      {R0,PC}          ;; return
// 1163 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1164 void FTM1_IRQHandler(void)
// 1165 {
FTM1_IRQHandler:
        PUSH     {R7,LR}
// 1166 #if (UCOS_II > 0u)
// 1167   OS_CPU_SR  cpu_sr = 0u;
// 1168   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1169   OSIntEnter();
// 1170   OS_EXIT_CRITICAL();
// 1171 #endif
// 1172   
// 1173   FTM_ISR[1]();
        LDR.N    R0,??DataTable14_28
        LDR      R0,[R0, #+4]
        BLX      R0
// 1174   
// 1175 #if (UCOS_II > 0u)
// 1176   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1177 #endif
// 1178 }
        POP      {R0,PC}          ;; return
// 1179 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1180 void FTM2_IRQHandler(void)
// 1181 {
FTM2_IRQHandler:
        PUSH     {R7,LR}
// 1182 #if (UCOS_II > 0u)
// 1183   OS_CPU_SR  cpu_sr = 0u;
// 1184   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1185   OSIntEnter();
// 1186   OS_EXIT_CRITICAL();
// 1187 #endif
// 1188   
// 1189   FTM_ISR[2]();
        LDR.N    R0,??DataTable14_28
        LDR      R0,[R0, #+8]
        BLX      R0
// 1190   
// 1191 #if (UCOS_II > 0u)
// 1192   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1193 #endif
// 1194 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x400b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     0x4004900c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     0x40049010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     0x40049014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     0x40049018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     0x4004901c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     0x40049000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     0x40049004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_15:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_16:
        DC32     0x40049008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_17:
        DC32     0x4004c01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_18:
        DC32     0x40049020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_19:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_20:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_21:
        DC32     0x40049024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_22:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_23:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_24:
        DC32     0x40049028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_25:
        DC32     0x4004a048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_26:
        DC32     0x4004902c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_27:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_28:
        DC32     FTM_ISR

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
        DC8 45H, 3AH, 5CH, 0B7H, 0C9H, 0CBH, 0BCH, 0BFH
        DC8 0A8H, 0B6H, 0FBH, 5CH, 0D0H, 0C2H, 0B9H, 0A4H
        DC8 0B3H, 0CCH, 5CH, 4CH, 50H, 4CH, 44H, 5FH
        DC8 4FH, 53H, 4BH, 69H, 6EH, 65H, 74H, 69H
        DC8 73H, 5FH, 56H, 33H, 5CH, 6CH, 69H, 62H
        DC8 5CH, 4CH, 50H, 4CH, 44H, 5CH, 48H, 57H
        DC8 5CH, 48H, 57H, 5FH, 46H, 54H, 4DH, 2EH
        DC8 63H, 0
        DC8 0, 0

        END
// 
//    12 bytes in section .bss
//    60 bytes in section .rodata
// 4 104 bytes in section .text
// 
// 4 104 bytes of CODE  memory
//    60 bytes of CONST memory
//    12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
