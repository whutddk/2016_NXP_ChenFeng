///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       05/Mar/2016  08:12:20
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_I2C.c
//    Command line =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_I2C.c -D LPLD_K60 -D
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\HW_I2C.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC I2C0_IRQHandler
        PUBLIC I2C1_IRQHandler
        PUBLIC I2C_ISR
        PUBLIC LPLD_I2C_Deinit
        PUBLIC LPLD_I2C_DisableIrq
        PUBLIC LPLD_I2C_EnableIrq
        PUBLIC LPLD_I2C_Init
        PUBLIC LPLD_I2C_ReStart
        PUBLIC LPLD_I2C_ReadByte
        PUBLIC LPLD_I2C_SetMasterWR
        PUBLIC LPLD_I2C_Start
        PUBLIC LPLD_I2C_StartTrans
        PUBLIC LPLD_I2C_Stop
        PUBLIC LPLD_I2C_WaitAck
        PUBLIC LPLD_I2C_WriteByte

// D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_I2C.c
//    1 /*
//    2  * @file HW_I2C.c
//    3  * @version 3.02[By LPLD]
//    4  * @date 2013-11-22
//    5  * @brief I2C�ײ�ģ����غ���
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
        LDR.W    R2,??DataTable7  ;; 0xe000e100
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
        LDR.W    R2,??DataTable7_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R3,R0,#+5
        STR      R1,[R2, R3, LSL #+2]
        BX       LR               ;; return
//   24 #include "HW_I2C.h"
//   25 
//   26 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 I2C_ISR_CALLBACK I2C_ISR[2];
I2C_ISR:
        DS8 8
//   28 
//   29 /*
//   30  * LPLD_I2C_Init
//   31  * I2Cͨ�ó�ʼ���������ڸú�����ѡ��I2Cͨ����ѡ��I2C SCK����Ƶ�ʣ�
//   32  * ѡ��I2C SDA �� I2C SCL�����ţ�����I2C���жϻص�����
//   33  * 
//   34  * ����:
//   35  *    I2C_InitTypeDef--i2c_init_structure
//   36  *                     ���嶨���I2C_InitTypeDef
//   37  * ���:
//   38  *    0--���ô���
//   39  *    1--���óɹ�
//   40  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 uint8 LPLD_I2C_Init(I2C_InitTypeDef i2c_init_structure)
//   42 {
LPLD_I2C_Init:
        PUSH     {R0-R10,LR}
//   43   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//   44   uint8 bus_speed = i2c_init_structure.I2C_ICR;
        LDRB     R5,[SP, #+4]
//   45   PortPinsEnum_Type scl_pin = i2c_init_structure.I2C_SclPin;
        LDRB     R6,[SP, #+6]
//   46   PortPinsEnum_Type sda_pin = i2c_init_structure.I2C_SdaPin;
        LDRB     R7,[SP, #+7]
//   47   I2C_ISR_CALLBACK isr_func = i2c_init_structure.I2C_Isr;
        LDR      R8,[SP, #+12]
//   48   boolean ode = i2c_init_structure.I2C_OpenDrainEnable;
        LDRB     R9,[SP, #+8]
//   49   uint8 ode_mask = 0;
        MOVS     R10,#+0
//   50 
//   51   //������飬�ж�SCLƵ��
//   52   ASSERT( bus_speed <= 0x3F);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+64
        BLT.N    ??LPLD_I2C_Init_0
        MOVS     R1,#+52
        LDR.W    R0,??DataTable7_2
        BL       assert_failed
//   53   
//   54   if(ode == TRUE)
??LPLD_I2C_Init_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_I2C_Init_1
//   55   {
//   56     ode_mask = PORT_PCR_ODE_MASK;
        MOVS     R0,#+32
        MOV      R10,R0
//   57   }
//   58 
//   59   if(i2cx == I2C0)
??LPLD_I2C_Init_1:
        LDR.W    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Init_2
//   60   {
//   61 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   62     SIM->SCGC4 |= SIM_SCGC4_I2C0_MASK; //����I2C0ʱ��
        LDR.W    R0,??DataTable7_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable7_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   63 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   64     SIM->SCGC4 |= SIM_SCGC4_IIC0_MASK; //����I2C0ʱ��
//   65 #endif 
//   66     if(scl_pin == PTD8)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+100
        BNE.N    ??LPLD_I2C_Init_3
//   67     {
//   68       PORTD->PCR[8] = PORT_PCR_MUX(2) | ode_mask;         
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_5  ;; 0x4004c020
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_4
//   69     }
//   70     else if(scl_pin == PTB0) 
??LPLD_I2C_Init_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+32
        BNE.N    ??LPLD_I2C_Init_5
//   71     {
//   72       PORTB->PCR[0] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_6  ;; 0x4004a000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_4
//   73     }
//   74     else //scl_pin = PTB2
//   75     {
//   76       PORTB->PCR[2] = PORT_PCR_MUX(2) | ode_mask;
??LPLD_I2C_Init_5:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_7  ;; 0x4004a008
        STR      R0,[R1, #+0]
//   77     }
//   78 
//   79     if(sda_pin == PTD9)
??LPLD_I2C_Init_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+101
        BNE.N    ??LPLD_I2C_Init_6
//   80     {
//   81       PORTD->PCR[9] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_8  ;; 0x4004c024
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//   82     }
//   83     else if(sda_pin == PTB1) 
??LPLD_I2C_Init_6:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+33
        BNE.N    ??LPLD_I2C_Init_8
//   84     {
//   85       PORTB->PCR[1] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_9  ;; 0x4004a004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//   86     }
//   87     else //sda_pin = PTB3
//   88     {
//   89       PORTB->PCR[3] = PORT_PCR_MUX(2) | ode_mask; 
??LPLD_I2C_Init_8:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_10  ;; 0x4004a00c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//   90     }
//   91   }
//   92   else if(i2cx == I2C1)
??LPLD_I2C_Init_2:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Init_9
//   93   { 
//   94 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//   95     SIM->SCGC4 |= SIM_SCGC4_I2C1_MASK; //����I2C0ʱ��
        LDR.N    R0,??DataTable7_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   96 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   97     SIM->SCGC4 |= SIM_SCGC4_IIC1_MASK; //����I2C0ʱ��
//   98 #endif
//   99 
//  100     if(scl_pin == PTE1)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+125
        BNE.N    ??LPLD_I2C_Init_10
//  101     {
//  102       PORTE->PCR[1] = PORT_PCR_MUX(6) | ode_mask;         
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x600
        LDR.N    R1,??DataTable7_12  ;; 0x4004d004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_11
//  103     }
//  104     else //scl_pin = PTC10
//  105     {
//  106       PORTC->PCR[10] = PORT_PCR_MUX(2) | ode_mask;  
??LPLD_I2C_Init_10:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_13  ;; 0x4004b028
        STR      R0,[R1, #+0]
//  107     }
//  108 
//  109     if(sda_pin == PTE0)
??LPLD_I2C_Init_11:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+124
        BNE.N    ??LPLD_I2C_Init_12
//  110     {
//  111       PORTE->PCR[0] = PORT_PCR_MUX(6) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x600
        LDR.N    R1,??DataTable7_14  ;; 0x4004d000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//  112     }
//  113     else //sda_pin = PTC11
//  114     {
//  115       PORTC->PCR[11] = PORT_PCR_MUX(2) | ode_mask; 
??LPLD_I2C_Init_12:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_15  ;; 0x4004b02c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//  116     }
//  117   }
//  118   else
//  119     return 0;
??LPLD_I2C_Init_9:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Init_13
//  120   
//  121   if(i2c_init_structure.I2C_IntEnable == TRUE && isr_func != NULL)
??LPLD_I2C_Init_7:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+1
        BNE.N    ??LPLD_I2C_Init_14
        MOV      R0,R8
        CMP      R0,#+0
        BEQ.N    ??LPLD_I2C_Init_14
//  122   {
//  123     //����I2C�жϵ��ж�Դ��
//  124     //1,���1���ֽڴ���ʱ��IICIF��λ�����ж�;
//  125     //2,��Calling Addressƥ��ɹ�ʱ�����жϣ��ο�K60�ĵ�1456ҳI2Cx_S�Ĵ���IAASλ;
//  126     //3,�ӻ�ģʽ�µ������ٲö�ʧʱ��IICIF��λ�����ж�;
//  127     //  ��Ҫͬʱд1���II2Cx_S��ARBL��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  128     //4,���SMB�Ĵ�����SHTF2 interruptʹ�ܣ���SHTF2 timeoutʱIICIF��λ�����ж�;
//  129     //  ��Ҫͬʱд1���I2Cx_SMB��SLTF��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  130     //5,��SLT�Ĵ�����Ϊ0ʱ��SMBus��SCL low timer��������SLT��ֵʱIICIF��λ�����ж�;
//  131     //  ��Ҫͬʱд1���I2Cx_SMB��SHTF2��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  132     //6,��Wakeup ʹ�ܣ�I2C��ֹͣģʽ�½��յ�Wakeup�źţ��������ж�.
//  133 
//  134     i2cx->C1 |= I2C_C1_IICIE_MASK;
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x40
        STRB     R0,[R4, #+2]
//  135 
//  136     if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Init_15
//  137     {
//  138       I2C_ISR[0] = isr_func;
        LDR.N    R0,??DataTable7_16
        STR      R8,[R0, #+0]
        B.N      ??LPLD_I2C_Init_14
//  139     }
//  140     else if(i2cx == I2C0)
??LPLD_I2C_Init_15:
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Init_16
//  141     {
//  142       I2C_ISR[1] = isr_func;
        LDR.N    R0,??DataTable7_16
        STR      R8,[R0, #+4]
        B.N      ??LPLD_I2C_Init_14
//  143     }
//  144     else 
//  145       return 0;
??LPLD_I2C_Init_16:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Init_13
//  146   }
//  147 
//  148   //i2cx->C2 |= I2C_C2_HDRS_MASK;      //���I2C��������
//  149   i2cx->F  = I2C_F_ICR(bus_speed)|I2C_F_MULT(0);   //����I2Cx SCL BusSpeed
??LPLD_I2C_Init_14:
        ANDS     R0,R5,#0x3F
        STRB     R0,[R4, #+1]
//  150   i2cx->C1 |= I2C_C1_IICEN_MASK;      //ʹ��I2Cx
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x80
        STRB     R0,[R4, #+2]
//  151   
//  152   return 1;
        MOVS     R0,#+1
??LPLD_I2C_Init_13:
        ADD      SP,SP,#+16
        POP      {R4-R10,PC}      ;; return
//  153 }
//  154 
//  155 /*
//  156  * LPLD_I2C_Deinit
//  157  * I2Cģ�鷴��ʼ���������ڸú����йر�I2Cx����������ʱ�ӣ��ر�I2Cģ���
//  158  * ʱ�ӣ���ֹ�����жϡ�
//  159  *
//  160  * ����:
//  161  *    I2C_InitTypeDef--i2c_init_structure
//  162  *                     ���嶨���I2C_InitTypeDef
//  163  *
//  164  * ���:
//  165  *    ��
//  166  *
//  167  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  168 uint8 LPLD_I2C_Deinit(I2C_InitTypeDef i2c_init_structure)
//  169 {
LPLD_I2C_Deinit:
        PUSH     {R0-R4,LR}
//  170   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  171 
//  172   i2cx->C1 &= ~I2C_C1_IICEN_MASK;      //I2Cx
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0x7F
        STRB     R0,[R4, #+2]
//  173   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Deinit_0
//  174   {
//  175 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  176     SIM->SCGC4 |= SIM_SCGC4_I2C0_MASK; //����I2C0ʱ��
        LDR.N    R0,??DataTable7_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable7_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  177 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  178     SIM->SCGC4 |= SIM_SCGC4_IIC0_MASK; //����I2C0ʱ��
//  179 #endif
//  180     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_Deinit_1
//  181   }
//  182   else if (i2cx == I2C1)
??LPLD_I2C_Deinit_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Deinit_2
//  183   {
//  184 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  185     SIM->SCGC4 |= SIM_SCGC4_I2C1_MASK; //����I2C0ʱ��
        LDR.N    R0,??DataTable7_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  186 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  187     SIM->SCGC4 |= SIM_SCGC4_IIC1_MASK; //����I2C0ʱ��
//  188 #endif
//  189     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_Deinit_1
//  190   }
//  191   else
//  192   {
//  193     return 0;
??LPLD_I2C_Deinit_2:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Deinit_3
//  194   }
//  195   return 1;
??LPLD_I2C_Deinit_1:
        MOVS     R0,#+1
??LPLD_I2C_Deinit_3:
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
//  196 }
//  197 
//  198 /*
//  199  * LPLD_I2C_EnableIrq
//  200  * I2C�����ж�ʹ��
//  201  *
//  202  * ����:
//  203  *    I2C_InitTypeDef--i2c_init_structure
//  204  *                     ���嶨���I2C_InitTypeDef
//  205  *
//  206  * ���:
//  207  *    ��
//  208  *
//  209  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  210 void LPLD_I2C_EnableIrq(I2C_InitTypeDef i2c_init_structure)
//  211 {
LPLD_I2C_EnableIrq:
        PUSH     {R0-R4,LR}
//  212   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx; 
        LDR      R4,[SP, #+0]
//  213 
//  214   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_EnableIrq_0
//  215   {
//  216     enable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_I2C_EnableIrq_1
//  217   }
//  218   else if (i2cx == I2C1)
??LPLD_I2C_EnableIrq_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_EnableIrq_2
//  219   {
//  220     enable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_I2C_EnableIrq_1
//  221   }
//  222   else
//  223   {
//  224     return;
??LPLD_I2C_EnableIrq_2:
        B.N      ??LPLD_I2C_EnableIrq_3
//  225   }
//  226 }
??LPLD_I2C_EnableIrq_1:
??LPLD_I2C_EnableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  227 
//  228 /*
//  229  * LPLD_I2C_DisableIrq
//  230  * ��ֹI2C�����ж�
//  231  *
//  232  * ����:
//  233  *    I2C_InitTypeDef--i2c_init_structure
//  234  *                     ���嶨���I2C_InitTypeDef
//  235  *
//  236  * ���:
//  237  *    ��
//  238  *
//  239  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  240 void LPLD_I2C_DisableIrq(I2C_InitTypeDef i2c_init_structure)
//  241 {
LPLD_I2C_DisableIrq:
        PUSH     {R0-R4,LR}
//  242   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  243   i2cx->C1 &= ~I2C_C1_IICIE_MASK;
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R4, #+2]
//  244 
//  245   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_DisableIrq_0
//  246   {
//  247     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_DisableIrq_1
//  248   }
//  249   else if (i2cx == I2C1)
??LPLD_I2C_DisableIrq_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_DisableIrq_2
//  250   {
//  251     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_DisableIrq_1
//  252   }
//  253   else
//  254   {
//  255     return;
??LPLD_I2C_DisableIrq_2:
        B.N      ??LPLD_I2C_DisableIrq_3
//  256   }
//  257 }
??LPLD_I2C_DisableIrq_1:
??LPLD_I2C_DisableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  258 
//  259 /*
//  260  * LPLD_I2C_Start
//  261  * ����I2C��ʼ�ź�
//  262  * 
//  263  * ����:
//  264  *    i2cx--ѡ��I2Cģ���ͨ��
//  265  *      |__I2C0           --I2Cͨ��0
//  266  *      |__I2C1           --I2Cͨ��1
//  267  * ���:
//  268  *    ��
//  269  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  270 void LPLD_I2C_Start(I2C_Type *i2cx)
//  271 {
//  272   i2cx->C1 |= I2C_C1_TX_MASK ;
LPLD_I2C_Start:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x10
        STRB     R1,[R0, #+2]
//  273   i2cx->C1 |= I2C_C1_MST_MASK ;
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x20
        STRB     R1,[R0, #+2]
//  274 }
        BX       LR               ;; return
//  275 
//  276 /*
//  277  * LPLD_ReStart
//  278  * I2C�ٴβ�����ʼ�ź�
//  279  * 
//  280  * ����:
//  281  *    i2cx--ѡ��I2Cģ���ͨ��
//  282  *      |__I2C0           --I2Cͨ��0
//  283  *      |__I2C1           --I2Cͨ��1
//  284  * ���:
//  285  *    ��
//  286 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  287 void LPLD_I2C_ReStart(I2C_Type *i2cx)
//  288 {
//  289   i2cx->C1 |= I2C_C1_RSTA_MASK ;
LPLD_I2C_ReStart:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x4
        STRB     R1,[R0, #+2]
//  290 }
        BX       LR               ;; return
//  291 
//  292 /*
//  293  * LPLD_I2C_Stop
//  294  * ����I2Cֹͣ�ź�
//  295  * 
//  296  * ����:
//  297  *    i2cx--ѡ��I2Cģ���ͨ��
//  298  *      |__I2C0           --I2Cͨ��0
//  299  *      |__I2C1           --I2Cͨ��1
//  300  * ���:
//  301  *    ��
//  302  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  303 void LPLD_I2C_Stop(I2C_Type *i2cx)
//  304 {
//  305   i2cx->C1 &=(~I2C_C1_MST_MASK);
LPLD_I2C_Stop:
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R0, #+2]
//  306   i2cx->C1 &=(~I2C_C1_TX_MASK); 
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xEF
        STRB     R1,[R0, #+2]
//  307 }
        BX       LR               ;; return
//  308 
//  309 /*
//  310  * LPLD_I2C_WaitAck
//  311  * I2C���õȴ�Ӧ���źţ�������ȴ����ر��򲻵ȴ�
//  312  * 
//  313  * ����:
//  314  *    i2cx--ѡ��I2Cģ���ͨ��
//  315  *      |__I2C0           --I2Cͨ��0
//  316  *      |__I2C1           --I2Cͨ��1
//  317  *    is_wait--ѡ���Ƿ�ȴ�Ӧ��
//  318  *      |__I2C_ACK_OFF    --�رյȴ�Ack
//  319  *      |__I2C_ACK_ON     --�����ȴ�Ack�����ȴ�ACK�ź�
//  320  * ���:
//  321  *    ��
//  322  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  323 void LPLD_I2C_WaitAck(I2C_Type *i2cx, uint8 is_wait)
//  324 {
//  325   uint16 time_out;
//  326   if(is_wait == I2C_ACK_ON)
LPLD_I2C_WaitAck:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_I2C_WaitAck_0
//  327   {
//  328     while(!(i2cx->S & I2C_S_IICIF_MASK))
??LPLD_I2C_WaitAck_1:
        LDRB     R3,[R0, #+3]
        LSLS     R3,R3,#+30
        BMI.N    ??LPLD_I2C_WaitAck_2
//  329     {
//  330       if(time_out>60000) //����ȴ���ʱ��ǿ���˳�
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVW     R3,#+60001
        CMP      R2,R3
        BGE.N    ??LPLD_I2C_WaitAck_2
//  331         break;
//  332       else time_out++;
??LPLD_I2C_WaitAck_3:
        ADDS     R2,R2,#+1
        B.N      ??LPLD_I2C_WaitAck_1
//  333     }
//  334     i2cx->S |= I2C_S_IICIF_MASK;
??LPLD_I2C_WaitAck_2:
        LDRB     R3,[R0, #+3]
        ORRS     R3,R3,#0x2
        STRB     R3,[R0, #+3]
        B.N      ??LPLD_I2C_WaitAck_4
//  335   }
//  336   else
//  337   {
//  338     //�ر�I2C��ACK
//  339     i2cx->C1 |= I2C_C1_TXAK_MASK; 
??LPLD_I2C_WaitAck_0:
        LDRB     R3,[R0, #+2]
        ORRS     R3,R3,#0x8
        STRB     R3,[R0, #+2]
//  340   }
//  341 }
??LPLD_I2C_WaitAck_4:
        BX       LR               ;; return
//  342 
//  343 /*
//  344  * LPLD_I2C_Write
//  345  * I2C����һ���ֽڸ�Ŀ�ĵ�ַ�豸
//  346  * 
//  347  * ����:
//  348  *    i2cx--ѡ��I2Cģ���ͨ��
//  349  *      |__I2C0           --I2Cͨ��0
//  350  *      |__I2C1           --I2Cͨ��1
//  351  *    data8--Ҫ���͵��ֽ�����
//  352  * ���:
//  353  *    ��
//  354  *
//  355  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  356 void LPLD_I2C_WriteByte(I2C_Type *i2cx, uint8 data8)
//  357 {
//  358   i2cx->D = data8; 
LPLD_I2C_WriteByte:
        STRB     R1,[R0, #+4]
//  359 }
        BX       LR               ;; return
//  360 
//  361 /*
//  362  * LPLD_I2C_Read
//  363  * I2C���ⲿ�豸��һ���ֽ�
//  364  * 
//  365  * ����:
//  366  *    i2cx--ѡ��I2Cģ���ͨ��
//  367  *      |__I2C0           --I2Cͨ��0
//  368  *      |__I2C1           --I2Cͨ��1
//  369  * ���:
//  370  *    I2C��ȡ���ֽ� 
//  371  */
//  372 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  373 uint8 LPLD_I2C_ReadByte(I2C_Type *i2cx)
//  374 {
LPLD_I2C_ReadByte:
        MOVS     R1,R0
//  375   uint8 temp;
//  376   temp = i2cx->D; 
        LDRB     R2,[R1, #+4]
        MOVS     R0,R2
//  377   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  378 }
//  379 
//  380 /*
//  381  * LPLD_I2C_SetMasterWR
//  382  * I2C������дģʽ����
//  383  * 
//  384  * ����:
//  385  *    IICx--ѡ��I2Cģ���ͨ��
//  386  *      |__I2C0           --I2Cͨ��0
//  387  *      |__I2C1           --I2Cͨ��1
//  388  *    mode--��дģʽѡ��
//  389  *      |__I2C_MWSR         --����д
//  390  *      |__I2C_MRSW         --������
//  391  * ���:
//  392  *    ��
//  393  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  394 void LPLD_I2C_SetMasterWR(I2C_Type *i2cx, uint8 mode)
//  395 {
//  396   if(mode==I2C_MRSW) 
LPLD_I2C_SetMasterWR:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_I2C_SetMasterWR_0
//  397     i2cx->C1 &= (~I2C_C1_TX_MASK);
        LDRB     R2,[R0, #+2]
        ANDS     R2,R2,#0xEF
        STRB     R2,[R0, #+2]
        B.N      ??LPLD_I2C_SetMasterWR_1
//  398   else
//  399     i2cx->C1 |= ( I2C_C1_TX_MASK);
??LPLD_I2C_SetMasterWR_0:
        LDRB     R2,[R0, #+2]
        ORRS     R2,R2,#0x10
        STRB     R2,[R0, #+2]
//  400 }
??LPLD_I2C_SetMasterWR_1:
        BX       LR               ;; return
//  401 
//  402 /*
//  403  * LPLD_I2C_StartTrans
//  404  * I2C��ʼ���亯������Ҫ������Χ�豸��ַ�Ͷ�дģʽ
//  405  * 
//  406  * ����:
//  407  *    IICx--ѡ��I2Cģ���ͨ��
//  408  *      |__I2C0           --I2Cͨ��0
//  409  *      |__I2C1           --I2Cͨ��1
//  410  *    addr--��Χ�豸��ַ     
//  411  *    mode--��дģʽѡ��
//  412  *      |__I2C_MWSR         --����д
//  413  *      |__I2C_MRSW         --������
//  414  * ���:
//  415  *    ��
//  416  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  417 void LPLD_I2C_StartTrans(I2C_Type *i2cx, uint8 addr, uint8 mode)
//  418 {
LPLD_I2C_StartTrans:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  419   //I2C����start�ź�
//  420   LPLD_I2C_Start(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Start
//  421   //���ӻ���ַ��������дλ�ϳ�һ���ֽ�д��
//  422   LPLD_I2C_WriteByte(i2cx, (addr<<1)|mode );
        ORRS     R1,R6,R5, LSL #+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  423 }
        POP      {R4-R6,PC}       ;; return
//  424 
//  425 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  426 void I2C0_IRQHandler(void)
//  427 {
I2C0_IRQHandler:
        PUSH     {R7,LR}
//  428 #if (UCOS_II > 0u)
//  429   OS_CPU_SR  cpu_sr = 0u;
//  430   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  431   OSIntEnter();
//  432   OS_EXIT_CRITICAL();
//  433 #endif
//  434   if(I2C0->S & I2C_S_IICIF_MASK)
        LDR.N    R0,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_0
//  435   {
//  436     I2C_ISR[0]();
        LDR.N    R0,??DataTable7_16
        LDR      R0,[R0, #+0]
        BLX      R0
//  437     if(I2C0->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??I2C0_IRQHandler_1
//  438     {
//  439       I2C0->SMB |= I2C_SMB_SLTF_MASK;
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable7_18  ;; 0x40066008
        STRB     R0,[R1, #+0]
//  440     }
//  441     if(I2C0->SMB & I2C_SMB_SHTF2_MASK)
??I2C0_IRQHandler_1:
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_2
//  442     {
//  443       I2C0->SMB |= I2C_SMB_SHTF2_MASK;
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_18  ;; 0x40066008
        STRB     R0,[R1, #+0]
//  444     }
//  445     if(I2C0->S & I2C_S_ARBL_MASK)
??I2C0_IRQHandler_2:
        LDR.N    R0,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C0_IRQHandler_3
//  446     {
//  447       I2C0->S |= I2C_S_ARBL_MASK;
        LDR.N    R0,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable7_17  ;; 0x40066003
        STRB     R0,[R1, #+0]
//  448     }
//  449     I2C0->S |= I2C_S_IICIF_MASK;
??I2C0_IRQHandler_3:
        LDR.N    R0,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_17  ;; 0x40066003
        STRB     R0,[R1, #+0]
//  450   }
//  451 #if (UCOS_II > 0u)
//  452   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  453 #endif
//  454 }
??I2C0_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  455 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  456 void I2C1_IRQHandler(void)
//  457 {
I2C1_IRQHandler:
        PUSH     {R7,LR}
//  458 
//  459 #if (UCOS_II > 0u)
//  460   OS_CPU_SR  cpu_sr = 0u;
//  461   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  462   OSIntEnter();
//  463   OS_EXIT_CRITICAL();
//  464 #endif
//  465 
//  466   if(I2C1->S & I2C_S_IICIF_MASK)
        LDR.N    R0,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_0
//  467   {
//  468     I2C_ISR[1]();
        LDR.N    R0,??DataTable7_16
        LDR      R0,[R0, #+4]
        BLX      R0
//  469     if(I2C1->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??I2C1_IRQHandler_1
//  470     {
//  471       I2C1->SMB |= I2C_SMB_SLTF_MASK;
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable7_20  ;; 0x40067008
        STRB     R0,[R1, #+0]
//  472     }
//  473     if(I2C1->SMB & I2C_SMB_SHTF2_MASK)
??I2C1_IRQHandler_1:
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_2
//  474     {
//  475       I2C1->SMB |= I2C_SMB_SHTF2_MASK;
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_20  ;; 0x40067008
        STRB     R0,[R1, #+0]
//  476     }
//  477     if(I2C1->S & I2C_S_ARBL_MASK)
??I2C1_IRQHandler_2:
        LDR.N    R0,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C1_IRQHandler_3
//  478     {
//  479       I2C1->S |= I2C_S_ARBL_MASK;
        LDR.N    R0,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable7_19  ;; 0x40067003
        STRB     R0,[R1, #+0]
//  480     }
//  481     I2C1->S |= I2C_S_IICIF_MASK;
??I2C1_IRQHandler_3:
        LDR.N    R0,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_19  ;; 0x40067003
        STRB     R0,[R1, #+0]
//  482   }
//  483   
//  484 #if (UCOS_II > 0u)
//  485   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  486 #endif
//  487 }
??I2C1_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x40067000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     I2C_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     0x40066003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     0x40066008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     0x40067003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     0x40067008

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
        DC8 57H, 5CH, 48H, 57H, 5FH, 49H, 32H, 43H
        DC8 2EH, 63H, 0
        DC8 0

        END
//  488 
//  489 
//  490 
// 
//   8 bytes in section .bss
//  52 bytes in section .rodata
// 976 bytes in section .text
// 
// 976 bytes of CODE  memory
//  52 bytes of CONST memory
//   8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
