///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:52
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_TSI.c
//    Command line =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_TSI.c -D
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
//        ��������� 1��\iar\FLASH\List\HW_TSI.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC LPLD_TSI_Deinit
        PUBLIC LPLD_TSI_Init
        PUBLIC LPLD_TSI_IsChxTouched
        PUBLIC TSI_CNTR
        PUBLIC TSI_ChxBaseVal
        PUBLIC TSI_IRQHandler
        PUBLIC TSI_ISR
        PUBLIC TSI_PORT

// C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_TSI.c
//    1 /**
//    2  * @file HW_TSI.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief TSI�ײ�ģ����غ���
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
//   24 #include "HW_TSI.h"
//   25 
//   26 
//   27 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   28 TSI_ISR_CALLBACK TSI_ISR[2];
TSI_ISR:
        DS8 8
//   29 
//   30 //ͨ����׼ֵ

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 uint16 TSI_ChxBaseVal[16];
TSI_ChxBaseVal:
        DS8 32
//   32 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   33 const uint16* TSI_CNTR[16]={(uint16*)&TSI0->CNTR1, (uint16*)(&TSI0->CNTR1)+1,
TSI_CNTR:
        DATA
        DC32 40045100H, 40045102H, 40045104H, 40045106H, 40045108H, 4004510AH
        DC32 4004510CH, 4004510EH, 40045110H, 40045112H, 40045114H, 40045116H
        DC32 40045118H, 4004511AH, 4004511CH, 4004511EH
