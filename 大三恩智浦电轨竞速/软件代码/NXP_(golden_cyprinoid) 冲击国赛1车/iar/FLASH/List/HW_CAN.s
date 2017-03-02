///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:10
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_CAN.c
//    Command line =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_CAN.c -D LPLD_K60
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
//        1.9\iar\FLASH\List\HW_CAN.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed
        EXTERN g_bus_clock
        EXTERN memcpy

        PUBLIC CAN0_BUS_OFF_IRQHandler
        PUBLIC CAN0_ERR_IRQHandler
        PUBLIC CAN0_IMEU_IRQHandler
        PUBLIC CAN0_ISR
        PUBLIC CAN0_LR_IRQHandler
        PUBLIC CAN0_MESS_IRQHandler
        PUBLIC CAN0_RW_IRQHandler
        PUBLIC CAN0_TW_IRQHandler
        PUBLIC CAN0_WAKE_UP_IRQHandler
        PUBLIC CAN1_BUS_OFF_IRQHandler
        PUBLIC CAN1_ERR_IRQHandler
        PUBLIC CAN1_IMEU_IRQHandler
        PUBLIC CAN1_ISR
        PUBLIC CAN1_LR_IRQHandler
        PUBLIC CAN1_MESS_IRQHandler
        PUBLIC CAN1_RW_IRQHandler
        PUBLIC CAN1_TW_IRQHandler
        PUBLIC CAN1_WAKE_UP_IRQHandler
        PUBLIC LPLD_CAN_Deinit
        PUBLIC LPLD_CAN_DisableIrq
        PUBLIC LPLD_CAN_EnableIrq
        PUBLIC LPLD_CAN_Init
        PUBLIC LPLD_CAN_InitMessageObject
        PUBLIC LPLD_CAN_ReceivedMessage
        PUBLIC LPLD_CAN_TransmitMessage
        PUBLIC LPLD_CAN_Transmit_Interrupt
        PUBLIC flexcan_msgobj_param_t

