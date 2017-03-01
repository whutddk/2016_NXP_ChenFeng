///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       28/Jul/2016  17:58:34
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLEXBUS.c
//    Command line =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLEXBUS.c
//        -D LPLD_K60 -lCN
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\
//        -lB
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\
//        -o
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\BSP\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\ITAC\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\app\CTL\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\CPU\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\common\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\FatFs\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\common\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\..\..\..\lib\USB\class\
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\project\NXP_powerctl\iar\FLASH\List\HW_FLEXBUS.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC FB_PORT
        PUBLIC LPLD_FlexBus_Init

// C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLEXBUS.c
//    1 /**
//    2  * @file HW_FLEXBUS.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FLEXBUS�ײ�ģ����غ���
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
//   24 #include "HW_FLEXBUS.h"
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 const uint32* FB_PORT[32] = {(uint32*)&PORTD->PCR[6], (uint32*)&PORTD->PCR[5], (uint32*)&PORTD->PCR[4], (uint32*)&PORTD->PCR[3],
FB_PORT:
        DATA
        DC32 4004C018H, 4004C014H, 4004C010H, 4004C00CH, 4004C008H, 4004B028H
        DC32 4004B024H, 4004B020H, 4004B01CH, 4004B018H, 4004B014H, 4004B010H
        DC32 4004B008H, 4004B004H, 4004B000H, 4004A048H, 4004A044H, 4004A040H
        DC32 4004A02CH, 4004A028H, 4004A024H, 4004A020H, 4004A01CH, 4004A018H
        DC32 4004B03CH, 4004B038H, 4004B034H, 4004B030H, 4004A05CH, 4004A058H
        DC32 4004A054H, 4004A050H
//   27                              (uint32*)&PORTD->PCR[2], (uint32*)&PORTC->PCR[10], (uint32*)&PORTC->PCR[9], (uint32*)&PORTC->PCR[8],
//   28                              (uint32*)&PORTC->PCR[7], (uint32*)&PORTC->PCR[6], (uint32*)&PORTC->PCR[5], (uint32*)&PORTC->PCR[4],
//   29                              (uint32*)&PORTC->PCR[2], (uint32*)&PORTC->PCR[1], (uint32*)&PORTC->PCR[0], (uint32*)&PORTB->PCR[18],
//   30                              (uint32*)&PORTB->PCR[17], (uint32*)&PORTB->PCR[16], (uint32*)&PORTB->PCR[11], (uint32*)&PORTB->PCR[10],
//   31                              (uint32*)&PORTB->PCR[9], (uint32*)&PORTB->PCR[8], (uint32*)&PORTB->PCR[7], (uint32*)&PORTB->PCR[6],
//   32                              (uint32*)&PORTC->PCR[15], (uint32*)&PORTC->PCR[14], (uint32*)&PORTC->PCR[13], (uint32*)&PORTC->PCR[12],
//   33                              (uint32*)&PORTB->PCR[23], (uint32*)&PORTB->PCR[22], (uint32*)&PORTB->PCR[21], (uint32*)&PORTB->PCR[20]};
//   34 
//   35 /*
//   36  * LPLD_FlexBus_Init
//   37  * FlexBuxͨ�ó�ʼ������
//   38  * 
//   39  * ����:
//   40  *    fb_init_struct--FlexBus��ʼ���ṹ�壬
//   41  *                        ���嶨���FB_InitTypeDef
//   42  *
//   43  * ���:
//   44  *    0--���ô���
//   45  *    1--���óɹ�
//   46  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47 uint8 LPLD_FlexBus_Init(FB_InitTypeDef fb_init_struct)
//   48 {
LPLD_FlexBus_Init:
        PUSH     {R0-R3}
        PUSH     {R3-R11,LR}
//   49   FBx Fbx = fb_init_struct.FB_Fbx;
        LDRB     R4,[SP, #+40]
//   50   uint32 base_addr = fb_init_struct.FB_ChipSelAddress;
        LDR      R5,[SP, #+44]
//   51   uint32 addr_space = fb_init_struct.FB_AddressSpace;
        LDR      R6,[SP, #+48]
//   52   uint8 size = fb_init_struct.FB_PortSize;
        LDRB     R7,[SP, #+52]
//   53   boolean justied = fb_init_struct.FB_IsRightJustied;
        LDRB     R8,[SP, #+53]
//   54   boolean aa = fb_init_struct.FB_AutoAckEnable;
        LDRB     R0,[SP, #+54]
        STRB     R0,[SP, #+2]
//   55   uint8 ws = fb_init_struct.FB_WateStates;
        LDRB     R0,[SP, #+55]
        STRB     R0,[SP, #+1]
//   56   uint8 rah = fb_init_struct.FB_ReadAddrHold; 
        LDRB     R0,[SP, #+56]
        STRB     R0,[SP, #+0]
//   57   uint8 wah = fb_init_struct.FB_WriteAddrHold;
        LDRB     R9,[SP, #+57]
//   58   uint32* pcr;
//   59   uint8 n=0;
        MOVS     R11,#+0
//   60   
//   61   //�������
//   62   ASSERT( Fbx <= 5);    //�ж�FBͨ����
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+6
        BLT.N    ??LPLD_FlexBus_Init_0
        MOVS     R1,#+62
        LDR.N    R0,??LPLD_FlexBus_Init_1
        BL       assert_failed
//   63   ASSERT( base_addr >= 0x60000000 && base_addr <= 0xDFFFFFFF);    //�жϻ���ַ�Ϸ���
??LPLD_FlexBus_Init_0:
        CMP      R5,#+1610612736
        BCC.N    ??LPLD_FlexBus_Init_2
        CMN      R5,#+536870912
        BCC.N    ??LPLD_FlexBus_Init_3
??LPLD_FlexBus_Init_2:
        MOVS     R1,#+63
        LDR.N    R0,??LPLD_FlexBus_Init_1
        BL       assert_failed
//   64   ASSERT( addr_space != 0);    //Ѱַ�ռ��С
??LPLD_FlexBus_Init_3:
        CMP      R6,#+0
        BNE.N    ??LPLD_FlexBus_Init_4
        MOVS     R1,#+64
        LDR.N    R0,??LPLD_FlexBus_Init_1
        BL       assert_failed
//   65   ASSERT( size <= 3);    //�ж�����λ��
??LPLD_FlexBus_Init_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+4
        BLT.N    ??LPLD_FlexBus_Init_5
        MOVS     R1,#+65
        LDR.N    R0,??LPLD_FlexBus_Init_1
        BL       assert_failed
//   66   ASSERT( rah <= 3);     //�ж϶���ַ����ʱ��
??LPLD_FlexBus_Init_5:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+4
        BLT.N    ??LPLD_FlexBus_Init_6
        MOVS     R1,#+66
        LDR.N    R0,??LPLD_FlexBus_Init_1
        BL       assert_failed
//   67   ASSERT( wah <= 3);     //�ж�д��ַ����ʱ��
??LPLD_FlexBus_Init_6:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+4
        BLT.N    ??LPLD_FlexBus_Init_7
        MOVS     R1,#+67
        LDR.N    R0,??LPLD_FlexBus_Init_1
        BL       assert_failed
//   68   
//   69   FB->CS[Fbx].CSMR = 0;
??LPLD_FlexBus_Init_7:
        MOVS     R0,#+0
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+12
        MLA      R1,R2,R4,R1
        STR      R0,[R1, #+4]
//   70       
//   71   //���û���ַ
//   72   FB->CS[Fbx].CSAR = base_addr;
        LDR.N    R0,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        STR      R5,[R0, #+0]
//   73   //�˿�λ��
//   74   FB->CS[Fbx].CSCR  = FB_CSCR_PS(size);      
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R0,R7,#+6
        ANDS     R0,R0,#0xC0
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+12
        MLA      R1,R2,R4,R1
        STR      R0,[R1, #+8]
//   75   
//   76   if(justied)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??LPLD_FlexBus_Init_8
//   77   {
//   78     FB->CS[Fbx].CSCR |= FB_CSCR_BLS_MASK;   // �����Ҷ���
        LDR.N    R0,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+12
        MLA      R1,R2,R4,R1
        STR      R0,[R1, #+8]
//   79   }
//   80       
//   81   if(aa)    
??LPLD_FlexBus_Init_8:
        LDRB     R0,[SP, #+2]
        CMP      R0,#+0
        BEQ.N    ??LPLD_FlexBus_Init_9
//   82   {
//   83     FB->CS[Fbx].CSCR |= FB_CSCR_AA_MASK;   //ʹ���ڲ�Ӧ��
        LDR.N    R0,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        LDR      R0,[R0, #+8]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+12
        MLA      R1,R2,R4,R1
        STR      R0,[R1, #+8]
//   84   }
//   85   
//   86   FB->CS[Fbx].CSCR |= FB_CSCR_WS(ws)    // ���ڲ�Ӧ���ź�֮ǰ����ws��WS
//   87                      | FB_CSCR_RDAH(rah)
//   88                      | FB_CSCR_WRAH(wah);
??LPLD_FlexBus_Init_9:
        LDR.N    R0,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R1,#+12
        MLA      R0,R1,R4,R0
        LDR      R0,[R0, #+8]
        LDRB     R1,[SP, #+1]
        LSLS     R1,R1,#+10
        ANDS     R1,R1,#0xFC00
        LDRB     R2,[SP, #+0]
        LSLS     R2,R2,#+18
        ANDS     R2,R2,#0xC0000
        ORRS     R1,R2,R1
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LSLS     R2,R9,#+16
        ANDS     R2,R2,#0x30000
        ORRS     R1,R2,R1
        ORRS     R0,R1,R0
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+12
        MLA      R1,R2,R4,R1
        STR      R0,[R1, #+8]
//   89   
//   90   //����Ѱַ�ռ��С�������ַ����
//   91   addr_space = (addr_space-1)>>16;
        SUBS     R0,R6,#+1
        LSRS     R6,R0,#+16
//   92   FB->CS[Fbx].CSMR = FB_CSMR_BAM(addr_space)  //���û���ַ����Ϊ128K��ַ�ռ� =2^n(n=BAM+16)
//   93                 | FB_CSMR_V_MASK;    //ʹ��CS�ź�
        LSLS     R0,R6,#+16
        ORRS     R0,R0,#0x1
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x4  ;; 0x4000c000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R2,#+12
        MLA      R1,R2,R4,R1
        STR      R0,[R1, #+4]
//   94   
//   95   //ʹ�ܸ��ù��ܵ�FB_CSn�����Ÿ���
//   96   if(Fbx == FB0)
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LPLD_FlexBus_Init_10
//   97   {
//   98     PORTD->PCR[1]  = PORT_PCR_MUX(5);       // FB_CS0     
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x8  ;; 0x4004c004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//   99   }
//  100   else if(Fbx == FB1)
??LPLD_FlexBus_Init_10:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??LPLD_FlexBus_Init_12
//  101   {
//  102     FB->CSPMCR &= ~(FB_CSPMCR_GROUP1_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4        ;; ZeroExtS R0,R0,#+4,#+4
        LSRS     R0,R0,#+4
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  103     FB->CSPMCR |= FB_CSPMCR_GROUP1(1);      
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  104     PORTD->PCR[0]  = PORT_PCR_MUX(5);       // FB_CS1  
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x10  ;; 0x4004c000
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//  105   }
//  106   else if(Fbx == FB2)
??LPLD_FlexBus_Init_12:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??LPLD_FlexBus_Init_13
//  107   {
//  108     FB->CSPMCR &= ~(FB_CSPMCR_GROUP4_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF0000
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  109     FB->CSPMCR |= FB_CSPMCR_GROUP4(1);     
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  110     PORTC->PCR[18]  = PORT_PCR_MUX(5);       // FB_CS2
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x14  ;; 0x4004b048
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//  111   }
//  112   else if(Fbx == FB3)
??LPLD_FlexBus_Init_13:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??LPLD_FlexBus_Init_14
//  113   {
//  114     FB->CSPMCR &= ~(FB_CSPMCR_GROUP5_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF000
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  115     FB->CSPMCR |= FB_CSPMCR_GROUP5(1);     
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  116     PORTC->PCR[19]  = PORT_PCR_MUX(5);       // FB_CS3
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x18  ;; 0x4004b04c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//  117   }
//  118   else if(Fbx == FB4)
??LPLD_FlexBus_Init_14:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??LPLD_FlexBus_Init_15
//  119   {
//  120     FB->CSPMCR &= ~(FB_CSPMCR_GROUP2_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF000000
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  121     FB->CSPMCR |= FB_CSPMCR_GROUP2(0);      
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  122     PORTC->PCR[17]  = PORT_PCR_MUX(5);       // FB_CS4
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x1C  ;; 0x4004b044
        STR      R0,[R1, #+0]
        B.N      ??LPLD_FlexBus_Init_11
//  123   }
//  124   else if(Fbx == FB5)
??LPLD_FlexBus_Init_15:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BNE.N    ??LPLD_FlexBus_Init_11
//  125   {
//  126     FB->CSPMCR &= ~(FB_CSPMCR_GROUP3_MASK);
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0xF00000
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  127     FB->CSPMCR |= FB_CSPMCR_GROUP3(0);     
        LDR.N    R0,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        LDR      R0,[R0, #+0]
        LDR.N    R1,??LPLD_FlexBus_Init_1+0xC  ;; 0x4000c060
        STR      R0,[R1, #+0]
//  128     PORTC->PCR[16]  = PORT_PCR_MUX(5);       // FB_CS5
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x20  ;; 0x4004b040
        STR      R0,[R1, #+0]
//  129   }
//  130   
//  131   //ʹ�����ߵ�ַ���������Ÿ��ù���
//  132   //��ʹ�ܵ�16λ��ַ����
//  133   for(uint8 i=0; i<16; i++)
??LPLD_FlexBus_Init_11:
        MOVS     R0,#+0
??LPLD_FlexBus_Init_16:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BGE.N    ??LPLD_FlexBus_Init_17
//  134   {
//  135     pcr = (uint32 *)FB_PORT[i];
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        MOV      R10,R1
//  136     *pcr = PORT_PCR_MUX(5);    
        MOV      R1,#+1280
        STR      R1,[R10, #+0]
//  137   }
        ADDS     R0,R0,#+1
        B.N      ??LPLD_FlexBus_Init_16
//  138   //ʹ������ĵ�ַ����
//  139   n=16;
??LPLD_FlexBus_Init_17:
        MOVS     R0,#+16
        MOV      R11,R0
//  140   for(uint8 i=0; i<16; i++)
        MOVS     R0,#+0
??LPLD_FlexBus_Init_18:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+16
        BGE.N    ??LPLD_FlexBus_Init_19
//  141   {
//  142     if((addr_space>>i)&0x01)
        LSRS     R1,R6,R0
        LSLS     R1,R1,#+31
        BPL.N    ??LPLD_FlexBus_Init_20
//  143     {
//  144       pcr = (uint32 *)FB_PORT[n++];
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x24
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        LDR      R1,[R1, R11, LSL #+2]
        MOV      R10,R1
        ADDS     R11,R11,#+1
//  145       *pcr = PORT_PCR_MUX(5); 
        MOV      R1,#+1280
        STR      R1,[R10, #+0]
//  146     }
//  147   }
??LPLD_FlexBus_Init_20:
        ADDS     R0,R0,#+1
        B.N      ??LPLD_FlexBus_Init_18
//  148   //�����32λ����ʹ�ܸ�16λ
//  149   n=0;
??LPLD_FlexBus_Init_19:
        MOVS     R0,#+0
        MOV      R11,R0
//  150   if(size == 0)
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BNE.N    ??LPLD_FlexBus_Init_21
//  151   {   
//  152     n=16;
        MOVS     R0,#+16
        MOV      R11,R0
        B.N      ??LPLD_FlexBus_Init_22
//  153   }else if(justied==0 && size == 0x10)
??LPLD_FlexBus_Init_21:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??LPLD_FlexBus_Init_23
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+16
        BNE.N    ??LPLD_FlexBus_Init_23
//  154   {
//  155     n=16;
        MOVS     R0,#+16
        MOV      R11,R0
        B.N      ??LPLD_FlexBus_Init_22
//  156   }else if(justied==0 && size == 0x01)
??LPLD_FlexBus_Init_23:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BNE.N    ??LPLD_FlexBus_Init_22
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_FlexBus_Init_22
//  157   {
//  158     n=8;
        MOVS     R0,#+8
        MOV      R11,R0
//  159   }
//  160   if(n!=0)
??LPLD_FlexBus_Init_22:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BEQ.N    ??LPLD_FlexBus_Init_24
//  161   {
//  162     for(uint8 i=31; i>31-n; i--)
        MOVS     R0,#+31
??LPLD_FlexBus_Init_25:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        RSBS     R1,R11,#+31
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R1,R0
        BGE.N    ??LPLD_FlexBus_Init_24
//  163     {
//  164       pcr = (uint32 *)FB_PORT[i];
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR      R1,[R1, R0, LSL #+2]
        MOV      R10,R1
//  165       *pcr = PORT_PCR_MUX(5);    
        MOV      R1,#+1280
        STR      R1,[R10, #+0]
//  166     }
        SUBS     R0,R0,#+1
        B.N      ??LPLD_FlexBus_Init_25
//  167   }
//  168   
//  169   //�����ź���
//  170   PORTB->PCR[19] = PORT_PCR_MUX(5);          // fb_oe_b
??LPLD_FlexBus_Init_24:
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x28  ;; 0x4004a04c
        STR      R0,[R1, #+0]
//  171   PORTC->PCR[11] = PORT_PCR_MUX(5);          // fb_rw_b  
        MOV      R0,#+1280
        LDR.N    R1,??LPLD_FlexBus_Init_1+0x2C  ;; 0x4004b02c
        STR      R0,[R1, #+0]
//  172               
//  173   return 1;
        MOVS     R0,#+1
        POP      {R1,R4-R11}
        LDR      PC,[SP], #+20    ;; return
        DATA
??LPLD_FlexBus_Init_1:
        DC32     ?_0
        DC32     0x4000c000
        DC32     0x4004c004
        DC32     0x4000c060
        DC32     0x4004c000
        DC32     0x4004b048
        DC32     0x4004b04c
        DC32     0x4004b044
        DC32     0x4004b040
        DC32     FB_PORT
        DC32     0x4004a04c
        DC32     0x4004b02c
//  174 }

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
        DC8 57H, 5FH, 46H, 4CH, 45H, 58H, 42H, 55H
        DC8 53H, 2EH, 63H, 0

        END
// 
// 128 bytes in section .data
//  68 bytes in section .rodata
// 816 bytes in section .text
// 
// 816 bytes of CODE  memory
//  68 bytes of CONST memory
// 128 bytes of DATA  memory
//
//Errors: none
//Warnings: none
