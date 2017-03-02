///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:51
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_RTC.c
//    Command line =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_RTC.c -D
//        LPLD_K60 -lCN
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\FLASH\List\" -lB
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\FLASH\List\" -o
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\BSP\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\ITAC\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\CTL\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\MAIN\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\app\SENSOR\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\CPU\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\common\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\LPLD\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\FatFs\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\USB\common\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\USB\driver\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\..\..\..\lib\USB\class\" -On -I "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench 7.0\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        ��������� 1��\iar\FLASH\List\HW_RTC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC LPLD_RTC_Deinit
        PUBLIC LPLD_RTC_Init
        PUBLIC LPLD_RTC_IsRunning
        PUBLIC RTC_IRQHandler
        PUBLIC RTC_ISR

// C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_RTC.c
//    1 /**
//    2  * @file HW_RTC.c
//    3  * @version 3.01[By LPLD]
//    4  * @date 2013-10-4
//    5  * @brief RTC�ײ�ģ����غ���
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
// static __interwork __softfp void NVIC_DisableIRQ(IRQn_Type)
NVIC_DisableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable4  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R3,R0,#+5
        STR      R1,[R2, R3, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_RTC.h"
//   24 
//   25 //�û��Զ����жϷ�����

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 RTC_ISR_CALLBACK RTC_ISR[3];
RTC_ISR:
        DS8 12
//   27 
//   28 /*
//   29  * LPLD_RTC_Init
//   30  * RTCͨ�ó�ʼ������,�ڸú�����Ҫ����RTC��������������Ҫ��������
//   31  * ��Ҫʹ�ܱ����жϣ������ñ����Ĵ���
//   32  * 
//   33  * ����:
//   34  *    rtc_init_structure--RTC��ʼ���ṹ�壬
//   35  *                        ���嶨���RTC_InitTypeDef
//   36  *
//   37  * ���:
//   38  *    0--���ô���
//   39  *    1--���óɹ�
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 LPLD_RTC_Init(RTC_InitTypeDef rtc_init_structure)
//   42 {
LPLD_RTC_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R7}
//   43   int delay;
//   44   uint32 seconds = rtc_init_structure.RTC_Seconds;
        LDR      R2,[SP, #+16]
//   45   uint32 alarm_time = rtc_init_structure.RTC_AlarmTime;
        LDR      R3,[SP, #+20]
//   46   RTC_ISR_CALLBACK invalid_isr_func = rtc_init_structure.RTC_InvalidIsr;
        LDR      R4,[SP, #+28]
//   47   RTC_ISR_CALLBACK overflow_isr_func = rtc_init_structure.RTC_OverflowIsr;
        LDR      R5,[SP, #+32]
//   48   RTC_ISR_CALLBACK alarm_isr_func = rtc_init_structure.RTC_AlarmIsr;
        LDR      R6,[SP, #+36]
//   49 
//   50   SIM->SCGC6 |= SIM_SCGC6_RTC_MASK;
        LDR.N    R0,??DataTable4_1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000000
        LDR.N    R7,??DataTable4_1  ;; 0x4004803c
        STR      R0,[R7, #+0]
//   51   //��λ����RTC�Ĵ��� ����SWRλ RTC_WAR��RTC_RAR�Ĵ���
//   52   //��VBAT POR����֮��,��������SWR
//   53   //��λRTC�Ĵ���
//   54   RTC->CR  = RTC_CR_SWR_MASK; 
        MOVS     R0,#+1
        LDR.N    R7,??DataTable4_2  ;; 0x4003d010
        STR      R0,[R7, #+0]
//   55   //���RTC��λ��־  
//   56   RTC->CR  &= ~RTC_CR_SWR_MASK;  
        LDR.N    R0,??DataTable4_2  ;; 0x4003d010
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R7,??DataTable4_2  ;; 0x4003d010
        STR      R0,[R7, #+0]
//   57   //ʹ��RTC 32.768 kHzRTCʱ��Դ
//   58   //ʹ��֮��Ҫ��ʱһ��ʱ��ȴ�
//   59   //�ȴ�ʱ���ȶ���������RTCʱ�Ӽ�����
//   60   RTC->CR |= RTC_CR_OSCE_MASK;
        LDR.N    R0,??DataTable4_2  ;; 0x4003d010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R7,??DataTable4_2  ;; 0x4003d010
        STR      R0,[R7, #+0]
//   61   
//   62   //�ȴ�32.768ʱ������
//   63   for(delay = 0;delay < 0x600000 ;delay++);
        MOVS     R0,#+0
        MOVS     R1,R0
??LPLD_RTC_Init_0:
        CMP      R1,#+6291456
        BGE.N    ??LPLD_RTC_Init_1
        ADDS     R1,R1,#+1
        B.N      ??LPLD_RTC_Init_0
//   64   
//   65   if(rtc_init_structure.RTC_InvalidIntEnable == TRUE)
??LPLD_RTC_Init_1:
        LDRB     R0,[SP, #+24]
        CMP      R0,#+1
        BNE.N    ??LPLD_RTC_Init_2
//   66   { 
//   67     RTC->IER |= (RTC_INT_INVALID & 0x07);//����RTC��Ч�����ж�
        LDR.N    R0,??DataTable4_3  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R7,??DataTable4_3  ;; 0x4003d01c
        STR      R0,[R7, #+0]
//   68     RTC_ISR[0] = invalid_isr_func;
        LDR.N    R0,??DataTable4_4
        STR      R4,[R0, #+0]
        B.N      ??LPLD_RTC_Init_3
//   69   }
//   70   else
//   71   {
//   72     RTC->IER &= ~RTC_INT_INVALID;
??LPLD_RTC_Init_2:
        LDR.N    R0,??DataTable4_3  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.N    R7,??DataTable4_3  ;; 0x4003d01c
        STR      R0,[R7, #+0]
//   73   }
//   74 
//   75   if(rtc_init_structure.RTC_OverflowIntEnable == TRUE)
??LPLD_RTC_Init_3:
        LDRB     R0,[SP, #+25]
        CMP      R0,#+1
        BNE.N    ??LPLD_RTC_Init_4
//   76   { 
//   77     RTC->IER |= (RTC_INT_OVERFLOW & 0x07);//����RTC����������ж�
        LDR.N    R0,??DataTable4_3  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R7,??DataTable4_3  ;; 0x4003d01c
        STR      R0,[R7, #+0]
//   78     RTC_ISR[1] = overflow_isr_func;
        LDR.N    R0,??DataTable4_4
        STR      R5,[R0, #+4]
        B.N      ??LPLD_RTC_Init_5
//   79   }
//   80   else
//   81   {
//   82     RTC->IER &= ~RTC_INT_OVERFLOW;
??LPLD_RTC_Init_4:
        LDR.N    R0,??DataTable4_3  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.N    R7,??DataTable4_3  ;; 0x4003d01c
        STR      R0,[R7, #+0]
//   83   }
//   84 
//   85   if(rtc_init_structure.RTC_AlarmIntEnable == TRUE)
??LPLD_RTC_Init_5:
        LDRB     R0,[SP, #+26]
        CMP      R0,#+1
        BNE.N    ??LPLD_RTC_Init_6
//   86   {   
//   87     RTC->IER |= (RTC_INT_ALARM & 0x07);//����RTC�����ж�
        LDR.N    R0,??DataTable4_3  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R7,??DataTable4_3  ;; 0x4003d01c
        STR      R0,[R7, #+0]
//   88     RTC_ISR[2] = alarm_isr_func;
        LDR.N    R0,??DataTable4_4
        STR      R6,[R0, #+8]
        B.N      ??LPLD_RTC_Init_7
//   89   }
//   90   else
//   91   {
//   92     RTC->IER &= ~RTC_INT_ALARM;
??LPLD_RTC_Init_6:
        LDR.N    R0,??DataTable4_3  ;; 0x4003d01c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R7,??DataTable4_3  ;; 0x4003d01c
        STR      R0,[R7, #+0]
//   93   }
//   94 
//   95   //����ʱ�Ӳ����Ĵ���
//   96   RTC->TCR = RTC_TCR_CIR(0) | RTC_TCR_TCR(0);
??LPLD_RTC_Init_7:
        MOVS     R0,#+0
        LDR.N    R7,??DataTable4_5  ;; 0x4003d00c
        STR      R0,[R7, #+0]
//   97   
//   98   //�����������
//   99   RTC->TSR = seconds;
        LDR.N    R0,??DataTable4_6  ;; 0x4003d000
        STR      R2,[R0, #+0]
//  100     
//  101   //���ñ����Ĵ���
//  102   RTC->TAR = alarm_time;
        LDR.N    R0,??DataTable4_7  ;; 0x4003d008
        STR      R3,[R0, #+0]
//  103   
//  104   //ʹ���������
//  105   RTC->SR |= RTC_SR_TCE_MASK;
        LDR.N    R0,??DataTable4_8  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R7,??DataTable4_8  ;; 0x4003d014
        STR      R0,[R7, #+0]
//  106   
//  107   return 1;
        MOVS     R0,#+1
        POP      {R4-R7}
        ADD      SP,SP,#+16
        BX       LR               ;; return
//  108 }
//  109 
//  110 /*
//  111  * LPLD_RTC_Deinit
//  112  * RTC����ʼ���������ر�RTCx����ֹRTC�ж�
//  113  * 
//  114  * ����:
//  115  *    ��
//  116  *
//  117  * ���:
//  118  *    ��
//  119  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 void LPLD_RTC_Deinit(void)
//  121 {
LPLD_RTC_Deinit:
        PUSH     {R7,LR}
//  122   //��ֹRTCģ���ж�
//  123   disable_irq(RTC_IRQn);
        MOVS     R0,#+66
        BL       NVIC_DisableIRQ
//  124   //�ر�RTC
//  125   RTC->SR &= (~RTC_SR_TCE_MASK);
        LDR.N    R0,??DataTable4_8  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable4_8  ;; 0x4003d014
        STR      R0,[R1, #+0]
//  126   //�ر�RTC����ʱ��
//  127   SIM->SCGC6 |= SIM_SCGC6_RTC_MASK;  
        LDR.N    R0,??DataTable4_1  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000000
        LDR.N    R1,??DataTable4_1  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  128 }
        POP      {R0,PC}          ;; return
//  129 
//  130 /*
//  131  * LPLD_RTC_IsRunning
//  132  * �ж�RTC�Ƿ����к���
//  133  * 
//  134  * ����:
//  135  *    ��
//  136  *
//  137  * ���:
//  138  *    1��RTC��������������
//  139  *    0��RTC�������Ը�λ
//  140  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  141 uint8 LPLD_RTC_IsRunning(void)
//  142 {
//  143   uint8 request;
//  144   SIM->SCGC6 |= SIM_SCGC6_RTC_MASK;
LPLD_RTC_IsRunning:
        LDR.N    R1,??DataTable4_1  ;; 0x4004803c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x20000000
        LDR.N    R2,??DataTable4_1  ;; 0x4004803c
        STR      R1,[R2, #+0]
//  145   
//  146   if(RTC->SR & RTC_SR_TIF_MASK)
        LDR.N    R1,??DataTable4_8  ;; 0x4003d014
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??LPLD_RTC_IsRunning_0
//  147   {
//  148     request = 0;
        MOVS     R1,#+0
        MOVS     R0,R1
        B.N      ??LPLD_RTC_IsRunning_1
//  149   }
//  150   else
//  151   {
//  152     request = 1;
??LPLD_RTC_IsRunning_0:
        MOVS     R1,#+1
        MOVS     R0,R1
//  153   }
//  154   return request;
??LPLD_RTC_IsRunning_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  155 }
//  156 
//  157 /*
//  158  * RTC�жϴ�����
//  159  * �������ļ�startup_K60.s�е��ж����������
//  160  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  161  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 void RTC_IRQHandler(void)
//  163 {
RTC_IRQHandler:
        PUSH     {R7,LR}
//  164 #if (UCOS_II > 0u)
//  165   OS_CPU_SR  cpu_sr = 0u;
//  166   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  167   OSIntEnter();
//  168   OS_EXIT_CRITICAL();
//  169 #endif
//  170   
//  171   if((RTC->SR & RTC_SR_TIF_MASK)== 0x01)
        LDR.N    R0,??DataTable4_8  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??RTC_IRQHandler_0
//  172   {
//  173     //�����û��Զ����жϷ���
//  174     RTC_ISR[0](); 
        LDR.N    R0,??DataTable4_4
        LDR      R0,[R0, #+0]
        BLX      R0
//  175     //����жϱ�־λ
//  176     RTC->SR |= RTC_SR_TIF_MASK;
        LDR.N    R0,??DataTable4_8  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable4_8  ;; 0x4003d014
        STR      R0,[R1, #+0]
        B.N      ??RTC_IRQHandler_1
//  177     
//  178   }	
//  179   else if((RTC->SR & RTC_SR_TOF_MASK) == 0x02)
??RTC_IRQHandler_0:
        LDR.N    R0,??DataTable4_8  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??RTC_IRQHandler_2
//  180   {
//  181     //�����û��Զ����жϷ���
//  182     RTC_ISR[1]();  
        LDR.N    R0,??DataTable4_4
        LDR      R0,[R0, #+4]
        BLX      R0
//  183     //����жϱ�־λ
//  184     RTC->SR |= RTC_SR_TOF_MASK;
        LDR.N    R0,??DataTable4_8  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_8  ;; 0x4003d014
        STR      R0,[R1, #+0]
        B.N      ??RTC_IRQHandler_1
//  185   }	 	
//  186   else if((RTC->SR & RTC_SR_TAF_MASK) == 0x04)
??RTC_IRQHandler_2:
        LDR.N    R0,??DataTable4_8  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??RTC_IRQHandler_1
//  187   {
//  188     //�����û��Զ����жϷ���
//  189     RTC_ISR[2]();  
        LDR.N    R0,??DataTable4_4
        LDR      R0,[R0, #+8]
        BLX      R0
//  190     //����жϱ�־λ
//  191     RTC->SR |= RTC_SR_TAF_MASK;
        LDR.N    R0,??DataTable4_8  ;; 0x4003d014
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_8  ;; 0x4003d014
        STR      R0,[R1, #+0]
//  192   }	
//  193   
//  194 #if (UCOS_II > 0u)
//  195   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  196 #endif
//  197 }
??RTC_IRQHandler_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x4003d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x4003d01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     RTC_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x4003d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x4003d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x4003d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x4003d014

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
//  12 bytes in section .bss
// 428 bytes in section .text
// 
// 428 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
