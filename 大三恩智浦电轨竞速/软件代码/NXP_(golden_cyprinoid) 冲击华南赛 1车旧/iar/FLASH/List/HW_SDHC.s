///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:51
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SDHC.c
//    Command line =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SDHC.c -D
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
//        ��������� 1��\iar\FLASH\List\HW_SDHC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_core_clock
        EXTERN malloc

        PUBLIC LPLD_SDHC_IOC
        PUBLIC LPLD_SDHC_InitCard
        PUBLIC LPLD_SDHC_ReadBlocks
        PUBLIC LPLD_SDHC_WriteBlocks
        PUBLIC sdcard_ptr

// C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SDHC.c
//    1 /**
//    2  * @file HW_SDHC.c
//    3  * @version 3.01[By LPLD]
//    4  * @date 2013-10-21
//    5  * @brief SDHC�ײ�ģ����غ���
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
//   21  *
//   22  * ��Ȩ˵��:
//   23  *  SDHCģ����������ժȡ�Է�˼����MQX�ײ����������ֹ��������������޸ġ�
//   24  *  HW_SDHC.h��HW_SDHC.c�ڵĴ����Ȩ���˼������˾���С�
//   25  * 
//   26  * 3.01-2013-10-21 �޸�������SD���޷���ʼ��BUG
//   27  */
//   28 #include "common.h"
//   29 #include "HW_SDHC.h"
//   30 
//   31 //SD����Ϣȫ�ֱ���

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   32 SDCARD_STRUCT_PTR sdcard_ptr;
sdcard_ptr:
        DS8 4