// E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_CAN.c
//    1 /**
//    2  * @file HW_CAN.c
//    3  * @version 3.03[By LPLD]
//    4  * @date 2014-3-9
//    5  * @brief CAN�ײ�ģ����غ���
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
//   22 
//   23 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable19  ;; 0xe000e100
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
        LDR.W    R2,??DataTable19_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R3,R0,#+5
        STR      R1,[R2, R3, LSL #+2]
        BX       LR               ;; return
//   24 #include "HW_CAN.h"
//   25 //FlexCANģ�����ò����ʺ���
//   26 static void LPLD_CAN_SetBaudRate(CAN_Type *,uint32 );
//   27 //FlexCAN ����жϱ�־λ����
//   28 static void LPLD_CAN_Interrupt_ClearPending(CAN_Type *, uint8 );
//   29 //FlexCAN ����жϱ�־λ����
//   30 static uint8 LPLD_CAN_Interrupt_GetFlag(CAN_Type *, uint8 );
//   31 //FlexCAN ����Msg����������
//   32 static uint16 LPLD_CAN_UnlockMsg(CAN_Type *);
//   33 //FlexCAN ʹ��Msg�������жϺ���
//   34 static void LPLD_CAN_EnableMsgInterrupt(CAN_Type *, uint8 );
//   35 //FlexCAN ����Msg��������CODE
//   36 static void LPLD_CAN_SetMsgCode(CAN_Type *, uint8 , uint8 );
//   37 //FlexCAN ���Msg��������CODE
//   38 static uint32 LPLD_CAN_GetMsgCode(CAN_Type *, uint8 );
//   39 //FlexCAN ���Msg��������TIMESTAMP
//   40 static uint16 LPLD_CAN_GetMsgTimeStamp(CAN_Type *, uint8 );
//   41 //FlexCAN ����Msg��������ID
//   42 void LPLD_CAN_SetMsgID(CAN_Type *, uint8 ,uint8, uint32 );
//   43 //FlexCAN ���Msg��������ID
//   44 static uint32 LPLD_CAN_GetMsgID(CAN_Type *, uint8 );
//   45 //FlexCAN ���Msg�������ĳ���
//   46 uint8 LPLD_CAN_GetMsgLength(CAN_Type *canx, uint8 MSG_NUM);
//   47 //FlexCAN ���Msg������������
//   48 static void LPLD_CAN_GetData(CAN_Type *canx, uint8 , uint8 ,  uint8 *);
//   49 //FlexCAN дMsg������������
//   50 static void LPLD_CAN_WriteData(CAN_Type *, uint8 , uint8, uint8 * );
//   51 //FlexCAN �����жϺ���
//   52 void LPLD_CAN_Transmit_Interrupt(CAN_Type *, uint8 );
//   53 //FlexCAN �����жϺ���
//   54 static void LPLD_CAN_Receive_Interrupt(CAN_Type *, uint8 );
//   55 //FlexCAN CANx���жϴ�����
//   56 static void LPLD_CAN_MB_ISR(void);
//   57 //����16��Msg�Ľṹ��

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 CAN_MSGOBJ_InitTypeDef  flexcan_msgobj_param_t[MSG_MAX_NO] = {0};
flexcan_msgobj_param_t:
        DS8 256
//   59 //����CANx Msg���жϻص�����

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 CAN_ISR_CALLBACK CAN0_ISR[MSG_MAX_NO];
CAN0_ISR:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 CAN_ISR_CALLBACK CAN1_ISR[MSG_MAX_NO];
CAN1_ISR:
        DS8 64
//   62 
//   63 /*
//   64  * LPLD_CAN_Init
//   65  * �ڸú�����ʹ��CANx������CANx�Ĳ����ʣ�ѡ����Ӧ�Ĺ���ģʽ
//   66  * ͨ��CAN_InitTypeDef�ṹ���CAN���г�ʼ����
//   67  * 
//   68  * ����:
//   69  *    CAN_InitTypeDef--can_init_structure
//   70  *                     ���嶨���HW_CAN.h can_init_structure
//   71  *
//   72  * ���:
//   73  *    ��
//   74  *
//   75  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 void LPLD_CAN_Init(CAN_InitTypeDef can_init_structure)
//   77 {
LPLD_CAN_Init:
        PUSH     {R0-R2,R4-R9,LR}
//   78   uint8 i;
//   79   CAN_Type *canx = can_init_structure.CAN_Canx;
        LDR      R5,[SP, #+0]
//   80   uint32 baud = can_init_structure.CAN_BaudRate;
        LDR      R6,[SP, #+4]
//   81   uint8  mask_mode = can_init_structure.CAN_RxMaskMode;
        LDRB     R7,[SP, #+8]
//   82   PortPinsEnum_Type tx_pin = can_init_structure.CAN_TxPin;
        LDRB     R8,[SP, #+9]
//   83   PortPinsEnum_Type rx_pin = can_init_structure.CAN_RxPin;
        LDRB     R9,[SP, #+10]
//   84 
//   85   ASSERT(mask_mode <= CAN_MSGOBJ_GLOBAL_MASKING);
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+2
        BLT.N    ??LPLD_CAN_Init_0
        MOVS     R1,#+85
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   86   ASSERT(baud <= CAN_BAUD_RATE_1MBPS);
??LPLD_CAN_Init_0:
        LDR.W    R0,??DataTable19_3  ;; 0xf4241
        CMP      R6,R0
        BCC.N    ??LPLD_CAN_Init_1
        MOVS     R1,#+86
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   87     
//   88   OSC->CR |= OSC_CR_ERCLKEN_MASK | OSC_CR_EREFSTEN_MASK;
??LPLD_CAN_Init_1:
        LDR.W    R0,??DataTable19_4  ;; 0x40065000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0xA0
        LDR.W    R1,??DataTable19_4  ;; 0x40065000
        STRB     R0,[R1, #+0]
//   89   
//   90   if(canx == CAN0)
        LDR.W    R0,??DataTable19_5  ;; 0x40024000
        CMP      R5,R0
        BNE.N    ??LPLD_CAN_Init_2
//   91     SIM->SCGC6 |= SIM_SCGC6_FLEXCAN0_MASK;
        LDR.W    R0,??DataTable19_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable19_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_CAN_Init_3
//   92   else
//   93     SIM->SCGC3 |= SIM_SCGC3_FLEXCAN1_MASK;
??LPLD_CAN_Init_2:
        LDR.W    R0,??DataTable19_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable19_7  ;; 0x40048030
        STR      R0,[R1, #+0]
//   94   
//   95   if(canx == CAN0)
??LPLD_CAN_Init_3:
        LDR.W    R0,??DataTable19_5  ;; 0x40024000
        CMP      R5,R0
        BNE.N    ??LPLD_CAN_Init_4
//   96   {
//   97     if(tx_pin == PTB18)//CAN0_TX
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+50
        BNE.N    ??LPLD_CAN_Init_5
//   98     {
//   99       PORTB->PCR[18] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; 
        MOVW     R0,#+515
        LDR.W    R1,??DataTable19_8  ;; 0x4004a048
        STR      R0,[R1, #+0]
        B.N      ??LPLD_CAN_Init_6
//  100     }
//  101     else
//  102     {
//  103       PORTA->PCR[12] = PORT_PCR_MUX(2); 
??LPLD_CAN_Init_5:
        MOV      R0,#+512
        LDR.W    R1,??DataTable19_9  ;; 0x40049030
        STR      R0,[R1, #+0]
//  104     }
//  105 
//  106     if(rx_pin == PTB19)//CAN0_RX
??LPLD_CAN_Init_6:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+51
        BNE.N    ??LPLD_CAN_Init_7
//  107     {
//  108       PORTB->PCR[19] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; 
        MOVW     R0,#+515
        LDR.W    R1,??DataTable19_10  ;; 0x4004a04c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_CAN_Init_8
//  109     }
//  110     else
//  111     {
//  112       PORTA->PCR[13] = PORT_PCR_MUX(2); 
??LPLD_CAN_Init_7:
        MOV      R0,#+512
        LDR.W    R1,??DataTable19_11  ;; 0x40049034
        STR      R0,[R1, #+0]
        B.N      ??LPLD_CAN_Init_8
//  113     }
//  114   }
//  115   else
//  116   {
//  117     if(tx_pin == PTC17)//CAN1_TX
??LPLD_CAN_Init_4:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+77
        BNE.N    ??LPLD_CAN_Init_9
//  118     {
//  119       PORTC->PCR[17] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; 
        MOVW     R0,#+515
        LDR.W    R1,??DataTable19_12  ;; 0x4004b044
        STR      R0,[R1, #+0]
        B.N      ??LPLD_CAN_Init_10
//  120     }
//  121     else
//  122     {
//  123       PORTE->PCR[24] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;
??LPLD_CAN_Init_9:
        MOVW     R0,#+515
        LDR.W    R1,??DataTable19_13  ;; 0x4004d060
        STR      R0,[R1, #+0]
//  124     }
//  125 
//  126     if(rx_pin == PTC16)//CAN1_RX
??LPLD_CAN_Init_10:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+76
        BNE.N    ??LPLD_CAN_Init_11
//  127     {
//  128       PORTC->PCR[16] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK; 
        MOVW     R0,#+515
        LDR.W    R1,??DataTable19_14  ;; 0x4004b040
        STR      R0,[R1, #+0]
        B.N      ??LPLD_CAN_Init_8
//  129     }
//  130     else
//  131     {
//  132       PORTE->PCR[25] = PORT_PCR_MUX(2)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;
??LPLD_CAN_Init_11:
        MOVW     R0,#+515
        LDR.W    R1,??DataTable19_15  ;; 0x4004d064
        STR      R0,[R1, #+0]
//  133     }
//  134   } 
//  135   //��ֹCAN����
//  136   canx->MCR   |= CAN_MCR_MDIS_MASK;
??LPLD_CAN_Init_8:
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R5, #+0]
//  137   //ֻ����LPM_ACK = 1����²ſ���ѡ����Դ
//  138   canx->CTRL1 |= CAN_CTRL1_CLKSRC_MASK;  //ѡ��peripheral clock��ΪCAN�����ʱ��Դ
        LDR      R0,[R5, #+4]
        ORRS     R0,R0,#0x2000
        STR      R0,[R5, #+4]
//  139                                          //���ô�λ������CANֹͣģʽ��
//  140   //��ʱ�ӳ�ʼ����Ϻ�CAN����ʹ����Ϻ�
//  141   //��Ƭ���Զ����붳��ģʽ
//  142   //ֻ���ڶ���ģʽ�²������ô����CAN���߼Ĵ���
//  143   //ʹ�ܶ���ģʽ 
//  144   canx->MCR |= CAN_MCR_FRZ_MASK;
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x40000000
        STR      R0,[R5, #+0]
//  145   canx->MCR &= ~CAN_MCR_MDIS_MASK; 
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+1        ;; ZeroExtS R0,R0,#+1,#+1
        LSRS     R0,R0,#+1
        STR      R0,[R5, #+0]
//  146   
//  147   while(!(canx->MCR & CAN_MCR_LPMACK_MASK));	
??LPLD_CAN_Init_12:
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+11
        BPL.N    ??LPLD_CAN_Init_12
//  148 
//  149   //���������λ
//  150   canx->MCR ^= CAN_MCR_SOFTRST_MASK;
        LDR      R0,[R5, #+0]
        EORS     R0,R0,#0x2000000
        STR      R0,[R5, #+0]
//  151   while(canx->MCR & CAN_MCR_SOFTRST_MASK);
??LPLD_CAN_Init_13:
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+6
        BMI.N    ??LPLD_CAN_Init_13
//  152             
//  153   //�ȴ����붳��ģʽ 
//  154   while(!(canx->MCR & CAN_MCR_FRZACK_MASK));
??LPLD_CAN_Init_14:
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+7
        BPL.N    ??LPLD_CAN_Init_14
//  155   
//  156   if(mask_mode == CAN_MSGOBJ_GLOBAL_MASKING)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_CAN_Init_15
//  157   {
//  158     canx->MCR &= ~CAN_MCR_IRMQ_MASK;   //ʹ��ȫ��ƥ��Ĵ�����ֹ����ƥ�� 
        LDR      R0,[R5, #+0]
        BICS     R0,R0,#0x10000
        STR      R0,[R5, #+0]
        B.N      ??LPLD_CAN_Init_16
//  159   }
//  160   else
//  161   {
//  162     canx->MCR |= CAN_MCR_IRMQ_MASK;   //ʹ��Msg����ƥ�� 
??LPLD_CAN_Init_15:
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x10000
        STR      R0,[R5, #+0]
//  163   }
//  164   //��MB_MAX�����仺����������0
//  165   for(i = 0;i < MSG_MAX_NO; i++)
??LPLD_CAN_Init_16:
        MOVS     R0,#+0
        MOVS     R4,R0
??LPLD_CAN_Init_17:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BGE.N    ??LPLD_CAN_Init_18
//  166   {
//  167     canx->MB[i].CS    = 0x00000000;
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+4
        STR      R0,[R1, #+128]
//  168     canx->MB[i].ID    = 0x00000000;
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+4
        STR      R0,[R1, #+132]
//  169     canx->MB[i].WORD0 = 0x00000000;
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+4
        STR      R0,[R1, #+136]
//  170     canx->MB[i].WORD1 = 0x00000000;        
        MOVS     R0,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+4
        STR      R0,[R1, #+140]
//  171   }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_Init_17
//  172   
//  173   canx->MCR |= CAN_MCR_SRXDIS_MASK ; //��ֹ���ҽ���
??LPLD_CAN_Init_18:
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x20000
        STR      R0,[R5, #+0]
//  174   //canx->MCR |= CAN_MCR_RFEN_MASK ;   //ʹ�ܽ���FIFO
//  175   //canx->CTRL2 |= CAN_CTRL2_RFFN(0);
//  176   //canx->MCR |= CAN_MCR_IDAM(0);
//  177   
//  178   //������صļĴ���
//  179   canx->CTRL2 &= ~CAN_CTRL2_EACEN_MASK; //�����������IDEƥ�䣬RTR��ƥ��
        LDR      R0,[R5, #+52]
        BICS     R0,R0,#0x10000
        STR      R0,[R5, #+52]
//  180   canx->CTRL2 &= ~CAN_CTRL2_RRS_MASK;  //���Զ�����Զ������֡����
        LDR      R0,[R5, #+52]
        BICS     R0,R0,#0x20000
        STR      R0,[R5, #+52]
//  181   canx->CTRL2 &= ~CAN_CTRL2_MRP_MASK;   //ID���ȴ�������ƥ��
        LDR      R0,[R5, #+52]
        BICS     R0,R0,#0x40000
        STR      R0,[R5, #+52]
//  182 
//  183   //canx->CTRL1 |= CAN_CTRL1_LBUF_MASK;  //���͵�ʱ��ӵ�Msg��ʼ
//  184   canx->CTRL1 &= ~CAN_CTRL1_LBUF_MASK;   //���͵�ʱ��ӵ����ȼ�����
        LDR      R0,[R5, #+4]
        BICS     R0,R0,#0x10
        STR      R0,[R5, #+4]
//  185                              
//  186   //canx->CTRL1 |= CAN_CTRL1_LPB_MASK;  //loop ģʽ,���ڲ���
//  187   canx->CTRL1 &= ~CAN_CTRL1_LPB_MASK;   //ʹ������ģʽ
        LDR      R0,[R5, #+4]
        BICS     R0,R0,#0x1000
        STR      R0,[R5, #+4]
//  188   //����CAN����ͨ�ŵĲ�����
//  189   LPLD_CAN_SetBaudRate(canx,baud);
        MOVS     R1,R6
        MOVS     R0,R5
        BL       LPLD_CAN_SetBaudRate
//  190 
//  191   //���CAN���ɼ����� 
//  192   canx->TIMER = 0x0000; 
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
//  193    /*
//  194   ���MCR��IRMQΪ1����ʾÿ�����䶼���Ե�������IDƥ��
//  195   ע�⣺�����low cost MCUs�������õ�MCU����û�е���ƥ������ܡ�
//  196           1\IDƥ���ѡ��free to receive״̬��������Ϊʤ�ߣ�
//  197           ��ʤ��������Դӽ��ջ������ڽ����յ�֡ Move in ��MB�У�
//  198           2\�������ID����ͬ�����䣬�����ȴ���ŵ͵��������ƥ�䣬���
//  199           �����������non free to receive״̬����ôƥ����̽������
//  200           ��һ������ֱ���ҵ�free to receive״̬��ID��ͬ�����䣻
//  201           3\���ID����ͬ�����䶼����non free to receive״̬����ôƥ�����
//  202           ��ֹͣ�����һ������ͬID������λ�ã���֡Move in ��MB�в��ҽ�����
//  203           ���״̬���ó�OVERRUN��
//  204           RXIMR[i]�洢�ڵ�Ƭ����RAM�У�ֻ����CAN����ģʽ�¿�д��
//  205           ��ʱCANx_RXMGMASK��CANx_RX14MASK��CANx_RX15MASK��������
//  206   */
//  207   if(canx->MCR & CAN_MCR_IRMQ_MASK)
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??LPLD_CAN_Init_19
//  208   {
//  209     for(i = 0;i < MSG_MAX_NO; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??LPLD_CAN_Init_20:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BGE.N    ??LPLD_CAN_Init_19
//  210     {
//  211       canx->RXIMR[i] = 0x1FFFFFFFL;//��������29λȫ������
        MVNS     R0,#-536870912
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+2
        STR      R0,[R1, #+2176]
//  212     }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_Init_20
//  213   } 
//  214  /*
//  215   ���MCR��IRMQΪ0����ʾʹ��ȫ��ƥ��Ĵ�������ƥ�䣬
//  216           ��ʱCANx_RXMGMASK��CANx_RX14MASK��CANx_RX15MASK�����ã�
//  217           CANx_RXMGMASK�����CANx_RX14MASK��CANx_RX15MASK���������Msg��
//  218           IDƥ����̻�ֹͣ���ҵ��ĵ�һ��ID��ͬ������λ�ã����ܸ������Ƿ���
//  219           free to receive״̬��
//  220   */
//  221 
//  222   canx->RXMGMASK = 0x1FFFFFFF; //29λIDȫ��ƥ��            
??LPLD_CAN_Init_19:
        MVNS     R0,#-536870912
        STR      R0,[R5, #+16]
//  223   canx->RX14MASK = 0x1FFFFFFF;
        MVNS     R0,#-536870912
        STR      R0,[R5, #+20]
//  224   canx->RX15MASK = 0x1FFFFFFF; 
        MVNS     R0,#-536870912
        STR      R0,[R5, #+24]
//  225  
//  226   canx->MCR &= ~(CAN_MCR_HALT_MASK); 
        LDR      R0,[R5, #+0]
        BICS     R0,R0,#0x10000000
        STR      R0,[R5, #+0]
//  227   //�ȵ����ڶ���ģʽ������ģʽ����ֹͣģʽ
//  228   while( canx->MCR & CAN_MCR_FRZACK_MASK); 
??LPLD_CAN_Init_21:
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+7
        BMI.N    ??LPLD_CAN_Init_21
//  229   
//  230   while( canx->MCR & CAN_MCR_NOTRDY_MASK);
??LPLD_CAN_Init_22:
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??LPLD_CAN_Init_22
//  231 }
        POP      {R0-R2,R4-R9,PC}  ;; return
//  232 /*
//  233  * LPLD_CAN_SetBaudRate
//  234  * ����CAN������,PLL������100Mhz
//  235  * ����:
//  236  *    CAN_Type *canx
//  237  *      |___CAN0 --CAN0��ģ��
//  238  *      |___CAN1 --CAN0��ģ��
//  239  *    baud ������
//  240  *      |__CAN_BAUD_RATE_50KBPS  --������50KBPS
//  241  *      |__CAN_BAUD_RATE_100KBPS --������100KBPS
//  242  *      |__CAN_BAUD_RATE_250KBPS --������250KBPS
//  243  *      |__CAN_BAUD_RATE_500KBPS --������500KBPS
//  244  *      |__CAN_BAUD_RATE_1MBPS   --������1MBPS
//  245  *  �����
//  246  *    ��
//  247 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  248 static void LPLD_CAN_SetBaudRate(CAN_Type *canx,uint32 baud)
//  249 {
LPLD_CAN_SetBaudRate:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  250   uint8 prescale;
//  251   //1��CAN����λ��ʱ�����ӣ�Time Quanta = SYNC_SEG + (PROP_SEG + PSEG1 + 2) + (PSEG2 + 1)��
//  252   //SYNC_SEG =  1 ���̶�ֵ��
//  253   ASSERT(baud <= CAN_BAUD_RATE_1MBPS);
        LDR.W    R0,??DataTable19_3  ;; 0xf4241
        CMP      R5,R0
        BCC.N    ??LPLD_CAN_SetBaudRate_0
        MOVS     R1,#+253
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//  254   switch(baud)
??LPLD_CAN_SetBaudRate_0:
        MOVS     R0,R5
        MOVW     R1,#+33333
        CMP      R0,R1
        BEQ.N    ??LPLD_CAN_SetBaudRate_1
        MOVW     R1,#+50000
        CMP      R0,R1
        BEQ.N    ??LPLD_CAN_SetBaudRate_2
        LDR.W    R1,??DataTable19_16  ;; 0x14585
        CMP      R0,R1
        BEQ.N    ??LPLD_CAN_SetBaudRate_1
        LDR.W    R1,??DataTable19_17  ;; 0x186a0
        CMP      R0,R1
        BEQ.N    ??LPLD_CAN_SetBaudRate_1
        LDR.W    R1,??DataTable19_18  ;; 0x1e848
        CMP      R0,R1
        BEQ.N    ??LPLD_CAN_SetBaudRate_1
        LDR.W    R1,??DataTable19_19  ;; 0x3d090
        CMP      R0,R1
        BEQ.N    ??LPLD_CAN_SetBaudRate_2
        LDR.W    R1,??DataTable19_20  ;; 0x7a120
        CMP      R0,R1
        BEQ.N    ??LPLD_CAN_SetBaudRate_2
        LDR.W    R1,??DataTable19_21  ;; 0xf4240
        CMP      R0,R1
        BNE.N    ??LPLD_CAN_SetBaudRate_3
//  255   {
//  256     case CAN_BAUD_RATE_1MBPS:
//  257       {
//  258         prescale = CAN_GET_PRESCALE(g_bus_clock,baud,8); 
??LPLD_CAN_SetBaudRate_4:
        LDR.W    R0,??DataTable19_22
        LDR      R0,[R0, #+0]
        LSLS     R1,R5,#+3
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        MOVS     R6,R0
//  259         //����CAN����ͨ�ŵĲ�����
//  260         canx->CTRL1 = (0 | CAN_CTRL1_PROPSEG(3)
//  261                          | CAN_CTRL1_RJW(0)   
//  262                          | CAN_CTRL1_PSEG1(0) 
//  263                          | CAN_CTRL1_PSEG2(1)
//  264                          | CAN_CTRL1_PRESDIV(prescale)); 
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,#+24
        ORR      R0,R0,#0x10000
        ORRS     R0,R0,#0x3
        STR      R0,[R4, #+4]
//  265         break;
        B.N      ??LPLD_CAN_SetBaudRate_5
//  266       }
//  267     case CAN_BAUD_RATE_33KBPS:
//  268     case CAN_BAUD_RATE_83KBPS:
//  269     case CAN_BAUD_RATE_100KBPS:
//  270     case CAN_BAUD_RATE_125KBPS:
//  271       {
//  272         //����time_quanta = 12 
//  273         prescale = CAN_GET_PRESCALE(g_bus_clock,baud,12); 
??LPLD_CAN_SetBaudRate_1:
        LDR.W    R0,??DataTable19_22
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        MUL      R1,R1,R5
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        MOVS     R6,R0
//  274         //����CAN����ͨ�ŵĲ�����
//  275         canx->CTRL1 = (0 | CAN_CTRL1_PROPSEG(2) 
//  276                          | CAN_CTRL1_RJW(2)  
//  277                          | CAN_CTRL1_PSEG1(3) 
//  278                          | CAN_CTRL1_PSEG2(3)
//  279                          | CAN_CTRL1_PRESDIV(prescale)); 
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,#+24
        ORR      R0,R0,#0x9B0000
        ORRS     R0,R0,#0x2
        STR      R0,[R4, #+4]
//  280         break;
        B.N      ??LPLD_CAN_SetBaudRate_5
//  281       }
//  282     case CAN_BAUD_RATE_50KBPS:
//  283     case CAN_BAUD_RATE_500KBPS:
//  284     case CAN_BAUD_RATE_250KBPS:
//  285       {
//  286         //����time_quanta = 12 
//  287         prescale = CAN_GET_PRESCALE(g_bus_clock,baud,12); 
??LPLD_CAN_SetBaudRate_2:
        LDR.W    R0,??DataTable19_22
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        MUL      R1,R1,R5
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        MOVS     R6,R0
//  288         //����CAN����ͨ�ŵĲ�����
//  289         canx->CTRL1 = (0 | CAN_CTRL1_PROPSEG(2)
//  290                          | CAN_CTRL1_RJW(1)  
//  291                          | CAN_CTRL1_PSEG1(3) 
//  292                          | CAN_CTRL1_PSEG2(3)
//  293                          | CAN_CTRL1_PRESDIV(prescale)); 
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R0,R6,#+24
        ORR      R0,R0,#0x5B0000
        ORRS     R0,R0,#0x2
        STR      R0,[R4, #+4]
//  294         break;
        B.N      ??LPLD_CAN_SetBaudRate_5
//  295       }
//  296     default:break;
//  297   }
//  298 }
??LPLD_CAN_SetBaudRate_3:
??LPLD_CAN_SetBaudRate_5:
        POP      {R4-R6,PC}       ;; return
//  299 
//  300 /*
//  301  * LPLD_CAN_Deinit
//  302  * CAN����ʼ���������ڸú����н�ֹCANx������ʱ�ӣ���ֹģ���жϣ��ر�CANģ��
//  303  * 
//  304  * ����:
//  305  *    CAN_InitTypeDef--can_init_structure
//  306  *                     ���嶨���HW_CAN.h can_init_structure
//  307  * ���:
//  308  *    ��
//  309  *
//  310 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  311 void LPLD_CAN_Deinit(CAN_InitTypeDef can_init_structure)
//  312 {
LPLD_CAN_Deinit:
        PUSH     {R0-R2,R4,LR}
        SUB      SP,SP,#+4
//  313   CAN_Type *canx = can_init_structure.CAN_Canx;
        LDR      R4,[SP, #+4]
//  314   
//  315   if(canx == CAN0)
        LDR.W    R0,??DataTable19_5  ;; 0x40024000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_Deinit_0
//  316   {
//  317     SIM->SCGC6 &= ~SIM_SCGC6_FLEXCAN0_MASK;
        LDR.W    R0,??DataTable19_6  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable19_6  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  318     disable_irq(CAN0_ORed_Message_buffer_IRQn);
        MOVS     R0,#+29
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_CAN_Deinit_1
//  319   }
//  320   else
//  321   {
//  322     SIM->SCGC3 &= ~SIM_SCGC3_FLEXCAN1_MASK;
??LPLD_CAN_Deinit_0:
        LDR.W    R0,??DataTable19_7  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable19_7  ;; 0x40048030
        STR      R0,[R1, #+0]
//  323     enable_irq(CAN1_ORed_Message_buffer_IRQn);
        MOVS     R0,#+37
        BL       NVIC_EnableIRQ
//  324   }
//  325   //��ֹCAN����
//  326   canx->MCR |= CAN_MCR_MDIS_MASK;
??LPLD_CAN_Deinit_1:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R4, #+0]
//  327   canx->MCR |= CAN_MCR_HALT_MASK; 
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x10000000
        STR      R0,[R4, #+0]
//  328   canx->MCR |= CAN_MCR_FRZ_MASK;
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x40000000
        STR      R0,[R4, #+0]
//  329 }
        POP      {R0-R4,PC}       ;; return
//  330 /*
//  331  * LPLD_CAN_EnableIrq
//  332  * ʹ��CANģ���ж�
//  333  * 
//  334  * ����:
//  335  *    CAN_InitTypeDef--can_init_structure
//  336  *                     ���嶨���HW_CAN.h can_init_structure
//  337  * ���:
//  338  *    ��
//  339  *
//  340 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  341 void LPLD_CAN_EnableIrq(CAN_InitTypeDef can_init_structure)
//  342 {
LPLD_CAN_EnableIrq:
        PUSH     {R0-R2,R4,LR}
        SUB      SP,SP,#+4
//  343   CAN_Type *canx = can_init_structure.CAN_Canx;
        LDR      R4,[SP, #+4]
//  344     
//  345   if(canx == CAN0)
        LDR.W    R0,??DataTable19_5  ;; 0x40024000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_EnableIrq_0
//  346   {
//  347     enable_irq(CAN0_ORed_Message_buffer_IRQn);
        MOVS     R0,#+29
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_CAN_EnableIrq_1
//  348   }
//  349   else if(canx == CAN1)
??LPLD_CAN_EnableIrq_0:
        LDR.W    R0,??DataTable19_23  ;; 0x400a4000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_EnableIrq_1
//  350   {
//  351     enable_irq(CAN1_ORed_Message_buffer_IRQn);
        MOVS     R0,#+37
        BL       NVIC_EnableIRQ
//  352   }
//  353 }
??LPLD_CAN_EnableIrq_1:
        POP      {R0-R4,PC}       ;; return
//  354 
//  355 /*
//  356  * LPLD_CAN_DisableIrq
//  357  * ��ֹCANģ���ж�
//  358  * 
//  359  * ����:
//  360  *    CAN_InitTypeDef--can_init_structure
//  361  *                     ���嶨���HW_CAN.h can_init_structure
//  362  * ���:
//  363  *    ��
//  364  *
//  365 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  366 void LPLD_CAN_DisableIrq(CAN_InitTypeDef can_init_structure)
//  367 {
LPLD_CAN_DisableIrq:
        PUSH     {R0-R2,R4,LR}
        SUB      SP,SP,#+4
//  368   CAN_Type *canx = can_init_structure.CAN_Canx;
        LDR      R4,[SP, #+4]
//  369     
//  370   if(canx == CAN0)
        LDR.W    R0,??DataTable19_5  ;; 0x40024000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_DisableIrq_0
//  371   {
//  372     disable_irq(CAN0_ORed_Message_buffer_IRQn);
        MOVS     R0,#+29
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_CAN_DisableIrq_1
//  373   }
//  374   else if(canx == CAN1)
??LPLD_CAN_DisableIrq_0:
        LDR.W    R0,??DataTable19_23  ;; 0x400a4000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_DisableIrq_1
//  375   {
//  376     disable_irq(CAN1_ORed_Message_buffer_IRQn);
        MOVS     R0,#+37
        BL       NVIC_DisableIRQ
//  377   }
//  378 }
??LPLD_CAN_DisableIrq_1:
        POP      {R0-R4,PC}       ;; return
//  379 
//  380 /*
//  381  * LPLD_CAN_InitMessageObject
//  382  *
//  383  * ����CAN Message buffer��Msg����ʽ��ͨ��CAN_MSGOBJ_InitTypeDef
//  384  * �ṹ���CAN Message buffer���г�ʼ����
//  385  * 
//  386  * ����:
//  387  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  388  *                            ���嶨���HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  389  *    message_id
//  390  *      ����message_id��id���ȸ���CAN_MSGOBJ_InitTypeDef�Ĳ�������
//  391  *      id�ĳ��ȷ�Ϊ11λ��׼֡��29λ��չ֡����
//  392  *      CAN_MSGOBJ_ID_STD ��ʾ��׼֡����CAN_MSGOBJ_InitTypeDef������id����ΪCAN_MSGOBJ_ID_STD
//  393  *      ��ʱmessage_id�Ϊ11λ�����ܳ���0x0FFF��
//  394  *      CAN_MSGOBJ_ID_EXT ��ʾ��չ֡����CAN_MSGOBJ_InitTypeDef������id����ΪCAN_MSGOBJ_ID_EXT
//  395  *      ��ʱmessage_id�Ϊ29λ�����ܳ���0x1FFFFFFF��
//  396  * ���:
//  397  *    ��
//  398  *
//  399  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  400 void LPLD_CAN_InitMessageObject(CAN_MSGOBJ_InitTypeDef can_msg_init_structure,uint32 rx_id)
//  401 { 
LPLD_CAN_InitMessageObject:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+4
        LDR      R4,[SP, #+56]
//  402   uint8     msg_num_temp  = can_msg_init_structure.CAN_MsgNum;
        LDRB     R5,[SP, #+8]
//  403   uint8     dir           = can_msg_init_structure.CAN_MsgDirection;
        LDRB     R6,[SP, #+12]
//  404   CAN_Type *canx_ptr      = can_msg_init_structure.CAN_Canx;
        LDR      R7,[SP, #+4]
//  405   uint32    id_type       = can_msg_init_structure.CAN_MsgIdLength;
        LDRB     R8,[SP, #+9]
//  406   uint32    cs_temp = CAN_MB_CS_CODE(CAN_MSGOBJ_RX_EMPTY);
        MOVS     R9,#+67108864
//  407   CAN_ISR_CALLBACK isr_func = can_msg_init_structure.CAN_Isr;
        LDR      R10,[SP, #+16]
//  408   uint32    id_temp;	
//  409   
//  410   if(dir == CAN_MSGOBJ_DIR_RX)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_CAN_InitMessageObject_0
//  411   {
//  412     canx_ptr->MB[msg_num_temp].CS = CAN_MB_CS_CODE(CAN_MSGOBJ_RX_INACTIVE); 
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R7,R5, LSL #+4
        STR      R0,[R1, #+128]
//  413     //����Msg��ID
//  414     if(id_type == CAN_MSGOBJ_ID_STD)
        CMP      R8,#+0
        BNE.N    ??LPLD_CAN_InitMessageObject_1
//  415     {
//  416       id_temp =  CAN_MB_ID_STD(rx_id);
        LDR.W    R0,??DataTable19_24  ;; 0x1ffc0000
        ANDS     R0,R0,R4, LSL #+18
        MOV      R11,R0
        B.N      ??LPLD_CAN_InitMessageObject_2
//  417     }
//  418     else
//  419     {
//  420       id_temp =  CAN_MB_ID_EXT(rx_id);
??LPLD_CAN_InitMessageObject_1:
        LSLS     R0,R4,#+3        ;; ZeroExtS R0,R4,#+3,#+3
        LSRS     R0,R0,#+3
        MOV      R11,R0
//  421     }
//  422     canx_ptr->MB[msg_num_temp].ID = id_temp;  
??LPLD_CAN_InitMessageObject_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R7,R5, LSL #+4
        STR      R11,[R0, #+132]
//  423     canx_ptr->MB[msg_num_temp].CS = cs_temp | CAN_MB_CS_IDE(id_type);
        LSLS     R0,R8,#+21
        ANDS     R0,R0,#0x200000
        ORRS     R0,R0,R9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R1,R7,R5, LSL #+4
        STR      R0,[R1, #+128]
//  424   }
//  425   if(can_msg_init_structure.CAN_MsgInterrupt == TRUE)
??LPLD_CAN_InitMessageObject_0:
        LDRB     R0,[SP, #+13]
        CMP      R0,#+1
        BNE.N    ??LPLD_CAN_InitMessageObject_3
//  426   {
//  427     LPLD_CAN_EnableMsgInterrupt(canx_ptr,msg_num_temp);//ʹ��Msg�ж� 
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        BL       LPLD_CAN_EnableMsgInterrupt
//  428     //����Msg�жϻص�����
//  429     if(canx_ptr == CAN0)
        LDR.W    R0,??DataTable19_5  ;; 0x40024000
        CMP      R7,R0
        BNE.N    ??LPLD_CAN_InitMessageObject_4
//  430     {
//  431       if(isr_func != NULL)
        MOV      R0,R10
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_InitMessageObject_5
//  432       {
//  433         CAN0_ISR[msg_num_temp] = isr_func;
        LDR.W    R0,??DataTable19_25
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R10,[R0, R5, LSL #+2]
        B.N      ??LPLD_CAN_InitMessageObject_5
//  434       }
//  435     }
//  436     else
//  437     {
//  438       if(isr_func != NULL)
??LPLD_CAN_InitMessageObject_4:
        MOV      R0,R10
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_InitMessageObject_5
//  439       {
//  440         CAN1_ISR[msg_num_temp] = isr_func;
        LDR.W    R0,??DataTable19_26
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R10,[R0, R5, LSL #+2]
        B.N      ??LPLD_CAN_InitMessageObject_5
//  441       }
//  442     }
//  443   }
//  444   else
//  445   {
//  446     if(canx_ptr == CAN0)
??LPLD_CAN_InitMessageObject_3:
        LDR.W    R0,??DataTable19_5  ;; 0x40024000
        CMP      R7,R0
        BNE.N    ??LPLD_CAN_InitMessageObject_6
//  447     {
//  448         CAN0_ISR[msg_num_temp] = NULL; 
        MOVS     R0,#+0
        LDR.W    R1,??DataTable19_25
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R1, R5, LSL #+2]
        B.N      ??LPLD_CAN_InitMessageObject_5
//  449     }
//  450     else
//  451     {
//  452         CAN1_ISR[msg_num_temp] = NULL;
??LPLD_CAN_InitMessageObject_6:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable19_26
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R1, R5, LSL #+2]
//  453     }
//  454   }
//  455 }
??LPLD_CAN_InitMessageObject_5:
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return
//  456 /*
//  457  * LPLD_CAN_TransmitMessage
//  458  * CAN ������Ϣ����
//  459  * ����:
//  460  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  461  *                            ���嶨���HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  462  *    CAN_MessageFormat_TypeDef--*can_rx_msg
//  463  *                            ���嶨���HW_CAN.h CAN_MessageFormat_TypeDef
//  464  *    �ýṹ�����ڶ���CAN����Ϣ��ʽ����CAN������Ϣʱ�����CAN_MessageFormat_TypeDef����Ľṹ�������
//  465  *    ��ȡ��Ϣ���洢��MSG�У�MSG�Ὣ��Ϣ���͵�CAN�����ϡ�
//  466  *    �ýṹ���е���Ҫ����Ϊ ��ϢID��ʱ��������ݳ��ȡ��洢���ݵĻ�����
//  467  * ���:
//  468  *    1 �������
//  469  *    0 ����ʧ��
//  470  *
//  471  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  472 uint8 LPLD_CAN_TransmitMessage(CAN_MSGOBJ_InitTypeDef can_msg_init_structure,
//  473                                CAN_MessageFormat_TypeDef *can_tx_msg )
//  474 {
LPLD_CAN_TransmitMessage:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+12
        LDR      R4,[SP, #+64]
//  475   uint8  request;
//  476   uint8  msg_num_temp  = can_msg_init_structure.CAN_MsgNum;
        LDRB     R6,[SP, #+16]
//  477   CAN_Type *canx_ptr   = can_msg_init_structure.CAN_Canx;
        LDR      R7,[SP, #+12]
//  478   uint32  id_type      = can_msg_init_structure.CAN_MsgIdLength;
        LDRB     R0,[SP, #+17]
        STR      R0,[SP, #+8]
//  479   
//  480   uint32  message_id = can_tx_msg->CAN_MsgID; ;
        LDR      R8,[R4, #+0]
//  481   uint8   priority = can_tx_msg->CAN_MsgPriority; 
        LDRB     R0,[R4, #+15]
        STRB     R0,[SP, #+4]
//  482   uint8  *in_data_buffer = can_tx_msg->CAN_MsgDataBuffer;
        ADDS     R0,R4,#+6
        STR      R0,[SP, #+0]
//  483   uint8   in_data_length = can_tx_msg->CAN_MsgDataLength;
        LDRB     R9,[R4, #+14]
//  484   uint32  id_temp;
//  485   uint32  cs_temp = CAN_MB_CS_RTR(can_msg_init_structure.CAN_MsgRTR) | 
//  486                     CAN_MB_CS_SRR(can_msg_init_structure.CAN_MsgSRR) |
//  487                     CAN_MB_CS_IDE(can_msg_init_structure.CAN_MsgIdLength);
        LDRB     R0,[SP, #+19]
        LSLS     R0,R0,#+20
        ANDS     R0,R0,#0x100000
        LDRB     R1,[SP, #+18]
        LSLS     R1,R1,#+22
        ANDS     R1,R1,#0x400000
        ORRS     R0,R1,R0
        LDRB     R1,[SP, #+17]
        LSLS     R1,R1,#+21
        ANDS     R1,R1,#0x200000
        ORRS     R11,R1,R0
//  488   
//  489   if(msg_num_temp >= MSG_MAX_NO || in_data_length > 8)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+16
        BGE.N    ??LPLD_CAN_TransmitMessage_0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+9
        BLT.N    ??LPLD_CAN_TransmitMessage_1
//  490   {
//  491     return 0; // ������ֵ
??LPLD_CAN_TransmitMessage_0:
        MOVS     R0,#+0
        B.N      ??LPLD_CAN_TransmitMessage_2
//  492   }
//  493   //�������Msg�������е�CODE������CAN_MSGOBJ_TX_ONCE
//  494   if( LPLD_CAN_GetMsgCode(canx_ptr,msg_num_temp) != CAN_MSGOBJ_TX_ONCE)
??LPLD_CAN_TransmitMessage_1:
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        BL       LPLD_CAN_GetMsgCode
        CMP      R0,#+12
        BEQ.N    ??LPLD_CAN_TransmitMessage_3
//  495   {
//  496     //����Msg��ID
//  497     if(id_type == CAN_MSGOBJ_ID_STD)
        LDR      R0,[SP, #+8]
        CMP      R0,#+0
        BNE.N    ??LPLD_CAN_TransmitMessage_4
//  498     {
//  499       id_temp =  CAN_MB_ID_STD(message_id);
        LDR.W    R0,??DataTable19_24  ;; 0x1ffc0000
        ANDS     R0,R0,R8, LSL #+18
        MOV      R10,R0
        B.N      ??LPLD_CAN_TransmitMessage_5
//  500     }
//  501     else
//  502     {
//  503       id_temp =  CAN_MB_ID_EXT(message_id);
??LPLD_CAN_TransmitMessage_4:
        LSLS     R0,R8,#+3        ;; ZeroExtS R0,R8,#+3,#+3
        LSRS     R0,R0,#+3
        MOV      R10,R0
//  504     }
//  505     //����Msg�������е�CODE��дINACTIVE����
//  506     canx_ptr->MB[msg_num_temp].CS = CAN_MB_CS_CODE(CAN_MSGOBJ_TX_INACTIVE) | cs_temp;
??LPLD_CAN_TransmitMessage_5:
        ORRS     R0,R11,#0x8000000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R7,R6, LSL #+4
        STR      R0,[R1, #+128]
//  507     canx_ptr->MB[msg_num_temp].ID = CAN_MB_ID_PRIO(priority) | id_temp;
        LDRB     R0,[SP, #+4]
        ORRS     R0,R10,R0, LSL #+29
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R7,R6, LSL #+4
        STR      R0,[R1, #+132]
//  508     //��Msg��д��Ҫ���͵�����
//  509     LPLD_CAN_WriteData(canx_ptr,msg_num_temp,in_data_length,in_data_buffer);
        LDR      R3,[SP, #+0]
        MOV      R2,R9
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        BL       LPLD_CAN_WriteData
//  510     //����Msg�������е�CODE��дTX_ONCE����ȴ��������
//  511     canx_ptr->MB[msg_num_temp].CS = (canx_ptr->MB[msg_num_temp].CS & (~CAN_MB_CS_CODE_MASK)) | 
//  512                                      CAN_MB_CS_CODE(CAN_MSGOBJ_TX_ONCE)|
//  513                                      CAN_MB_CS_DLC(in_data_length);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R7,R6, LSL #+4
        LDR      R0,[R0, #+128]
        BICS     R0,R0,#0xF000000
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSLS     R1,R9,#+16
        ANDS     R1,R1,#0xF0000
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0xC000000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R7,R6, LSL #+4
        STR      R0,[R1, #+128]
//  514     //������������жϣ�������Ϻ�ᴥ���ж�
//  515     request = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??LPLD_CAN_TransmitMessage_6
//  516   }
//  517   else
//  518   {
//  519     request = 0;
??LPLD_CAN_TransmitMessage_3:
        MOVS     R0,#+0
        MOVS     R5,R0
//  520   }
//  521   return (request);
??LPLD_CAN_TransmitMessage_6:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_CAN_TransmitMessage_2:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return
//  522 }
//  523 
//  524 /*
//  525  * LPLD_CAN_ReceivedMessage
//  526  * CAN ������պ������˺���һ����CAN�жϺ����е���
//  527  * ����:
//  528  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  529  *                            ���嶨���HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  530  *    CAN_MessageFormat_TypeDef--*can_rx_msg
//  531  *                            ���嶨���HW_CAN.h CAN_MessageFormat_TypeDef
//  532  *    �ýṹ�����ڶ���CAN����Ϣ��ʽ����CAN�ɹ�������Ϣ�Ժ󣬻��MSG�н���Ϣ�洢��
//  533  *    CAN_MessageFormat_TypeDef����Ľṹ������С�
//  534  *    �ýṹ���е���Ҫ����Ϊ ��ϢID��ʱ��������ݳ��ȡ��洢���ݵĻ�����
//  535  *    
//  536  *  �����
//  537  *    ��
//  538  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  539 void LPLD_CAN_ReceivedMessage(CAN_MSGOBJ_InitTypeDef can_msg_init_structure,\ 
//  540                               CAN_MessageFormat_TypeDef *can_rx_msg)
//  541 {
LPLD_CAN_ReceivedMessage:
        PUSH     {R0-R11,LR}
        SUB      SP,SP,#+12
        LDR      R4,[SP, #+64]
//  542   uint32 message_code,i;
//  543   volatile uint16 timer;
//  544   uint8 rx_data[CAN_DATA_MAX_BYTES];
//  545   uint8 data_length;
//  546   uint16 time_stamp;
//  547   uint32 msg_id;
//  548   CAN_Type *canx = can_msg_init_structure.CAN_Canx;
        LDR      R9,[SP, #+12]
//  549   uint8 msg_num = can_msg_init_structure.CAN_MsgNum;
        LDRB     R10,[SP, #+16]
//  550   //���Msg�������е�codeֵ
//  551   message_code = LPLD_CAN_GetMsgCode(canx,msg_num);
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_GetMsgCode
        MOVS     R5,R0
//  552   
//  553   if ((message_code != CAN_MSGOBJ_RX_BUSY) && 
//  554      (message_code != CAN_MSGOBJ_RX_OVERRUN))
        CMP      R5,#+1
        BEQ.N    ??LPLD_CAN_ReceivedMessage_0
        CMP      R5,#+6
        BEQ.N    ??LPLD_CAN_ReceivedMessage_0
//  555   {
//  556     //��ȡID(��ѡ)
//  557     msg_id = LPLD_CAN_GetMsgID(canx, msg_num);
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_GetMsgID
        MOV      R8,R0
//  558    
//  559     //��ȡMsg�������������ݵĳ���
//  560     data_length    = (uint8_t)LPLD_CAN_GetMsgLength(canx, msg_num);
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_GetMsgLength
        MOVS     R6,R0
//  561     //��ȡMsg��������������
//  562     LPLD_CAN_GetData(canx, msg_num,data_length,rx_data);
        ADD      R3,SP,#+4
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_GetData
//  563     //���Msg������ʱ���
//  564     time_stamp = LPLD_CAN_GetMsgTimeStamp(canx, msg_num);
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_GetMsgTimeStamp
        MOVS     R7,R0
//  565     
//  566     for(i = data_length; i < 8; i++)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOV      R11,R6
??LPLD_CAN_ReceivedMessage_1:
        CMP      R11,#+8
        BCS.N    ??LPLD_CAN_ReceivedMessage_2
//  567     {
//  568        rx_data[i] = 0;
        MOVS     R0,#+0
        ADD      R1,SP,#+4
        STRB     R0,[R11, R1]
//  569     }
        ADDS     R11,R11,#+1
        B.N      ??LPLD_CAN_ReceivedMessage_1
//  570     //��MSG�е���Ϣ�洢��can_rx_msg��
//  571     can_rx_msg->CAN_MsgID = msg_id;
??LPLD_CAN_ReceivedMessage_2:
        STR      R8,[R4, #+0]
//  572     can_rx_msg->CAN_MsgDataLength = data_length;
        STRB     R6,[R4, #+14]
//  573     can_rx_msg->CAN_MsgTimeStamp  = time_stamp;
        STRH     R7,[R4, #+4]
//  574     memcpy(can_rx_msg->CAN_MsgDataBuffer,rx_data,data_length);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R2,R6
        ADD      R1,SP,#+4
        ADDS     R0,R4,#+6
        BL       memcpy
//  575      
//  576     //��ȡ���ɼ�������������ǰMsg������
//  577     timer = LPLD_CAN_UnlockMsg(canx);
        MOV      R0,R9
        BL       LPLD_CAN_UnlockMsg
        STRH     R0,[SP, #+0]
//  578     //���Msg���������жϱ�־λ
//  579     LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_Interrupt_ClearPending
//  580     //�ٴ�д�����codeΪempty״̬
//  581     LPLD_CAN_SetMsgCode(canx,msg_num,CAN_MSGOBJ_RX_EMPTY);
        MOVS     R2,#+4
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_SetMsgCode
        B.N      ??LPLD_CAN_ReceivedMessage_3
//  582   }
//  583   else
//  584   {
//  585     //�����������
//  586     LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
??LPLD_CAN_ReceivedMessage_0:
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_Interrupt_ClearPending
//  587     //��ȡ���ɼ�������������ǰMsg������
//  588     timer = LPLD_CAN_UnlockMsg(canx);
        MOV      R0,R9
        BL       LPLD_CAN_UnlockMsg
        STRH     R0,[SP, #+0]
//  589   }
//  590 }
??LPLD_CAN_ReceivedMessage_3:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return
//  591 
//  592 /*
//  593  * LPLD_CAN_Interrupt_ClearPending
//  594  * ���Msg���жϱ�־λ
//  595  * ����:
//  596  *    CAN_Type *canx
//  597  *      |___ CAN0 --CAN0��ģ��
//  598  *      |___ CAN1 --CAN1��ģ��
//  599  *    msg_num ѡ��Ҫ����жϱ�־��Msg������
//  600  *      |___ MSG_NUM_0 --Msg������0
//  601  *      |___ MSG_NUM_1 --Msg������1
//  602  *      |___ MSG_NUM_2 --Msg������2
//  603  *      |___ MSG_NUM_3 --Msg������3
//  604  *      |___ MSG_NUM_4 --Msg������4
//  605  *      ...... 
//  606  *      |___ MSG_NUM_15 --Msg������15
//  607  * ���:
//  608  *   ��
//  609  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  610 static void LPLD_CAN_Interrupt_ClearPending(CAN_Type *canx, uint8 msg_num)
//  611 {   
LPLD_CAN_Interrupt_ClearPending:
        PUSH     {R4}
//  612   if(msg_num < 32)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+32
        BGE.N    ??LPLD_CAN_Interrupt_ClearPending_0
//  613   {
//  614     canx->IFLAG1 |= (1<<msg_num); 
        LDR      R2,[R0, #+48]
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        ORRS     R2,R3,R2
        STR      R2,[R0, #+48]
        B.N      ??LPLD_CAN_Interrupt_ClearPending_1
//  615   }
//  616   else
//  617   {
//  618     canx->IFLAG2 |= (1<<(msg_num-32));
??LPLD_CAN_Interrupt_ClearPending_0:
        LDR      R2,[R0, #+44]
        MOVS     R3,#+1
        SUBS     R4,R1,#+32
        LSLS     R3,R3,R4
        ORRS     R2,R3,R2
        STR      R2,[R0, #+44]
//  619   }
//  620 }
??LPLD_CAN_Interrupt_ClearPending_1:
        POP      {R4}
        BX       LR               ;; return
//  621 
//  622 /*
//  623  * LPLD_CAN_Interrupt_GetFlag
//  624  * ���CAN ���жϱ�־λ
//  625  * ����:
//  626  *    CAN_Type *canx
//  627  *      |___ CAN0 --CAN0��ģ��
//  628  *      |___ CAN1 --CAN1��ģ��
//  629  *    msg_num ѡ��Ҫ����жϱ�־��Msg������
//  630  *      |___ MSG_NUM_0 --Msg������0
//  631  *      |___ MSG_NUM_1 --Msg������1
//  632  *      |___ MSG_NUM_2 --Msg������2
//  633  *      |___ MSG_NUM_3 --Msg������3
//  634  *      |___ MSG_NUM_4 --Msg������4
//  635  *      ...... 
//  636  *      |___ MSG_NUM_15 --Msg������15
//  637  * ���:
//  638  *    ������Ҫ Msg���������жϱ�־λ
//  639  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  640 static uint8 LPLD_CAN_Interrupt_GetFlag(CAN_Type *canx, uint8 msg_num)
//  641 {   
LPLD_CAN_Interrupt_GetFlag:
        PUSH     {R4,R5}
        MOVS     R2,R0
//  642   uint8 status;
//  643   if(msg_num < 32)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+32
        BGE.N    ??LPLD_CAN_Interrupt_GetFlag_0
//  644   {
//  645     status = (canx->IFLAG1 >> msg_num) & 0x01; 
        LDR      R3,[R2, #+48]
        MOVS     R4,R3
        LSRS     R4,R4,R1
        ANDS     R3,R4,#0x1
        MOVS     R0,R3
        B.N      ??LPLD_CAN_Interrupt_GetFlag_1
//  646   }
//  647   else
//  648   {
//  649     status = (canx->IFLAG2 >> (msg_num - 32) )& 0x01; 
??LPLD_CAN_Interrupt_GetFlag_0:
        LDR      R3,[R2, #+44]
        SUBS     R4,R1,#+32
        MOVS     R5,R3
        LSRS     R5,R5,R4
        ANDS     R3,R5,#0x1
        MOVS     R0,R3
//  650   }
//  651   return status;
??LPLD_CAN_Interrupt_GetFlag_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,R5}
        BX       LR               ;; return
//  652 }
//  653 
//  654 /*
//  655  * LPLD_CAN_UnlockMsg
//  656  * �ú���ͨ����ȡ���ɼ�����������Msg
//  657  * ����:
//  658  *    canx--����CAN����ͨ��
//  659  *      |__CAN0 --CAN0��ģ��
//  660  *      |__CAN1 --CAN1��ģ��
//  661  * ���:
//  662  *    16λCAN���ɼ�������¼��ʱ���
//  663  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  664 static uint16 LPLD_CAN_UnlockMsg(CAN_Type *canx)
//  665 {
//  666   return (canx->TIMER);
LPLD_CAN_UnlockMsg:
        LDR      R0,[R0, #+8]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  667 }
//  668 
//  669 /*
//  670  * LPLD_CAN_EnableMsgInterrupt
//  671  * �ú�������ʹ��Msg�ж�
//  672  * 
//  673  * ����:
//  674  *    canx--����CAN����ͨ��
//  675  *      |__CAN0 --CAN0��ģ��
//  676  *      |__CAN1 --CAN1��ģ��
//  677  *    msg_num ѡ����Ҫʹ���жϵ�Msg������
//  678  *      |___ MSG_NUM_0 --Msg������0
//  679  *      |___ MSG_NUM_1 --Msg������1
//  680  *      |___ MSG_NUM_2 --Msg������2
//  681  *      |___ MSG_NUM_3 --Msg������3
//  682  *      |___ MSG_NUM_4 --Msg������4
//  683  *      ...... 
//  684  *      |___ MSG_NUM_15 --Msg������15
//  685  * ���:
//  686  *    ��
//  687  *
//  688  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  689 static void LPLD_CAN_EnableMsgInterrupt(CAN_Type *canx, uint8 msg_num)
//  690 {
LPLD_CAN_EnableMsgInterrupt:
        PUSH     {R4}
//  691   if(msg_num < 32)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+32
        BGE.N    ??LPLD_CAN_EnableMsgInterrupt_0
//  692   {
//  693     canx->IMASK1 |= (1<<msg_num); 
        LDR      R2,[R0, #+40]
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        ORRS     R2,R3,R2
        STR      R2,[R0, #+40]
        B.N      ??LPLD_CAN_EnableMsgInterrupt_1
//  694   }
//  695   else
//  696   {
//  697     canx->IMASK2 |= (1<<(msg_num-32));
??LPLD_CAN_EnableMsgInterrupt_0:
        LDR      R2,[R0, #+36]
        MOVS     R3,#+1
        SUBS     R4,R1,#+32
        LSLS     R3,R3,R4
        ORRS     R2,R3,R2
        STR      R2,[R0, #+36]
//  698   }
//  699 }
??LPLD_CAN_EnableMsgInterrupt_1:
        POP      {R4}
        BX       LR               ;; return
//  700 
//  701 /*
//  702  * LPLD_CAN_SetMsgCode
//  703  * �ú�����������Msg��codeֵ
//  704  * 
//  705  * ����:
//  706  *    canx--����CAN����ͨ��
//  707  *      |__CAN0 --CAN0��ģ��
//  708  *      |__CAN1 --CAN1��ģ��
//  709  *    msg_num ѡ����Ҫ����CODE��Msg������
//  710  *      |___ MSG_NUM_0 --Msg������0
//  711  *      |___ MSG_NUM_1 --Msg������1
//  712  *      |___ MSG_NUM_2 --Msg������2
//  713  *      |___ MSG_NUM_3 --Msg������3
//  714  *      |___ MSG_NUM_4 --Msg������4
//  715  *      ...... 
//  716  *      |___ MSG_NUM_15 --Msg������15
//  717  *    code--��Ҫ���õ�codeֵ
//  718  * ���:
//  719  *    ��
//  720  *
//  721  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  722 static void LPLD_CAN_SetMsgCode(CAN_Type *canx, uint8 msg_num, uint8 code)
//  723 {
LPLD_CAN_SetMsgCode:
        PUSH     {R4}
//  724   //canx->MB[msg_num].CS &= (~CAN_MB_CS_CODE_MASK);
//  725   canx->MB[msg_num].CS |= CAN_MB_CS_CODE(code);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R0,R1, LSL #+4
        LDR      R3,[R3, #+128]
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+24
        ANDS     R4,R4,#0xF000000
        ORRS     R3,R4,R3
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R4,R0,R1, LSL #+4
        STR      R3,[R4, #+128]
//  726 }
        POP      {R4}
        BX       LR               ;; return
//  727 
//  728 /*
//  729  * LPLD_CAN_GetMsgCode
//  730  * �ú������ڻ��Msg��������codeֵ
//  731  * 
//  732  * ����:
//  733  *    canx--����CAN����ͨ��
//  734  *      |__CAN0 --CAN0��ģ��
//  735  *      |__CAN1 --CAN1��ģ��
//  736  *    msg_num ѡ����Ҫ���CODE��Msg������
//  737  *      |___ MSG_NUM_0 --Msg������0
//  738  *      |___ MSG_NUM_1 --Msg������1
//  739  *      |___ MSG_NUM_2 --Msg������2
//  740  *      |___ MSG_NUM_3 --Msg������3
//  741  *      |___ MSG_NUM_4 --Msg������4
//  742  *      ...... 
//  743  *      |___ MSG_NUM_15 --Msg������15
//  744  * ���:
//  745  *     ������ӦMsg��������code
//  746  *
//  747  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  748 static uint32 LPLD_CAN_GetMsgCode(CAN_Type *canx, uint8 msg_num)
//  749 {
//  750    return CAN_GET_MB_CS_CODE(canx->MB[msg_num].CS);
LPLD_CAN_GetMsgCode:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        LDR      R0,[R0, #+128]
        UBFX     R0,R0,#+24,#+4
        BX       LR               ;; return
//  751 }
//  752 /*
//  753  * LPLD_CAN_GetMsgTimeStamp
//  754  * �ú������ڻ��Msg��������ʱ���
//  755  * 
//  756  * ����:
//  757  *    canx--����CAN����ͨ��
//  758  *      |__CAN0 --CAN0��ģ��
//  759  *      |__CAN1 --CAN1��ģ��
//  760  *    msg_num ѡ����Ҫ���ʱ�����Msg������
//  761  *      |___ MSG_NUM_0 --Msg������0
//  762  *      |___ MSG_NUM_1 --Msg������1
//  763  *      |___ MSG_NUM_2 --Msg������2
//  764  *      |___ MSG_NUM_3 --Msg������3
//  765  *      |___ MSG_NUM_4 --Msg������4
//  766  *      ...... 
//  767  *      |___ MSG_NUM_15 --Msg������15
//  768  * ���:
//  769  *     ������ӦMsg��������ʱ���
//  770  *
//  771  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  772 static uint16 LPLD_CAN_GetMsgTimeStamp(CAN_Type *canx, uint8 msg_num)
//  773 {
//  774   return CAN_GET_MB_CS_TIMESTAMP(canx->MB[msg_num].CS);
LPLD_CAN_GetMsgTimeStamp:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        LDR      R0,[R0, #+128]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BX       LR               ;; return
//  775 }
//  776 /*
//  777  * LPLD_CAN_GetMsgID
//  778  * �ú������ڻ��Msg��������IDֵ
//  779  * 
//  780  * ����:
//  781  *    canx--����CAN����ͨ��
//  782  *      |__CAN0 --CAN0��ģ��
//  783  *      |__CAN1 --CAN1��ģ��
//  784  *    msg_num ѡ����Ҫ���ID��Msg������
//  785  *      |___ MSG_NUM_0 --Msg������0
//  786  *      |___ MSG_NUM_1 --Msg������1
//  787  *      |___ MSG_NUM_2 --Msg������2
//  788  *      |___ MSG_NUM_3 --Msg������3
//  789  *      |___ MSG_NUM_4 --Msg������4
//  790  *      ...... 
//  791  *      |___ MSG_NUM_15 --Msg������15
//  792  * ���:
//  793  *     ������ӦMsg��������ID
//  794  *
//  795  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  796 static uint32 LPLD_CAN_GetMsgID(CAN_Type *canx, uint8 msg_num)
//  797 {
LPLD_CAN_GetMsgID:
        MOVS     R2,R0
//  798   uint32 id_temp;
//  799   if(CAN_GET_MB_CS_IDE(canx->MB[msg_num].CS) == CAN_MSGOBJ_ID_STD)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R2,R1, LSL #+4
        LDR      R3,[R3, #+128]
        UBFX     R3,R3,#+21,#+1
        CMP      R3,#+0
        BNE.N    ??LPLD_CAN_GetMsgID_0
//  800   {
//  801     id_temp =  CAN_GET_MB_ID_STD(canx->MB[msg_num].ID);
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R2,R1, LSL #+4
        LDR      R3,[R3, #+132]
        UBFX     R3,R3,#+18,#+11
        MOVS     R0,R3
        B.N      ??LPLD_CAN_GetMsgID_1
//  802   }
//  803   else
//  804   {
//  805     id_temp =  CAN_GET_MB_ID_EXT(canx->MB[msg_num].ID);
??LPLD_CAN_GetMsgID_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R3,R2,R1, LSL #+4
        LDR      R3,[R3, #+132]
        LSLS     R3,R3,#+3        ;; ZeroExtS R3,R3,#+3,#+3
        LSRS     R3,R3,#+3
        MOVS     R0,R3
//  806   }
//  807   return id_temp;
??LPLD_CAN_GetMsgID_1:
        BX       LR               ;; return
//  808 }
//  809 /*
//  810  * LPLD_CAN_GetMsgLength
//  811  * �ú������ڻ��Msg�����������ݳ���
//  812  * 
//  813  * ����:
//  814  *    canx--����CAN����ͨ��
//  815  *      |__CAN0 --CAN0��ģ��
//  816  *      |__CAN1 --CAN1��ģ��
//  817  *    msg_num ѡ����Ҫ������ݳ��ȵ�Msg������
//  818  *      |___ MSG_NUM_0 --Msg������0
//  819  *      |___ MSG_NUM_1 --Msg������1
//  820  *      |___ MSG_NUM_2 --Msg������2
//  821  *      |___ MSG_NUM_3 --Msg������3
//  822  *      |___ MSG_NUM_4 --Msg������4
//  823  *      ...... 
//  824  *      |___ MSG_NUM_15 --Msg������15
//  825  * ���:
//  826  *     ���ݵĳ���
//  827  *
//  828  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  829 static uint8 LPLD_CAN_GetMsgLength(CAN_Type *canx, uint8 msg_num)
//  830 {
//  831   return CAN_GET_MB_CS_LENGTH(canx->MB[msg_num].CS);
LPLD_CAN_GetMsgLength:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R0,R0,R1, LSL #+4
        LDR      R0,[R0, #+128]
        LSRS     R0,R0,#+16
        ANDS     R0,R0,#0xF
        BX       LR               ;; return
//  832 }
//  833 
//  834 /*
//  835  * LPLD_CAN_GetData
//  836  * �ú������ڻ��Msg�������е�����
//  837  * 
//  838  * ����:
//  839  *    canx--����CAN����ͨ��
//  840  *      |__CAN0 --CAN0��ģ��
//  841  *      |__CAN1 --CAN1��ģ��
//  842  *    msg_num ѡ����Ҫ������ݵ�Msg������
//  843  *      |___ MSG_NUM_0 --Msg������0
//  844  *      |___ MSG_NUM_1 --Msg������1
//  845  *      |___ MSG_NUM_2 --Msg������2
//  846  *      |___ MSG_NUM_3 --Msg������3
//  847  *      |___ MSG_NUM_4 --Msg������4
//  848  *      ...... 
//  849  *      |___ MSG_NUM_15 --Msg������15
//  850  *    in_length
//  851  *      |__������ݳ���
//  852  *    *in_buffer
//  853  *      |__������ݵĻ�����
//  854  * ���:
//  855  *    �� 
//  856  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  857 static void LPLD_CAN_GetData(
//  858     CAN_Type *canx, 
//  859     uint8     msg_num, 
//  860     uint8     in_length, 
//  861     uint8    *in_buffer)
//  862 {
LPLD_CAN_GetData:
        PUSH     {R4-R8,LR}
//  863   int i;
//  864   uint8  *pMBData;
//  865   uint8  *pRecieve  = in_buffer;
        MOVS     R6,R3
//  866   uint8  word_num   = (in_length - 1)/ 4; //Get the Message buffer word number
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R7,R2,#+1
        MOVS     R12,#+4
        SDIV     R7,R7,R12
//  867   uint8  rest_bytes = (in_length - 1)% 4; //Get the reset bytes of buffer
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     LR,R2,#+1
        MOVS     R8,#+4
        SDIV     R12,LR,R8
        MLS      R12,R12,R8,LR
//  868   if(word_num > 0)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??LPLD_CAN_GetData_0
//  869   {  
//  870     pMBData = (uint8*)&canx->MB[msg_num].WORD0+3;
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     LR,R0,R1, LSL #+4
        ADDS     LR,LR,#+139
        MOV      R5,LR
//  871     for(i = 0 ; i < 4 ; i++)   
        MOVS     LR,#+0
        MOV      R4,LR
??LPLD_CAN_GetData_1:
        CMP      R4,#+4
        BGE.N    ??LPLD_CAN_GetData_2
//  872     {
//  873       pRecieve[i] = *pMBData--;
        LDRB     LR,[R5, #+0]
        STRB     LR,[R4, R6]
        SUBS     R5,R5,#+1
//  874     }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_GetData_1
//  875     pMBData = (uint8*)&canx->MB[msg_num].WORD1+3;
??LPLD_CAN_GetData_2:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     LR,R0,R1, LSL #+4
        ADDS     LR,LR,#+143
        MOV      R5,LR
        B.N      ??LPLD_CAN_GetData_3
//  876   }
//  877   else
//  878   {
//  879     pMBData = (uint8*)&canx->MB[msg_num].WORD0+3;
??LPLD_CAN_GetData_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     LR,R0,R1, LSL #+4
        ADDS     LR,LR,#+139
        MOV      R5,LR
//  880   }
//  881 
//  882   for(i = 0; i <= rest_bytes; i++)
??LPLD_CAN_GetData_3:
        MOVS     LR,#+0
        MOV      R4,LR
??LPLD_CAN_GetData_4:
        UXTB     R12,R12          ;; ZeroExt  R12,R12,#+24,#+24
        CMP      R12,R4
        BLT.N    ??LPLD_CAN_GetData_5
//  883   {
//  884     pRecieve[i+(word_num<<2)] = *pMBData--;    
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADDS     LR,R4,R7, LSL #+2
        LDRB     R8,[R5, #+0]
        STRB     R8,[LR, R6]
        SUBS     R5,R5,#+1
//  885   }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_GetData_4
//  886 }
??LPLD_CAN_GetData_5:
        POP      {R4-R8,PC}       ;; return
//  887 
//  888 /*
//  889  * LPLD_CAN_WriteData
//  890  * �ú���������Msg�������е�д����
//  891  * 
//  892  * ����:
//  893  *    canx--����CAN����ͨ��
//  894  *      |__CAN0 --CAN0��ģ��
//  895  *      |__CAN1 --CAN1��ģ��
//  896  *    msg_num ѡ����Ҫд���ݵ�Msg������
//  897  *      |___ MSG_NUM_0 --Msg������0
//  898  *      |___ MSG_NUM_1 --Msg������1
//  899  *      |___ MSG_NUM_2 --Msg������2
//  900  *      |___ MSG_NUM_3 --Msg������3
//  901  *      |___ MSG_NUM_4 --Msg������4
//  902  *      ...... 
//  903  *      |___ MSG_NUM_15 --Msg������15
//  904  *    in_length
//  905  *      |__д�����ݳ���
//  906  *    *in_buffer
//  907  *      |__д�����ݵĻ�����
//  908  * ���:
//  909  *    �� 
//  910  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  911 static void LPLD_CAN_WriteData(
//  912     CAN_Type *canx, 
//  913     uint8     msg_num, 
//  914     uint8     in_length, 
//  915     uint8    *in_buffer )
//  916 {
LPLD_CAN_WriteData:
        PUSH     {R2-R7,LR}
//  917   int i;
//  918   uint32 word[2] = {0};  
        ADD      R5,SP,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        STM      R5!,{R6,R7}
        SUBS     R5,R5,#+8
//  919   uint8  word_num   = (in_length - 1)/ 4; //��� Msg ��Word ֵ
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R5,R2,#+1
        MOVS     R6,#+4
        SDIV     R5,R5,R6
//  920   uint8  rest_bytes = (in_length - 1)% 4; //���ʣ���ֽڵ�ֵ
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R7,R2,#+1
        MOVS     R12,#+4
        SDIV     R6,R7,R12
        MLS      R6,R6,R12,R7
//  921 
//  922   if( msg_num >= MSG_MAX_NO || in_length >8)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+16
        BGE.N    ??LPLD_CAN_WriteData_0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+9
        BLT.N    ??LPLD_CAN_WriteData_1
//  923   {
//  924       return; 
??LPLD_CAN_WriteData_0:
        B.N      ??LPLD_CAN_WriteData_2
//  925   }
//  926 
//  927   if(word_num < 1)
??LPLD_CAN_WriteData_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??LPLD_CAN_WriteData_3
//  928   {
//  929     for (i = 0; i <= rest_bytes ; i++)
        MOVS     R7,#+0
        MOVS     R4,R7
??LPLD_CAN_WriteData_4:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R4
        BLT.N    ??LPLD_CAN_WriteData_5
//  930     {
//  931       word[word_num] |=  (uint32)in_buffer[i] << (24-(i<<3));
        ADD      R7,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R7,[R7, R5, LSL #+2]
        LDRB     R12,[R4, R3]
        LSLS     LR,R4,#+3
        RSBS     LR,LR,#+24
        LSLS     R12,R12,LR
        ORRS     R7,R12,R7
        ADD      R12,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R7,[R12, R5, LSL #+2]
//  932     }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_WriteData_4
//  933   }
//  934   else
//  935   {
//  936     for (i = 0; i < 4; i++)
??LPLD_CAN_WriteData_3:
        MOVS     R7,#+0
        MOVS     R4,R7
??LPLD_CAN_WriteData_6:
        CMP      R4,#+4
        BGE.N    ??LPLD_CAN_WriteData_7
//  937     {
//  938       word[word_num-1] |= (uint32)in_buffer[i] << (24-(i<<3));
        ADD      R7,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R7,R7,R5, LSL #+2
        LDR      R7,[R7, #-4]
        LDRB     R12,[R4, R3]
        LSLS     LR,R4,#+3
        RSBS     LR,LR,#+24
        LSLS     R12,R12,LR
        ORRS     R7,R12,R7
        ADD      R12,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R12,R12,R5, LSL #+2
        STR      R7,[R12, #-4]
//  939     }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_WriteData_6
//  940     for (i = 0; i <= rest_bytes ; i++)
??LPLD_CAN_WriteData_7:
        MOVS     R7,#+0
        MOVS     R4,R7
??LPLD_CAN_WriteData_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R4
        BLT.N    ??LPLD_CAN_WriteData_5
//  941     {
//  942       word[word_num] |=  (uint32)in_buffer[i+4] << (24-(i<<3));
        ADD      R7,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R7,[R7, R5, LSL #+2]
        ADDS     R12,R4,R3
        LDRB     R12,[R12, #+4]
        LSLS     LR,R4,#+3
        RSBS     LR,LR,#+24
        LSLS     R12,R12,LR
        ORRS     R7,R12,R7
        ADD      R12,SP,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R7,[R12, R5, LSL #+2]
//  943     }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_WriteData_8
//  944   }
//  945   canx->MB[msg_num].WORD0 = word[0];
??LPLD_CAN_WriteData_5:
        LDR      R7,[SP, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R12,R0,R1, LSL #+4
        STR      R7,[R12, #+136]
//  946   canx->MB[msg_num].WORD1 = word[1];
        LDR      R7,[SP, #+4]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADDS     R12,R0,R1, LSL #+4
        STR      R7,[R12, #+140]
//  947 }
??LPLD_CAN_WriteData_2:
        POP      {R0,R1,R4-R7,PC}  ;; return
//  948 
//  949 /*
//  950  * LPLD_CAN_Transmit_Interrupt
//  951  * �ú������ڴ���Msg�����������жϺ���
//  952  * 
//  953  * ����:
//  954  *    canx--����CAN����ͨ��
//  955  *      |__CAN0 --CAN0��ģ��
//  956  *      |__CAN1 --CAN1��ģ��
//  957  *    msg_num ѡ����Ҫ�������жϵ�Msg������
//  958  *      |___ MSG_NUM_0 --Msg������0
//  959  *      |___ MSG_NUM_1 --Msg������1
//  960  *      |___ MSG_NUM_2 --Msg������2
//  961  *      |___ MSG_NUM_3 --Msg������3
//  962  *      |___ MSG_NUM_4 --Msg������4
//  963  *      ...... 
//  964  *      |___ MSG_NUM_15 --Msg������15
//  965  * ���:
//  966  *    �� 
//  967  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  968 void LPLD_CAN_Transmit_Interrupt(CAN_Type *canx, uint8 msg_num)
//  969 {
LPLD_CAN_Transmit_Interrupt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  970   if(LPLD_CAN_Interrupt_GetFlag(canx,msg_num))
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_Interrupt_GetFlag
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Transmit_Interrupt_0
//  971   {
//  972    LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_Interrupt_ClearPending
//  973    if(canx == CAN0)
        LDR.N    R0,??DataTable19_5  ;; 0x40024000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_Transmit_Interrupt_1
//  974    {
//  975     if( CAN0_ISR[msg_num] != NULL)
        LDR.N    R0,??DataTable19_25
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Transmit_Interrupt_0
//  976     {
//  977       CAN0_ISR[msg_num]();
        LDR.N    R0,??DataTable19_25
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BLX      R0
        B.N      ??LPLD_CAN_Transmit_Interrupt_0
//  978     }
//  979    }
//  980    else if (canx == CAN1)
??LPLD_CAN_Transmit_Interrupt_1:
        LDR.N    R0,??DataTable19_23  ;; 0x400a4000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_Transmit_Interrupt_0
//  981    {
//  982     if( CAN1_ISR[msg_num] != NULL)
        LDR.N    R0,??DataTable19_26
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Transmit_Interrupt_0
//  983     {
//  984       CAN1_ISR[msg_num]();
        LDR.N    R0,??DataTable19_26
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BLX      R0
//  985     }
//  986    }
//  987    else
//  988    {
//  989    }
//  990    
//  991   }
//  992 }
??LPLD_CAN_Transmit_Interrupt_0:
        POP      {R0,R4,R5,PC}    ;; return
//  993 
//  994 /*
//  995  * LPLD_CAN_Receive_Interrupt
//  996  * �ú������ڴ���Msg�����������жϺ���
//  997  * 
//  998  * ����:
//  999  *    canx--����CAN����ͨ��
// 1000  *      |__CAN0 --CAN0��ģ��
// 1001  *      |__CAN1 --CAN1��ģ��
// 1002  *    msg_num ѡ����Ҫ��������жϵ�Msg������
// 1003  *      |___ MSG_NUM_0 --Msg������0
// 1004  *      |___ MSG_NUM_1 --Msg������1
// 1005  *      |___ MSG_NUM_2 --Msg������2
// 1006  *      |___ MSG_NUM_3 --Msg������3
// 1007  *      |___ MSG_NUM_4 --Msg������4
// 1008  *      ...... 
// 1009  *      |___ MSG_NUM_15 --Msg������15
// 1010  * ���:
// 1011  *    �� 
// 1012  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1013 static void LPLD_CAN_Receive_Interrupt(CAN_Type *canx, uint8 msg_num)
// 1014 {
LPLD_CAN_Receive_Interrupt:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
// 1015   if(LPLD_CAN_Interrupt_GetFlag(canx,msg_num) == 1)
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_Interrupt_GetFlag
        CMP      R0,#+1
        BNE.N    ??LPLD_CAN_Receive_Interrupt_0
// 1016   {
// 1017     //����������жϻص��������ڴ�ִ��
// 1018     if(canx == CAN0)
        LDR.N    R0,??DataTable19_5  ;; 0x40024000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_Receive_Interrupt_1
// 1019     {
// 1020       if( CAN0_ISR[msg_num] != NULL)
        LDR.N    R0,??DataTable19_25
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Receive_Interrupt_2
// 1021       {
// 1022           CAN0_ISR[msg_num]();
        LDR.N    R0,??DataTable19_25
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BLX      R0
        B.N      ??LPLD_CAN_Receive_Interrupt_2
// 1023       }
// 1024     }
// 1025     else if (canx == CAN1)
??LPLD_CAN_Receive_Interrupt_1:
        LDR.N    R0,??DataTable19_23  ;; 0x400a4000
        CMP      R4,R0
        BNE.N    ??LPLD_CAN_Receive_Interrupt_3
// 1026     {
// 1027       if( CAN1_ISR[msg_num] != NULL)
        LDR.N    R0,??DataTable19_26
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_Receive_Interrupt_2
// 1028       {
// 1029           CAN1_ISR[msg_num]();
        LDR.N    R0,??DataTable19_26
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR      R0,[R0, R5, LSL #+2]
        BLX      R0
        B.N      ??LPLD_CAN_Receive_Interrupt_2
// 1030       }
// 1031     }
// 1032     else
// 1033     {
// 1034       return;
??LPLD_CAN_Receive_Interrupt_3:
        B.N      ??LPLD_CAN_Receive_Interrupt_4
// 1035     }
// 1036     LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
??LPLD_CAN_Receive_Interrupt_2:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_CAN_Interrupt_ClearPending
// 1037   }
// 1038 }
??LPLD_CAN_Receive_Interrupt_0:
??LPLD_CAN_Receive_Interrupt_4:
        POP      {R0,R4,R5,PC}    ;; return
// 1039 /*
// 1040  * LPLD_CAN_MB_ISR
// 1041  * CANx�жϴ�����
// 1042  * 
// 1043  * ����:
// 1044  *    ��
// 1045  * ���:
// 1046  *    �� 
// 1047  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1048 static void LPLD_CAN_MB_ISR(void)
// 1049 {
LPLD_CAN_MB_ISR:
        PUSH     {R4,LR}
// 1050   uint8 msg_obj;
// 1051   
// 1052   for (msg_obj = 0; msg_obj < MSG_MAX_NO; msg_obj++)
        MOVS     R0,#+0
        MOVS     R4,R0
??LPLD_CAN_MB_ISR_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BGE.N    ??LPLD_CAN_MB_ISR_1
// 1053   {
// 1054     if(flexcan_msgobj_param_t[msg_obj].CAN_Canx != NULL)
        LDR.N    R0,??DataTable19_27
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R1,R4,#+4
        LDR      R0,[R1, R0]
        CMP      R0,#+0
        BEQ.N    ??LPLD_CAN_MB_ISR_2
// 1055     {
// 1056       if(flexcan_msgobj_param_t[msg_obj].CAN_MsgDirection == CAN_MSGOBJ_DIR_TX)
        LDR.N    R0,??DataTable19_27
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+4
        LDRB     R0,[R0, #+8]
        CMP      R0,#+2
        BNE.N    ??LPLD_CAN_MB_ISR_3
// 1057       {
// 1058         LPLD_CAN_Transmit_Interrupt(flexcan_msgobj_param_t[msg_obj].CAN_Canx,msg_obj);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable19_27
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+4
        LDR      R0,[R2, R0]
        BL       LPLD_CAN_Transmit_Interrupt
        B.N      ??LPLD_CAN_MB_ISR_2
// 1059       }
// 1060       else if(flexcan_msgobj_param_t[msg_obj].CAN_MsgDirection == CAN_MSGOBJ_DIR_RX)
??LPLD_CAN_MB_ISR_3:
        LDR.N    R0,??DataTable19_27
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R0,R0,R4, LSL #+4
        LDRB     R0,[R0, #+8]
        CMP      R0,#+1
        BNE.N    ??LPLD_CAN_MB_ISR_2
// 1061       {
// 1062         LPLD_CAN_Receive_Interrupt(flexcan_msgobj_param_t[msg_obj].CAN_Canx,msg_obj);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable19_27
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSLS     R2,R4,#+4
        LDR      R0,[R2, R0]
        BL       LPLD_CAN_Receive_Interrupt
// 1063       }
// 1064       else
// 1065       {}
// 1066     }
// 1067   }
??LPLD_CAN_MB_ISR_2:
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_MB_ISR_0
// 1068 }
??LPLD_CAN_MB_ISR_1:
        POP      {R4,PC}          ;; return
// 1069 /*
// 1070  * CAN0�жϴ�����
// 1071  * �������ļ�startup_K60.s�е��ж����������
// 1072  * �û������޸ģ������Զ������Ӧͨ���жϺ���
// 1073  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1074 void CAN0_MESS_IRQHandler(void)
// 1075 {
CAN0_MESS_IRQHandler:
        PUSH     {R7,LR}
// 1076 #if (UCOS_II > 0u)
// 1077   OS_CPU_SR  cpu_sr = 0u;
// 1078   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1079   OSIntEnter();
// 1080   OS_EXIT_CRITICAL();
// 1081 #endif
// 1082   LPLD_CAN_MB_ISR();
        BL       LPLD_CAN_MB_ISR
// 1083 #if (UCOS_II > 0u)
// 1084   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1085 #endif
// 1086 }      
        POP      {R0,PC}          ;; return
// 1087 //29:  CAM 0 OR'ed Message buffer (0-15)
// 1088 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1089 void CAN0_BUS_OFF_IRQHandler(void)
// 1090 {
// 1091   CAN0->ESR1 = CAN_ESR1_BOFFINT_MASK;
CAN0_BUS_OFF_IRQHandler:
        MOVS     R0,#+4
        LDR.N    R1,??DataTable19_28  ;; 0x40024020
        STR      R0,[R1, #+0]
// 1092 }   //38:  CAM 0 Bus Off
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1093 void CAN0_ERR_IRQHandler(void)
// 1094 {
// 1095   uint32_t status;
// 1096 
// 1097   status = CAN0->ESR1;
CAN0_ERR_IRQHandler:
        LDR.N    R1,??DataTable19_28  ;; 0x40024020
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
// 1098 
// 1099   if( status  & CAN_ESR1_ERRINT_MASK)
        LSLS     R1,R0,#+30
        BPL.N    ??CAN0_ERR_IRQHandler_0
// 1100   {
// 1101     CAN0->ESR1 = status;		
        LDR.N    R1,??DataTable19_28  ;; 0x40024020
        STR      R0,[R1, #+0]
// 1102   }	
// 1103 }       //39:  CAM 0 Error
??CAN0_ERR_IRQHandler_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1104 void CAN0_TW_IRQHandler(void)
// 1105 {
// 1106   CAN0->ESR1 = CAN_ESR1_TWRNINT_MASK;
CAN0_TW_IRQHandler:
        MOVS     R0,#+131072
        LDR.N    R1,??DataTable19_28  ;; 0x40024020
        STR      R0,[R1, #+0]
// 1107 }        //40:  CAM 0 Transmit Warning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1108 void CAN0_RW_IRQHandler(void)
// 1109 {
// 1110   CAN0->ESR1 = CAN_ESR1_RWRNINT_MASK;
CAN0_RW_IRQHandler:
        MOVS     R0,#+65536
        LDR.N    R1,??DataTable19_28  ;; 0x40024020
        STR      R0,[R1, #+0]
// 1111 }        //41:  CAM 0 Receive Warning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1112 void CAN0_WAKE_UP_IRQHandler(void){}   //42:  CAM 0 WakeUp
CAN0_WAKE_UP_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1113 void CAN0_IMEU_IRQHandler(void){}      //43:  CAM 0 Individual Matching Elements Update (IMEU)
CAN0_IMEU_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1114 void CAN0_LR_IRQHandler(void){}        //44:  CAM 0 Lost receive
CAN0_LR_IRQHandler:
        BX       LR               ;; return
// 1115 
// 1116 /*
// 1117  * CAN1�жϴ�����
// 1118  * �������ļ�startup_K60.s�е��ж����������
// 1119  * �û������޸ģ������Զ������Ӧͨ���жϺ���
// 1120  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1121 void CAN1_MESS_IRQHandler(void)
// 1122 {
CAN1_MESS_IRQHandler:
        PUSH     {R7,LR}
// 1123 #if (UCOS_II > 0u)
// 1124   OS_CPU_SR  cpu_sr = 0u;
// 1125   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
// 1126   OSIntEnter();
// 1127   OS_EXIT_CRITICAL();
// 1128 #endif
// 1129   LPLD_CAN_MB_ISR();
        BL       LPLD_CAN_MB_ISR
// 1130 #if (UCOS_II > 0u)
// 1131   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
// 1132 #endif
// 1133 }
        POP      {R0,PC}          ;; return
// 1134 //37:  CAM 1 OR'ed Message buffer (0-15)
// 1135 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1136 void CAN1_BUS_OFF_IRQHandler(void)
// 1137 {
// 1138   CAN1->ESR1 = CAN_ESR1_BOFFINT_MASK;
CAN1_BUS_OFF_IRQHandler:
        MOVS     R0,#+4
        LDR.N    R1,??DataTable19_29  ;; 0x400a4020
        STR      R0,[R1, #+0]
// 1139 }   //38:  CAM 1 Bus Off
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1140 void CAN1_ERR_IRQHandler(void)
// 1141 {
// 1142   uint32_t status;
// 1143 
// 1144   status = CAN1->ESR1;
CAN1_ERR_IRQHandler:
        LDR.N    R1,??DataTable19_29  ;; 0x400a4020
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
// 1145 
// 1146   if( status  & CAN_ESR1_ERRINT_MASK)
        LSLS     R1,R0,#+30
        BPL.N    ??CAN1_ERR_IRQHandler_0
// 1147   {
// 1148     CAN1->ESR1 = status;		
        LDR.N    R1,??DataTable19_29  ;; 0x400a4020
        STR      R0,[R1, #+0]
// 1149   }	
// 1150 }       //39:  CAM 1 Error
??CAN1_ERR_IRQHandler_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1151 void CAN1_TW_IRQHandler(void)
// 1152 {
// 1153   CAN1->ESR1 = CAN_ESR1_TWRNINT_MASK;
CAN1_TW_IRQHandler:
        MOVS     R0,#+131072
        LDR.N    R1,??DataTable19_29  ;; 0x400a4020
        STR      R0,[R1, #+0]
// 1154 }        //40:  CAM 1 Transmit Warning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1155 void CAN1_RW_IRQHandler(void)
// 1156 {
// 1157   CAN1->ESR1 = CAN_ESR1_RWRNINT_MASK;
CAN1_RW_IRQHandler:
        MOVS     R0,#+65536
        LDR.N    R1,??DataTable19_29  ;; 0x400a4020
        STR      R0,[R1, #+0]
// 1158 }        //41:  CAM 1 Receive Warning
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     0xf4241

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     0x40065000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     0x40024000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     0x4004a048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_10:
        DC32     0x4004a04c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_11:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_12:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_13:
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_14:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_15:
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_16:
        DC32     0x14585

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_17:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_18:
        DC32     0x1e848

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_19:
        DC32     0x3d090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_20:
        DC32     0x7a120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_21:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_22:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_23:
        DC32     0x400a4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_24:
        DC32     0x1ffc0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_25:
        DC32     CAN0_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_26:
        DC32     CAN1_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_27:
        DC32     flexcan_msgobj_param_t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_28:
        DC32     0x40024020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_29:
        DC32     0x400a4020

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1159 void CAN1_WAKE_UP_IRQHandler(void){}   //42:  CAM 1 WakeUp
CAN1_WAKE_UP_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1160 void CAN1_IMEU_IRQHandler(void){}      //43:  CAM 1 Individual Matching Elements Update (IMEU)
CAN1_IMEU_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1161 void CAN1_LR_IRQHandler(void){}        //44:  CAM 1 Lost receive
CAN1_LR_IRQHandler:
        BX       LR               ;; return

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
        DC8 5CH, 48H, 57H, 5FH, 43H, 41H, 4EH, 2EH
        DC8 63H, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC32 0, 0

        END
// 1162 
// 1163 
// 
//   384 bytes in section .bss
//    68 bytes in section .rodata
// 2 746 bytes in section .text
// 
// 2 746 bytes of CODE  memory
//    68 bytes of CONST memory
//   384 bytes of DATA  memory
//
//Errors: none
//Warnings: none