//   34                             (uint16*)&TSI0->CNTR3, (uint16*)(&TSI0->CNTR3)+1,
//   35                             (uint16*)&TSI0->CNTR5, (uint16*)(&TSI0->CNTR5)+1,
//   36                             (uint16*)&TSI0->CNTR7, (uint16*)(&TSI0->CNTR7)+1,
//   37                             (uint16*)&TSI0->CNTR9, (uint16*)(&TSI0->CNTR9)+1,
//   38                             (uint16*)&TSI0->CNTR11, (uint16*)(&TSI0->CNTR11)+1,
//   39                             (uint16*)&TSI0->CNTR13, (uint16*)(&TSI0->CNTR13)+1,
//   40                             (uint16*)&TSI0->CNTR15, (uint16*)(&TSI0->CNTR15)+1}; 
//   41  

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   42 const uint32* TSI_PORT[32]={(uint32*)&PORTB->PCR[0], (uint32*)&PORTA->PCR[0], (uint32*)&PORTA->PCR[1], (uint32*)&PORTA->PCR[2],
TSI_PORT:
        DATA
        DC32 4004A000H, 40049000H, 40049004H, 40049008H, 4004900CH, 40049010H
        DC32 4004A004H, 4004A008H, 4004A00CH, 4004A040H, 4004A044H, 4004A048H
        DC32 4004A04CH, 4004B000H, 4004B004H, 4004B008H
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//   43                             (uint32*)&PORTA->PCR[3], (uint32*)&PORTA->PCR[4], (uint32*)&PORTB->PCR[1], (uint32*)&PORTB->PCR[2], 
//   44                             (uint32*)&PORTB->PCR[3], (uint32*)&PORTB->PCR[16], (uint32*)&PORTB->PCR[17], (uint32*)&PORTB->PCR[18], 
//   45                             (uint32*)&PORTB->PCR[19], (uint32*)&PORTC->PCR[0], (uint32*)&PORTC->PCR[1], (uint32*)&PORTC->PCR[2]};
//   46 
//   47 /*
//   48  * LPLD_TSI_Init
//   49  * TSIͨ�ó�ʼ������
//   50  * 
//   51  * ����:
//   52  *    tsi_init_struct--TSI��ʼ���ṹ�壬
//   53  *                        ���嶨���TSI_InitTypeDef
//   54  *
//   55  * ���:
//   56  *    0--���ô���
//   57  *    1--���óɹ�
//   58  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   59 uint8 LPLD_TSI_Init(TSI_InitTypeDef tsi_init_struct)
//   60 {
LPLD_TSI_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R7,LR}
//   61   uint16 chs = tsi_init_struct.TSI_Chs;
        LDRH     R4,[SP, #+24]
//   62   uint8 mode = tsi_init_struct.TSI_ScanTriggerMode;
        LDRB     R5,[SP, #+26]
//   63   uint8 esor = tsi_init_struct.TSI_EndScanOrOutRangeInt;
        LDRB     R6,[SP, #+27]
//   64   boolean err = tsi_init_struct.TIS_ErrIntEnable;
        LDRB     R7,[SP, #+28]
//   65    
//   66   //�������
//   67   ASSERT( chs != 0);                  //�ж�ͨ��
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??LPLD_TSI_Init_0
        MOVS     R1,#+67
        LDR.N    R0,??DataTable4_1
        BL       assert_failed
//   68   ASSERT( mode <= TSI_SCAN_PERIOD);   //�ж��ж�ģʽ
??LPLD_TSI_Init_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BLT.N    ??LPLD_TSI_Init_1
        MOVS     R1,#+68
        LDR.N    R0,??DataTable4_1
        BL       assert_failed
//   69   ASSERT( esor <= TSI_ENDOFDCAN_INT);//�ж��ж�ģʽ
??LPLD_TSI_Init_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+2
        BLT.N    ??LPLD_TSI_Init_2
        MOVS     R1,#+69
        LDR.N    R0,??DataTable4_1
        BL       assert_failed
//   70   
//   71   //����TSIģ��ʱ��
//   72   SIM->SCGC5 |= (SIM_SCGC5_TSI_MASK); 
??LPLD_TSI_Init_2:
        LDR.N    R0,??DataTable4_2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_2  ;; 0x40048038
        STR      R0,[R1, #+0]
//   73   
//   74   //����ʹ�����ͨ�������Ÿ��ù���
//   75   for(uint8 i=0; i<16; i++)
        MOVS     R0,#+0
??LPLD_TSI_Init_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BGE.N    ??LPLD_TSI_Init_4
//   76   {
//   77     if((chs>>i)&0x1L)
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ASRS     R1,R4,R0
        LSLS     R1,R1,#+31
        BPL.N    ??LPLD_TSI_Init_5
//   78     {
//   79       *((uint32 *)TSI_PORT) = PORT_PCR_MUX(0); 
        MOVS     R1,#+0
        LDR.N    R2,??DataTable4_3
        STR      R1,[R2, #+0]
//   80     }
//   81   }
??LPLD_TSI_Init_5:
        ADDS     R0,R0,#+1
        B.N      ??LPLD_TSI_Init_3
//   82   
//   83   //����ͨ�ÿ��ƼĴ���
//   84   TSI0->GENCS = ((TSI_GENCS_NSCN(10))  //ÿ���缫ÿ��ɨ��(10)�Ρ�
//   85                   |(TSI_GENCS_PS(3)));  //�缫����(2^3)��Ƶ
??LPLD_TSI_Init_4:
        MOVS     R0,#+5439488
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//   86   //����ɨ��Ĵ���
//   87   TSI0->SCANC = ((TSI_SCANC_EXTCHRG(3))        //0.8pF�ڲ��ο�����
//   88                   |(TSI_SCANC_REFCHRG(31))      //32uA������
//   89                   |(TSI_SCANC_DELVOL(7))        //600mV�����ѹ
//   90                   |(TSI_SCANC_SMOD(0))          //ɨ������mod
//   91                   |(TSI_SCANC_AMPSC(0)));       //����ʱ��(2^0)��Ƶ
        LDR.N    R0,??DataTable4_5  ;; 0xf81f0000
        LDR.N    R1,??DataTable4_6  ;; 0x40045004
        STR      R0,[R1, #+0]
//   92   //ʹ��ͨ��
//   93   TSI0->PEN = chs;
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        LDR.N    R0,??DataTable4_7  ;; 0x40045008
        STR      R4,[R0, #+0]
//   94   
//   95   //ʹ������ж�
//   96   //TSI_ENDOFDCAN_INT��TSI_OUTOFRANGE_INTֻ��ѡ����һ
//   97   if(tsi_init_struct.TSI_EndScanIsr!=NULL && esor==TSI_ENDOFDCAN_INT)
        LDR      R0,[SP, #+32]
        CMP      R0,#+0
        BEQ.N    ??LPLD_TSI_Init_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_TSI_Init_6
//   98   {
//   99     TSI0->GENCS |= TSI_GENCS_ESOR_MASK;
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  100     TSI_ISR[0] = tsi_init_struct.TSI_EndScanIsr;
        LDR      R0,[SP, #+32]
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  101     TSI0->GENCS |= TSI_GENCS_TSIIE_MASK;   
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_TSI_Init_7
//  102   }
//  103   else if(tsi_init_struct.TSI_OutRangeIsr!=NULL && esor==TSI_OUTOFRANGE_INT)
??LPLD_TSI_Init_6:
        LDR      R0,[SP, #+36]
        CMP      R0,#+0
        BEQ.N    ??LPLD_TSI_Init_7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BNE.N    ??LPLD_TSI_Init_7
//  104   {
//  105     TSI0->GENCS &= ~(TSI_GENCS_ESOR_MASK);
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  106     TSI_ISR[0] = tsi_init_struct.TSI_OutRangeIsr;
        LDR      R0,[SP, #+36]
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//  107     TSI0->GENCS |= TSI_GENCS_TSIIE_MASK;  
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  108   }
//  109   if(tsi_init_struct.TSI_ErrIsr!=NULL && err==TRUE)
??LPLD_TSI_Init_7:
        LDR      R0,[SP, #+40]
        CMP      R0,#+0
        BEQ.N    ??LPLD_TSI_Init_8
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_TSI_Init_8
//  110   {
//  111     TSI0->GENCS |= TSI_GENCS_ERIE_MASK;
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  112     TSI_ISR[1] = tsi_init_struct.TSI_EndScanIsr;
        LDR      R0,[SP, #+32]
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+4]
//  113     TSI0->GENCS |= TSI_GENCS_TSIIE_MASK;  
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  114   }
//  115     
//  116   //ʹ��TSIģ��  
//  117   TSI0->GENCS |= (TSI_GENCS_TSIEN_MASK); 
??LPLD_TSI_Init_8:
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  118  
//  119   //�Ƿ���л�׼ֵУ��
//  120   if(tsi_init_struct.TSI_IsInitSelfCal == TRUE)
        LDRB     R0,[SP, #+44]
        CMP      R0,#+1
        BNE.N    ??LPLD_TSI_Init_9
//  121   {
//  122     //ʹ���������
//  123     TSI0->GENCS |= TSI_GENCS_SWTS_MASK;
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  124     //�ȴ�ɨ�����
//  125     while(!(TSI0->GENCS&TSI_GENCS_EOSF_MASK)){};
??LPLD_TSI_Init_10:
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BPL.N    ??LPLD_TSI_Init_10
//  126     for(uint16 i=0; i<5000; i++)
        MOVS     R0,#+0
??LPLD_TSI_Init_11:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+5000
        CMP      R0,R1
        BGE.N    ??LPLD_TSI_Init_12
//  127     {
//  128       for(uint8 j=0; j<200; j++)
        MOVS     R1,#+0
??LPLD_TSI_Init_13:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+200
        BGE.N    ??LPLD_TSI_Init_14
//  129       {
//  130         asm("NOP");
        NOP
//  131       }
        ADDS     R1,R1,#+1
        B.N      ??LPLD_TSI_Init_13
//  132     }
??LPLD_TSI_Init_14:
        ADDS     R0,R0,#+1
        B.N      ??LPLD_TSI_Init_11
//  133     //����׼ֵ���顢��ֵ�Ĵ���
//  134     for(uint8 i=0; i<16; i++)
??LPLD_TSI_Init_12:
        MOVS     R0,#+0
??LPLD_TSI_Init_15:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BGE.N    ??LPLD_TSI_Init_16
//  135     {
//  136       if((chs>>i)&0x1L)
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ASRS     R1,R4,R0
        LSLS     R1,R1,#+31
        BPL.N    ??LPLD_TSI_Init_17
//  137       {
//  138         TSI_ChxBaseVal[i] = *((uint16 *)TSI_CNTR[i]);
        LDR.N    R1,??DataTable4_9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        LDRH     R1,[R1, #+0]
        LDR.N    R2,??DataTable4_10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R1,[R2, R0, LSL #+1]
//  139         TSI0->THRESHLD[i] = TSI_ChxBaseVal[i] + TSI_OVERRUN_VAL;
        LDR.N    R1,??DataTable4_10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDRH     R1,[R1, R0, LSL #+1]
        ADDS     R1,R1,#+196608
        LDR.N    R2,??DataTable4_11  ;; 0x40045120
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R1,[R2, R0, LSL #+2]
//  140       }
//  141     }
??LPLD_TSI_Init_17:
        ADDS     R0,R0,#+1
        B.N      ??LPLD_TSI_Init_15
//  142   }
//  143   else
//  144   {
//  145     for(uint8 i=0; i<16; i++)
??LPLD_TSI_Init_9:
        MOVS     R0,#+0
??LPLD_TSI_Init_18:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BGE.N    ??LPLD_TSI_Init_16
//  146     {
//  147       TSI_ChxBaseVal[i] = TSI_BASE_VAL;
        MOV      R1,#+2048
        LDR.N    R2,??DataTable4_10
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R1,[R2, R0, LSL #+1]
//  148     }
        ADDS     R0,R0,#+1
        B.N      ??LPLD_TSI_Init_18
//  149   }
//  150   
//  151   //����ɨ��ģʽor�������ģʽ
//  152   if(mode == TSI_SCAN_PERIOD)
??LPLD_TSI_Init_16:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_TSI_Init_19
//  153   {
//  154     TSI0->GENCS |= TSI_GENCS_STM_MASK;
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_TSI_Init_20
//  155   }
//  156   else
//  157   {
//  158     TSI0->GENCS &= ~(TSI_GENCS_STM_MASK);
??LPLD_TSI_Init_19:
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  159   }
//  160   
//  161   return 1;
??LPLD_TSI_Init_20:
        MOVS     R0,#+1
        POP      {R1,R4-R7}
        LDR      PC,[SP], #+20    ;; return
//  162 }
//  163 
//  164 /*
//  165  * LPLD_TSI_Deinit
//  166  * TSI����ʼ������
//  167  * 
//  168  * ����:
//  169  *    ��
//  170  *
//  171  * ���:
//  172  *    ��
//  173  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  174 void LPLD_TSI_Deinit(void)
//  175 {
LPLD_TSI_Deinit:
        PUSH     {R7,LR}
//  176   LPLD_TSI_DisableIrq();
        MOVS     R0,#+83
        BL       NVIC_DisableIRQ
//  177   TSI0->STATUS = 0xFFFFFFFF;
        MOVS     R0,#-1
        LDR.N    R1,??DataTable4_12  ;; 0x4004500c
        STR      R0,[R1, #+0]
//  178   TSI0->PEN = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_7  ;; 0x40045008
        STR      R0,[R1, #+0]
//  179   TSI0->SCANC = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_6  ;; 0x40045004
        STR      R0,[R1, #+0]
//  180   TSI0->GENCS = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  181   //�ر�TSIģ��ʱ��
//  182   SIM->SCGC5 &= ~(SIM_SCGC5_TSI_MASK); 
        LDR.N    R0,??DataTable4_2  ;; 0x40048038
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x20
        LDR.N    R1,??DataTable4_2  ;; 0x40048038
        STR      R0,[R1, #+0]
//  183 }
        POP      {R0,PC}          ;; return
//  184 
//  185 /*
//  186  * LPLD_TSI_IsChxTouched
//  187  * ͨ��x�ĵ缫�Ƿ񱻴���
//  188  * 
//  189  * ����:
//  190  *    ch_num--ͨ��x������
//  191  *      |_0~15
//  192  *
//  193  * ���:
//  194  *    TRUE-�д���
//  195  *    FALSE-δ����
//  196  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  197 boolean LPLD_TSI_IsChxTouched(uint8 ch_num)
//  198 { 
LPLD_TSI_IsChxTouched:
        MOVS     R1,R0
//  199   if(TSI_ChxBaseVal[ch_num]<*((uint16 *)TSI_CNTR[ch_num]))
        LDR.N    R0,??DataTable4_10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRH     R0,[R0, R1, LSL #+1]
        LDR.N    R2,??DataTable4_9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR      R2,[R2, R1, LSL #+2]
        LDRH     R2,[R2, #+0]
        CMP      R0,R2
        BCS.N    ??LPLD_TSI_IsChxTouched_0
//  200     return TRUE;
        MOVS     R0,#+1
        B.N      ??LPLD_TSI_IsChxTouched_1
//  201   return FALSE;
??LPLD_TSI_IsChxTouched_0:
        MOVS     R0,#+0
??LPLD_TSI_IsChxTouched_1:
        BX       LR               ;; return
//  202 }
//  203 
//  204 /*
//  205  * TSI�жϴ�����
//  206  * �������ļ�startup_K60.s�е��ж����������
//  207  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  208  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  209 void TSI_IRQHandler(void)
//  210 {
TSI_IRQHandler:
        PUSH     {R7,LR}
//  211 #if (UCOS_II > 0u)
//  212   OS_CPU_SR  cpu_sr = 0u;
//  213   OS_ENTER_CRITICAL(); //��֪ϵͳ��ʱ�Ѿ��������жϷ����Ӻ���
//  214   OSIntEnter();
//  215   OS_EXIT_CRITICAL();
//  216 #endif
//  217   
//  218   if(TSI0->GENCS&(TSI_GENCS_ESOR_MASK|TSI_GENCS_EOSF_MASK) &&
//  219      TSI_ISR[0] != NULL)
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        MOVW     R1,#+32784
        TST      R0,R1
        BEQ.N    ??TSI_IRQHandler_0
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??TSI_IRQHandler_0
//  220   {
//  221     TSI_ISR[0]();
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        BLX      R0
//  222     TSI0->GENCS |= TSI_GENCS_OUTRGF_MASK;
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  223     TSI0->GENCS |= TSI_GENCS_EOSF_MASK;
        LDR.N    R0,??DataTable4_4  ;; 0x40045000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.N    R1,??DataTable4_4  ;; 0x40045000
        STR      R0,[R1, #+0]
//  224     TSI0->STATUS = 0x0000FFFF;
        MOVW     R0,#+65535
        LDR.N    R1,??DataTable4_12  ;; 0x4004500c
        STR      R0,[R1, #+0]
        B.N      ??TSI_IRQHandler_1
//  225   }
//  226   else if(TSI0->STATUS != 0 && TSI_ISR[1] != NULL)
??TSI_IRQHandler_0:
        LDR.N    R0,??DataTable4_12  ;; 0x4004500c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??TSI_IRQHandler_1
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??TSI_IRQHandler_1
//  227   {
//  228     TSI_ISR[1]();
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+4]
        BLX      R0
//  229     TSI0->STATUS = 0xFFFF0000;
        LDR.N    R0,??DataTable4_13  ;; 0xffff0000
        LDR.N    R1,??DataTable4_12  ;; 0x4004500c
        STR      R0,[R1, #+0]
//  230   }
//  231     
//  232 #if (UCOS_II > 0u)
//  233   OSIntExit();          //��֪ϵͳ��ʱ�����뿪�жϷ����Ӻ���
//  234 #endif
//  235 }
??TSI_IRQHandler_1:
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
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     TSI_PORT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40045000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0xf81f0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40045004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40045008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     TSI_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     TSI_CNTR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     TSI_ChxBaseVal

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x40045120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x4004500c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0xffff0000

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
        DC8 57H, 5FH, 54H, 53H, 49H, 2EH, 63H, 0

        END
// 
//  40 bytes in section .bss
// 192 bytes in section .data
//  64 bytes in section .rodata
// 692 bytes in section .text
// 
// 692 bytes of CODE  memory
//  64 bytes of CONST memory
// 232 bytes of DATA  memory
//
//Errors: none
//Warnings: none
