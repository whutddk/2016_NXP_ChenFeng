///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:10
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_ENET.c
//    Command line =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_ENET.c -D
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
//        1.9\iar\FLASH\List\HW_ENET.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN g_bus_clock
        EXTERN memcpy
        EXTERN printf

        PUBLIC ENET_ISR
        PUBLIC Eth_Err_Misc_IRQHandler
        PUBLIC Eth_IEEE1588_IRQHandler
        PUBLIC Eth_RX_IRQHandler
        PUBLIC Eth_TX_IRQHandler
        PUBLIC LPLD_ENET_HashAddress
        PUBLIC LPLD_ENET_Init
        PUBLIC LPLD_ENET_MacRecv
        PUBLIC LPLD_ENET_MacSend
        PUBLIC LPLD_ENET_MiiInit
        PUBLIC LPLD_ENET_MiiRead
        PUBLIC LPLD_ENET_MiiWrite
        PUBLIC LPLD_ENET_SetAddress
        PUBLIC LPLD_ENET_SetIsr

// E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_ENET.c
//    1 /**
//    2  * @file HW_ENET.c
//    3  * @version 3.01[By LPLD]
//    4  * @date 2013-10-21
//    5  * @brief ENET�ײ�ģ����غ���
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
        LDR.W    R2,??DataTable14  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R3,R0,#+5
        STR      R1,[R2, R3, LSL #+2]
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute uint8 xENETTxDescriptors_unaligned[24]
xENETTxDescriptors_unaligned:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute uint8 xENETRxDescriptors_unaligned[80]
xENETRxDescriptors_unaligned:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute uint8 ucENETRxBuffers[2064]
ucENETRxBuffers:
        DS8 2064

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute ENET_NbufTypeDef *xENETTxDescriptors
xENETTxDescriptors:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute ENET_NbufTypeDef *xENETRxDescriptors
xENETRxDescriptors:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute uint32 uxNextRxBuffer
uxNextRxBuffer:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute uint32 uxNextTxBuffer
uxNextTxBuffer:
        DS8 4
//   23 #include "HW_ENET.h"
//   24 
//   25 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 ENET_ISR_CALLBACK ENET_ISR[4]={NULL, NULL, NULL, NULL};
ENET_ISR:
        DS8 16
//   27 
//   28 //�ڲ���������
//   29 static void LPLD_ENET_BDInit( void );
//   30 static void LPLD_ENET_Delay(uint32 time);
//   31 
//   32 
//   33 /*******************************************************************
//   34  *
//   35  *                ENETģ�麯��
//   36  *
//   37 *******************************************************************/
//   38 
//   39 /*
//   40  * LPLD_ENET_Init
//   41  * ENETģ���ʼ��������PHY�շ�����ʼ����MAC��ʼ����BD��ʼ��
//   42  * 
//   43  * ����:
//   44  *    enet_init_struct--ENET��ʼ���ṹ�壬
//   45  *                        ���嶨���ENET_InitTypeDef
//   46  *
//   47  * ���:
//   48  *    ��
//   49  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   50 void LPLD_ENET_Init(ENET_InitTypeDef enet_init_struct)
//   51 {
LPLD_ENET_Init:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//   52  
//   53   uint16 usData;
//   54  
//   55   //ʹ��ENETʱ��
//   56   SIM->SCGC2 |= SIM_SCGC2_ENET_MASK;
        LDR.W    R0,??DataTable14_1  ;; 0x4004802c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable14_1  ;; 0x4004802c
        STR      R0,[R1, #+0]
//   57 
//   58   //����������MPU������
//   59   MPU->CESR = 0;         
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_2  ;; 0x4000d000
        STR      R0,[R1, #+0]
//   60         
//   61   //��������������ʼ��
//   62   LPLD_ENET_BDInit();
        BL       LPLD_ENET_BDInit
//   63   
//   64   //��λENET
//   65   ENET->ECR = ENET_ECR_RESET_MASK;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable14_3  ;; 0x400c0024
        STR      R0,[R1, #+0]
//   66 
//   67   //�ȴ�����8��ʱ������
//   68   for( usData = 0; usData < 10; usData++ )
        MOVS     R0,#+0
        STRH     R0,[SP, #+0]
??LPLD_ENET_Init_0:
        LDRH     R0,[SP, #+0]
        CMP      R0,#+10
        BGE.N    ??LPLD_ENET_Init_1
//   69   {
//   70     asm( "NOP" );
        NOP
//   71   }
        LDRH     R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STRH     R0,[SP, #+0]
        B.N      ??LPLD_ENET_Init_0
//   72     
//   73   //��ʼ��MII�ӿ�
//   74   LPLD_ENET_MiiInit(g_bus_clock/1000000/*MHz*/);       
??LPLD_ENET_Init_1:
        LDR.W    R0,??DataTable14_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable14_5  ;; 0xf4240
        UDIV     R0,R0,R1
        BL       LPLD_ENET_MiiInit
//   75         
//   76   //ʹ���жϲ��������ȼ�
//   77   //set_irq_priority (76, 6);
//   78   enable_irq(ENET_Transmit_IRQn);        //ENET�����ж�
        MOVS     R0,#+76
        BL       NVIC_EnableIRQ
//   79   //set_irq_priority (77, 6);
//   80   enable_irq(ENET_Receive_IRQn);         //ENET�����ж�
        MOVS     R0,#+77
        BL       NVIC_EnableIRQ
//   81   //set_irq_priority (78, 6);
//   82   enable_irq(ENET_Error_IRQn);           //ENET���������ж�
        MOVS     R0,#+78
        BL       NVIC_EnableIRQ
//   83   
//   84   if(enet_init_struct.ENET_TxIsr != NULL)
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??LPLD_ENET_Init_2
//   85   {
//   86     ENET_ISR[ENET_TXF_ISR] = enet_init_struct.ENET_TxIsr;
        LDR      R0,[SP, #+12]
        LDR.W    R1,??DataTable14_6
        STR      R0,[R1, #+4]
//   87   }
//   88   if(enet_init_struct.ENET_RxIsr != NULL)
??LPLD_ENET_Init_2:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BEQ.N    ??LPLD_ENET_Init_3
//   89   {
//   90     ENET_ISR[ENET_RXF_ISR] = enet_init_struct.ENET_RxIsr;
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable14_6
        STR      R0,[R1, #+0]
//   91   }
//   92   if(enet_init_struct.ENET_1588Isr != NULL)
??LPLD_ENET_Init_3:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BEQ.N    ??LPLD_ENET_Init_4
//   93   {
//   94     ENET_ISR[ENET_1588_ISR] = enet_init_struct.ENET_1588Isr;
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable14_6
        STR      R0,[R1, #+8]
//   95   }
//   96   if(enet_init_struct.ENET_ErrIsr != NULL)
??LPLD_ENET_Init_4:
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BEQ.N    ??LPLD_ENET_Init_5
//   97   {
//   98     ENET_ISR[ENET_ERR_ISR] = enet_init_struct.ENET_ErrIsr;
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable14_6
        STR      R0,[R1, #+12]
//   99   }
//  100 
//  101   //ʹ��GPIO���Ÿ��ù���
//  102   PORTB->PCR[0]  = PORT_PCR_MUX(4);  //GPIO;//RMII0_MDIO/MII0_MDIO
??LPLD_ENET_Init_5:
        MOV      R0,#+1024
        LDR.W    R1,??DataTable14_7  ;; 0x4004a000
        STR      R0,[R1, #+0]
//  103   PORTB->PCR[1]  = PORT_PCR_MUX(4);  //GPIO;//RMII0_MDC/MII0_MDC    
        MOV      R0,#+1024
        LDR.W    R1,??DataTable14_8  ;; 0x4004a004
        STR      R0,[R1, #+0]
//  104   PORTA->PCR[14] = PORT_PCR_MUX(4);  //RMII0_CRS_DV/MII0_RXDV
        MOV      R0,#+1024
        LDR.W    R1,??DataTable14_9  ;; 0x40049038
        STR      R0,[R1, #+0]
//  105   PORTA->PCR[12] = PORT_PCR_MUX(4);  //RMII0_RXD1/MII0_RXD1
        MOV      R0,#+1024
        LDR.W    R1,??DataTable14_10  ;; 0x40049030
        STR      R0,[R1, #+0]
//  106   PORTA->PCR[13] = PORT_PCR_MUX(4);  //RMII0_RXD0/MII0_RXD0
        MOV      R0,#+1024
        LDR.W    R1,??DataTable14_11  ;; 0x40049034
        STR      R0,[R1, #+0]
//  107   PORTA->PCR[15] = PORT_PCR_MUX(4);  //RMII0_TXEN/MII0_TXEN
        MOV      R0,#+1024
        LDR.W    R1,??DataTable14_12  ;; 0x4004903c
        STR      R0,[R1, #+0]
//  108   PORTA->PCR[16] = PORT_PCR_MUX(4);  //RMII0_TXD0/MII0_TXD0
        MOV      R0,#+1024
        LDR.W    R1,??DataTable14_13  ;; 0x40049040
        STR      R0,[R1, #+0]
//  109   PORTA->PCR[17] = PORT_PCR_MUX(4);  //RMII0_TXD1/MII0_TXD1
        MOV      R0,#+1024
        LDR.W    R1,??DataTable14_14  ;; 0x40049044
        STR      R0,[R1, #+0]
//  110   
//  111     
//  112   //�ȴ�PHY�շ�����λ���
//  113   do
//  114   {
//  115     LPLD_ENET_Delay( ENET_LINK_DELAY );
??LPLD_ENET_Init_6:
        MOVS     R0,#+1
        BL       LPLD_ENET_Delay
//  116     usData = 0xffff;
        MOVW     R0,#+65535
        STRH     R0,[SP, #+0]
//  117     LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_PHYIDR1, &usData );     
        ADD      R2,SP,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  118   } while( usData == 0xffff );
        LDRH     R0,[SP, #+0]
        MOVW     R1,#+65535
        CMP      R0,R1
        BEQ.N    ??LPLD_ENET_Init_6
//  119 
//  120 #ifdef ENET_PRINT_PHY_INFO
//  121   printf("PHY_PHYIDR1=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_15
        BL       printf
//  122   LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_PHYIDR2, &usData );
        ADD      R2,SP,#+0
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  123   printf("PHY_PHYIDR2=0x%X\r\n",usData); 
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_16
        BL       printf
//  124   LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_ANLPAR, &usData );
        ADD      R2,SP,#+0
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  125   printf("PHY_ANLPAR=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_17
        BL       printf
//  126   LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_ANLPARNP, &usData );
        ADD      R2,SP,#+0
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  127   printf("PHY_ANLPARNP=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_18
        BL       printf
//  128   LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_PHYSTS, &usData );
        ADD      R2,SP,#+0
        MOVS     R1,#+16
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  129   printf("PHY_PHYSTS=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_19
        BL       printf
//  130   LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_MICR, &usData );
        ADD      R2,SP,#+0
        MOVS     R1,#+17
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  131   printf("PHY_MICR=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_20
        BL       printf
//  132   LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_MISR, &usData );
        ADD      R2,SP,#+0
        MOVS     R1,#+18
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  133   printf("PHY_MISR=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_21
        BL       printf
//  134 #endif 
//  135   
//  136   //��ʼ�Զ�Э��
//  137   LPLD_ENET_MiiWrite(CFG_PHY_ADDRESS, PHY_BMCR, ( PHY_BMCR_AN_RESTART | PHY_BMCR_AN_ENABLE ) );
        MOV      R2,#+4608
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiWrite
//  138 
//  139 #ifdef ENET_PRINT_PHY_INFO
//  140   LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_BMCR, &usData );
        ADD      R2,SP,#+0
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  141   printf("PHY_BMCR=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_22
        BL       printf
//  142 #endif 
//  143   
//  144   //�ȴ��Զ�Э�����
//  145   do
//  146   {
//  147     LPLD_ENET_Delay( ENET_LINK_DELAY );
??LPLD_ENET_Init_7:
        MOVS     R0,#+1
        BL       LPLD_ENET_Delay
//  148     LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_BMSR, &usData );
        ADD      R2,SP,#+0
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  149 
//  150   } while( !( usData & PHY_BMSR_AN_COMPLETE ) );
        LDRH     R0,[SP, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??LPLD_ENET_Init_7
//  151 
//  152 #ifdef ENET_PRINT_PHY_INFO
//  153     printf("PHY_BMSR=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_23
        BL       printf
//  154 #endif 
//  155     
//  156   //����Э�̽������ENETģ��
//  157   LPLD_ENET_MiiRead(CFG_PHY_ADDRESS, PHY_STATUS, &usData );  
        ADD      R2,SP,#+0
        MOVS     R1,#+16
        MOVS     R0,#+1
        BL       LPLD_ENET_MiiRead
//  158 
//  159 #ifdef ENET_PRINT_PHY_INFO
//  160   printf("PHY_STATUS=0x%X\r\n",usData);
        LDRH     R1,[SP, #+0]
        LDR.W    R0,??DataTable14_24
        BL       printf
//  161 #endif 
//  162   
//  163   //������������ַ��ϣ�Ĵ���
//  164   ENET->IALR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_25  ;; 0x400c011c
        STR      R0,[R1, #+0]
//  165   ENET->IAUR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_26  ;; 0x400c0118
        STR      R0,[R1, #+0]
//  166   ENET->GALR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_27  ;; 0x400c0124
        STR      R0,[R1, #+0]
//  167   ENET->GAUR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_28  ;; 0x400c0120
        STR      R0,[R1, #+0]
//  168   
//  169   //����ENETģ��MAC��ַ
//  170   LPLD_ENET_SetAddress(enet_init_struct.ENET_MacAddress);
        LDR      R0,[SP, #+8]
        BL       LPLD_ENET_SetAddress
//  171     
//  172   //���ý��տ��ƼĴ�������󳤶ȡ�RMIIģʽ������CRCУ���
//  173   ENET->RCR = ENET_RCR_MAX_FL(CFG_ENET_MAX_PACKET_SIZE) | ENET_RCR_MII_MODE_MASK | ENET_RCR_CRCFWD_MASK | ENET_RCR_RMII_MODE_MASK;
        LDR.W    R0,??DataTable14_29  ;; 0x5f04104
        LDR.W    R1,??DataTable14_30  ;; 0x400c0084
        STR      R0,[R1, #+0]
//  174 
//  175   //������ͽ��տ���
//  176   ENET->TCR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_31  ;; 0x400c00c4
        STR      R0,[R1, #+0]
//  177         
//  178   //ͨѶ��ʽ����
//  179   if( usData & PHY_DUPLEX_STATUS )
        LDRH     R0,[SP, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??LPLD_ENET_Init_8
//  180   {
//  181     //ȫ˫��
//  182     ENET->RCR &= (uint32)~ENET_RCR_DRT_MASK;
        LDR.W    R0,??DataTable14_30  ;; 0x400c0084
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2
        LDR.W    R1,??DataTable14_30  ;; 0x400c0084
        STR      R0,[R1, #+0]
//  183     ENET->TCR |= ENET_TCR_FDEN_MASK;
        LDR.W    R0,??DataTable14_31  ;; 0x400c00c4
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable14_31  ;; 0x400c00c4
        STR      R0,[R1, #+0]
        B.N      ??LPLD_ENET_Init_9
//  184   }
//  185   else
//  186   {
//  187     //��˫��
//  188     ENET->RCR |= ENET_RCR_DRT_MASK;
??LPLD_ENET_Init_8:
        LDR.W    R0,??DataTable14_30  ;; 0x400c0084
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable14_30  ;; 0x400c0084
        STR      R0,[R1, #+0]
//  189     ENET->TCR &= (uint32)~ENET_TCR_FDEN_MASK;
        LDR.W    R0,??DataTable14_31  ;; 0x400c00c4
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.W    R1,??DataTable14_31  ;; 0x400c00c4
        STR      R0,[R1, #+0]
//  190   }
//  191   
//  192   //ͨ����������
//  193   if( usData & PHY_SPEED_STATUS )
??LPLD_ENET_Init_9:
        LDRH     R0,[SP, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??LPLD_ENET_Init_10
//  194   {
//  195     //10Mbps
//  196     ENET->RCR |= ENET_RCR_RMII_10T_MASK;
        LDR.W    R0,??DataTable14_30  ;; 0x400c0084
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.W    R1,??DataTable14_30  ;; 0x400c0084
        STR      R0,[R1, #+0]
//  197   }
//  198 
//  199   //ʹ�÷���ǿ�ͻ�����������
//  200   ENET->ECR = 0;
??LPLD_ENET_Init_10:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable14_3  ;; 0x400c0024
        STR      R0,[R1, #+0]
//  201   
//  202   
//  203   //���ý��ջ���������
//  204   ENET->MRBR = (unsigned short) CFG_ENET_RX_BUFFER_SIZE;
        MOV      R0,#+256
        LDR.W    R1,??DataTable14_32  ;; 0x400c0188
        STR      R0,[R1, #+0]
//  205 
//  206   //ָ���ν��ջ��������������е�ͷ��ַ
//  207   ENET->RDSR = ( uint32 ) &( xENETRxDescriptors[ 0 ] );
        LDR.W    R0,??DataTable14_33
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable14_34  ;; 0x400c0180
        STR      R0,[R1, #+0]
//  208 
//  209   //ָ���η��ͻ��������������е�ͷ��ַ
//  210   ENET->TDSR = ( uint32 ) xENETTxDescriptors;
        LDR.W    R0,??DataTable14_35
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable14_36  ;; 0x400c0184
        STR      R0,[R1, #+0]
//  211 
//  212   //���ENET�ж��¼�
//  213   ENET->EIR = ( uint32 ) -1;
        MOVS     R0,#-1
        LDR.W    R1,??DataTable14_37  ;; 0x400c0004
        STR      R0,[R1, #+0]
//  214 
//  215   //ʹ���ж�
//  216   ENET->EIMR = 0 
//  217             | ENET_EIMR_RXF_MASK  //�����ж�
//  218             | ENET_EIMR_TXF_MASK  //�����ж�
//  219             //ENET�ж�
//  220             | ENET_EIMR_UN_MASK | ENET_EIMR_RL_MASK | ENET_EIMR_LC_MASK | ENET_EIMR_BABT_MASK | ENET_EIMR_BABR_MASK | ENET_EIMR_EBERR_MASK
//  221             | ENET_EIMR_RXB_MASK
//  222             ;
        LDR.W    R0,??DataTable14_38  ;; 0x6b780000
        LDR.W    R1,??DataTable14_39  ;; 0x400c0008
        STR      R0,[R1, #+0]
//  223 
//  224   //ʹ��ENETģ��
//  225   ENET->ECR |= ENET_ECR_ETHEREN_MASK;
        LDR.W    R0,??DataTable14_3  ;; 0x400c0024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable14_3  ;; 0x400c0024
        STR      R0,[R1, #+0]
//  226 
//  227   //�������ջ�����Ϊ��
//  228   ENET->RDAR = ENET_RDAR_RDAR_MASK;
        MOVS     R0,#+16777216
        LDR.W    R1,??DataTable14_40  ;; 0x400c0010
        STR      R0,[R1, #+0]
//  229 }
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  230 
//  231 
//  232 /*
//  233  * LPLD_ENET_SetIsr
//  234  * ENETģ���жϺ�������
//  235  * 
//  236  * ����:
//  237  *    type--�ж�����
//  238  *      |__ENET_RXF_ISR   -�����ж�
//  239  *      |__ENET_TXF_ISR   -�����ж�
//  240  *    isr_func--�û��жϳ�����ڵ�ַ
//  241  *      |__�û��ڹ����ļ��¶�����жϺ���������������Ϊ:�޷���ֵ,�޲���(eg. void isr(void);)
//  242  *
//  243  * ���:
//  244  *    0--���ô���
//  245  *    1--���óɹ�
//  246  *
//  247  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  248 uint8 LPLD_ENET_SetIsr(uint8 type, ENET_ISR_CALLBACK isr_func)
//  249 {
LPLD_ENET_SetIsr:
        MOVS     R2,R0
//  250   if(type>4)
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+5
        BLT.N    ??LPLD_ENET_SetIsr_0
//  251     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_ENET_SetIsr_1
//  252   
//  253   ENET_ISR[type] = isr_func;
??LPLD_ENET_SetIsr_0:
        LDR.W    R0,??DataTable14_6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        STR      R1,[R0, R2, LSL #+2]
//  254   return 1;
        MOVS     R0,#+1
??LPLD_ENET_SetIsr_1:
        BX       LR               ;; return
//  255 }
//  256 
//  257 
//  258 /*
//  259  * Eth_RX_IRQHandler
//  260  * ENET�����жϵײ���ں���
//  261  * 
//  262  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  263  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  264 void Eth_RX_IRQHandler(void)
//  265 {   
Eth_RX_IRQHandler:
        PUSH     {R7,LR}
//  266   ENET->EIR |= ENET_EIMR_RXF_MASK; 
        LDR.W    R0,??DataTable14_37  ;; 0x400c0004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.W    R1,??DataTable14_37  ;; 0x400c0004
        STR      R0,[R1, #+0]
//  267     
//  268   //�����û��Զ����жϷ���
//  269   if(ENET_ISR[ENET_RXF_ISR] != NULL)
        LDR.W    R0,??DataTable14_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Eth_RX_IRQHandler_0
//  270   {
//  271     ENET_ISR[ENET_RXF_ISR]();  
        LDR.W    R0,??DataTable14_6
        LDR      R0,[R0, #+0]
        BLX      R0
//  272   }
//  273 }
??Eth_RX_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  274 
//  275 /*
//  276  * Eth_TX_IRQHandler
//  277  * ENET�����жϵײ���ں���
//  278  * 
//  279  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  280  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  281 void Eth_TX_IRQHandler(void)
//  282 {  
Eth_TX_IRQHandler:
        PUSH     {R7,LR}
//  283   ENET->EIR |= ENET_EIMR_TXF_MASK; 
        LDR.W    R0,??DataTable14_37  ;; 0x400c0004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.W    R1,??DataTable14_37  ;; 0x400c0004
        STR      R0,[R1, #+0]
//  284     
//  285   //�����û��Զ����жϷ���
//  286   if(ENET_ISR[ENET_TXF_ISR] != NULL)
        LDR.W    R0,??DataTable14_6
        LDR      R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??Eth_TX_IRQHandler_0
//  287   {
//  288     ENET_ISR[ENET_TXF_ISR]();  
        LDR.W    R0,??DataTable14_6
        LDR      R0,[R0, #+4]
        BLX      R0
//  289   }
//  290 }
??Eth_TX_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  291 
//  292 /*
//  293  * Eth_IEEE1588_IRQHandler
//  294  * IEEE1588�жϵײ���ں���
//  295  * 
//  296  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  297  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  298 void Eth_IEEE1588_IRQHandler(void)
//  299 {    
Eth_IEEE1588_IRQHandler:
        PUSH     {R7,LR}
//  300   //�����û��Զ����жϷ���
//  301   if(ENET_ISR[ENET_1588_ISR] != NULL)
        LDR.W    R0,??DataTable14_6
        LDR      R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??Eth_IEEE1588_IRQHandler_0
//  302   {
//  303     ENET_ISR[ENET_1588_ISR]();  
        LDR.W    R0,??DataTable14_6
        LDR      R0,[R0, #+8]
        BLX      R0
//  304   }
//  305 }
??Eth_IEEE1588_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  306 
//  307 /*
//  308  * Eth_Err_Misc_IRQHandler
//  309  * ���������жϵײ���ں���
//  310  * 
//  311  * �û������޸ģ������Զ������Ӧͨ���жϺ���
//  312  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  313 void Eth_Err_Misc_IRQHandler(void)
//  314 {  
Eth_Err_Misc_IRQHandler:
        PUSH     {R7,LR}
//  315   //�����û��Զ����жϷ���
//  316   if(ENET_ISR[ENET_ERR_ISR] != NULL)
        LDR.W    R0,??DataTable14_6
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BEQ.N    ??Eth_Err_Misc_IRQHandler_0
//  317   {
//  318     ENET_ISR[ENET_ERR_ISR](); 
        LDR.W    R0,??DataTable14_6
        LDR      R0,[R0, #+12]
        BLX      R0
//  319   } 
//  320 }
??Eth_Err_Misc_IRQHandler_0:
        POP      {R0,PC}          ;; return
//  321 
//  322 /*
//  323  * LPLD_ENET_Delay
//  324  * ENETģ���ڲ���ʱ����
//  325  * 
//  326  * ����:
//  327  *    time--�ӳٴ�С
//  328  *
//  329  * ���:
//  330  *    ��
//  331  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  332 static void LPLD_ENET_Delay(uint32 time)
//  333 {
//  334   uint32 i = 0,j = 0;
LPLD_ENET_Delay:
        MOVS     R1,#+0
        MOVS     R2,#+0
//  335   
//  336   for(i = 0;i < time;i++)
        MOVS     R3,#+0
        MOVS     R1,R3
??LPLD_ENET_Delay_0:
        CMP      R1,R0
        BCS.N    ??LPLD_ENET_Delay_1
//  337   {
//  338     for(j = 0;j < 50000;j++);
        MOVS     R3,#+0
        MOVS     R2,R3
??LPLD_ENET_Delay_2:
        MOVW     R3,#+50000
        CMP      R2,R3
        BCS.N    ??LPLD_ENET_Delay_3
        ADDS     R2,R2,#+1
        B.N      ??LPLD_ENET_Delay_2
//  339   }
??LPLD_ENET_Delay_3:
        ADDS     R1,R1,#+1
        B.N      ??LPLD_ENET_Delay_0
//  340 }
??LPLD_ENET_Delay_1:
        BX       LR               ;; return
//  341 
//  342 
//  343 /*
//  344  * LPLD_ENET_BDInit
//  345  * ��������������ʼ��
//  346  * 
//  347  * ����:
//  348  *    ��
//  349  *
//  350  * ���:
//  351  *    ��
//  352  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  353 static void LPLD_ENET_BDInit( void )
//  354 {
//  355   uint32 ux;
//  356   uint8 *pcBufPointer;
//  357   
//  358   //Ѱ��<��������������ռ�>�е�16�ֽڶ���ĵ�ַ��������λΪ0����ʼ��ַ
//  359   pcBufPointer = &( xENETTxDescriptors_unaligned[ 0 ] );
LPLD_ENET_BDInit:
        LDR.W    R2,??DataTable14_41
        MOVS     R1,R2
//  360   while( ( ( uint32 ) pcBufPointer & 0x0fUL ) != 0 )
??LPLD_ENET_BDInit_0:
        ANDS     R2,R1,#0xF
        CMP      R2,#+0
        BEQ.N    ??LPLD_ENET_BDInit_1
//  361   {
//  362     pcBufPointer++;
        ADDS     R1,R1,#+1
        B.N      ??LPLD_ENET_BDInit_0
//  363   }
//  364   xENETTxDescriptors = ( ENET_NbufTypeDef * ) pcBufPointer;
??LPLD_ENET_BDInit_1:
        LDR.W    R2,??DataTable14_35
        STR      R1,[R2, #+0]
//  365   
//  366   //Ѱ��<��������������ռ�>�е�16�ֽڶ���ĵ�ַ
//  367   pcBufPointer = &( xENETRxDescriptors_unaligned[ 0 ] );
        LDR.W    R2,??DataTable14_42
        MOVS     R1,R2
//  368   while( ( ( uint32 ) pcBufPointer & 0x0fUL ) != 0 )
??LPLD_ENET_BDInit_2:
        ANDS     R2,R1,#0xF
        CMP      R2,#+0
        BEQ.N    ??LPLD_ENET_BDInit_3
//  369   {
//  370     pcBufPointer++;
        ADDS     R1,R1,#+1
        B.N      ??LPLD_ENET_BDInit_2
//  371   }
//  372   xENETRxDescriptors = ( ENET_NbufTypeDef * ) pcBufPointer;
??LPLD_ENET_BDInit_3:
        LDR.W    R2,??DataTable14_33
        STR      R1,[R2, #+0]
//  373   
//  374   //���ͻ�������������ʼ��
//  375   for( ux = 0; ux < CFG_NUM_ENET_TX_BUFFERS; ux++ )
        MOVS     R2,#+0
        MOVS     R0,R2
??LPLD_ENET_BDInit_4:
        CMP      R0,#+0
        BNE.N    ??LPLD_ENET_BDInit_5
//  376   {
//  377     xENETTxDescriptors[ ux ].status = 0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable14_35
        LDR      R3,[R3, #+0]
        STRH     R2,[R3, R0, LSL #+3]
//  378     xENETTxDescriptors[ ux ].data = 0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable14_35
        LDR      R3,[R3, #+0]
        ADDS     R3,R3,R0, LSL #+3
        STR      R2,[R3, #+4]
//  379     xENETTxDescriptors[ ux ].length = 0;
        MOVS     R2,#+0
        LDR.W    R3,??DataTable14_35
        LDR      R3,[R3, #+0]
        ADDS     R3,R3,R0, LSL #+3
        STRH     R2,[R3, #+2]
//  380   }
        ADDS     R0,R0,#+1
        B.N      ??LPLD_ENET_BDInit_4
//  381   
//  382   //Ѱ��<���ջ������ռ�>�е�16�ֽڶ���ĵ�ַ
//  383   pcBufPointer = &( ucENETRxBuffers[ 0 ] );
??LPLD_ENET_BDInit_5:
        LDR.W    R2,??DataTable14_43
        MOVS     R1,R2
//  384   while( ( ( uint32 ) pcBufPointer & 0x0fUL ) != 0 )
??LPLD_ENET_BDInit_6:
        ANDS     R2,R1,#0xF
        CMP      R2,#+0
        BEQ.N    ??LPLD_ENET_BDInit_7
//  385   {
//  386     pcBufPointer++;
        ADDS     R1,R1,#+1
        B.N      ??LPLD_ENET_BDInit_6
//  387   }
//  388   
//  389   //���ջ�������������ʼ��
//  390   for( ux = 0; ux < CFG_NUM_ENET_RX_BUFFERS; ux++ )
??LPLD_ENET_BDInit_7:
        MOVS     R2,#+0
        MOVS     R0,R2
??LPLD_ENET_BDInit_8:
        CMP      R0,#+8
        BCS.N    ??LPLD_ENET_BDInit_9
//  391   {
//  392     xENETRxDescriptors[ ux ].status = RX_BD_E;
        MOVS     R2,#+128
        LDR.W    R3,??DataTable14_33
        LDR      R3,[R3, #+0]
        STRH     R2,[R3, R0, LSL #+3]
//  393     xENETRxDescriptors[ ux ].length = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable14_33
        LDR      R3,[R3, #+0]
        ADDS     R3,R3,R0, LSL #+3
        STRH     R2,[R3, #+2]
//  394     xENETRxDescriptors[ ux ].data = (uint8 *)__REV((uint32)pcBufPointer);
        REV      R2,R1
        LDR.N    R3,??DataTable14_33
        LDR      R3,[R3, #+0]
        ADDS     R3,R3,R0, LSL #+3
        STR      R2,[R3, #+4]
//  395     pcBufPointer += CFG_ENET_RX_BUFFER_SIZE;
        ADDS     R1,R1,#+256
//  396   
//  397   }
        ADDS     R0,R0,#+1
        B.N      ??LPLD_ENET_BDInit_8
//  398   
//  399   //���û��������������������е����һ��״̬λΪWrap
//  400   xENETTxDescriptors[ CFG_NUM_ENET_TX_BUFFERS - 1 ].status |= TX_BD_W;
??LPLD_ENET_BDInit_9:
        LDR.N    R2,??DataTable14_35
        LDR      R2,[R2, #+0]
        LDRH     R2,[R2, #+0]
        ORRS     R2,R2,#0x20
        LDR.N    R3,??DataTable14_35
        LDR      R3,[R3, #+0]
        STRH     R2,[R3, #+0]
//  401   xENETRxDescriptors[ CFG_NUM_ENET_RX_BUFFERS - 1 ].status |= RX_BD_W;
        LDR.N    R2,??DataTable14_33
        LDR      R2,[R2, #+0]
        LDRH     R2,[R2, #+56]
        ORRS     R2,R2,#0x20
        LDR.N    R3,??DataTable14_33
        LDR      R3,[R3, #+0]
        STRH     R2,[R3, #+56]
//  402   
//  403   uxNextRxBuffer = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable14_44
        STR      R2,[R3, #+0]
//  404   uxNextTxBuffer = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable14_45
        STR      R2,[R3, #+0]
//  405 }
        BX       LR               ;; return
//  406 
//  407 /*
//  408  * LPLD_ENET_MacSend
//  409  * ��̫֡���ͺ���
//  410  * 
//  411  * ����:
//  412  *    *ch--����֡ͷ��ַ��������֡Ϊ��̫֡���������Ŀ�ĵ�ַ��Դ��ַ�����͵ȡ�
//  413  *    len--����֡���ȡ�
//  414  *
//  415  * ���:
//  416  *    ��
//  417  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  418 void LPLD_ENET_MacSend(uint8 *ch, uint16 len)
//  419 {
LPLD_ENET_MacSend:
        PUSH     {R4}
//  420   
//  421   //��鵱ǰ���ͻ������������Ƿ����
//  422   while( xENETTxDescriptors[ uxNextTxBuffer ].status & TX_BD_R);
??LPLD_ENET_MacSend_0:
        LDR.N    R2,??DataTable14_35
        LDR      R2,[R2, #+0]
        LDR.N    R3,??DataTable14_45
        LDR      R3,[R3, #+0]
        LDRB     R2,[R2, R3, LSL #+3]
        LSLS     R2,R2,#+24
        BMI.N    ??LPLD_ENET_MacSend_0
//  423   
//  424   //���÷��ͻ�����������
//  425   xENETTxDescriptors[ uxNextTxBuffer ].data = (uint8 *)__REV((uint32)ch);
        REV      R2,R0
        LDR.N    R3,??DataTable14_35
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable14_45
        LDR      R4,[R4, #+0]
        ADDS     R3,R3,R4, LSL #+3
        STR      R2,[R3, #+4]
//  426   xENETTxDescriptors[ uxNextTxBuffer ].length = __REVSH(len);
        REVSH    R2,R1
        LDR.N    R3,??DataTable14_35
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable14_45
        LDR      R4,[R4, #+0]
        ADDS     R3,R3,R4, LSL #+3
        STRH     R2,[R3, #+2]
//  427   xENETTxDescriptors[ uxNextTxBuffer ].status = ( TX_BD_R | TX_BD_L | TX_BD_TC | TX_BD_W );
        MOVS     R2,#+172
        LDR.N    R3,??DataTable14_35
        LDR      R3,[R3, #+0]
        LDR.N    R4,??DataTable14_45
        LDR      R4,[R4, #+0]
        STRH     R2,[R3, R4, LSL #+3]
//  428   
//  429   uxNextTxBuffer++;
        LDR.N    R2,??DataTable14_45
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1
        LDR.N    R3,??DataTable14_45
        STR      R2,[R3, #+0]
//  430   if( uxNextTxBuffer >= CFG_NUM_ENET_TX_BUFFERS )
        LDR.N    R2,??DataTable14_45
        LDR      R2,[R2, #+0]
        CMP      R2,#+0
        BEQ.N    ??LPLD_ENET_MacSend_1
//  431   {
//  432     uxNextTxBuffer = 0;
        MOVS     R2,#+0
        LDR.N    R3,??DataTable14_45
        STR      R2,[R3, #+0]
//  433   }
//  434   
//  435   //ʹ�ܷ���
//  436   ENET->TDAR = ENET_TDAR_TDAR_MASK;
??LPLD_ENET_MacSend_1:
        MOVS     R2,#+16777216
        LDR.N    R3,??DataTable14_46  ;; 0x400c0014
        STR      R2,[R3, #+0]
//  437   
//  438 }
        POP      {R4}
        BX       LR               ;; return
//  439 
//  440 
//  441 /*
//  442  * LPLD_ENET_MacRecv
//  443  * ��̫֡���պ���
//  444  * 
//  445  * ����:
//  446  *    *ch--��������֡ͷ��ַ��
//  447  *    *len--����֡���ȵ�ַ��
//  448  *
//  449  * ���:
//  450  *    ��
//  451  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  452 uint8 LPLD_ENET_MacRecv(uint8 *ch, uint16 *len)
//  453 {
LPLD_ENET_MacRecv:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  454   uint8 *prvRxd;
//  455   *len = 0;
        MOVS     R0,#+0
        STRH     R0,[R5, #+0]
//  456   uxNextRxBuffer = 0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_44
        STR      R0,[R1, #+0]
//  457   
//  458   //Ѱ��Ϊ�ǿյĽ��ջ����������� 
//  459   while( (xENETRxDescriptors[ uxNextRxBuffer ].status & RX_BD_E)!=0 )
??LPLD_ENET_MacRecv_0:
        LDR.N    R0,??DataTable14_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable14_44
        LDR      R1,[R1, #+0]
        LDRB     R0,[R0, R1, LSL #+3]
        LSLS     R0,R0,#+24
        BPL.N    ??LPLD_ENET_MacRecv_1
//  460   {
//  461     uxNextRxBuffer++; 
        LDR.N    R0,??DataTable14_44
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable14_44
        STR      R0,[R1, #+0]
//  462     if( uxNextRxBuffer >= CFG_NUM_ENET_RX_BUFFERS )
        LDR.N    R0,??DataTable14_44
        LDR      R0,[R0, #+0]
        CMP      R0,#+8
        BCC.N    ??LPLD_ENET_MacRecv_0
//  463     {
//  464       uxNextRxBuffer = 0; 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable14_44
        STR      R0,[R1, #+0]
//  465       return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_ENET_MacRecv_2
//  466     } 
//  467     
//  468   }
//  469   
//  470   //��ȡ���ջ�����������
//  471   *len  =  __REVSH(xENETRxDescriptors[ uxNextRxBuffer ].length);
??LPLD_ENET_MacRecv_1:
        LDR.N    R0,??DataTable14_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable14_44
        LDR      R1,[R1, #+0]
        ADDS     R0,R0,R1, LSL #+3
        LDRSH    R0,[R0, #+2]
        REVSH    R0,R0
        STRH     R0,[R5, #+0]
//  472   prvRxd =  (uint8 *)__REV((uint32)xENETRxDescriptors[ uxNextRxBuffer ].data);      
        LDR.N    R0,??DataTable14_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable14_44
        LDR      R1,[R1, #+0]
        ADDS     R0,R0,R1, LSL #+3
        LDR      R0,[R0, #+4]
        REV      R0,R0
        MOVS     R6,R0
//  473   memcpy((void *)ch, (void *)prvRxd, *len);      
        LDRH     R2,[R5, #+0]
        MOVS     R1,R6
        MOVS     R0,R4
        BL       memcpy
//  474   
//  475   //������ջ�����������״̬��־Empty
//  476   xENETRxDescriptors[ uxNextRxBuffer ].status |= RX_BD_E;
        LDR.N    R0,??DataTable14_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable14_44
        LDR      R1,[R1, #+0]
        LDRH     R0,[R0, R1, LSL #+3]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable14_33
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable14_44
        LDR      R2,[R2, #+0]
        STRH     R0,[R1, R2, LSL #+3]
//  477   ENET->RDAR = ENET_RDAR_RDAR_MASK;	
        MOVS     R0,#+16777216
        LDR.N    R1,??DataTable14_40  ;; 0x400c0010
        STR      R0,[R1, #+0]
//  478   return 0;
        MOVS     R0,#+0
??LPLD_ENET_MacRecv_2:
        POP      {R4-R6,PC}       ;; return
//  479 }
//  480 
//  481 
//  482 /*
//  483  * LPLD_ENET_HashAddress
//  484  * ���ɸ�����MAC��ַ�Ĺ�ϣ��
//  485  * 
//  486  * ����:
//  487  *    *addr--6�ֽڵ�ַָ�롣
//  488  *
//  489  * ���:
//  490  *    32λCRCУ��ĸ�6λ
//  491  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  492 uint8 LPLD_ENET_HashAddress(const uint8* addr)
//  493 {
LPLD_ENET_HashAddress:
        PUSH     {R4-R6}
        MOVS     R1,R0
//  494   uint32 crc;
//  495   uint8 byte;
//  496   int i, j;
//  497   
//  498   crc = 0xFFFFFFFF;
        MOVS     R5,#-1
        MOVS     R0,R5
//  499   for(i=0; i<6; ++i)
        MOVS     R5,#+0
        MOVS     R3,R5
??LPLD_ENET_HashAddress_0:
        CMP      R3,#+6
        BGE.N    ??LPLD_ENET_HashAddress_1
//  500   {
//  501     byte = addr[i];
        LDRB     R5,[R3, R1]
        MOVS     R2,R5
//  502     for(j=0; j<8; ++j)
        MOVS     R5,#+0
        MOVS     R4,R5
??LPLD_ENET_HashAddress_2:
        CMP      R4,#+8
        BGE.N    ??LPLD_ENET_HashAddress_3
//  503     {
//  504       if((byte & 0x01)^(crc & 0x01))
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ANDS     R5,R2,#0x1
        ANDS     R6,R0,#0x1
        TEQ      R6,R5
        BEQ.N    ??LPLD_ENET_HashAddress_4
//  505       {
//  506         crc >>= 1;
        LSRS     R0,R0,#+1
//  507         crc = crc ^ 0xEDB88320;
        LDR.N    R5,??DataTable14_47  ;; 0xedb88320
        EORS     R0,R5,R0
        B.N      ??LPLD_ENET_HashAddress_5
//  508       }
//  509       else
//  510         crc >>= 1;
??LPLD_ENET_HashAddress_4:
        LSRS     R0,R0,#+1
//  511       byte >>= 1;
??LPLD_ENET_HashAddress_5:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+1
//  512     }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_ENET_HashAddress_2
//  513   }
??LPLD_ENET_HashAddress_3:
        ADDS     R3,R3,#+1
        B.N      ??LPLD_ENET_HashAddress_0
//  514   return (uint8)(crc >> 26);
??LPLD_ENET_HashAddress_1:
        LSRS     R0,R0,#+26
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6}
        BX       LR               ;; return
//  515 }
//  516 
//  517 
//  518 /*
//  519  * LPLD_ENET_SetAddress
//  520  * ����MAC�����ַ
//  521  * 
//  522  * ����:
//  523  *    *pa--6�ֽڵ������ַָ�롣
//  524  *
//  525  * ���:
//  526  *    ��
//  527  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  528 void LPLD_ENET_SetAddress(const uint8 *pa)
//  529 {
LPLD_ENET_SetAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  530   uint8 crc;
//  531   
//  532   //���������ַ
//  533   ENET->PALR = (uint32)((pa[0]<<24) | (pa[1]<<16) | (pa[2]<<8) | pa[3]);
        LDRB     R0,[R4, #+0]
        LDRB     R1,[R4, #+1]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R4, #+2]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R4, #+3]
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable14_48  ;; 0x400c00e4
        STR      R0,[R1, #+0]
//  534   ENET->PAUR = (uint32)((pa[4]<<24) | (pa[5]<<16));
        LDRB     R0,[R4, #+4]
        LDRB     R1,[R4, #+5]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDR.N    R1,??DataTable14_49  ;; 0x400c00e8
        STR      R0,[R1, #+0]
//  535   
//  536   //���������ַ���㲢���ö�����ַ��ϣ�Ĵ�����ֵ
//  537   crc = LPLD_ENET_HashAddress(pa);
        MOVS     R0,R4
        BL       LPLD_ENET_HashAddress
        MOVS     R5,R0
//  538   if(crc >= 32)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+32
        BLT.N    ??LPLD_ENET_SetAddress_0
//  539     ENET->IAUR |= (uint32)(1 << (crc - 32));
        LDR.N    R0,??DataTable14_26  ;; 0x400c0118
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        SUBS     R2,R5,#+32
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable14_26  ;; 0x400c0118
        STR      R0,[R1, #+0]
        B.N      ??LPLD_ENET_SetAddress_1
//  540   else
//  541     ENET->IALR |= (uint32)(1 << crc);
??LPLD_ENET_SetAddress_0:
        LDR.N    R0,??DataTable14_25  ;; 0x400c011c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable14_25  ;; 0x400c011c
        STR      R0,[R1, #+0]
//  542 }
??LPLD_ENET_SetAddress_1:
        POP      {R0,R4,R5,PC}    ;; return
//  543 
//  544 
//  545 
//  546 /*******************************************************************
//  547  *
//  548  *                PHY�豸MII�ӿں���
//  549  *
//  550 *******************************************************************/
//  551 
//  552 /*
//  553  * LPLD_ENET_MiiInit
//  554  * ����ENETģ���MII�ӿ�ʱ�ӣ�����Ƶ��Ϊ2.5MHz
//  555  * MII_SPEED = ϵͳʱ�� / (2.5MHz * 2)
//  556  * 
//  557  * ����:
//  558  *    sys_clk_mhz--ϵͳ��Ƶ
//  559  *
//  560  * ���:
//  561  *    ��
//  562  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  563 void LPLD_ENET_MiiInit(uint32 sys_clk_mhz)
//  564 {
//  565   ENET->MSCR = 0 | ENET_MSCR_MII_SPEED((2*sys_clk_mhz/5)+1);
LPLD_ENET_MiiInit:
        LSLS     R1,R0,#+1
        MOVS     R2,#+5
        UDIV     R1,R1,R2
        ADDS     R1,R1,#+1
        LSLS     R1,R1,#+1
        ANDS     R1,R1,#0x7E
        LDR.N    R2,??DataTable14_50  ;; 0x400c0044
        STR      R1,[R2, #+0]
//  566 }
        BX       LR               ;; return
//  567 
//  568 
//  569 /*
//  570  * LPLD_ENET_MiiWrite
//  571  * MII�ӿ�д
//  572  * 
//  573  * ����:
//  574  *    phy_addr--�����շ�����ַ
//  575  *    reg_addr--�Ĵ�����ַ
//  576  *    data--д�������
//  577  *
//  578  * ���:
//  579  *    1--д��ʱ
//  580  *    0--д��ɹ�
//  581  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  582 uint8 LPLD_ENET_MiiWrite(uint16 phy_addr, uint16 reg_addr, uint16 data)
//  583 {
LPLD_ENET_MiiWrite:
        PUSH     {R4,R5}
        MOVS     R3,R0
//  584   uint32 timeout;
//  585   
//  586   //���MII�ж��¼�
//  587   ENET->EIR = ENET_EIR_MII_MASK;
        MOVS     R0,#+8388608
        LDR.N    R5,??DataTable14_37  ;; 0x400c0004
        STR      R0,[R5, #+0]
//  588   
//  589   //��ʼ��MII����֡�Ĵ���
//  590   ENET->MMFR = 0
//  591             | ENET_MMFR_ST(0x01)
//  592             | ENET_MMFR_OP(0x01)
//  593             | ENET_MMFR_PA(phy_addr)
//  594             | ENET_MMFR_RA(reg_addr)
//  595             | ENET_MMFR_TA(0x02)
//  596             | ENET_MMFR_DATA(data);
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LSLS     R0,R3,#+23
        ANDS     R0,R0,#0xF800000
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSLS     R5,R1,#+18
        ANDS     R5,R5,#0x7C0000
        ORRS     R0,R5,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ORRS     R0,R2,R0
        LDR.N    R5,??DataTable14_51  ;; 0x50020000
        ORRS     R0,R5,R0
        LDR.N    R5,??DataTable14_52  ;; 0x400c0040
        STR      R0,[R5, #+0]
//  597   
//  598   //�ȴ�MII��������ж��¼�
//  599   for (timeout = 0; timeout < MII_TIMEOUT; timeout++)
        MOVS     R0,#+0
        MOVS     R4,R0
??LPLD_ENET_MiiWrite_0:
        LDR.N    R0,??DataTable14_53  ;; 0x1ffff
        CMP      R4,R0
        BCS.N    ??LPLD_ENET_MiiWrite_1
//  600   {
//  601     if (ENET->EIR & ENET_EIR_MII_MASK)
        LDR.N    R0,??DataTable14_37  ;; 0x400c0004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+8
        BMI.N    ??LPLD_ENET_MiiWrite_1
//  602       break;
//  603   }
??LPLD_ENET_MiiWrite_2:
        ADDS     R4,R4,#+1
        B.N      ??LPLD_ENET_MiiWrite_0
//  604   
//  605   if(timeout == MII_TIMEOUT) 
??LPLD_ENET_MiiWrite_1:
        LDR.N    R0,??DataTable14_53  ;; 0x1ffff
        CMP      R4,R0
        BNE.N    ??LPLD_ENET_MiiWrite_3
//  606     return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_ENET_MiiWrite_4
//  607   
//  608   //���MII�ж��¼�
//  609   ENET->EIR = ENET_EIR_MII_MASK;
??LPLD_ENET_MiiWrite_3:
        MOVS     R0,#+8388608
        LDR.N    R5,??DataTable14_37  ;; 0x400c0004
        STR      R0,[R5, #+0]
//  610   
//  611   return 0;
        MOVS     R0,#+0
??LPLD_ENET_MiiWrite_4:
        POP      {R4,R5}
        BX       LR               ;; return
//  612 }
//  613 
//  614 
//  615 /*
//  616  * LPLD_ENET_MiiRead
//  617  * MII�ӿڶ�
//  618  * 
//  619  * ����:
//  620  *    phy_addr--�����շ�����ַ
//  621  *    reg_addr--�Ĵ�����ַ
//  622  *    *data--���������ݵ�ַָ��
//  623  *
//  624  * ���:
//  625  *    1--����ʱ
//  626  *    0--��ȡ�ɹ�
//  627  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  628 uint8 LPLD_ENET_MiiRead(uint16 phy_addr, uint16 reg_addr, uint16 *data)
//  629 {
LPLD_ENET_MiiRead:
        PUSH     {R4,R5}
        MOVS     R3,R0
//  630   uint32 timeout;
//  631   
//  632   //���MII�ж��¼�
//  633   ENET->EIR = ENET_EIR_MII_MASK;
        MOVS     R0,#+8388608
        LDR.N    R5,??DataTable14_37  ;; 0x400c0004
        STR      R0,[R5, #+0]
//  634   
//  635   //��ʼ��MII����֡�Ĵ���
//  636   ENET->MMFR = 0
//  637             | ENET_MMFR_ST(0x01)
//  638             | ENET_MMFR_OP(0x2)
//  639             | ENET_MMFR_PA(phy_addr)
//  640             | ENET_MMFR_RA(reg_addr)
//  641             | ENET_MMFR_TA(0x02);
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LSLS     R0,R3,#+23
        ANDS     R0,R0,#0xF800000
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSLS     R5,R1,#+18
        ANDS     R5,R5,#0x7C0000
        ORRS     R0,R5,R0
        LDR.N    R5,??DataTable14_54  ;; 0x60020000
        ORRS     R0,R5,R0
        LDR.N    R5,??DataTable14_52  ;; 0x400c0040
        STR      R0,[R5, #+0]
//  642   
//  643   //�ȴ�MII��������ж��¼�
//  644   for (timeout = 0; timeout < MII_TIMEOUT; timeout++)
        MOVS     R0,#+0
        MOVS     R4,R0
??LPLD_ENET_MiiRead_0:
        LDR.N    R0,??DataTable14_53  ;; 0x1ffff
        CMP      R4,R0
        BCS.N    ??LPLD_ENET_MiiRead_1
//  645   {
//  646     if (ENET->EIR & ENET_EIR_MII_MASK)
        LDR.N    R0,??DataTable14_37  ;; 0x400c0004
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+8
        BMI.N    ??LPLD_ENET_MiiRead_1
//  647       break;
//  648   }
??LPLD_ENET_MiiRead_2:
        ADDS     R4,R4,#+1
        B.N      ??LPLD_ENET_MiiRead_0
//  649   
//  650   if(timeout == MII_TIMEOUT) 
??LPLD_ENET_MiiRead_1:
        LDR.N    R0,??DataTable14_53  ;; 0x1ffff
        CMP      R4,R0
        BNE.N    ??LPLD_ENET_MiiRead_3
//  651     return 1;
        MOVS     R0,#+1
        B.N      ??LPLD_ENET_MiiRead_4
//  652   
//  653   //���MII�ж��¼�
//  654   ENET->EIR = ENET_EIR_MII_MASK;
??LPLD_ENET_MiiRead_3:
        MOVS     R0,#+8388608
        LDR.N    R5,??DataTable14_37  ;; 0x400c0004
        STR      R0,[R5, #+0]
//  655   
//  656   *data = ENET->MMFR & 0x0000FFFF;
        LDR.N    R0,??DataTable14_52  ;; 0x400c0040
        LDR      R0,[R0, #+0]
        STRH     R0,[R2, #+0]
//  657   
//  658   return 0;
        MOVS     R0,#+0
??LPLD_ENET_MiiRead_4:
        POP      {R4,R5}
        BX       LR               ;; return
//  659 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     0x4004802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     0x4000d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     0x400c0024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     ENET_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     0x40049030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     0x40049034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_12:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_13:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_14:
        DC32     0x40049044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_15:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_16:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_17:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_18:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_19:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_20:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_21:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_22:
        DC32     ?_7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_23:
        DC32     ?_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_24:
        DC32     ?_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_25:
        DC32     0x400c011c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_26:
        DC32     0x400c0118

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_27:
        DC32     0x400c0124

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_28:
        DC32     0x400c0120

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_29:
        DC32     0x5f04104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_30:
        DC32     0x400c0084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_31:
        DC32     0x400c00c4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_32:
        DC32     0x400c0188

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_33:
        DC32     xENETRxDescriptors

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_34:
        DC32     0x400c0180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_35:
        DC32     xENETTxDescriptors

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_36:
        DC32     0x400c0184

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_37:
        DC32     0x400c0004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_38:
        DC32     0x6b780000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_39:
        DC32     0x400c0008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_40:
        DC32     0x400c0010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_41:
        DC32     xENETTxDescriptors_unaligned

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_42:
        DC32     xENETRxDescriptors_unaligned

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_43:
        DC32     ucENETRxBuffers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_44:
        DC32     uxNextRxBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_45:
        DC32     uxNextTxBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_46:
        DC32     0x400c0014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_47:
        DC32     0xedb88320

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_48:
        DC32     0x400c00e4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_49:
        DC32     0x400c00e8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_50:
        DC32     0x400c0044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_51:
        DC32     0x50020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_52:
        DC32     0x400c0040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_53:
        DC32     0x1ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_54:
        DC32     0x60020000

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
        DC8 "PHY_PHYIDR1=0x%X\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 "PHY_PHYIDR2=0x%X\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC8 "PHY_ANLPAR=0x%X\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "PHY_ANLPARNP=0x%X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "PHY_PHYSTS=0x%X\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_5:
        DATA
        DC8 "PHY_MICR=0x%X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_6:
        DATA
        DC8 "PHY_MISR=0x%X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_7:
        DATA
        DC8 "PHY_BMCR=0x%X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_8:
        DATA
        DC8 "PHY_BMSR=0x%X\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_9:
        DATA
        DC8 "PHY_STATUS=0x%X\015\012"
        DC8 0, 0

        END
// 
// 2 200 bytes in section .bss
//   184 bytes in section .rodata
// 2 014 bytes in section .text
// 
// 2 014 bytes of CODE  memory
//   184 bytes of CONST memory
// 2 200 bytes of DATA  memory
//
//Errors: none
//Warnings: none
