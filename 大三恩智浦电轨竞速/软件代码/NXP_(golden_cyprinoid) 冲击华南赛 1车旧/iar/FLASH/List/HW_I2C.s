///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:48
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_I2C.c
//    Command line =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_I2C.c -D
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
//        ��������� 1��\iar\FLASH\List\HW_I2C.s
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

// C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_I2C.c
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
//   61     SIM->SCGC4 |= SIM_SCGC4_I2C0_MASK; //����I2C0ʱ��
        LDR.W    R0,??DataTable7_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable7_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   62 
//   63     if(scl_pin == PTD8)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+100
        BNE.N    ??LPLD_I2C_Init_3
//   64     {
//   65       PORTD->PCR[8] = PORT_PCR_MUX(2) | ode_mask;         
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_5  ;; 0x4004c020
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_4
//   66     }
//   67     else if(scl_pin == PTB0) 
??LPLD_I2C_Init_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+32
        BNE.N    ??LPLD_I2C_Init_5
//   68     {
//   69       PORTB->PCR[0] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_6  ;; 0x4004a000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_4
//   70     }
//   71     else //scl_pin = PTB2
//   72     {
//   73       PORTB->PCR[2] = PORT_PCR_MUX(2) | ode_mask;
??LPLD_I2C_Init_5:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_7  ;; 0x4004a008
        STR      R0,[R1, #+0]
//   74     }
//   75 
//   76     if(sda_pin == PTD9)
??LPLD_I2C_Init_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+101
        BNE.N    ??LPLD_I2C_Init_6
//   77     {
//   78       PORTD->PCR[9] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_8  ;; 0x4004c024
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//   79     }
//   80     else if(sda_pin == PTB1) 
??LPLD_I2C_Init_6:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+33
        BNE.N    ??LPLD_I2C_Init_8
//   81     {
//   82       PORTB->PCR[1] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_9  ;; 0x4004a004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//   83     }
//   84     else //sda_pin = PTB3
//   85     {
//   86       PORTB->PCR[3] = PORT_PCR_MUX(2) | ode_mask; 
??LPLD_I2C_Init_8:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_10  ;; 0x4004a00c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//   87     }
//   88   }
//   89   else if(i2cx == I2C1)
??LPLD_I2C_Init_2:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Init_9
//   90   { 
//   91     SIM->SCGC4 |= SIM_SCGC4_I2C1_MASK; //����I2C1ʱ��
        LDR.N    R0,??DataTable7_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   92 
//   93     if(scl_pin == PTE1)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+125
        BNE.N    ??LPLD_I2C_Init_10
//   94     {
//   95       PORTE->PCR[1] = PORT_PCR_MUX(6) | ode_mask;         
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x600
        LDR.N    R1,??DataTable7_12  ;; 0x4004d004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_11
//   96     }
//   97     else //scl_pin = PTC10
//   98     {
//   99       PORTC->PCR[10] = PORT_PCR_MUX(2) | ode_mask;  
??LPLD_I2C_Init_10:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_13  ;; 0x4004b028
        STR      R0,[R1, #+0]
//  100     }
//  101 
//  102     if(sda_pin == PTE0)
??LPLD_I2C_Init_11:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+124
        BNE.N    ??LPLD_I2C_Init_12
//  103     {
//  104       PORTE->PCR[0] = PORT_PCR_MUX(6) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x600
        LDR.N    R1,??DataTable7_14  ;; 0x4004d000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//  105     }
//  106     else //sda_pin = PTC11
//  107     {
//  108       PORTC->PCR[11] = PORT_PCR_MUX(2) | ode_mask; 
??LPLD_I2C_Init_12:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable7_15  ;; 0x4004b02c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_I2C_Init_7
//  109     }
//  110   }
//  111   else
//  112     return 0;
??LPLD_I2C_Init_9:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Init_13
//  113   
//  114   if(i2c_init_structure.I2C_IntEnable == TRUE && isr_func != NULL)
??LPLD_I2C_Init_7:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+1
        BNE.N    ??LPLD_I2C_Init_14
        MOV      R0,R8
        CMP      R0,#+0
        BEQ.N    ??LPLD_I2C_Init_14
//  115   {
//  116     //����I2C�жϵ��ж�Դ��
//  117     //1,���1���ֽڴ���ʱ��IICIF��λ�����ж�;
//  118     //2,��Calling Addressƥ��ɹ�ʱ�����жϣ��ο�K60�ĵ�1456ҳI2Cx_S�Ĵ���IAASλ;
//  119     //3,�ӻ�ģʽ�µ������ٲö�ʧʱ��IICIF��λ�����ж�;
//  120     //  ��Ҫͬʱд1���II2Cx_S��ARBL��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  121     //4,���SMB�Ĵ�����SHTF2 interruptʹ�ܣ���SHTF2 timeoutʱIICIF��λ�����ж�;
//  122     //  ��Ҫͬʱд1���I2Cx_SMB��SLTF��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  123     //5,��SLT�Ĵ�����Ϊ0ʱ��SMBus��SCL low timer��������SLT��ֵʱIICIF��λ�����ж�;
//  124     //  ��Ҫͬʱд1���I2Cx_SMB��SHTF2��־λ�� I2Cx_S�� IICIF�ı�־λ;
//  125     //6,��Wakeup ʹ�ܣ�I2C��ֹͣģʽ�½��յ�Wakeup�źţ��������ж�.
//  126 
//  127     i2cx->C1 |= I2C_C1_IICIE_MASK;
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x40
        STRB     R0,[R4, #+2]
//  128 
//  129     if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Init_15
//  130     {
//  131       I2C_ISR[0] = isr_func;
        LDR.N    R0,??DataTable7_16
        STR      R8,[R0, #+0]
        B.N      ??LPLD_I2C_Init_14
//  132     }
//  133     else if(i2cx == I2C0)
??LPLD_I2C_Init_15:
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Init_16
//  134     {
//  135       I2C_ISR[1] = isr_func;
        LDR.N    R0,??DataTable7_16
        STR      R8,[R0, #+4]
        B.N      ??LPLD_I2C_Init_14
//  136     }
//  137     else 
//  138       return 0;
??LPLD_I2C_Init_16:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Init_13
//  139   }
//  140 
//  141   //i2cx->C2 |= I2C_C2_HDRS_MASK;      //���I2C��������
//  142   i2cx->F  = I2C_F_ICR(bus_speed)|I2C_F_MULT(0);   //����I2Cx SCL BusSpeed
??LPLD_I2C_Init_14:
        ANDS     R0,R5,#0x3F
        STRB     R0,[R4, #+1]
//  143   i2cx->C1 |= I2C_C1_IICEN_MASK;      //ʹ��I2Cx
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x80
        STRB     R0,[R4, #+2]
//  144   
//  145   return 1;
        MOVS     R0,#+1
??LPLD_I2C_Init_13:
        ADD      SP,SP,#+16
        POP      {R4-R10,PC}      ;; return
//  146 }
//  147 
//  148 /*
//  149  * LPLD_I2C_Deinit
//  150  * I2Cģ�鷴��ʼ���������ڸú����йر�I2Cx����������ʱ�ӣ��ر�I2Cģ���
//  151  * ʱ�ӣ���ֹ�����жϡ�
//  152  *
//  153  * ����:
//  154  *    I2C_InitTypeDef--i2c_init_structure
//  155  *                     ���嶨���I2C_InitTypeDef
//  156  *
//  157  * ���:
//  158  *    ��
//  159  *
//  160  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  161 uint8 LPLD_I2C_Deinit(I2C_InitTypeDef i2c_init_structure)
//  162 {
LPLD_I2C_Deinit:
        PUSH     {R0-R4,LR}
//  163   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  164 
//  165   i2cx->C1 &= ~I2C_C1_IICEN_MASK;      //I2Cx
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0x7F
        STRB     R0,[R4, #+2]
//  166   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Deinit_0
//  167   {
//  168     SIM->SCGC4 &= ~SIM_SCGC4_I2C0_MASK; //�ر�I2C0ʱ��
        LDR.N    R0,??DataTable7_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x40
        LDR.N    R1,??DataTable7_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  169     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_Deinit_1
//  170   }
//  171   else if (i2cx == I2C1)
??LPLD_I2C_Deinit_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_Deinit_2
//  172   {
//  173     SIM->SCGC4 &= ~SIM_SCGC4_I2C1_MASK; //�ر�I2C1ʱ��
        LDR.N    R0,??DataTable7_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x80
        LDR.N    R1,??DataTable7_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  174     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_Deinit_1
//  175   }
//  176   else
//  177   {
//  178     return 0;
??LPLD_I2C_Deinit_2:
        MOVS     R0,#+0
        B.N      ??LPLD_I2C_Deinit_3
//  179   }
//  180   return 1;
??LPLD_I2C_Deinit_1:
        MOVS     R0,#+1
??LPLD_I2C_Deinit_3:
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
//  181 }
//  182 
//  183 /*
//  184  * LPLD_I2C_EnableIrq
//  185  * I2C�����ж�ʹ��
//  186  *
//  187  * ����:
//  188  *    I2C_InitTypeDef--i2c_init_structure
//  189  *                     ���嶨���I2C_InitTypeDef
//  190  *
//  191  * ���:
//  192  *    ��
//  193  *
//  194  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 void LPLD_I2C_EnableIrq(I2C_InitTypeDef i2c_init_structure)
//  196 {
LPLD_I2C_EnableIrq:
        PUSH     {R0-R4,LR}
//  197   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx; 
        LDR      R4,[SP, #+0]
//  198 
//  199   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_EnableIrq_0
//  200   {
//  201     enable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_I2C_EnableIrq_1
//  202   }
//  203   else if (i2cx == I2C1)
??LPLD_I2C_EnableIrq_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_EnableIrq_2
//  204   {
//  205     enable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_I2C_EnableIrq_1
//  206   }
//  207   else
//  208   {
//  209     return;
??LPLD_I2C_EnableIrq_2:
        B.N      ??LPLD_I2C_EnableIrq_3
//  210   }
//  211 }
??LPLD_I2C_EnableIrq_1:
??LPLD_I2C_EnableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  212 
//  213 /*
//  214  * LPLD_I2C_DisableIrq
//  215  * ��ֹI2C�����ж�
//  216  *
//  217  * ����:
//  218  *    I2C_InitTypeDef--i2c_init_structure
//  219  *                     ���嶨���I2C_InitTypeDef
//  220  *
//  221  * ���:
//  222  *    ��
//  223  *
//  224  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  225 void LPLD_I2C_DisableIrq(I2C_InitTypeDef i2c_init_structure)
//  226 {
LPLD_I2C_DisableIrq:
        PUSH     {R0-R4,LR}
//  227   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  228   i2cx->C1 &= ~I2C_C1_IICIE_MASK;
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R4, #+2]
//  229 
//  230   if(i2cx == I2C0)
        LDR.N    R0,??DataTable7_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_DisableIrq_0
//  231   {
//  232     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_DisableIrq_1
//  233   }
//  234   else if (i2cx == I2C1)
??LPLD_I2C_DisableIrq_0:
        LDR.N    R0,??DataTable7_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??LPLD_I2C_DisableIrq_2
//  235   {
//  236     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_I2C_DisableIrq_1
//  237   }
//  238   else
//  239   {
//  240     return;
??LPLD_I2C_DisableIrq_2:
        B.N      ??LPLD_I2C_DisableIrq_3
//  241   }
//  242 }
??LPLD_I2C_DisableIrq_1:
??LPLD_I2C_DisableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  243 
//  244 /*
//  245  * LPLD_I2C_Start
//  246  * ����I2C��ʼ�ź�
//  247  * 
//  248  * ����:
//  249  *    i2cx--ѡ��I2Cģ���ͨ��
//  250  *      |__I2C0           --I2Cͨ��0
//  251  *      |__I2C1           --I2Cͨ��1
//  252  * ���:
//  253  *    ��
//  254  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  255 void LPLD_I2C_Start(I2C_Type *i2cx)
//  256 {
//  257   i2cx->C1 |= I2C_C1_TX_MASK ;
LPLD_I2C_Start:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x10
        STRB     R1,[R0, #+2]
//  258   i2cx->C1 |= I2C_C1_MST_MASK ;
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x20
        STRB     R1,[R0, #+2]
//  259 }
        BX       LR               ;; return
//  260 
//  261 /*
//  262  * LPLD_ReStart
//  263  * I2C�ٴβ�����ʼ�ź�
//  264  * 
//  265  * ����:
//  266  *    i2cx--ѡ��I2Cģ���ͨ��
//  267  *      |__I2C0           --I2Cͨ��0
//  268  *      |__I2C1           --I2Cͨ��1
//  269  * ���:
//  270  *    ��
//  271 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  272 void LPLD_I2C_ReStart(I2C_Type *i2cx)
//  273 {
//  274   i2cx->C1 |= I2C_C1_RSTA_MASK ;
LPLD_I2C_ReStart:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x4
        STRB     R1,[R0, #+2]
//  275 }
        BX       LR               ;; return
//  276 
//  277 /*
//  278  * LPLD_I2C_Stop
//  279  * ����I2Cֹͣ�ź�
//  280  * 
//  281  * ����:
//  282  *    i2cx--ѡ��I2Cģ���ͨ��
//  283  *      |__I2C0           --I2Cͨ��0
//  284  *      |__I2C1           --I2Cͨ��1
//  285  * ���:
//  286  *    ��
//  287  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  288 void LPLD_I2C_Stop(I2C_Type *i2cx)
//  289 {
//  290   i2cx->C1 &=(~I2C_C1_MST_MASK);
LPLD_I2C_Stop:
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R0, #+2]
//  291   i2cx->C1 &=(~I2C_C1_TX_MASK); 
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xEF
        STRB     R1,[R0, #+2]
//  292 }
        BX       LR               ;; return
//  293 
//  294 /*
//  295  * LPLD_I2C_WaitAck
//  296  * I2C���õȴ�Ӧ���źţ�������ȴ����ر��򲻵ȴ�
//  297  * 
//  298  * ����:
//  299  *    i2cx--ѡ��I2Cģ���ͨ��
//  300  *      |__I2C0           --I2Cͨ��0
//  301  *      |__I2C1           --I2Cͨ��1
//  302  *    is_wait--ѡ���Ƿ�ȴ�Ӧ��
//  303  *      |__I2C_ACK_OFF    --�رյȴ�Ack
//  304  *      |__I2C_ACK_ON     --�����ȴ�Ack�����ȴ�ACK�ź�
//  305  * ���:
//  306  *    ��
//  307  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  308 void LPLD_I2C_WaitAck(I2C_Type *i2cx, uint8 is_wait)
//  309 {
//  310   uint16 time_out;
//  311   if(is_wait == I2C_ACK_ON)
LPLD_I2C_WaitAck:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_I2C_WaitAck_0
//  312   {
//  313     while(!(i2cx->S & I2C_S_IICIF_MASK))
??LPLD_I2C_WaitAck_1:
        LDRB     R3,[R0, #+3]
        LSLS     R3,R3,#+30
        BMI.N    ??LPLD_I2C_WaitAck_2
//  314     {
//  315       if(time_out>60000) //����ȴ���ʱ��ǿ���˳�
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVW     R3,#+60001
        CMP      R2,R3
        BGE.N    ??LPLD_I2C_WaitAck_2
//  316         break;
//  317       else time_out++;
??LPLD_I2C_WaitAck_3:
        ADDS     R2,R2,#+1
        B.N      ??LPLD_I2C_WaitAck_1
//  318     }
//  319     i2cx->S |= I2C_S_IICIF_MASK;
??LPLD_I2C_WaitAck_2:
        LDRB     R3,[R0, #+3]
        ORRS     R3,R3,#0x2
        STRB     R3,[R0, #+3]
        B.N      ??LPLD_I2C_WaitAck_4
//  320   }
//  321   else
//  322   {
//  323     //�ر�I2C��ACK
//  324     i2cx->C1 |= I2C_C1_TXAK_MASK; 
??LPLD_I2C_WaitAck_0:
        LDRB     R3,[R0, #+2]
        ORRS     R3,R3,#0x8
        STRB     R3,[R0, #+2]
//  325   }
//  326 }
??LPLD_I2C_WaitAck_4:
        BX       LR               ;; return
//  327 
//  328 /*
//  329  * LPLD_I2C_Write
//  330  * I2C����һ���ֽڸ�Ŀ�ĵ�ַ�豸
//  331  * 
//  332  * ����:
//  333  *    i2cx--ѡ��I2Cģ���ͨ��
//  334  *      |__I2C0           --I2Cͨ��0
//  335  *      |__I2C1           --I2Cͨ��1
//  336  *    data8--Ҫ���͵��ֽ�����
//  337  * ���:
//  338  *    ��
//  339  *
//  340  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  341 void LPLD_I2C_WriteByte(I2C_Type *i2cx, uint8 data8)
//  342 {
//  343   i2cx->D = data8; 
LPLD_I2C_WriteByte:
        STRB     R1,[R0, #+4]
//  344 }
        BX       LR               ;; return
//  345 
//  346 /*
//  347  * LPLD_I2C_Read
//  348  * I2C���ⲿ�豸��һ���ֽ�
//  349  * 
//  350  * ����:
//  351  *    i2cx--ѡ��I2Cģ���ͨ��
//  352  *      |__I2C0           --I2Cͨ��0
//  353  *      |__I2C1           --I2Cͨ��1
//  354  * ���:
//  355  *    I2C��ȡ���ֽ� 
//  356  */
//  357 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  358 uint8 LPLD_I2C_ReadByte(I2C_Type *i2cx)
//  359 {
LPLD_I2C_ReadByte:
        MOVS     R1,R0
//  360   uint8 temp;
//  361   temp = i2cx->D; 
        LDRB     R2,[R1, #+4]
        MOVS     R0,R2
//  362   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  363 }
//  364 
//  365 /*
//  366  * LPLD_I2C_SetMasterWR
//  367  * I2C������дģʽ����
//  368  * 
//  369  * ����:
//  370  *    IICx--ѡ��I2Cģ���ͨ��
//  371  *      |__I2C0           --I2Cͨ��0
//  372  *      |__I2C1           --I2Cͨ��1
//  373  *    mode--��дģʽѡ��
//  374  *      |__I2C_MWSR         --����д
//  375  *      |__I2C_MRSW         --������
//  376  * ���:
//  377  *    ��
//  378  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  379 void LPLD_I2C_SetMasterWR(I2C_Type *i2cx, uint8 mode)
//  380 {
//  381   if(mode==I2C_MRSW) 
LPLD_I2C_SetMasterWR:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??LPLD_I2C_SetMasterWR_0
//  382     i2cx->C1 &= (~I2C_C1_TX_MASK);
        LDRB     R2,[R0, #+2]
        ANDS     R2,R2,#0xEF
        STRB     R2,[R0, #+2]
        B.N      ??LPLD_I2C_SetMasterWR_1
//  383   else
//  384     i2cx->C1 |= ( I2C_C1_TX_MASK);
??LPLD_I2C_SetMasterWR_0:
        LDRB     R2,[R0, #+2]
        ORRS     R2,R2,#0x10
        STRB     R2,[R0, #+2]
//  385 }
??LPLD_I2C_SetMasterWR_1:
        BX       LR               ;; return
//  386 
//  387 /*
//  388  * LPLD_I2C_StartTrans
//  389  * I2C��ʼ���亯������Ҫ������Χ�豸��ַ�Ͷ�дģʽ
//  390  * 
//  391  * ����:
//  392  *    IICx--ѡ��I2Cģ���ͨ��
//  393  *      |__I2C0           --I2Cͨ��0
//  394  *      |__I2C1           --I2Cͨ��1
//  395  *    addr--��Χ�豸��ַ     
//  396  *    mode--��дģʽѡ��
//  397  *      |__I2C_MWSR         --����д
//  398  *      |__I2C_MRSW         --������
//  399  * ���:
//  400  *    ��
//  401  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  402 void LPLD_I2C_StartTrans(I2C_Type *i2cx, uint8 addr, uint8 mode)
//  403 {
LPLD_I2C_StartTrans:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  404   //I2C����start�ź�
//  405   LPLD_I2C_Start(i2cx);
        MOVS     R0,R4
        BL       LPLD_I2C_Start
//  406   //���ӻ���ַ��������дλ�ϳ�һ���ֽ�д��
//  407   LPLD_I2C_WriteByte(i2cx, (addr<<1)|mode );
        ORRS     R1,R6,R5, LSL #+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_I2C_WriteByte
//  408 }
        POP      {R4-R6,PC}       ;; return
//  409 
//  410 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  411 void I2C0_IRQHandler(void)
//  412 {
I2C0_IRQHandler:
        PUSH     {R7,LR}
//  413 #if (UCOS_II > 0u)
//  414   OS_CPU_SR  cpu_sr = 0u;
//  415   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  416   OSIntEnter();
//  417   OS_EXIT_CRITICAL();
//  418 #endif
//  419   if(I2C0->S & I2C_S_IICIF_MASK)
        LDR.N    R0,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_0
//  420   {
//  421     I2C_ISR[0]();
        LDR.N    R0,??DataTable7_16
        LDR      R0,[R0, #+0]
        BLX      R0
//  422     if(I2C0->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??I2C0_IRQHandler_1
//  423     {
//  424       I2C0->SMB |= I2C_SMB_SLTF_MASK;
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable7_18  ;; 0x40066008
        STRB     R0,[R1, #+0]
//  425     }
//  426     if(I2C0->SMB & I2C_SMB_SHTF2_MASK)
??I2C0_IRQHandler_1:
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_2
//  427     {
//  428       I2C0->SMB |= I2C_SMB_SHTF2_MASK;
        LDR.N    R0,??DataTable7_18  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_18  ;; 0x40066008
        STRB     R0,[R1, #+0]
//  429     }
//  430     if(I2C0->S & I2C_S_ARBL_MASK)
??I2C0_IRQHandler_2:
        LDR.N    R0,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C0_IRQHandler_3
//  431     {
//  432       I2C0->S |= I2C_S_ARBL_MASK;
        LDR.N    R0,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable7_17  ;; 0x40066003
        STRB     R0,[R1, #+0]
//  433     }
//  434     I2C0->S |= I2C_S_IICIF_MASK;
??I2C0_IRQHandler_3:
        LDR.N    R0,??DataTable7_17  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_17  ;; 0x40066003
        STRB     R0,[R1, #+0]
//  435   }
//  436 #if (UCOS_II > 0u)
//  437   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  438 #endif
//  439 }
??I2C0_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  440 //HW���жϺ������û��������

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  441 void I2C1_IRQHandler(void)
//  442 {
I2C1_IRQHandler:
        PUSH     {R7,LR}
//  443 
//  444 #if (UCOS_II > 0u)
//  445   OS_CPU_SR  cpu_sr = 0u;
//  446   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  447   OSIntEnter();
//  448   OS_EXIT_CRITICAL();
//  449 #endif
//  450 
//  451   if(I2C1->S & I2C_S_IICIF_MASK)
        LDR.N    R0,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_0
//  452   {
//  453     I2C_ISR[1]();
        LDR.N    R0,??DataTable7_16
        LDR      R0,[R0, #+4]
        BLX      R0
//  454     if(I2C1->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??I2C1_IRQHandler_1
//  455     {
//  456       I2C1->SMB |= I2C_SMB_SLTF_MASK;
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable7_20  ;; 0x40067008
        STRB     R0,[R1, #+0]
//  457     }
//  458     if(I2C1->SMB & I2C_SMB_SHTF2_MASK)
??I2C1_IRQHandler_1:
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_2
//  459     {
//  460       I2C1->SMB |= I2C_SMB_SHTF2_MASK;
        LDR.N    R0,??DataTable7_20  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_20  ;; 0x40067008
        STRB     R0,[R1, #+0]
//  461     }
//  462     if(I2C1->S & I2C_S_ARBL_MASK)
??I2C1_IRQHandler_2:
        LDR.N    R0,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C1_IRQHandler_3
//  463     {
//  464       I2C1->S |= I2C_S_ARBL_MASK;
        LDR.N    R0,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable7_19  ;; 0x40067003
        STRB     R0,[R1, #+0]
//  465     }
//  466     I2C1->S |= I2C_S_IICIF_MASK;
??I2C1_IRQHandler_3:
        LDR.N    R0,??DataTable7_19  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_19  ;; 0x40067003
        STRB     R0,[R1, #+0]
//  467   }
//  468   
//  469 #if (UCOS_II > 0u)
//  470   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  471 #endif
//  472 }
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
        DC8 43H, 3AH, 5CH, 0B0H, 0D9H, 0B6H, 0C8H, 0D4H
        DC8 0C6H, 0CDH, 0ACH, 0B2H, 0BDH, 0C5H, 0CCH, 5CH
        DC8 0B1H, 0C8H, 0C8H, 0FCH, 0B4H, 0FAH, 0C2H, 0EBH
        DC8 5CH, 4CH, 50H, 4CH, 44H, 5FH, 4FH, 53H
        DC8 4BH, 69H, 6EH, 65H, 74H, 69H, 73H, 5FH
        DC8 56H, 33H, 5CH, 6CH, 69H, 62H, 5CH, 4CH
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 48H
        DC8 57H, 5FH, 49H, 32H, 43H, 2EH, 63H, 0

        END
//  473 
//  474 
//  475 
// 
//   8 bytes in section .bss
//  64 bytes in section .rodata
// 976 bytes in section .text
// 
// 976 bytes of CODE  memory
//  64 bytes of CONST memory
//   8 bytes of DATA  memory
//
//Errors: none
//Warnings: none