//   33 
//   34 /*
//   35  * LPLD_SDHC_InitGPIO
//   36  * ��ʼ��SDHCģ����ص�GPIO����,��ʹ��SDHC�Ĵ���ʱ��
//   37  * 
//   38  * ����:
//   39  *    init--PCR�Ĵ�������
//   40  *
//   41  * ���:
//   42  *    ��
//   43  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   44 static void LPLD_SDHC_InitGPIO(uint32 init)
//   45 {  
//   46   PORTE->PCR[0] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.D1  */
LPLD_SDHC_InitGPIO:
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8  ;; 0x4004d000
        STR      R1,[R2, #+0]
//   47   PORTE->PCR[1] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.D0  */
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8_1  ;; 0x4004d004
        STR      R1,[R2, #+0]
//   48   PORTE->PCR[2] = init & (PORT_PCR_MUX(4) | PORT_PCR_DSE_MASK);                                          /* SDHC.CLK */
        ANDS     R1,R0,#0x440
        LDR.W    R2,??DataTable8_2  ;; 0x4004d008
        STR      R1,[R2, #+0]
//   49   PORTE->PCR[3] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.CMD */
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8_3  ;; 0x4004d00c
        STR      R1,[R2, #+0]
//   50   PORTE->PCR[4] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.D3  */
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8_4  ;; 0x4004d010
        STR      R1,[R2, #+0]
//   51   PORTE->PCR[5] = init & (PORT_PCR_MUX(4) | PORT_PCR_PS_MASK | PORT_PCR_PE_MASK | PORT_PCR_DSE_MASK);    /* SDHC.D2  */
        MOVW     R1,#+1091
        ANDS     R1,R1,R0
        LDR.W    R2,??DataTable8_5  ;; 0x4004d014
        STR      R1,[R2, #+0]
//   52   
//   53   SIM->SCGC3 |= SIM_SCGC3_SDHC_MASK; 
        LDR.W    R1,??DataTable8_6  ;; 0x40048030
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x20000
        LDR.W    R2,??DataTable8_6  ;; 0x40048030
        STR      R1,[R2, #+0]
//   54 }
        BX       LR               ;; return
//   55 
//   56 
//   57 /*
//   58  * LPLD_SDHC_SetBaudrate
//   59  * ����SDHC������
//   60  * 
//   61  * ����:
//   62  *    clock--ģ������ʱ�ӣ���g_core_clock*1000����λHz
//   63  *    baud--SDHC����ʱ��Ƶ�ʣ���λHz
//   64  *
//   65  * ���:
//   66  *    ��
//   67  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 static void LPLD_SDHC_SetBaudrate(uint32 clock, uint32 baud)
//   69 {
LPLD_SDHC_SetBaudrate:
        PUSH     {R4-R7,LR}
//   70   uint32 pres, div, min, minpres = 0x80, mindiv = 0x0F;
        MOVS     R3,#+128
        MOVS     R4,#+15
//   71   int32  val;
//   72   
//   73   //�ҵ�����ķ�Ƶ����
//   74   min = (uint32)-1;
        MOVS     R12,#-1
        MOV      R2,R12
//   75   for (pres = 2; pres <= 256; pres <<= 1)
        MOVS     R12,#+2
        MOV      R7,R12
??LPLD_SDHC_SetBaudrate_0:
        CMP      R7,#+256
        BHI.N    ??LPLD_SDHC_SetBaudrate_1
//   76   {
//   77     for (div = 1; div <= 16; div++)
        MOVS     R12,#+1
        MOV      R6,R12
??LPLD_SDHC_SetBaudrate_2:
        CMP      R6,#+17
        BCS.N    ??LPLD_SDHC_SetBaudrate_3
//   78     {
//   79       val = pres * div * baud - clock;
        MUL      R12,R6,R7
        MUL      R12,R1,R12
        SUBS     R12,R12,R0
        MOV      R5,R12
//   80       if (val >= 0)
        CMP      R5,#+0
        BMI.N    ??LPLD_SDHC_SetBaudrate_4
//   81       {
//   82         if (min > val)
        CMP      R5,R2
        BCS.N    ??LPLD_SDHC_SetBaudrate_4
//   83         {
//   84           min = val;
        MOVS     R2,R5
//   85           minpres = pres;
        MOVS     R3,R7
//   86           mindiv = div;
        MOVS     R4,R6
//   87         }
//   88       }
//   89     }
??LPLD_SDHC_SetBaudrate_4:
        ADDS     R6,R6,#+1
        B.N      ??LPLD_SDHC_SetBaudrate_2
//   90   }
??LPLD_SDHC_SetBaudrate_3:
        LSLS     R7,R7,#+1
        B.N      ??LPLD_SDHC_SetBaudrate_0
//   91   
//   92   //��ֹSDHCģ��ʱ��
//   93   SDHC->SYSCTL &= (~ SDHC_SYSCTL_SDCLKEN_MASK);
??LPLD_SDHC_SetBaudrate_1:
        LDR.W    R12,??DataTable8_7  ;; 0x400b102c
        LDR      R12,[R12, #+0]
        BICS     R12,R12,#0x8
        LDR.W    LR,??DataTable8_7  ;; 0x400b102c
        STR      R12,[LR, #+0]
//   94   
//   95   //�޸ķ�Ƶ����
//   96   div = SDHC->SYSCTL & (~ (SDHC_SYSCTL_DTOCV_MASK | SDHC_SYSCTL_SDCLKFS_MASK | SDHC_SYSCTL_DVS_MASK));
        LDR.W    R12,??DataTable8_7  ;; 0x400b102c
        LDR      R12,[R12, #+0]
        BFC      R12,#+4,#+16
        MOV      R6,R12
//   97   SDHC->SYSCTL = div | (SDHC_SYSCTL_DTOCV(0x0E) | SDHC_SYSCTL_SDCLKFS(minpres >> 1) | SDHC_SYSCTL_DVS(mindiv - 1));
        LSLS     R12,R3,#+7
        ANDS     R12,R12,#0xFF00
        ORRS     R12,R12,R6
        SUBS     LR,R4,#+1
        LSLS     LR,LR,#+4
        ANDS     LR,LR,#0xF0
        ORRS     R12,LR,R12
        ORRS     R12,R12,#0xE0000
        LDR.W    LR,??DataTable8_7  ;; 0x400b102c
        STR      R12,[LR, #+0]
//   98   
//   99   //����ʱ���ȶ�
//  100   while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_SDSTB_MASK))
??LPLD_SDHC_SetBaudrate_5:
        LDR.W    R12,??DataTable8_8  ;; 0x400b1024
        LDR      R12,[R12, #+0]
        LSLS     R12,R12,#+28
        BPL.N    ??LPLD_SDHC_SetBaudrate_5
//  101   {};
//  102   
//  103   //ʹ��SDHCģ��ʱ��
//  104   SDHC->SYSCTL |= SDHC_SYSCTL_SDCLKEN_MASK;
        LDR.W    R12,??DataTable8_7  ;; 0x400b102c
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x8
        LDR.W    LR,??DataTable8_7  ;; 0x400b102c
        STR      R12,[LR, #+0]
//  105   SDHC->IRQSTAT |= SDHC_IRQSTAT_DTOE_MASK;
        LDR.W    R12,??DataTable9  ;; 0x400b1030
        LDR      R12,[R12, #+0]
        ORRS     R12,R12,#0x100000
        LDR.W    LR,??DataTable9  ;; 0x400b1030
        STR      R12,[LR, #+0]
//  106 }
        POP      {R4-R7,PC}       ;; return
//  107 
//  108 /*
//  109  * LPLD_SDHC_IsRunning
//  110  * ��ȡSDHCģ������״̬
//  111  * 
//  112  * ����:
//  113  *    ��
//  114  *
//  115  * ���:
//  116  *    TRUE--��������
//  117  *    FALSE--ֹͣ����
//  118  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 static boolean LPLD_SDHC_IsRunning(void)
//  120 {
//  121   return (0 != (SDHC->PRSSTAT & (SDHC_PRSSTAT_RTA_MASK | SDHC_PRSSTAT_WTA_MASK | SDHC_PRSSTAT_DLA_MASK | SDHC_PRSSTAT_CDIHB_MASK | SDHC_PRSSTAT_CIHB_MASK)));
LPLD_SDHC_IsRunning:
        LDR.W    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        MOVW     R1,#+775
        TST      R0,R1
        BEQ.N    ??LPLD_SDHC_IsRunning_0
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_IsRunning_1
??LPLD_SDHC_IsRunning_0:
        MOVS     R0,#+0
??LPLD_SDHC_IsRunning_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  122 }
//  123 
//  124 /*
//  125  * LPLD_SDHC_WaitStatus
//  126  * �ȴ�ָ��״̬��־λ��λ
//  127  * 
//  128  * ����:
//  129  *    mask--״̬��־λ����
//  130  *
//  131  * ���:
//  132  *    ״̬��־
//  133  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 static uint32 LPLD_SDHC_WaitStatus(uint32 mask)
//  135 {
LPLD_SDHC_WaitStatus:
        MOVS     R1,R0
//  136   uint32 result;
//  137   do
//  138   {
//  139     result = SDHC->IRQSTAT & mask;
??LPLD_SDHC_WaitStatus_0:
        LDR.W    R2,??DataTable9  ;; 0x400b1030
        LDR      R2,[R2, #+0]
        ANDS     R2,R1,R2
        MOVS     R0,R2
//  140   }
//  141   while (0 == result);
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_WaitStatus_0
//  142   return result;
        BX       LR               ;; return
//  143 }
//  144 
//  145 /*
//  146  * LPLD_SDHC_Init
//  147  * SDHCģ���ʼ������
//  148  * 
//  149  * ����:
//  150  *    coreClk--ϵ�y��Ƶ����λHz
//  151  *    baud--SDHC����ʱ��Ƶ�ʣ���λHz
//  152  *
//  153  * ���:
//  154  *    SDHCSTA_OK--״̬����
//  155  *    SDHCSTA_NOINIT--����δ��ʼ��
//  156  *    SDHCSTA_NODISK--Ϊ���뿨
//  157  *    SDHCSTA_PROTECT--��д����
//  158  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 static SDHCRES LPLD_SDHC_Init(uint32 coreClk, uint32 baud)
//  160 {
LPLD_SDHC_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  161   
//  162   sdcard_ptr->CARD = ESDHC_CARD_NONE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  163   
//  164   //����GPIO��SDHC���ù���
//  165   LPLD_SDHC_InitGPIO (0);
        MOVS     R0,#+0
        BL       LPLD_SDHC_InitGPIO
//  166   
//  167   //��λSDHCģ��
//  168   SDHC->SYSCTL = SDHC_SYSCTL_RSTA_MASK | SDHC_SYSCTL_SDCLKFS(0x80);
        LDR.W    R0,??DataTable8_9  ;; 0x1008000
        LDR.W    R1,??DataTable8_7  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  169   while (SDHC->SYSCTL & SDHC_SYSCTL_RSTA_MASK)
??LPLD_SDHC_Init_0:
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+7
        BMI.N    ??LPLD_SDHC_Init_0
//  170   { };
//  171   
//  172   //��ʼ���Ĵ���ֵ
//  173   SDHC->VENDOR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable8_10  ;; 0x400b10c0
        STR      R0,[R1, #+0]
//  174   SDHC->BLKATTR = SDHC_BLKATTR_BLKCNT(1) | SDHC_BLKATTR_BLKSIZE(512);
        MOVS     R0,#+66048
        LDR.W    R1,??DataTable8_11  ;; 0x400b1004
        STR      R0,[R1, #+0]
//  175   SDHC->PROCTL = SDHC_PROCTL_EMODE(ESDHC_PROCTL_EMODE_LITTLE) | SDHC_PROCTL_D3CD_MASK;
        MOVS     R0,#+40
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  176   SDHC->WML = SDHC_WML_RDWML(2) | SDHC_WML_WRWML(1);
        LDR.W    R0,??DataTable8_12  ;; 0x10002
        LDR.W    R1,??DataTable8_13  ;; 0x400b1044
        STR      R0,[R1, #+0]
//  177   
//  178   //����SDHC��ʼ��ʱ�ӣ���ò�Ҫ����400kHz
//  179   LPLD_SDHC_SetBaudrate (coreClk, baud);
        MOVS     R1,R5
        MOVS     R0,R4
        BL       LPLD_SDHC_SetBaudrate
//  180   
//  181   //�ȴ�
//  182   while (SDHC->PRSSTAT & (SDHC_PRSSTAT_CIHB_MASK | SDHC_PRSSTAT_CDIHB_MASK))
??LPLD_SDHC_Init_1:
        LDR.W    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        TST      R0,#0x3
        BNE.N    ??LPLD_SDHC_Init_1
//  183   { };
//  184   
//  185   //ʹ��GPIO��SDHC����
//  186   LPLD_SDHC_InitGPIO (0xFFFF);
        MOVW     R0,#+65535
        BL       LPLD_SDHC_InitGPIO
//  187   
//  188   //ʹ�ܸ�������
//  189   SDHC->IRQSTAT = 0xFFFF;
        MOVW     R0,#+65535
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  190   SDHC->IRQSTATEN = SDHC_IRQSTATEN_DEBESEN_MASK | SDHC_IRQSTATEN_DCESEN_MASK | SDHC_IRQSTATEN_DTOESEN_MASK
//  191     | SDHC_IRQSTATEN_CIESEN_MASK | SDHC_IRQSTATEN_CEBESEN_MASK | SDHC_IRQSTATEN_CCESEN_MASK | SDHC_IRQSTATEN_CTOESEN_MASK
//  192       | SDHC_IRQSTATEN_BRRSEN_MASK | SDHC_IRQSTATEN_BWRSEN_MASK | SDHC_IRQSTATEN_CRMSEN_MASK
//  193         | SDHC_IRQSTATEN_TCSEN_MASK | SDHC_IRQSTATEN_CCSEN_MASK;
        LDR.W    R0,??DataTable8_14  ;; 0x7f00b3
        LDR.W    R1,??DataTable8_15  ;; 0x400b1034
        STR      R0,[R1, #+0]
//  194   
//  195   //�ȴ�80����ʼʱ��
//  196   SDHC->SYSCTL |= SDHC_SYSCTL_INITA_MASK;
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable8_7  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  197   while (SDHC->SYSCTL & SDHC_SYSCTL_INITA_MASK)
??LPLD_SDHC_Init_2:
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??LPLD_SDHC_Init_2
//  198   { };
//  199   
//  200   //��鿨�Ƿ����
//  201   if (SDHC->PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
        LDR.W    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??LPLD_SDHC_Init_3
//  202   {
//  203     sdcard_ptr->CARD = ESDHC_CARD_UNKNOWN;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
        B.N      ??LPLD_SDHC_Init_4
//  204   }
//  205   else
//  206   {
//  207     sdcard_ptr->STATUS = SDHCSTA_NODISK;
??LPLD_SDHC_Init_3:
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  208   }
//  209   SDHC->IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
??LPLD_SDHC_Init_4:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  210   
//  211   return SDHCRES_OK;
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
//  212 }
//  213 
//  214 /*
//  215  * LPLD_SDHC_SendCommand
//  216  * ��SD������ָ��CMD����
//  217  * 
//  218  * ����:
//  219  *    command--SDHC������Ϣ�ṹ��
//  220  *
//  221  * ���:
//  222  *    SDHCRES--���̹��ܷ���ֵ
//  223  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  224 static SDHCRES LPLD_SDHC_SendCommand(ESDHC_COMMAND_STRUCT_PTR command)
//  225 {
LPLD_SDHC_SendCommand:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  226   uint32 xfertyp;
//  227   uint32 blkattr;
//  228   
//  229   //�������
//  230   xfertyp = command->COMMAND;
        LDR      R0,[R4, #+0]
        MOVS     R6,R0
//  231   
//  232   if (ESDHC_XFERTYP_CMDTYP_RESUME == ((xfertyp & SDHC_XFERTYP_CMDTYP_MASK) >> SDHC_XFERTYP_CMDTYP_SHIFT))
        UBFX     R0,R6,#+22,#+2
        CMP      R0,#+2
        BNE.N    ??LPLD_SDHC_SendCommand_0
//  233   {
//  234     //�ָ����������������DPSELλ
//  235     xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        ORRS     R6,R6,#0x200000
//  236   }
//  237   
//  238   if ((0 != command->BLOCKS) && (0 != command->BLOCKSIZE))
??LPLD_SDHC_SendCommand_0:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_SendCommand_1
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_SendCommand_1
//  239   {
//  240     xfertyp |= SDHC_XFERTYP_DPSEL_MASK;
        ORRS     R6,R6,#0x200000
//  241     if (command->BLOCKS != 1)
        LDR      R0,[R4, #+8]
        CMP      R0,#+1
        BEQ.N    ??LPLD_SDHC_SendCommand_2
//  242     {
//  243       //��鴫��
//  244       xfertyp |= SDHC_XFERTYP_MSBSEL_MASK;
        ORRS     R6,R6,#0x20
//  245     }
//  246     if ((uint32)-1 == command->BLOCKS)
??LPLD_SDHC_SendCommand_2:
        LDR      R0,[R4, #+8]
        CMN      R0,#+1
        BNE.N    ??LPLD_SDHC_SendCommand_3
//  247     {
//  248       //��������
//  249       blkattr = SDHC_BLKATTR_BLKSIZE(command->BLOCKSIZE) | SDHC_BLKATTR_BLKCNT(0xFFFF);
        LDR      R0,[R4, #+12]
        LSLS     R0,R0,#+19       ;; ZeroExtS R0,R0,#+19,#+19
        LSRS     R0,R0,#+19
        ORR      R0,R0,#0xFF000000
        ORRS     R0,R0,#0xFF0000
        MOVS     R5,R0
        B.N      ??LPLD_SDHC_SendCommand_4
//  250     }
//  251     else
//  252     {
//  253       blkattr = SDHC_BLKATTR_BLKSIZE(command->BLOCKSIZE) | SDHC_BLKATTR_BLKCNT(command->BLOCKS);
??LPLD_SDHC_SendCommand_3:
        LDR      R0,[R4, #+12]
        LSLS     R0,R0,#+19       ;; ZeroExtS R0,R0,#+19,#+19
        LSRS     R0,R0,#+19
        LDR      R1,[R4, #+8]
        ORRS     R0,R0,R1, LSL #+16
        MOVS     R5,R0
//  254       xfertyp |= SDHC_XFERTYP_BCEN_MASK;
        ORRS     R6,R6,#0x2
        B.N      ??LPLD_SDHC_SendCommand_4
//  255     }
//  256   }
//  257   else
//  258   {
//  259     blkattr = 0;
??LPLD_SDHC_SendCommand_1:
        MOVS     R0,#+0
        MOVS     R5,R0
//  260   }
//  261   
//  262   //���Ƴ�״̬���
//  263   SDHC->IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
??LPLD_SDHC_SendCommand_4:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  264   
//  265   //�ȴ�CMD�߿���
//  266   while (SDHC->PRSSTAT & SDHC_PRSSTAT_CIHB_MASK)
??LPLD_SDHC_SendCommand_5:
        LDR.W    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??LPLD_SDHC_SendCommand_5
//  267   { };
//  268   
//  269   //��ʼ������
//  270   SDHC->CMDARG = command->ARGUMENT;
        LDR      R0,[R4, #+4]
        LDR.W    R1,??DataTable10  ;; 0x400b1008
        STR      R0,[R1, #+0]
//  271   SDHC->BLKATTR = blkattr;
        LDR.W    R0,??DataTable8_11  ;; 0x400b1004
        STR      R5,[R0, #+0]
//  272   SDHC->DSADDR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable10_1  ;; 0x400b1000
        STR      R0,[R1, #+0]
//  273   
//  274   //��������
//  275   SDHC->XFERTYP = xfertyp;
        LDR.W    R0,??DataTable10_2  ;; 0x400b100c
        STR      R6,[R0, #+0]
//  276   
//  277   //�ȴ���Ӧ
//  278   if (LPLD_SDHC_WaitStatus (SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK) != SDHC_IRQSTAT_CC_MASK)
        LDR.W    R0,??DataTable10_3  ;; 0xe0001
        BL       LPLD_SDHC_WaitStatus
        CMP      R0,#+1
        BEQ.N    ??LPLD_SDHC_SendCommand_6
//  279   {
//  280     SDHC->IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CIE_MASK | SDHC_IRQSTAT_CEBE_MASK | SDHC_IRQSTAT_CCE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0xF0000
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  281     return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_SendCommand_7
//  282   }
//  283   
//  284   //��鿨�Ƿ��Ƴ�
//  285   if (SDHC->IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
??LPLD_SDHC_SendCommand_6:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_SDHC_SendCommand_8
//  286   {
//  287     SDHC->IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10001
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  288     sdcard_ptr->STATUS = SDHCSTA_NODISK;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  289     return SDHCRES_NOTRDY;
        MOVS     R0,#+3
        B.N      ??LPLD_SDHC_SendCommand_7
//  290   }
//  291   
//  292   //��ȡ��Ӧ
//  293   if (SDHC->IRQSTAT & SDHC_IRQSTAT_CTOE_MASK)
??LPLD_SDHC_SendCommand_8:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??LPLD_SDHC_SendCommand_9
//  294   {
//  295     SDHC->IRQSTAT |= SDHC_IRQSTAT_CTOE_MASK | SDHC_IRQSTAT_CC_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10001
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  296     return SDHCRES_NONRSPNS;
        MOVS     R0,#+5
        B.N      ??LPLD_SDHC_SendCommand_7
//  297   }
//  298   if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) != SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_NO))
??LPLD_SDHC_SendCommand_9:
        TST      R6,#0x30000
        BEQ.N    ??LPLD_SDHC_SendCommand_10
//  299   {
//  300     command->RESPONSE[0] = SDHC->CMDRSP[0];
        LDR.W    R0,??DataTable10_4  ;; 0x400b1010
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+16]
//  301     if ((xfertyp & SDHC_XFERTYP_RSPTYP_MASK) == SDHC_XFERTYP_RSPTYP(ESDHC_XFERTYP_RSPTYP_136))
        ANDS     R0,R6,#0x30000
        CMP      R0,#+65536
        BNE.N    ??LPLD_SDHC_SendCommand_10
//  302     {
//  303       command->RESPONSE[1] = SDHC->CMDRSP[1];
        LDR.W    R0,??DataTable10_5  ;; 0x400b1014
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+20]
//  304       command->RESPONSE[2] = SDHC->CMDRSP[2];
        LDR.W    R0,??DataTable10_6  ;; 0x400b1018
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+24]
//  305       command->RESPONSE[3] = SDHC->CMDRSP[3];
        LDR.W    R0,??DataTable10_7  ;; 0x400b101c
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+28]
//  306     }
//  307   }
//  308   SDHC->IRQSTAT |= SDHC_IRQSTAT_CC_MASK;
??LPLD_SDHC_SendCommand_10:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  309   
//  310   return SDHCRES_OK;
        MOVS     R0,#+0
??LPLD_SDHC_SendCommand_7:
        POP      {R4-R6,PC}       ;; return
//  311 }
//  312 
//  313 
//  314 /*
//  315  * LPLD_SDHC_IOC
//  316  * SDHCģ���������Ʒ�����
//  317  * 
//  318  * ����:
//  319  *    cmd--SDHCģ���������
//  320  *    *param_ptr--���Ʋ���
//  321  *
//  322  * ���:
//  323  *    SDHCRES--���̹��ܷ���ֵ
//  324  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  325 SDHCRES LPLD_SDHC_IOC(uint32 cmd, void *param_ptr)
//  326 {
LPLD_SDHC_IOC:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+36
        MOVS     R4,R0
        MOVS     R5,R1
//  327   
//  328   ESDHC_COMMAND_STRUCT    command;
//  329   boolean                 mem, io, mmc, ceata, mp, hc;
//  330   int32                  val;
//  331   SDHCRES                 result = SDHCRES_OK;
        MOVS     R9,#+0
//  332   uint32 *             param32_ptr = param_ptr;
        MOV      R10,R5
//  333   
//  334   switch (cmd)
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??LPLD_SDHC_IOC_0
        CMP      R0,#+2
        BEQ.W    ??LPLD_SDHC_IOC_1
        CMP      R0,#+3
        BEQ.W    ??LPLD_SDHC_IOC_2
        CMP      R0,#+4
        BEQ.W    ??LPLD_SDHC_IOC_3
        CMP      R0,#+5
        BEQ.W    ??LPLD_SDHC_IOC_4
        CMP      R0,#+6
        BEQ.W    ??LPLD_SDHC_IOC_5
        CMP      R0,#+7
        BEQ.W    ??LPLD_SDHC_IOC_6
        CMP      R0,#+147
        BEQ.W    ??LPLD_SDHC_IOC_7
        B.N      ??LPLD_SDHC_IOC_8
//  335   {
//  336   case IO_IOCTL_ESDHC_INIT:  
//  337     //��ʼ��SDHCģ��
//  338     result = LPLD_SDHC_Init (g_core_clock*1000, 400000);
??LPLD_SDHC_IOC_0:
        LDR.W    R1,??DataTable10_8  ;; 0x61a80
        LDR.W    R0,??DataTable10_9
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       LPLD_SDHC_Init
        MOV      R9,R0
//  339     if (SDHCRES_OK != result)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  340     {
//  341       break;
//  342     }
//  343     
//  344     mem = FALSE;
??LPLD_SDHC_IOC_10:
        MOVS     R0,#+0
        MOVS     R6,R0
//  345     io = FALSE;
        MOVS     R0,#+0
        MOVS     R7,R0
//  346     mmc = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  347     ceata = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+2]
//  348     hc = FALSE;
        MOVS     R0,#+0
        MOV      R8,R0
//  349     mp = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//  350     
//  351     //CMD0 - ���������λ��
//  352     command.COMMAND = ESDHC_CMD0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  353     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  354     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  355     result = LPLD_SDHC_SendCommand (&command);
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
//  356     if (result!=SDHCRES_OK)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??LPLD_SDHC_IOC_11
//  357     {
//  358       sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  359       break;
        B.N      ??LPLD_SDHC_IOC_9
//  360     }
//  361     
//  362     //CMD8 - ���ͽӿ�״̬������Ƿ�֧�ָ�����
//  363     command.COMMAND = ESDHC_CMD8;
??LPLD_SDHC_IOC_11:
        LDR.W    R0,??DataTable10_10  ;; 0x81a0000
        STR      R0,[SP, #+4]
//  364     command.ARGUMENT = 0x000001AA;
        MOV      R0,#+426
        STR      R0,[SP, #+8]
//  365     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  366     result = LPLD_SDHC_SendCommand (&command);
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
//  367     if (result==SDHCRES_ERROR)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SDHC_IOC_12
//  368     {
//  369       sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  370       break;
        B.N      ??LPLD_SDHC_IOC_9
//  371     }
//  372     if (result == SDHCRES_OK)
??LPLD_SDHC_IOC_12:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??LPLD_SDHC_IOC_13
//  373     {
//  374       if (command.RESPONSE[0] != command.ARGUMENT)
        LDR      R0,[SP, #+20]
        LDR      R1,[SP, #+8]
        CMP      R0,R1
        BEQ.N    ??LPLD_SDHC_IOC_14
//  375       {
//  376         sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  377         result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
//  378         break;
        B.N      ??LPLD_SDHC_IOC_9
//  379       }
//  380       hc = TRUE;
??LPLD_SDHC_IOC_14:
        MOVS     R0,#+1
        MOV      R8,R0
//  381     }
//  382     
//  383     //CMD5 - ���Ͳ���״̬������IO
//  384     command.COMMAND = ESDHC_CMD5;
??LPLD_SDHC_IOC_13:
        LDR.W    R0,??DataTable11  ;; 0x5020000
        STR      R0,[SP, #+4]
//  385     command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  386     command.BLOCKS = 0;      
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  387     result = LPLD_SDHC_SendCommand (&command);
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
//  388     if (result==SDHCRES_ERROR)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SDHC_IOC_15
//  389     {
//  390       sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  391       break;
        B.N      ??LPLD_SDHC_IOC_9
//  392     }
//  393     if (result == SDHCRES_OK)
??LPLD_SDHC_IOC_15:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??LPLD_SDHC_IOC_16
//  394     {
//  395       if (((command.RESPONSE[0] >> 28) & 0x07) && (command.RESPONSE[0] & 0x300000))
        LDR      R0,[SP, #+20]
        UBFX     R0,R0,#+28,#+3
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_17
        LDR      R0,[SP, #+20]
        TST      R0,#0x300000
        BEQ.N    ??LPLD_SDHC_IOC_17
//  396       {
//  397         command.COMMAND = ESDHC_CMD5;
        LDR.W    R0,??DataTable11  ;; 0x5020000
        STR      R0,[SP, #+4]
//  398         command.ARGUMENT = 0x300000;
        MOVS     R0,#+3145728
        STR      R0,[SP, #+8]
//  399         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  400         val = 0;
        MOVS     R0,#+0
        MOV      R11,R0
//  401         do
//  402         {
//  403           val++;
??LPLD_SDHC_IOC_18:
        ADDS     R11,R11,#+1
//  404           if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_19
//  405           {
//  406             break;
//  407           }
//  408         } while ((0 == (command.RESPONSE[0] & 0x80000000)) && (val < ESDHC_ALARM_FREQUENCY));
??LPLD_SDHC_IOC_20:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BMI.N    ??LPLD_SDHC_IOC_19
        CMP      R11,#+100
        BLT.N    ??LPLD_SDHC_IOC_18
//  409         if (SDHCRES_OK != result)
??LPLD_SDHC_IOC_19:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  410         {
//  411           break;
//  412         }
//  413         if (command.RESPONSE[0] & 0x80000000)
??LPLD_SDHC_IOC_21:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BPL.N    ??LPLD_SDHC_IOC_22
//  414         {
//  415           io = TRUE;
        MOVS     R0,#+1
        MOVS     R7,R0
//  416         }
//  417         if (command.RESPONSE[0] & 0x08000000)
??LPLD_SDHC_IOC_22:
        LDR      R0,[SP, #+20]
        LSLS     R0,R0,#+4
        BPL.N    ??LPLD_SDHC_IOC_17
//  418         {
//  419           mp = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
        B.N      ??LPLD_SDHC_IOC_17
//  420         }
//  421       }
//  422     }
//  423     else
//  424     {
//  425       mp = TRUE;
??LPLD_SDHC_IOC_16:
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//  426     }
//  427     
//  428     if (mp)
??LPLD_SDHC_IOC_17:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.W    ??LPLD_SDHC_IOC_23
//  429     {
//  430       //CMD55 - ����Ӧ��������MMC��
//  431       command.COMMAND = ESDHC_CMD55;
        LDR.W    R0,??DataTable11_1  ;; 0x371a0000
        STR      R0,[SP, #+4]
//  432       command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  433       command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  434       if ((result = LPLD_SDHC_SendCommand (&command))==SDHCRES_ERROR)
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BEQ.W    ??LPLD_SDHC_IOC_9
//  435       {
//  436         break;
//  437       }
//  438       if (result == SDHCRES_NONRSPNS)
??LPLD_SDHC_IOC_24:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+5
        BNE.N    ??LPLD_SDHC_IOC_25
//  439       {
//  440         //���ΪMMC �� CE-ATA ��
//  441         io = FALSE;
        MOVS     R0,#+0
        MOVS     R7,R0
//  442         mem = FALSE;
        MOVS     R0,#+0
        MOVS     R6,R0
//  443         hc = FALSE;
        MOVS     R0,#+0
        MOV      R8,R0
//  444         
//  445         //CMD1 - ���Ͳ��������������֧��
//  446         command.COMMAND = ESDHC_CMD1;
        MOVS     R0,#+16777216
        STR      R0,[SP, #+4]
//  447         command.ARGUMENT = 0x40300000;
        LDR.W    R0,??DataTable11_2  ;; 0x40300000
        STR      R0,[SP, #+8]
//  448         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  449         if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  450         {
//  451           break;
//  452         }
//  453         if (0x20000000 == (command.RESPONSE[0] & 0x60000000))
??LPLD_SDHC_IOC_26:
        LDR      R0,[SP, #+20]
        ANDS     R0,R0,#0x60000000
        CMP      R0,#+536870912
        BNE.N    ??LPLD_SDHC_IOC_27
//  454         {
//  455           hc = TRUE;
        MOVS     R0,#+1
        MOV      R8,R0
//  456         }
//  457         mmc = TRUE;
??LPLD_SDHC_IOC_27:
        MOVS     R0,#+1
        STRB     R0,[SP, #+1]
//  458         
//  459         //CMD39 - ����IO�����CE-ATA��CEǩ�� */
//  460         command.COMMAND = ESDHC_CMD39;
        LDR.W    R0,??DataTable11_3  ;; 0x27020000
        STR      R0,[SP, #+4]
//  461         command.ARGUMENT = 0x0C00;
        MOV      R0,#+3072
        STR      R0,[SP, #+8]
//  462         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  463         if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  464         {
//  465           break;
//  466         }
//  467         if (0xCE == (command.RESPONSE[0] >> 8) & 0xFF)
??LPLD_SDHC_IOC_28:
        LDR      R0,[SP, #+20]
        LSRS     R0,R0,#+8
        CMP      R0,#+206
        BNE.N    ??LPLD_SDHC_IOC_29
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_IOC_30
??LPLD_SDHC_IOC_29:
        MOVS     R0,#+0
??LPLD_SDHC_IOC_30:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.W    ??LPLD_SDHC_IOC_23
//  468         {
//  469           //CMD39 - ����IO�����CE-ATA��AAǩ�� */
//  470           command.COMMAND = ESDHC_CMD39;
        LDR.W    R0,??DataTable11_3  ;; 0x27020000
        STR      R0,[SP, #+4]
//  471           command.ARGUMENT = 0x0D00;
        MOV      R0,#+3328
        STR      R0,[SP, #+8]
//  472           command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  473           if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  474           {
//  475             break;
//  476           }
//  477           if (0xAA == (command.RESPONSE[0] >> 8) & 0xFF)
??LPLD_SDHC_IOC_31:
        LDR      R0,[SP, #+20]
        LSRS     R0,R0,#+8
        CMP      R0,#+170
        BNE.N    ??LPLD_SDHC_IOC_32
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_IOC_33
??LPLD_SDHC_IOC_32:
        MOVS     R0,#+0
??LPLD_SDHC_IOC_33:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_23
//  478           {
//  479             mmc = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  480             ceata = TRUE;
        MOVS     R0,#+1
        STRB     R0,[SP, #+2]
        B.N      ??LPLD_SDHC_IOC_23
//  481           }
//  482         }
//  483       }
//  484       else
//  485       {
//  486         //���ΪSD��
//  487         //ACMD41 - ���Ͳ���״̬
//  488         command.COMMAND = ESDHC_ACMD41;
??LPLD_SDHC_IOC_25:
        LDR.W    R0,??DataTable11_4  ;; 0x29020000
        STR      R0,[SP, #+4]
//  489         command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  490         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  491         if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_34
//  492         {
//  493           sdcard_ptr->STATUS = SDHCSTA_NOINIT;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  494           break;
        B.N      ??LPLD_SDHC_IOC_9
//  495         }
//  496         if (command.RESPONSE[0] & 0x300000)
??LPLD_SDHC_IOC_34:
        LDR      R0,[SP, #+20]
        TST      R0,#0x300000
        BEQ.N    ??LPLD_SDHC_IOC_23
//  497         {
//  498           val = 0;
        MOVS     R0,#+0
        MOV      R11,R0
//  499           do
//  500           {
//  501             val++;
??LPLD_SDHC_IOC_35:
        ADDS     R11,R11,#+1
//  502             
//  503             //CMD55 + ACMD41 - ����OCR
//  504             command.COMMAND = ESDHC_CMD55;
        LDR.W    R0,??DataTable11_1  ;; 0x371a0000
        STR      R0,[SP, #+4]
//  505             command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//  506             command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  507             if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_36
//  508             {
//  509               break;
//  510             }
//  511             
//  512             command.COMMAND = ESDHC_ACMD41;
??LPLD_SDHC_IOC_37:
        LDR.W    R0,??DataTable11_4  ;; 0x29020000
        STR      R0,[SP, #+4]
//  513             if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_IOC_38
//  514             {
//  515               command.ARGUMENT = 0x40300000;
        LDR.W    R0,??DataTable11_2  ;; 0x40300000
        STR      R0,[SP, #+8]
        B.N      ??LPLD_SDHC_IOC_39
//  516             }
//  517             else
//  518             {
//  519               command.ARGUMENT = 0x00300000;
??LPLD_SDHC_IOC_38:
        MOVS     R0,#+3145728
        STR      R0,[SP, #+8]
//  520             }
//  521             command.BLOCKS = 0;
??LPLD_SDHC_IOC_39:
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  522             if (result = LPLD_SDHC_SendCommand (&command))
        ADD      R0,SP,#+4
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_36
//  523             {
//  524               break;
//  525             }
//  526           } while ((0 == (command.RESPONSE[0] & 0x80000000)) && (val < ESDHC_ALARM_FREQUENCY));
??LPLD_SDHC_IOC_40:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BMI.N    ??LPLD_SDHC_IOC_36
        CMP      R11,#+100
        BLT.N    ??LPLD_SDHC_IOC_35
//  527           if (SDHCRES_OK != result)
??LPLD_SDHC_IOC_36:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.W    ??LPLD_SDHC_IOC_9
//  528           {
//  529             break;
//  530           }
//  531           if (val >= ESDHC_ALARM_FREQUENCY)
??LPLD_SDHC_IOC_41:
        CMP      R11,#+100
        BLT.N    ??LPLD_SDHC_IOC_42
//  532           {
//  533             hc = FALSE;
        MOVS     R0,#+0
        MOV      R8,R0
        B.N      ??LPLD_SDHC_IOC_23
//  534           }
//  535           else
//  536           {
//  537             mem = TRUE;
??LPLD_SDHC_IOC_42:
        MOVS     R0,#+1
        MOVS     R6,R0
//  538             if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_IOC_23
//  539             {
//  540               hc = FALSE;
        MOVS     R0,#+0
        MOV      R8,R0
//  541               if (command.RESPONSE[0] & 0x40000000)
        LDR      R0,[SP, #+20]
        LSLS     R0,R0,#+1
        BPL.N    ??LPLD_SDHC_IOC_23
//  542               {
//  543                 hc = TRUE;
        MOVS     R0,#+1
        MOV      R8,R0
//  544               }
//  545             }
//  546           }
//  547         }
//  548       }
//  549     }
//  550     if (mmc)
??LPLD_SDHC_IOC_23:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_43
//  551     {
//  552       sdcard_ptr->CARD = ESDHC_CARD_MMC;
        MOVS     R0,#+7
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  553     }
//  554     if (ceata)
??LPLD_SDHC_IOC_43:
        LDRB     R0,[SP, #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SDHC_IOC_44
//  555     {
//  556       sdcard_ptr->CARD = ESDHC_CARD_CEATA;
        MOVS     R0,#+8
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  557     }
//  558     if (io)
??LPLD_SDHC_IOC_44:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??LPLD_SDHC_IOC_45
//  559     {
//  560       sdcard_ptr->CARD = ESDHC_CARD_SDIO;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  561     }
//  562     if (mem)
??LPLD_SDHC_IOC_45:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??LPLD_SDHC_IOC_46
//  563     {
//  564       sdcard_ptr->CARD = ESDHC_CARD_SD;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  565       if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_IOC_46
//  566       {
//  567         sdcard_ptr->CARD = ESDHC_CARD_SDHC;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  568       }
//  569     }
//  570     if (io && mem)
??LPLD_SDHC_IOC_46:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??LPLD_SDHC_IOC_47
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??LPLD_SDHC_IOC_47
//  571     {
//  572       sdcard_ptr->CARD = ESDHC_CARD_SDCOMBO;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  573       if (hc)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_IOC_47
//  574       {
//  575         sdcard_ptr->CARD = ESDHC_CARD_SDHCCOMBO;
        MOVS     R0,#+6
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  576       }
//  577     }
//  578     
//  579     //����GPIO��SDHC����
//  580     LPLD_SDHC_InitGPIO (0);
??LPLD_SDHC_IOC_47:
        MOVS     R0,#+0
        BL       LPLD_SDHC_InitGPIO
//  581     
//  582     //����SDHC����״̬�µ�Ĭ�ϲ�����
//  583     LPLD_SDHC_SetBaudrate (g_core_clock*1000, 25000000);
        LDR.W    R1,??DataTable11_5  ;; 0x17d7840
        LDR.W    R0,??DataTable10_9
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       LPLD_SDHC_SetBaudrate
//  584     
//  585     //ʹ��GPIO��SDHC����
//  586     LPLD_SDHC_InitGPIO (0xFFFF);
        MOVW     R0,#+65535
        BL       LPLD_SDHC_InitGPIO
//  587     
//  588     if(result == SDHCRES_OK)
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BNE.N    ??LPLD_SDHC_IOC_48
//  589     {
//  590       sdcard_ptr->STATUS = SDHCSTA_OK;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  591     }
//  592     break;
??LPLD_SDHC_IOC_48:
        B.N      ??LPLD_SDHC_IOC_9
//  593   case IO_IOCTL_ESDHC_SEND_COMMAND:
//  594     result = LPLD_SDHC_SendCommand ((ESDHC_COMMAND_STRUCT_PTR)param32_ptr);
??LPLD_SDHC_IOC_1:
        MOV      R0,R10
        BL       LPLD_SDHC_SendCommand
        MOV      R9,R0
//  595     break;
        B.N      ??LPLD_SDHC_IOC_9
//  596   case IO_IOCTL_ESDHC_GET_BAUDRATE:
//  597     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_3:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_49
//  598     {
//  599       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_50
//  600     }
//  601     else
//  602     {
//  603       //��ȡ������
//  604       val = ((SDHC->SYSCTL & SDHC_SYSCTL_SDCLKFS_MASK) >> SDHC_SYSCTL_SDCLKFS_SHIFT) << 1;
??LPLD_SDHC_IOC_49:
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+7
        ANDS     R0,R0,#0x1FE
        MOV      R11,R0
//  605       val *= ((SDHC->SYSCTL & SDHC_SYSCTL_DVS_MASK) >> SDHC_SYSCTL_DVS_SHIFT) + 1;
        LDR.W    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+4,#+4
        ADDS     R0,R0,#+1
        MUL      R11,R0,R11
//  606       *param32_ptr = (uint32)((g_core_clock*1000 / val));
        LDR.W    R0,??DataTable10_9
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        MULS     R0,R1,R0
        UDIV     R0,R0,R11
        STR      R0,[R10, #+0]
//  607     }
//  608     break;
??LPLD_SDHC_IOC_50:
        B.N      ??LPLD_SDHC_IOC_9
//  609   case IO_IOCTL_ESDHC_SET_BAUDRATE:
//  610     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_4:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_51
//  611     {
//  612       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_52
//  613     }
//  614     else if (0 == (*param32_ptr))
??LPLD_SDHC_IOC_51:
        LDR      R0,[R10, #+0]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_53
//  615     {
//  616       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_52
//  617     }
//  618     else
//  619     {
//  620       if (! LPLD_SDHC_IsRunning ())
??LPLD_SDHC_IOC_53:
        BL       LPLD_SDHC_IsRunning
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_54
//  621       {
//  622         //����GPIO��SDHC����
//  623         LPLD_SDHC_InitGPIO (0);
        MOVS     R0,#+0
        BL       LPLD_SDHC_InitGPIO
//  624         
//  625         //���ò�����
//  626         LPLD_SDHC_SetBaudrate (g_core_clock*1000, *param32_ptr);
        LDR      R1,[R10, #+0]
        LDR.W    R0,??DataTable10_9
        LDR      R0,[R0, #+0]
        MOV      R2,#+1000
        MULS     R0,R2,R0
        BL       LPLD_SDHC_SetBaudrate
//  627         
//  628         //ʹ��GPIO��SDHC����
//  629         LPLD_SDHC_InitGPIO (0xFFFF);
        MOVW     R0,#+65535
        BL       LPLD_SDHC_InitGPIO
        B.N      ??LPLD_SDHC_IOC_52
//  630       }
//  631       else
//  632       {
//  633         result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_54:
        MOVS     R0,#+1
        MOV      R9,R0
//  634       }
//  635     }
//  636     break;
??LPLD_SDHC_IOC_52:
        B.N      ??LPLD_SDHC_IOC_9
//  637   case IO_IOCTL_ESDHC_GET_BUS_WIDTH:
//  638     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_5:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_55
//  639     {
//  640       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_56
//  641     }
//  642     else
//  643     {
//  644       //���SDHC���߿��
//  645       val = (SDHC->PROCTL & SDHC_PROCTL_DTW_MASK) >> SDHC_PROCTL_DTW_SHIFT;
??LPLD_SDHC_IOC_55:
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+1,#+2
        MOV      R11,R0
//  646       if (ESDHC_PROCTL_DTW_1BIT == val)
        CMP      R11,#+0
        BNE.N    ??LPLD_SDHC_IOC_57
//  647       {
//  648         *param32_ptr = ESDHC_BUS_WIDTH_1BIT;
        MOVS     R0,#+0
        STR      R0,[R10, #+0]
        B.N      ??LPLD_SDHC_IOC_56
//  649       }
//  650       else if (ESDHC_PROCTL_DTW_4BIT == val)
??LPLD_SDHC_IOC_57:
        CMP      R11,#+1
        BNE.N    ??LPLD_SDHC_IOC_58
//  651       {
//  652         *param32_ptr = ESDHC_BUS_WIDTH_4BIT;
        MOVS     R0,#+1
        STR      R0,[R10, #+0]
        B.N      ??LPLD_SDHC_IOC_56
//  653       }
//  654       else if (ESDHC_PROCTL_DTW_8BIT == val)
??LPLD_SDHC_IOC_58:
        CMP      R11,#+16
        BNE.N    ??LPLD_SDHC_IOC_59
//  655       {
//  656         *param32_ptr = ESDHC_BUS_WIDTH_8BIT;
        MOVS     R0,#+2
        STR      R0,[R10, #+0]
        B.N      ??LPLD_SDHC_IOC_56
//  657       }
//  658       else
//  659       {
//  660         result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_59:
        MOVS     R0,#+1
        MOV      R9,R0
//  661       }
//  662     }
//  663     break;
??LPLD_SDHC_IOC_56:
        B.N      ??LPLD_SDHC_IOC_9
//  664   case IO_IOCTL_ESDHC_SET_BUS_WIDTH:
//  665     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_6:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_60
//  666     {
//  667       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_61
//  668     }
//  669     else
//  670     {
//  671       //����SDHC���߿��
//  672       if (! LPLD_SDHC_IsRunning ())
??LPLD_SDHC_IOC_60:
        BL       LPLD_SDHC_IsRunning
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_62
//  673       {
//  674         if (ESDHC_BUS_WIDTH_1BIT == *param32_ptr)
        LDR      R0,[R10, #+0]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_63
//  675         {
//  676           SDHC->PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  677           SDHC->PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_1BIT);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SDHC_IOC_61
//  678         }
//  679         else if (ESDHC_BUS_WIDTH_4BIT == *param32_ptr)
??LPLD_SDHC_IOC_63:
        LDR      R0,[R10, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SDHC_IOC_64
//  680         {
//  681           SDHC->PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  682           SDHC->PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_4BIT);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SDHC_IOC_61
//  683         }
//  684         else if (ESDHC_BUS_WIDTH_8BIT == *param32_ptr)
??LPLD_SDHC_IOC_64:
        LDR      R0,[R10, #+0]
        CMP      R0,#+2
        BNE.N    ??LPLD_SDHC_IOC_65
//  685         {
//  686           SDHC->PROCTL &= (~ SDHC_PROCTL_DTW_MASK);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x6
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
//  687           SDHC->PROCTL |= SDHC_PROCTL_DTW(ESDHC_PROCTL_DTW_8BIT);
        LDR.W    R0,??DataTable9_2  ;; 0x400b1028
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable9_2  ;; 0x400b1028
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SDHC_IOC_61
//  688         }
//  689         else
//  690         {
//  691           result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_65:
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_61
//  692         }
//  693       }
//  694       else
//  695       {
//  696         result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_62:
        MOVS     R0,#+1
        MOV      R9,R0
//  697       }
//  698     }
//  699     break;
??LPLD_SDHC_IOC_61:
        B.N      ??LPLD_SDHC_IOC_9
//  700   case IO_IOCTL_ESDHC_GET_CARD:
//  701     if (NULL == param32_ptr)
??LPLD_SDHC_IOC_2:
        CMP      R10,#+0
        BNE.N    ??LPLD_SDHC_IOC_66
//  702     {
//  703       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??LPLD_SDHC_IOC_67
//  704     }
//  705     else
//  706     {
//  707       //�ȴ�80��ʱ��
//  708       SDHC->SYSCTL |= SDHC_SYSCTL_INITA_MASK;
??LPLD_SDHC_IOC_66:
        LDR.N    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_7  ;; 0x400b102c
        STR      R0,[R1, #+0]
//  709       while (SDHC->SYSCTL & SDHC_SYSCTL_INITA_MASK)
??LPLD_SDHC_IOC_68:
        LDR.N    R0,??DataTable8_7  ;; 0x400b102c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??LPLD_SDHC_IOC_68
//  710       { };
//  711       
//  712       //���²����ؿ�ʵ��״̬
//  713       if (SDHC->IRQSTAT & SDHC_IRQSTAT_CRM_MASK)
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_SDHC_IOC_69
//  714       {
//  715         SDHC->IRQSTAT |= SDHC_IRQSTAT_CRM_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  716         sdcard_ptr->CARD = ESDHC_CARD_NONE;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  717         sdcard_ptr->STATUS = SDHCSTA_NODISK;
        MOVS     R0,#+2
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  718       }
//  719       if (SDHC->PRSSTAT & SDHC_PRSSTAT_CINS_MASK)
??LPLD_SDHC_IOC_69:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??LPLD_SDHC_IOC_70
//  720       {
//  721         if (ESDHC_CARD_NONE == sdcard_ptr->CARD)
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+16]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_IOC_71
//  722         {
//  723           sdcard_ptr->CARD = ESDHC_CARD_UNKNOWN;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
        B.N      ??LPLD_SDHC_IOC_71
//  724         }
//  725       }
//  726       else
//  727       {
//  728         sdcard_ptr->CARD = ESDHC_CARD_NONE;
??LPLD_SDHC_IOC_70:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  729       }
//  730       *param32_ptr = sdcard_ptr->CARD;
??LPLD_SDHC_IOC_71:
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+16]
        STR      R0,[R10, #+0]
//  731     }
//  732     break;
??LPLD_SDHC_IOC_67:
        B.N      ??LPLD_SDHC_IOC_9
//  733     
//  734   case IO_IOCTL_FLUSH_OUTPUT:
//  735     //�ȴ��������
//  736     LPLD_SDHC_WaitStatus (SDHC_IRQSTAT_TC_MASK);
??LPLD_SDHC_IOC_7:
        MOVS     R0,#+2
        BL       LPLD_SDHC_WaitStatus
//  737     if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_IOC_72
//  738     {
//  739       SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x700000
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  740       result = SDHCRES_ERROR;
        MOVS     R0,#+1
        MOV      R9,R0
//  741     }
//  742     SDHC->IRQSTAT |= SDHC_IRQSTAT_TC_MASK | SDHC_IRQSTAT_BRR_MASK | SDHC_IRQSTAT_BWR_MASK;
??LPLD_SDHC_IOC_72:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x32
        LDR.W    R1,??DataTable9  ;; 0x400b1030
        STR      R0,[R1, #+0]
//  743     break;
        B.N      ??LPLD_SDHC_IOC_9
//  744   default:
//  745     result = SDHCRES_ERROR;
??LPLD_SDHC_IOC_8:
        MOVS     R0,#+1
        MOV      R9,R0
//  746     break;
//  747   }
//  748   
//  749   
//  750   return result;
??LPLD_SDHC_IOC_9:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+36
        POP      {R4-R11,PC}      ;; return
//  751 }
//  752 
//  753 /*
//  754  * LPLD_SDHC_Read
//  755  * SDHC������
//  756  * 
//  757  * ����:
//  758  *    *data_ptr--�洢���ݵ�ַָ��
//  759  *    n--���������ݳ���
//  760  *
//  761  * ���:
//  762  *    SDHCRES--���̹��ܷ���ֵ
//  763  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  764 static SDHCSTATUS LPLD_SDHC_Read(uint8 *data_ptr, int32 n)
//  765 {
LPLD_SDHC_Read:
        PUSH     {R4,R5}
        MOVS     R2,R0
//  766   uint32 buffer;
//  767   int32 remains;
//  768   
//  769   remains = n;
        MOVS     R4,R1
//  770   if (((uint32)data_ptr & 0x03) == 0)
        ANDS     R0,R2,#0x3
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_Read_0
//  771   {    
//  772     //����λ�ֶ��룬�����������ٶ�ֱ�ӴӼĴ�������
//  773     while (remains >= 4)
??LPLD_SDHC_Read_1:
        CMP      R4,#+4
        BLT.N    ??LPLD_SDHC_Read_2
//  774     {
//  775       if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Read_3
//  776       {
//  777         SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R5,??DataTable9  ;; 0x400b1030
        STR      R0,[R5, #+0]
//  778         return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Read_4
//  779       }
//  780       
//  781       //�ȴ���ֱ���յ������ݴﵽˮӡ���Ȼ������
//  782       while ((0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BREN_MASK)) && (SDHC->PRSSTAT & SDHC_PRSSTAT_DLA_MASK))
??LPLD_SDHC_Read_3:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BMI.N    ??LPLD_SDHC_Read_5
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BMI.N    ??LPLD_SDHC_Read_3
//  783       { };
//  784       
//  785       *((uint32 *)data_ptr) = SDHC->DATPORT;
??LPLD_SDHC_Read_5:
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        LDR      R0,[R0, #+0]
        STR      R0,[R2, #+0]
//  786       data_ptr += 4;
        ADDS     R2,R2,#+4
//  787       remains -= 4;
        SUBS     R4,R4,#+4
        B.N      ??LPLD_SDHC_Read_1
//  788     }
//  789   }
//  790   else
//  791   {
//  792     //�Ƕ������ݣ�������ʱ�������ֽڸ���
//  793     while (remains >= 4)
??LPLD_SDHC_Read_0:
        CMP      R4,#+4
        BLT.N    ??LPLD_SDHC_Read_2
//  794     {
//  795       if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Read_6
//  796       {
//  797         SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R5,??DataTable9  ;; 0x400b1030
        STR      R0,[R5, #+0]
//  798         return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Read_4
//  799       }
//  800       
//  801       //�ȴ���ֱ���յ������ݴﵽˮӡ���Ȼ������
//  802       while ((0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BREN_MASK)) && (SDHC->PRSSTAT & SDHC_PRSSTAT_DLA_MASK))
??LPLD_SDHC_Read_6:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BMI.N    ??LPLD_SDHC_Read_7
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BMI.N    ??LPLD_SDHC_Read_6
//  803       { };
//  804       
//  805       buffer = SDHC->DATPORT;
??LPLD_SDHC_Read_7:
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        LDR      R0,[R0, #+0]
        MOVS     R3,R0
//  806       
//  807       *data_ptr++ = buffer & 0xFF;
        STRB     R3,[R2, #+0]
        ADDS     R2,R2,#+1
//  808       *data_ptr++ = (buffer >> 8) & 0xFF;
        LSRS     R0,R3,#+8
        STRB     R0,[R2, #+0]
        ADDS     R2,R2,#+1
//  809       *data_ptr++ = (buffer >> 16) & 0xFF;
        LSRS     R0,R3,#+16
        STRB     R0,[R2, #+0]
        ADDS     R2,R2,#+1
//  810       *data_ptr++ = (buffer >> 24) & 0xFF;
        LSRS     R0,R3,#+24
        STRB     R0,[R2, #+0]
        ADDS     R2,R2,#+1
//  811       
//  812       remains -= 4;
        SUBS     R4,R4,#+4
        B.N      ??LPLD_SDHC_Read_0
//  813     }      
//  814   }
//  815   
//  816   if (remains)
??LPLD_SDHC_Read_2:
        CMP      R4,#+0
        BEQ.N    ??LPLD_SDHC_Read_8
//  817   {
//  818     //ʣ�µ����ڵ��ֳ�������
//  819     if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Read_9
//  820     {
//  821       SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R5,??DataTable9  ;; 0x400b1030
        STR      R0,[R5, #+0]
//  822       return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Read_4
//  823     }
//  824     
//  825     //�ȴ���ֱ���յ������ݴﵽˮӡ���Ȼ������
//  826     while ((0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BREN_MASK)) && (SDHC->PRSSTAT & SDHC_PRSSTAT_DLA_MASK))
??LPLD_SDHC_Read_9:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BMI.N    ??LPLD_SDHC_Read_10
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BMI.N    ??LPLD_SDHC_Read_9
//  827     { };
//  828     
//  829     buffer = SDHC->DATPORT;
??LPLD_SDHC_Read_10:
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        LDR      R0,[R0, #+0]
        MOVS     R3,R0
//  830     while (remains)
??LPLD_SDHC_Read_11:
        CMP      R4,#+0
        BEQ.N    ??LPLD_SDHC_Read_8
//  831     {
//  832       
//  833       *data_ptr++ = buffer & 0xFF;
        STRB     R3,[R2, #+0]
        ADDS     R2,R2,#+1
//  834       buffer >>= 8;
        LSRS     R3,R3,#+8
//  835       
//  836       remains--;
        SUBS     R4,R4,#+1
        B.N      ??LPLD_SDHC_Read_11
//  837     }
//  838   }
//  839   
//  840   if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
??LPLD_SDHC_Read_8:
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Read_12
//  841   {
//  842     SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BRR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x20
        LDR.W    R5,??DataTable9  ;; 0x400b1030
        STR      R0,[R5, #+0]
//  843     return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Read_4
//  844   }
//  845   
//  846   return (n - remains);
??LPLD_SDHC_Read_12:
        SUBS     R0,R1,R4
??LPLD_SDHC_Read_4:
        POP      {R4,R5}
        BX       LR               ;; return
//  847 }
//  848 
//  849 /*
//  850  * LPLD_SDHC_Write
//  851  * SDHCд����
//  852  * 
//  853  * ����:
//  854  *    *data_ptr--�洢���ݵ�ַָ��
//  855  *    n--��д�����ݳ���
//  856  *
//  857  * ���:
//  858  *    SDHCRES--���̹��ܷ���ֵ
//  859  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  860 static SDHCSTATUS LPLD_SDHC_Write(uint8 *data_ptr, int32 n)
//  861 {
LPLD_SDHC_Write:
        PUSH     {R4-R6}
        MOVS     R2,R0
//  862   uint8 *udata_ptr;
//  863   uint32 buffer;
//  864   int32 remains;
//  865   
//  866   //��������ָ��
//  867   udata_ptr = (uint8 *)data_ptr;
        MOVS     R3,R2
//  868   
//  869   remains = n;
        MOVS     R5,R1
//  870   if (((uint32)udata_ptr & 0x03) == 0)
        ANDS     R0,R3,#0x3
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_Write_0
//  871   {
//  872     //����λ�ֶ��룬�����������ٶ�ֱ�ӿ������Ĵ���
//  873     while (remains >= 4)
??LPLD_SDHC_Write_1:
        CMP      R5,#+4
        BLT.N    ??LPLD_SDHC_Write_2
//  874     {
//  875       if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Write_3
//  876       {
//  877         SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.W    R6,??DataTable9  ;; 0x400b1030
        STR      R0,[R6, #+0]
//  878         return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Write_4
//  879       }
//  880       
//  881       //�ȴ���ֱ��ˮӡ�ռ���� 
//  882       while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
??LPLD_SDHC_Write_3:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??LPLD_SDHC_Write_3
//  883       { };
//  884       
//  885       SDHC->DATPORT = *((uint32 *)udata_ptr);
        LDR      R0,[R3, #+0]
        LDR.W    R6,??DataTable11_6  ;; 0x400b1020
        STR      R0,[R6, #+0]
//  886       udata_ptr += 4;
        ADDS     R3,R3,#+4
//  887       remains -= 4;
        SUBS     R5,R5,#+4
        B.N      ??LPLD_SDHC_Write_1
//  888     }
//  889   }
//  890   else
//  891   {
//  892     //�Ƕ������ݣ�д����ʱ�������ֽڸ���
//  893     while (remains >= 4)
??LPLD_SDHC_Write_0:
        CMP      R5,#+4
        BLT.N    ??LPLD_SDHC_Write_2
//  894     {
//  895       if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.W    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Write_5
//  896       {
//  897         SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.N    R6,??DataTable9  ;; 0x400b1030
        STR      R0,[R6, #+0]
//  898         return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Write_4
//  899       }
//  900       
//  901       //�ȴ���ֱ��ˮӡ�ռ���� 
//  902       while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
??LPLD_SDHC_Write_5:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??LPLD_SDHC_Write_5
//  903       { };
//  904       
//  905       buffer  = (*udata_ptr++);
        LDRB     R0,[R3, #+0]
        MOVS     R4,R0
        ADDS     R3,R3,#+1
//  906       buffer |= (*udata_ptr++) << 8;
        LDRB     R0,[R3, #+0]
        ORRS     R4,R4,R0, LSL #+8
        ADDS     R3,R3,#+1
//  907       buffer |= (*udata_ptr++) << 16;
        LDRB     R0,[R3, #+0]
        ORRS     R4,R4,R0, LSL #+16
        ADDS     R3,R3,#+1
//  908       buffer |= (*udata_ptr++) << 24;
        LDRB     R0,[R3, #+0]
        ORRS     R4,R4,R0, LSL #+24
        ADDS     R3,R3,#+1
//  909       
//  910       //�ȴ���ֱ��ˮӡ�ռ���� 
//  911       while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
??LPLD_SDHC_Write_6:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??LPLD_SDHC_Write_6
//  912       { };
//  913       
//  914       SDHC->DATPORT = buffer;
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        STR      R4,[R0, #+0]
//  915       remains -= 4;
        SUBS     R5,R5,#+4
        B.N      ??LPLD_SDHC_Write_0
//  916     }      
//  917   }
//  918   
//  919   if (remains)
??LPLD_SDHC_Write_2:
        CMP      R5,#+0
        BEQ.N    ??LPLD_SDHC_Write_7
//  920   {
//  921     //ʣ�����ڵ��ֳ��ȵ�����
//  922     if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Write_8
//  923     {
//  924       SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.N    R6,??DataTable9  ;; 0x400b1030
        STR      R0,[R6, #+0]
//  925       return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Write_4
//  926     }
//  927     
//  928     buffer = 0xFFFFFFFF;
??LPLD_SDHC_Write_8:
        MOVS     R0,#-1
        MOVS     R4,R0
//  929     while (remains)
??LPLD_SDHC_Write_9:
        CMP      R5,#+0
        BEQ.N    ??LPLD_SDHC_Write_10
//  930     {
//  931       buffer <<= 8;
        LSLS     R4,R4,#+8
//  932       buffer |= udata_ptr[remains];
        LDRB     R0,[R5, R3]
        ORRS     R4,R0,R4
//  933       remains--;
        SUBS     R5,R5,#+1
        B.N      ??LPLD_SDHC_Write_9
//  934     }
//  935     
//  936     //�ȴ���ֱ��ˮӡ�ռ���� 
//  937     while (0 == (SDHC->PRSSTAT & SDHC_PRSSTAT_BWEN_MASK))
??LPLD_SDHC_Write_10:
        LDR.N    R0,??DataTable8_8  ;; 0x400b1024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??LPLD_SDHC_Write_10
//  938     { };
//  939     
//  940     SDHC->DATPORT = buffer;        
        LDR.W    R0,??DataTable11_6  ;; 0x400b1020
        STR      R4,[R0, #+0]
//  941   }
//  942   
//  943   if (SDHC->IRQSTAT & (SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK))
??LPLD_SDHC_Write_7:
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        TST      R0,#0x700000
        BEQ.N    ??LPLD_SDHC_Write_11
//  944   {
//  945     SDHC->IRQSTAT |= SDHC_IRQSTAT_DEBE_MASK | SDHC_IRQSTAT_DCE_MASK | SDHC_IRQSTAT_DTOE_MASK | SDHC_IRQSTAT_BWR_MASK;
        LDR.N    R0,??DataTable9  ;; 0x400b1030
        LDR      R0,[R0, #+0]
        ORR      R0,R0,#0x700000
        ORRS     R0,R0,#0x10
        LDR.N    R6,??DataTable9  ;; 0x400b1030
        STR      R0,[R6, #+0]
//  946     return SDHCRES_ERROR;
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_Write_4
//  947   }
//  948   
//  949   return (n - remains);
??LPLD_SDHC_Write_11:
        SUBS     R0,R1,R5
??LPLD_SDHC_Write_4:
        POP      {R4-R6}
        BX       LR               ;; return
//  950 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x400b102c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x400b1024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x1008000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x400b10c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x400b1004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x10002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x400b1044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x7f00b3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x400b1034
//  951 
//  952 /*
//  953  * LPLD_SDHC_InitCard
//  954  * ��ʼ��SDHCģ�鼰SD����������������������Ϊ40MHz
//  955  * 
//  956  * ����:
//  957  *    ��
//  958  *
//  959  * ���:
//  960  *    SDHCSTA_OK--״̬����
//  961  *    SDHCSTA_NOINIT--����δ��ʼ��
//  962  *    SDHCSTA_NODISK--Ϊ���뿨
//  963  *    SDHCSTA_PROTECT--��д����
//  964  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  965 SDHCSTATUS LPLD_SDHC_InitCard(void)
//  966 {
LPLD_SDHC_InitCard:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+40
//  967   uint32 param, c_size, c_size_mult, read_bl_len, time_out = 0;
        MOVS     R6,#+0
//  968   ESDHC_COMMAND_STRUCT command;
//  969   SDHCSTATUS result;
//  970   
//  971   //����SD����Ϣ�ṹ������ݿռ䲢��ʼ��
//  972   sdcard_ptr = (SDCARD_STRUCT_PTR)malloc(sizeof(SDCARD_STRUCT));
        MOVS     R0,#+24
        BL       malloc
        LDR.N    R1,??DataTable9_1
        STR      R0,[R1, #+0]
//  973   sdcard_ptr->CARD = ESDHC_CARD_NONE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+16]
//  974   sdcard_ptr->TIMEOUT = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
//  975   sdcard_ptr->NUM_BLOCKS = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+4]
//  976   sdcard_ptr->ADDRESS = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+12]
//  977   sdcard_ptr->HC = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+8]
//  978   sdcard_ptr->VERSION2 = FALSE;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+9]
//  979   sdcard_ptr->STATUS = SDHCSTA_OK;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+20]
//  980    
//  981   while(time_out < 1000)
??LPLD_SDHC_InitCard_0:
        CMP      R6,#+1000
        BCS.N    ??LPLD_SDHC_InitCard_1
//  982   {
//  983     
//  984     //��ʼ��SDHCģ�鲢��⿨
//  985     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_INIT, NULL)))
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BNE.N    ??LPLD_SDHC_InitCard_0
//  986     {
//  987       continue;
//  988     }
//  989     
//  990     //SDHC���
//  991     param = 0;
??LPLD_SDHC_InitCard_2:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  992     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_GET_CARD, &param)))
        ADD      R1,SP,#+0
        MOVS     R0,#+3
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BNE.N    ??LPLD_SDHC_InitCard_0
//  993     {
//  994       continue;
//  995     }
//  996     if ((ESDHC_CARD_SD == param) || (ESDHC_CARD_SDHC == param) || (ESDHC_CARD_SDCOMBO == param) || (ESDHC_CARD_SDHCCOMBO == param))
??LPLD_SDHC_InitCard_3:
        LDR      R0,[SP, #+0]
        CMP      R0,#+2
        BEQ.N    ??LPLD_SDHC_InitCard_4
        LDR      R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??LPLD_SDHC_InitCard_4
        LDR      R0,[SP, #+0]
        CMP      R0,#+5
        BEQ.N    ??LPLD_SDHC_InitCard_4
        LDR      R0,[SP, #+0]
        CMP      R0,#+6
        BNE.N    ??LPLD_SDHC_InitCard_5
//  997     {
//  998       if ((ESDHC_CARD_SDHC == param) || (ESDHC_CARD_SDHCCOMBO == param))
??LPLD_SDHC_InitCard_4:
        LDR      R0,[SP, #+0]
        CMP      R0,#+3
        BEQ.N    ??LPLD_SDHC_InitCard_6
        LDR      R0,[SP, #+0]
        CMP      R0,#+6
        BNE.N    ??LPLD_SDHC_InitCard_7
//  999       {
// 1000         sdcard_ptr->HC = TRUE;
??LPLD_SDHC_InitCard_6:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+8]
// 1001         break;
        B.N      ??LPLD_SDHC_InitCard_1
// 1002       }
// 1003       else if(ESDHC_CARD_SD == param)
??LPLD_SDHC_InitCard_7:
        LDR      R0,[SP, #+0]
        CMP      R0,#+2
        BEQ.N    ??LPLD_SDHC_InitCard_1
// 1004       {
// 1005         break;
// 1006       }
// 1007     }
// 1008     else
// 1009     {
// 1010       continue;
// 1011     }
// 1012     time_out++;
??LPLD_SDHC_InitCard_8:
        ADDS     R6,R6,#+1
        B.N      ??LPLD_SDHC_InitCard_0
??LPLD_SDHC_InitCard_5:
        B.N      ??LPLD_SDHC_InitCard_0
// 1013   }
// 1014   
// 1015   if(time_out >= 1000)
??LPLD_SDHC_InitCard_1:
        CMP      R6,#+1000
        BCC.N    ??LPLD_SDHC_InitCard_9
// 1016     return SDHCRES_NOTRDY;
        MOVS     R0,#+3
        B.N      ??LPLD_SDHC_InitCard_10
// 1017   
// 1018   //��ʶ��
// 1019   command.COMMAND = ESDHC_CMD2;
??LPLD_SDHC_InitCard_9:
        LDR.W    R0,??DataTable11_7  ;; 0x2090000
        STR      R0,[SP, #+4]
// 1020   command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
// 1021   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1022   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_11
// 1023   {
// 1024     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1025   }
// 1026   
// 1027   //��ȡ����ַ
// 1028   command.COMMAND = ESDHC_CMD3;
??LPLD_SDHC_InitCard_11:
        LDR.W    R0,??DataTable11_8  ;; 0x31a0000
        STR      R0,[SP, #+4]
// 1029   command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
// 1030   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1031   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_12
// 1032   {
// 1033     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1034   }
// 1035   sdcard_ptr->ADDRESS = command.RESPONSE[0] & 0xFFFF0000;
??LPLD_SDHC_InitCard_12:
        LDR      R0,[SP, #+20]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+12]
// 1036   
// 1037   //��ȡ������
// 1038   command.COMMAND = ESDHC_CMD9;
        LDR.W    R0,??DataTable11_9  ;; 0x9090000
        STR      R0,[SP, #+4]
// 1039   command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1040   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1041   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_13
// 1042   {
// 1043     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1044   }
// 1045   if (0 == (command.RESPONSE[3] & 0x00C00000))
??LPLD_SDHC_InitCard_13:
        LDR      R0,[SP, #+32]
        TST      R0,#0xC00000
        BNE.N    ??LPLD_SDHC_InitCard_14
// 1046   {
// 1047     read_bl_len = (command.RESPONSE[2] >> 8) & 0x0F;
        LDR      R0,[SP, #+28]
        UBFX     R0,R0,#+8,#+4
        MOVS     R5,R0
// 1048     c_size = command.RESPONSE[2] & 0x03;
        LDRB     R0,[SP, #+28]
        ANDS     R0,R0,#0x3
        MOVS     R7,R0
// 1049     c_size = (c_size << 10) | (command.RESPONSE[1] >> 22);
        LDR      R0,[SP, #+24]
        LSRS     R0,R0,#+22
        ORRS     R7,R0,R7, LSL #+10
// 1050     c_size_mult = (command.RESPONSE[1] >> 7) & 0x07;
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+7,#+3
        MOVS     R4,R0
// 1051     sdcard_ptr->NUM_BLOCKS = (c_size + 1) * (1 << (c_size_mult + 2)) * (1 << (read_bl_len - 9));
        ADDS     R0,R7,#+1
        MOVS     R1,#+1
        ADDS     R2,R4,#+2
        LSLS     R1,R1,R2
        MULS     R0,R1,R0
        MOVS     R1,#+1
        MOVS     R2,R5
        SUBS     R2,R2,#+9
        LSLS     R1,R1,R2
        MULS     R0,R1,R0
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+4]
        B.N      ??LPLD_SDHC_InitCard_15
// 1052   }
// 1053   else
// 1054   {
// 1055     sdcard_ptr->VERSION2 = TRUE;
??LPLD_SDHC_InitCard_14:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+9]
// 1056     c_size = (command.RESPONSE[1] >> 8) & 0x003FFFFF;
        LDR      R0,[SP, #+24]
        UBFX     R0,R0,#+8,#+22
        MOVS     R7,R0
// 1057     sdcard_ptr->NUM_BLOCKS = (c_size + 1) << 10;
        ADDS     R0,R7,#+1
        LSLS     R0,R0,#+10
        LDR.N    R1,??DataTable9_1
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+4]
// 1058   }
// 1059   
// 1060   //������������������Ϊ40MHz
// 1061   //param = 40000000;    
// 1062   param = 25000000;      
??LPLD_SDHC_InitCard_15:
        LDR.N    R0,??DataTable11_5  ;; 0x17d7840
        STR      R0,[SP, #+0]
// 1063   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SET_BAUDRATE, &param)))
        ADD      R1,SP,#+0
        MOVS     R0,#+5
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_16
// 1064   {
// 1065     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1066   }
// 1067   
// 1068   //ѡ��
// 1069   command.COMMAND = ESDHC_CMD7;
??LPLD_SDHC_InitCard_16:
        LDR.N    R0,??DataTable11_10  ;; 0x71b0000
        STR      R0,[SP, #+4]
// 1070   command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1071   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1072   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_17
// 1073   {
// 1074     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1075   }
// 1076   
// 1077   //���ÿ��СΪ512�ֽ�
// 1078   command.COMMAND = ESDHC_CMD16;
??LPLD_SDHC_InitCard_17:
        LDR.N    R0,??DataTable11_11  ;; 0x101a0000
        STR      R0,[SP, #+4]
// 1079   command.ARGUMENT = IO_SDCARD_BLOCK_SIZE;
        MOV      R0,#+512
        STR      R0,[SP, #+8]
// 1080   command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1081   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_18
// 1082   {
// 1083     return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1084   }
// 1085   
// 1086   if (ESDHC_BUS_WIDTH_4BIT == ESDHC_BUS_WIDTH_4BIT)
// 1087   {
// 1088     //����Ӧ������
// 1089     command.COMMAND = ESDHC_CMD55;
??LPLD_SDHC_InitCard_18:
        LDR.N    R0,??DataTable11_1  ;; 0x371a0000
        STR      R0,[SP, #+4]
// 1090     command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1091     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1092     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_19
// 1093     {
// 1094       return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1095     }
// 1096     
// 1097     //�������߿��Ϊ4bit
// 1098     command.COMMAND = ESDHC_ACMD6;
??LPLD_SDHC_InitCard_19:
        LDR.N    R0,??DataTable11_12  ;; 0x61a0000
        STR      R0,[SP, #+4]
// 1099     command.ARGUMENT = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
// 1100     command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1101     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_20
// 1102     {
// 1103       return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1104     }
// 1105     
// 1106     param = ESDHC_BUS_WIDTH_4BIT;
??LPLD_SDHC_InitCard_20:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
// 1107     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SET_BUS_WIDTH, &param)))
        ADD      R1,SP,#+0
        MOVS     R0,#+7
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_InitCard_21
// 1108     {
// 1109       return result;
        MOV      R0,R8
        B.N      ??LPLD_SDHC_InitCard_10
// 1110     }
// 1111   }
// 1112   
// 1113   return SDHCRES_OK;
??LPLD_SDHC_InitCard_21:
        MOVS     R0,#+0
??LPLD_SDHC_InitCard_10:
        ADD      SP,SP,#+40
        POP      {R4-R8,PC}       ;; return
// 1114 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x400b1030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     sdcard_ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x400b1028
// 1115 
// 1116 
// 1117 /*
// 1118  * LPLD_SDHC_ReadBlocks
// 1119  * ��ָ������ָ�����ȵĿ�
// 1120  * 
// 1121  * ����:
// 1122  *    buff--�洢�������ݵĵ�ַָ��
// 1123  *    sector--��ʼ��������
// 1124  *    count--��������������������
// 1125  *
// 1126  * ���:
// 1127  *    SDHCRES--���̹��ܷ���ֵ
// 1128  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1129 SDHCRES LPLD_SDHC_ReadBlocks(uint8 *buff, uint32 sector, uint32 count)
// 1130 {
LPLD_SDHC_ReadBlocks:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+32
        MOVS     R4,R0
        MOV      R8,R1
        MOVS     R5,R2
// 1131   ESDHC_COMMAND_STRUCT command;
// 1132   int cnt;
// 1133   int32 result;
// 1134   
// 1135   //SD�����ݵ�ַ����
// 1136   if (! sdcard_ptr->HC)
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_ReadBlocks_0
// 1137   {
// 1138     sector <<= IO_SDCARD_BLOCK_SIZE_POWER;
        LSLS     R8,R8,#+9
// 1139   }
// 1140   
// 1141   //���ö�������
// 1142   if (count > 1)
??LPLD_SDHC_ReadBlocks_0:
        CMP      R5,#+2
        BCC.N    ??LPLD_SDHC_ReadBlocks_1
// 1143   {
// 1144     command.COMMAND = ESDHC_CMD18;
        LDR.N    R0,??DataTable11_14  ;; 0x121a0034
        STR      R0,[SP, #+0]
        B.N      ??LPLD_SDHC_ReadBlocks_2
// 1145   }   
// 1146   else
// 1147   {
// 1148     command.COMMAND = ESDHC_CMD17;
??LPLD_SDHC_ReadBlocks_1:
        LDR.N    R0,??DataTable11_15  ;; 0x111a0010
        STR      R0,[SP, #+0]
// 1149   }
// 1150   
// 1151   command.ARGUMENT = sector;
??LPLD_SDHC_ReadBlocks_2:
        STR      R8,[SP, #+4]
// 1152   command.BLOCKS = count;
        STR      R5,[SP, #+8]
// 1153   command.BLOCKSIZE = IO_SDCARD_BLOCK_SIZE;
        MOV      R0,#+512
        STR      R0,[SP, #+12]
// 1154   if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+0
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??LPLD_SDHC_ReadBlocks_3
// 1155   {
// 1156     return (SDHCRES)result;
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_ReadBlocks_4
// 1157   }
// 1158   
// 1159   //��ȡ����
// 1160   for (cnt = 0; cnt < count; cnt++)
??LPLD_SDHC_ReadBlocks_3:
        MOVS     R0,#+0
        MOVS     R6,R0
??LPLD_SDHC_ReadBlocks_5:
        CMP      R6,R5
        BCS.N    ??LPLD_SDHC_ReadBlocks_6
// 1161   {
// 1162     if (IO_SDCARD_BLOCK_SIZE != (result=LPLD_SDHC_Read(buff,IO_SDCARD_BLOCK_SIZE)))
        MOV      R1,#+512
        MOVS     R0,R4
        BL       LPLD_SDHC_Read
        MOVS     R7,R0
        CMP      R0,#+512
        BEQ.N    ??LPLD_SDHC_ReadBlocks_7
// 1163     {
// 1164       return (SDHCRES)result;
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_ReadBlocks_4
// 1165     }
// 1166     buff += IO_SDCARD_BLOCK_SIZE;
??LPLD_SDHC_ReadBlocks_7:
        ADDS     R4,R4,#+512
// 1167   }
        ADDS     R6,R6,#+1
        B.N      ??LPLD_SDHC_ReadBlocks_5
// 1168   
// 1169   //�ȴ��������
// 1170   if (SDHCRES_OK !=(result=LPLD_SDHC_IOC (IO_IOCTL_FLUSH_OUTPUT, NULL)))
??LPLD_SDHC_ReadBlocks_6:
        MOVS     R1,#+0
        MOVS     R0,#+147
        BL       LPLD_SDHC_IOC
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??LPLD_SDHC_ReadBlocks_8
// 1171   {
// 1172     return (SDHCRES)result;
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_ReadBlocks_4
// 1173   }
// 1174   
// 1175   return (SDHCRES)result;
??LPLD_SDHC_ReadBlocks_8:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_SDHC_ReadBlocks_4:
        ADD      SP,SP,#+32
        POP      {R4-R8,PC}       ;; return
// 1176 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x400b1008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x400b1000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x400b100c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0xe0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x400b1010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x400b1014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x400b1018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x400b101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x61a80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_9:
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_10:
        DC32     0x81a0000
// 1177 
// 1178 
// 1179 /*
// 1180  * LPLD_SDHC_WriteBlocks
// 1181  * ��ָ������д��ָ�����ȿ�������
// 1182  * 
// 1183  * ����:
// 1184  *    buff--�洢��д�����ݵĵ�ַָ��
// 1185  *    sector--��ʼ��������
// 1186  *    count--д�����������������
// 1187  *
// 1188  * ���:
// 1189  *    SDHCRES--���̹��ܷ���ֵ
// 1190  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1191 SDHCRES LPLD_SDHC_WriteBlocks(uint8* buff, uint32 sector, uint32 count)
// 1192 {
LPLD_SDHC_WriteBlocks:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+40
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
// 1193     ESDHC_COMMAND_STRUCT command;
// 1194     uint8               tmp[4];
// 1195     int32             cnt;
// 1196       int32 result;
// 1197     
// 1198  
// 1199     //SD�����ݵ�ַ����
// 1200     if (! sdcard_ptr->HC)
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BNE.N    ??LPLD_SDHC_WriteBlocks_0
// 1201     {
// 1202         sector <<= IO_SDCARD_BLOCK_SIZE_POWER;
        LSLS     R5,R5,#+9
// 1203     }
// 1204 
// 1205     //����д������
// 1206     if (count > 1)
??LPLD_SDHC_WriteBlocks_0:
        CMP      R4,#+2
        BCC.N    ??LPLD_SDHC_WriteBlocks_1
// 1207     {
// 1208         command.COMMAND = ESDHC_CMD25;
        LDR.N    R0,??DataTable11_16  ;; 0x191a0024
        STR      R0,[SP, #+4]
        B.N      ??LPLD_SDHC_WriteBlocks_2
// 1209     }
// 1210     else
// 1211     {
// 1212         command.COMMAND = ESDHC_CMD24;
??LPLD_SDHC_WriteBlocks_1:
        LDR.N    R0,??DataTable11_17  ;; 0x181a0000
        STR      R0,[SP, #+4]
// 1213     }
// 1214 
// 1215     command.ARGUMENT = sector;
??LPLD_SDHC_WriteBlocks_2:
        STR      R5,[SP, #+8]
// 1216     command.BLOCKS = count;
        STR      R4,[SP, #+12]
// 1217     command.BLOCKSIZE = IO_SDCARD_BLOCK_SIZE;
        MOV      R0,#+512
        STR      R0,[SP, #+16]
// 1218     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_3
// 1219     {
// 1220         return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1221     }
// 1222     
// 1223     //д����
// 1224     for (cnt = 0; cnt < count; cnt++)
??LPLD_SDHC_WriteBlocks_3:
        MOVS     R0,#+0
        MOVS     R7,R0
??LPLD_SDHC_WriteBlocks_5:
        CMP      R7,R4
        BCS.N    ??LPLD_SDHC_WriteBlocks_6
// 1225     {
// 1226         if (IO_SDCARD_BLOCK_SIZE != (result=LPLD_SDHC_Write (buff, IO_SDCARD_BLOCK_SIZE)))
        MOV      R1,#+512
        MOVS     R0,R6
        BL       LPLD_SDHC_Write
        MOV      R8,R0
        CMP      R0,#+512
        BEQ.N    ??LPLD_SDHC_WriteBlocks_7
// 1227         {
// 1228             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1229         }
// 1230         buff += IO_SDCARD_BLOCK_SIZE;
??LPLD_SDHC_WriteBlocks_7:
        ADDS     R6,R6,#+512
// 1231     }
        ADDS     R7,R7,#+1
        B.N      ??LPLD_SDHC_WriteBlocks_5
// 1232 
// 1233     //�ȴ��������
// 1234     if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_FLUSH_OUTPUT, NULL)))
??LPLD_SDHC_WriteBlocks_6:
        MOVS     R1,#+0
        MOVS     R0,#+147
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_8
// 1235     {
// 1236         return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1237     }
// 1238 
// 1239     //�ȴ���׼����/����״̬
// 1240     do
// 1241     {
// 1242         command.COMMAND = ESDHC_CMD13;
??LPLD_SDHC_WriteBlocks_8:
        LDR.N    R0,??DataTable11_18  ;; 0xd1a0000
        STR      R0,[SP, #+4]
// 1243         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1244         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1245         if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_9
// 1246         {
// 1247             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1248         }
// 1249 
// 1250         //��״̬������
// 1251         if (command.RESPONSE[0] & 0xFFD98008)
??LPLD_SDHC_WriteBlocks_9:
        LDR      R0,[SP, #+20]
        LDR.N    R1,??DataTable11_19  ;; 0xffd98008
        TST      R0,R1
        BEQ.N    ??LPLD_SDHC_WriteBlocks_10
// 1252         {
// 1253             count = 0; /* necessary to get real number of written blocks */
        MOVS     R0,#+0
        MOVS     R4,R0
// 1254             break;
        B.N      ??LPLD_SDHC_WriteBlocks_11
// 1255         }
// 1256 
// 1257     } while (0x000000900 != (command.RESPONSE[0] & 0x00001F00));
??LPLD_SDHC_WriteBlocks_10:
        LDR      R0,[SP, #+20]
        ANDS     R0,R0,#0x1F00
        CMP      R0,#+2304
        BNE.N    ??LPLD_SDHC_WriteBlocks_8
// 1258 
// 1259     if (cnt != count)
??LPLD_SDHC_WriteBlocks_11:
        CMP      R7,R4
        BEQ.N    ??LPLD_SDHC_WriteBlocks_12
// 1260     {
// 1261         //����Ӧ������
// 1262         command.COMMAND = ESDHC_CMD55;
        LDR.N    R0,??DataTable11_1  ;; 0x371a0000
        STR      R0,[SP, #+4]
// 1263         command.ARGUMENT = sdcard_ptr->ADDRESS;
        LDR.N    R0,??DataTable11_13
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        STR      R0,[SP, #+8]
// 1264         command.BLOCKS = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
// 1265         if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_13
// 1266         {
// 1267             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1268         }
// 1269                 
// 1270         //ʹ��ACMD22������д��Ŀ�����
// 1271         command.COMMAND = ESDHC_ACMD22;
??LPLD_SDHC_WriteBlocks_13:
        LDR.N    R0,??DataTable11_20  ;; 0x161a0010
        STR      R0,[SP, #+4]
// 1272         command.ARGUMENT = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
// 1273         command.BLOCKS = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+12]
// 1274         command.BLOCKSIZE = 4;
        MOVS     R0,#+4
        STR      R0,[SP, #+16]
// 1275         if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_ESDHC_SEND_COMMAND, &command)))
        ADD      R1,SP,#+4
        MOVS     R0,#+2
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_14
// 1276         {
// 1277             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1278         }
// 1279         
// 1280         if (4 != (result=LPLD_SDHC_Read (tmp, 4)))
??LPLD_SDHC_WriteBlocks_14:
        MOVS     R1,#+4
        ADD      R0,SP,#+0
        BL       LPLD_SDHC_Read
        MOV      R8,R0
        CMP      R0,#+4
        BEQ.N    ??LPLD_SDHC_WriteBlocks_15
// 1281         {
// 1282             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1283             
// 1284         }
// 1285 
// 1286         if (SDHCRES_OK != (result=LPLD_SDHC_IOC (IO_IOCTL_FLUSH_OUTPUT, NULL)))
??LPLD_SDHC_WriteBlocks_15:
        MOVS     R1,#+0
        MOVS     R0,#+147
        BL       LPLD_SDHC_IOC
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??LPLD_SDHC_WriteBlocks_16
// 1287         {
// 1288             return (SDHCRES)result;
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1289         }
// 1290 
// 1291         count = (tmp[0] << 24) | (tmp[1] << 16) | (tmp[2] << 8) | tmp[3];
??LPLD_SDHC_WriteBlocks_16:
        LDRB     R0,[SP, #+0]
        LDRB     R1,[SP, #+1]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[SP, #+2]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[SP, #+3]
        ORRS     R0,R1,R0
        MOVS     R4,R0
// 1292         if ((cnt < 0) || (cnt > count))
        CMP      R7,#+0
        BMI.N    ??LPLD_SDHC_WriteBlocks_17
        CMP      R4,R7
        BCS.N    ??LPLD_SDHC_WriteBlocks_12
// 1293             return SDHCRES_ERROR;
??LPLD_SDHC_WriteBlocks_17:
        MOVS     R0,#+1
        B.N      ??LPLD_SDHC_WriteBlocks_4
// 1294     }
// 1295     
// 1296     return SDHCRES_OK;
??LPLD_SDHC_WriteBlocks_12:
        MOVS     R0,#+0
??LPLD_SDHC_WriteBlocks_4:
        ADD      SP,SP,#+40
        POP      {R4-R8,PC}       ;; return
// 1297 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x5020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     0x371a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     0x40300000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     0x27020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     0x29020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC32     0x17d7840

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     0x400b1020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     0x2090000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     0x31a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     0x9090000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     0x71b0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     0x101a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     0x61a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     sdcard_ptr

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     0x121a0034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     0x111a0010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     0x191a0024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     0x181a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_18:
        DC32     0xd1a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_19:
        DC32     0xffd98008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_20:
        DC32     0x161a0010

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
//     4 bytes in section .bss
// 4 346 bytes in section .text
// 
// 4 346 bytes of CODE memory
//     4 bytes of DATA memory
//
//Errors: none
//Warnings: none
