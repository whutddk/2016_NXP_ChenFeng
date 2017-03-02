///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:11
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLASH.c
//    Command line =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLASH.c -D
//        LPLD_K60 -lCN
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
//        1.9\iar\FLASH\List\HW_FLASH.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC LPLD_Flash_ByteProgram
        PUBLIC LPLD_Flash_Init
        PUBLIC LPLD_Flash_SectorErase
        PUBLIC flash_write

// E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_FLASH.c
//    1 /**
//    2  * @file HW_FLASH.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief FTFL�ײ�ģ����غ���
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
//   23 #include "HW_FLASH.h"
//   24 
//   25 /*
//   26  * LPLD_Flash_Init
//   27  * Flashģ���ʼ��
//   28  * 
//   29  * ����:
//   30  *    ��
//   31  *
//   32  * ���:
//   33  *    ��
//   34  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void LPLD_Flash_Init(void)
//   36 {
//   37   //���Flash���ʴ���
//   38   if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
LPLD_Flash_Init:
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_Flash_Init_0
//   39   {
//   40     FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;       //��������־
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable3  ;; 0x40020000
        STRB     R0,[R1, #+0]
        B.N      ??LPLD_Flash_Init_1
//   41   }
//   42   //��鱣������
//   43   else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
??LPLD_Flash_Init_0:
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??LPLD_Flash_Init_2
//   44   {
//   45     FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable3  ;; 0x40020000
        STRB     R0,[R1, #+0]
        B.N      ??LPLD_Flash_Init_1
//   46   }
//   47   //������ͻ����
//   48   else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
??LPLD_Flash_Init_2:
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_Flash_Init_1
//   49   {
//   50     FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable3  ;; 0x40020000
        STRB     R0,[R1, #+0]
//   51   }
//   52   
//   53   //����Flashģ������ݻ���
//   54   FMC->PFB0CR &= ~FMC_PFB0CR_B0DCE_MASK;
??LPLD_Flash_Init_1:
        LDR.N    R0,??DataTable3_1  ;; 0x4001f004
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable3_1  ;; 0x4001f004
        STR      R0,[R1, #+0]
//   55   FMC->PFB1CR &= ~FMC_PFB1CR_B1DCE_MASK;
        LDR.N    R0,??DataTable3_2  ;; 0x4001f008
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.N    R1,??DataTable3_2  ;; 0x4001f008
        STR      R0,[R1, #+0]
//   56 } 
        BX       LR               ;; return
//   57 
//   58 
//   59 /*
//   60  * LPLD_Flash_SectorErase
//   61  * ����Flash����
//   62  * 
//   63  * ����:
//   64  *    FlashPtr--������ַָ�룬�������ų���2048
//   65  *
//   66  * ���:
//   67  *    �������
//   68  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 uint8 LPLD_Flash_SectorErase(uint32 FlashPtr)
//   70 {
LPLD_Flash_SectorErase:
        MOVS     R1,R0
//   71   uint8 Return = FLASH_OK;
        MOVS     R0,#+0
//   72   
//   73   //�ȴ�CCIF��1
//   74   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)){};
??LPLD_Flash_SectorErase_0:
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??LPLD_Flash_SectorErase_0
//   75   //д�������FCCOB�Ĵ���
//   76   FTFL->FCCOB0 = FLASH_CMD_ERSSCR;
        MOVS     R2,#+9
        LDR.N    R3,??DataTable3_3  ;; 0x40020007
        STRB     R2,[R3, #+0]
//   77   FTFL->FCCOB1 = (uint8) (FlashPtr >> 16);
        LSRS     R2,R1,#+16
        LDR.N    R3,??DataTable3_4  ;; 0x40020006
        STRB     R2,[R3, #+0]
//   78   FTFL->FCCOB2 = (uint8)((FlashPtr >> 8 ) & 0xFF);
        LSRS     R2,R1,#+8
        LDR.N    R3,??DataTable3_5  ;; 0x40020005
        STRB     R2,[R3, #+0]
//   79   FTFL->FCCOB3 = (uint8)( FlashPtr & 0xFF);
        LDR.N    R2,??DataTable3_6  ;; 0x40020004
        STRB     R1,[R2, #+0]
//   80   
//   81   //ִ������
//   82   FTFL->FSTAT |= FTFL_FSTAT_CCIF_MASK;    
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x80
        LDR.N    R3,??DataTable3  ;; 0x40020000
        STRB     R2,[R3, #+0]
//   83   //�ȴ��������
//   84   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
??LPLD_Flash_SectorErase_1:
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+24
        BPL.N    ??LPLD_Flash_SectorErase_1
//   85   
//   86   //���Flash���ʴ���
//   87   if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+26
        BPL.N    ??LPLD_Flash_SectorErase_2
//   88   {
//   89     FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;       //��������־
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x20
        LDR.N    R3,??DataTable3  ;; 0x40020000
        STRB     R2,[R3, #+0]
//   90     Return |= FLASH_FACCERR;                    //���·���ֵ
        ORRS     R0,R0,#0x1
        B.N      ??LPLD_Flash_SectorErase_3
//   91   }
//   92   //���Flash������־
//   93   else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
??LPLD_Flash_SectorErase_2:
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+27
        BPL.N    ??LPLD_Flash_SectorErase_4
//   94   {
//   95     FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x10
        LDR.N    R3,??DataTable3  ;; 0x40020000
        STRB     R2,[R3, #+0]
//   96     Return |= FLASH_FPVIOL;
        ORRS     R0,R0,#0x2
        B.N      ??LPLD_Flash_SectorErase_3
//   97   }
//   98   //���Flash����ͻ����
//   99   else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
??LPLD_Flash_SectorErase_4:
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+25
        BPL.N    ??LPLD_Flash_SectorErase_5
//  100   {
//  101     FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        ORRS     R2,R2,#0x40
        LDR.N    R3,??DataTable3  ;; 0x40020000
        STRB     R2,[R3, #+0]
//  102     Return |= FLASH_RDCOLERR;
        ORRS     R0,R0,#0x8
        B.N      ??LPLD_Flash_SectorErase_3
//  103   }
//  104   //���MGSTAT0�ǿɾ�������
//  105   else if (FTFL->FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
??LPLD_Flash_SectorErase_5:
        LDR.N    R2,??DataTable3  ;; 0x40020000
        LDRB     R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BPL.N    ??LPLD_Flash_SectorErase_3
//  106   {
//  107     Return |= FLASH_MGSTAT0;
        ORRS     R0,R0,#0x4
//  108   } 
//  109   
//  110   return  Return;
??LPLD_Flash_SectorErase_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  111 }
//  112 
//  113 /*
//  114  * LPLD_Flash_ByteProgram
//  115  * ���Flash
//  116  * 
//  117  * ����:
//  118  *    FlashStartAdd--Flash�����ʼ��ַ
//  119  *    *DataSrcPtr--����Դָ��
//  120  *    NumberOfBytes--�����ֽڳ���
//  121  *
//  122  * ���:
//  123  *    �������
//  124  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  125 uint8 LPLD_Flash_ByteProgram(uint32 FlashStartAdd, uint32 *DataSrcPtr, uint32 NumberOfBytes)
//  126 {
LPLD_Flash_ByteProgram:
        PUSH     {R4-R6}
        MOVS     R3,R0
//  127   uint8 Return = FLASH_OK;
        MOVS     R4,#+0
//  128   
//  129   uint32 size_buffer;
//  130   
//  131   if (NumberOfBytes == 0)
        CMP      R2,#+0
        BNE.N    ??LPLD_Flash_ByteProgram_0
//  132   {
//  133     return FLASH_CONTENTERR;
        MOVS     R0,#+17
        B.N      ??LPLD_Flash_ByteProgram_1
//  134   }
//  135   else
//  136   {
//  137     size_buffer = (NumberOfBytes - 1)/4 + 1;
??LPLD_Flash_ByteProgram_0:
        SUBS     R0,R2,#+1
        LSRS     R0,R0,#+2
        ADDS     R0,R0,#+1
        MOVS     R5,R0
//  138   }
//  139   //�ȴ�ֱ��CCIF����
//  140   while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)){};
??LPLD_Flash_ByteProgram_2:
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_Flash_ByteProgram_2
//  141 
//  142   while ((size_buffer) && (Return == FLASH_OK))
??LPLD_Flash_ByteProgram_3:
        CMP      R5,#+0
        BEQ.N    ??LPLD_Flash_ByteProgram_4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??LPLD_Flash_ByteProgram_4
//  143   {
//  144     //дFLASH���FCCOB
//  145     FTFL->FCCOB0 = FLASH_CMD_PGM4;
        MOVS     R0,#+6
        LDR.N    R6,??DataTable3_3  ;; 0x40020007
        STRB     R0,[R6, #+0]
//  146     FTFL->FCCOB1 = (uint8)(FlashStartAdd >> 16);
        LSRS     R0,R3,#+16
        LDR.N    R6,??DataTable3_4  ;; 0x40020006
        STRB     R0,[R6, #+0]
//  147     FTFL->FCCOB2 = (uint8)((FlashStartAdd >> 8) & 0xFF);
        LSRS     R0,R3,#+8
        LDR.N    R6,??DataTable3_5  ;; 0x40020005
        STRB     R0,[R6, #+0]
//  148     FTFL->FCCOB3 = (uint8)(FlashStartAdd & 0xFF);
        LDR.N    R0,??DataTable3_6  ;; 0x40020004
        STRB     R3,[R0, #+0]
//  149     //���K60���ó�ΪС�˸�ʽ���������²���
//  150     FTFL->FCCOB4 = (uint8)(*((uint8*)DataSrcPtr+3));
        LDRB     R0,[R1, #+3]
        LDR.N    R6,??DataTable3_7  ;; 0x4002000b
        STRB     R0,[R6, #+0]
//  151     FTFL->FCCOB5 = (uint8)(*((uint8*)DataSrcPtr+2));
        LDRB     R0,[R1, #+2]
        LDR.N    R6,??DataTable3_8  ;; 0x4002000a
        STRB     R0,[R6, #+0]
//  152     FTFL->FCCOB6 = (uint8)(*((uint8*)DataSrcPtr+1));
        LDRB     R0,[R1, #+1]
        LDR.N    R6,??DataTable3_9  ;; 0x40020009
        STRB     R0,[R6, #+0]
//  153     FTFL->FCCOB7 = (uint8)(*((uint8*)DataSrcPtr+0));
        LDRB     R0,[R1, #+0]
        LDR.N    R6,??DataTable3_10  ;; 0x40020008
        STRB     R0,[R6, #+0]
//  154     //���K60���ó�Ϊ��˸�ʽ���������²���
//  155     //FTFL_FCCOB4 = (uint8)(*((uint_8*)DataSrcPtr+0));
//  156     //FTFL_FCCOB5 = (uint8)(*((uint_8*)DataSrcPtr+1));
//  157     //FTFL_FCCOB6 = (uint8)(*((uint_8*)DataSrcPtr+2));
//  158     //FTFL_FCCOB7 = (uint8)(*((uint_8*)DataSrcPtr+3));
//  159     //����FLASH��������
//  160     FTFL->FSTAT |= FTFL_FSTAT_CCIF_MASK;    
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R6,??DataTable3  ;; 0x40020000
        STRB     R0,[R6, #+0]
//  161     //�ȴ��������
//  162     while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
??LPLD_Flash_ByteProgram_5:
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_Flash_ByteProgram_5
//  163     
//  164     //���FLASH���ʴ���
//  165     if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_Flash_ByteProgram_6
//  166     {
//  167         
//  168         FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R6,??DataTable3  ;; 0x40020000
        STRB     R0,[R6, #+0]
//  169     
//  170         Return |= FLASH_FACCERR;
        ORRS     R4,R4,#0x1
        B.N      ??LPLD_Flash_ByteProgram_7
//  171     }
//  172     //���FLASH��������
//  173     else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
??LPLD_Flash_ByteProgram_6:
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??LPLD_Flash_ByteProgram_8
//  174     {
//  175         FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R6,??DataTable3  ;; 0x40020000
        STRB     R0,[R6, #+0]
//  176     
//  177         Return |= FLASH_FPVIOL;
        ORRS     R4,R4,#0x2
        B.N      ??LPLD_Flash_ByteProgram_7
//  178     }
//  179     
//  180     else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
??LPLD_Flash_ByteProgram_8:
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??LPLD_Flash_ByteProgram_9
//  181     {
//  182         FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R6,??DataTable3  ;; 0x40020000
        STRB     R0,[R6, #+0]
//  183     
//  184         Return |= FLASH_RDCOLERR;
        ORRS     R4,R4,#0x8
        B.N      ??LPLD_Flash_ByteProgram_7
//  185     }
//  186     else if (FTFL->FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
??LPLD_Flash_ByteProgram_9:
        LDR.N    R0,??DataTable3  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??LPLD_Flash_ByteProgram_7
//  187     {
//  188         Return |= FLASH_MGSTAT0;
        ORRS     R4,R4,#0x4
//  189     } 
//  190     size_buffer --;
??LPLD_Flash_ByteProgram_7:
        SUBS     R5,R5,#+1
//  191     (uint32*)DataSrcPtr++;
        ADDS     R1,R1,#+4
//  192     FlashStartAdd +=4;
        ADDS     R3,R3,#+4
        B.N      ??LPLD_Flash_ByteProgram_3
//  193   } 
//  194   return  Return;
??LPLD_Flash_ByteProgram_4:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??LPLD_Flash_ByteProgram_1:
        POP      {R4-R6}
        BX       LR               ;; return
//  195 } 
//  196 
//  197 
//  198 //=================����uint16�Ĵ洢================================

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  199 uint8 flash_write(uint16 sectorNo,uint16 offset,int16 data)
//  200 {
flash_write:
        PUSH     {R2-R5}
        MOVS     R3,R0
//  201     Dtype	addr;	
//  202     Dtype	Data;
//  203     uint8 Return = FLASH_OK;	
        MOVS     R0,#+0
//  204     
//  205     addr.DW = (uint32)((sectorNo<<11) + offset);//�����ַ
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LSLS     R4,R3,#+11
        UXTAH    R4,R4,R1
        STR      R4,[SP, #+4]
//  206 	Data.W[0]=data;	
        STRH     R2,[SP, #+0]
//  207 	    
//  208     FTFL->FCCOB0 = FLASH_CMD_PGM4;	// ����д������
        MOVS     R4,#+6
        LDR.N    R5,??DataTable3_3  ;; 0x40020007
        STRB     R4,[R5, #+0]
//  209 
//  210     FTFL->FCCOB1 = addr.B[2];// ����Ŀ���ַ
        LDRB     R4,[SP, #+6]
        LDR.N    R5,??DataTable3_4  ;; 0x40020006
        STRB     R4,[R5, #+0]
//  211     FTFL->FCCOB2 = addr.B[1];
        LDRB     R4,[SP, #+5]
        LDR.N    R5,??DataTable3_5  ;; 0x40020005
        STRB     R4,[R5, #+0]
//  212     FTFL->FCCOB3 = addr.B[0];
        LDRB     R4,[SP, #+4]
        LDR.N    R5,??DataTable3_6  ;; 0x40020004
        STRB     R4,[R5, #+0]
//  213 
//  214 
//  215     FTFL->FCCOB4 = Data.B[3];// ����д������
        LDRB     R4,[SP, #+3]
        LDR.N    R5,??DataTable3_7  ;; 0x4002000b
        STRB     R4,[R5, #+0]
//  216     FTFL->FCCOB5 = Data.B[2];
        LDRB     R4,[SP, #+2]
        LDR.N    R5,??DataTable3_8  ;; 0x4002000a
        STRB     R4,[R5, #+0]
//  217     FTFL->FCCOB6 = Data.B[1];
        LDRB     R4,[SP, #+1]
        LDR.N    R5,??DataTable3_9  ;; 0x40020009
        STRB     R4,[R5, #+0]
//  218     FTFL->FCCOB7 = Data.B[0];
        LDRB     R4,[SP, #+0]
        LDR.N    R5,??DataTable3_10  ;; 0x40020008
        STRB     R4,[R5, #+0]
//  219     
//  220    FTFL->FSTAT |= FTFL_FSTAT_CCIF_MASK;    
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x80
        LDR.N    R5,??DataTable3  ;; 0x40020000
        STRB     R4,[R5, #+0]
//  221     //�ȴ��������
//  222     while (!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK)) {};
??flash_write_0:
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+24
        BPL.N    ??flash_write_0
//  223     
//  224     //���FLASH���ʴ���
//  225     if (FTFL->FSTAT & FTFL_FSTAT_ACCERR_MASK)
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+26
        BPL.N    ??flash_write_1
//  226     {
//  227         
//  228         FTFL->FSTAT |= FTFL_FSTAT_ACCERR_MASK;
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x20
        LDR.N    R5,??DataTable3  ;; 0x40020000
        STRB     R4,[R5, #+0]
//  229     
//  230         Return |= FLASH_FACCERR;
        ORRS     R0,R0,#0x1
        B.N      ??flash_write_2
//  231     }
//  232     //���FLASH��������
//  233     else if (FTFL->FSTAT & FTFL_FSTAT_FPVIOL_MASK)
??flash_write_1:
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+27
        BPL.N    ??flash_write_3
//  234     {
//  235         FTFL->FSTAT |= FTFL_FSTAT_FPVIOL_MASK;
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x10
        LDR.N    R5,??DataTable3  ;; 0x40020000
        STRB     R4,[R5, #+0]
//  236     
//  237         Return |= FLASH_FPVIOL;
        ORRS     R0,R0,#0x2
        B.N      ??flash_write_2
//  238     }
//  239     
//  240     else if (FTFL->FSTAT & FTFL_FSTAT_RDCOLERR_MASK)
??flash_write_3:
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+25
        BPL.N    ??flash_write_4
//  241     {
//  242         FTFL->FSTAT |= FTFL_FSTAT_RDCOLERR_MASK;
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        ORRS     R4,R4,#0x40
        LDR.N    R5,??DataTable3  ;; 0x40020000
        STRB     R4,[R5, #+0]
//  243     
//  244         Return |= FLASH_RDCOLERR;
        ORRS     R0,R0,#0x8
        B.N      ??flash_write_2
//  245     }
//  246     else if (FTFL->FSTAT & FTFL_FSTAT_MGSTAT0_MASK)
??flash_write_4:
        LDR.N    R4,??DataTable3  ;; 0x40020000
        LDRB     R4,[R4, #+0]
        LSLS     R4,R4,#+31
        BPL.N    ??flash_write_2
//  247     {
//  248         Return |= FLASH_MGSTAT0;
        ORRS     R0,R0,#0x4
//  249     } 
//  250      
//  251   return  Return;
??flash_write_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4,R5}
        BX       LR               ;; return
//  252 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x4001f004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4001f008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40020007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40020006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x40020005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x4002000b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x4002000a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     0x40020009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x40020008

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
// 692 bytes in section .text
// 
// 692 bytes of CODE memory
//
//Errors: none
//Warnings: none
