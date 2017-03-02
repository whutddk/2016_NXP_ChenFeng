///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       05/Mar/2016  08:12:29
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c
//    Command line =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c -D LPLD_K60 -D
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\HW_SPI.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC LPLD_SPI_Deinit
        PUBLIC LPLD_SPI_DisableIrq
        PUBLIC LPLD_SPI_EnableIrq
        PUBLIC LPLD_SPI_Init
        PUBLIC LPLD_SPI_Master_Read
        PUBLIC LPLD_SPI_Master_Write
        PUBLIC LPLD_SPI_Master_WriteRead
        PUBLIC SPI0_IRQHandler
        PUBLIC SPI0_ISR
        PUBLIC SPI1_IRQHandler
        PUBLIC SPI1_ISR
        PUBLIC SPI2_IRQHandler
        PUBLIC SPI2_ISR

// D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c
//    1 /**
//    2  * @file HW_SPI.c
//    3  * @version 3.03[By LPLD]
//    4  * @date 2014-2-10
//    5  * @brief SPI底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.W    R2,??DataTable8  ;; 0xe000e100
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
        LDR.W    R2,??DataTable8_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R3,R0,#+5
        STR      R1,[R2, R3, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_SPI.h"
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   25 SPI_ISR_CALLBACK SPI0_ISR[6];
SPI0_ISR:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   26 SPI_ISR_CALLBACK SPI1_ISR[6];
SPI1_ISR:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 SPI_ISR_CALLBACK SPI2_ISR[6];
SPI2_ISR:
        DS8 24
//   28 
//   29 /*
//   30  * LPLD_SPI_Init
//   31  * SPI初始化函数,在该函数中选择SPI通道，初始化SPI SCK总线时钟
//   32  * 选择使能Tx，Rx FIFO，选择开启SPI外设的发送完成，发送队列结束，
//   33  * Tx FIFO队列为空，Rx FIFO队列溢出，选择FIFO的中断方式和DMA请求等
//   34  * 
//   35  * 参数:
//   36  *    spi_init_structure--SPI初始化结构体，
//   37  *                        具体定义见SPI_InitTypeDef
//   38  *
//   39  * 输出:
//   40  *    0--配置错误
//   41  *    1--配置成功
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 uint8 LPLD_SPI_Init(SPI_InitTypeDef spi_init_structure)
//   44 {
LPLD_SPI_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+44
//   45   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+80]
//   46   uint8 spi_mode = spi_init_structure.SPI_ModeSelect;
        LDRB     R0,[SP, #+84]
        STRB     R0,[SP, #+9]
//   47   uint8 sck_div = spi_init_structure.SPI_SckDivider; 
        LDRB     R0,[SP, #+85]
        STRB     R0,[SP, #+8]
//   48   boolean txFIFO_enable = spi_init_structure.SPI_EnableTxFIFO;
        LDRB     R0,[SP, #+86]
        STRB     R0,[SP, #+13]
//   49   boolean rxFIFO_enable = spi_init_structure.SPI_EnableRxFIFO;
        LDRB     R0,[SP, #+87]
        STRB     R0,[SP, #+12]
//   50   //定义SPI外设中断变量
//   51   boolean tx_complete_int = spi_init_structure.SPI_TxCompleteIntEnable;
        LDRB     R0,[SP, #+88]
        STRB     R0,[SP, #+0]
//   52   boolean QueueEnd_Request_int = spi_init_structure.SPI_QueueEndIntEnable; 
        LDRB     R5,[SP, #+89]
//   53   boolean txFIFO_underflow_int = spi_init_structure.SPI_TxFIFO_UnderflowIntEnable;
        LDRB     R6,[SP, #+90]
//   54   boolean rxFIFO_overflow_int = spi_init_structure.SPI_RxFIFO_OverflowIntEnable;
        LDRB     R7,[SP, #+91]
//   55   boolean txFIFO_Fill_int = spi_init_structure.SPI_TxFIFO_FillIntEnable;
        LDRB     R8,[SP, #+92]
//   56   boolean rxFIFO_Drain_int = spi_init_structure.SPI_RxFIFO_DrainIntEnable; 
        LDRB     R9,[SP, #+93]
//   57   boolean txFIFO_req = spi_init_structure.SPI_TxFIFO_RequestSelect;
        LDRB     R10,[SP, #+94]
//   58   boolean rxFIFO_req = spi_init_structure.SPI_RxFIFO_RequestSelect;
        LDRB     R11,[SP, #+95]
//   59   //选择SPI引脚
//   60   PortPinsEnum_Type miso_pin = spi_init_structure.SPI_MisoPin;//MISO 
        LDRB     R0,[SP, #+104]
        STRB     R0,[SP, #+5]
//   61   PortPinsEnum_Type mosi_pin = spi_init_structure.SPI_MosiPin;//MOSI
        LDRB     R0,[SP, #+103]
        STRB     R0,[SP, #+4]
//   62   PortPinsEnum_Type sck_pin = spi_init_structure.SPI_SckPin;  //SCK
        LDRB     R0,[SP, #+102]
        STRB     R0,[SP, #+3]
//   63   PortPinsEnum_Type pcs0_pin = spi_init_structure.SPI_Pcs0Pin;//PCS0
        LDRB     R0,[SP, #+96]
        STRB     R0,[SP, #+2]
//   64   PortPinsEnum_Type pcs1_pin = spi_init_structure.SPI_Pcs1Pin;//PCS1
        LDRB     R0,[SP, #+97]
        STRB     R0,[SP, #+1]
//   65   PortPinsEnum_Type pcs2_pin = spi_init_structure.SPI_Pcs2Pin;//PCS2
        LDRB     R0,[SP, #+98]
        STRB     R0,[SP, #+7]
//   66   PortPinsEnum_Type pcs3_pin = spi_init_structure.SPI_Pcs3Pin;//PCS3
        LDRB     R0,[SP, #+99]
        STRB     R0,[SP, #+6]
//   67   PortPinsEnum_Type pcs4_pin = spi_init_structure.SPI_Pcs4Pin;//PCS4
        LDRB     R0,[SP, #+100]
        STRB     R0,[SP, #+11]
//   68   PortPinsEnum_Type pcs5_pin = spi_init_structure.SPI_Pcs5Pin;//PCS5
        LDRB     R0,[SP, #+101]
        STRB     R0,[SP, #+10]
//   69   //定义中断回掉函数
//   70   SPI_ISR_CALLBACK TxComplete_isr = spi_init_structure.SPI_TxCompleteIntIsr;
        LDR      R0,[SP, #+108]
        STR      R0,[SP, #+36]
//   71   SPI_ISR_CALLBACK QueueEndReq_isr = spi_init_structure.SPI_QueueEndIntIsr;
        LDR      R0,[SP, #+112]
        STR      R0,[SP, #+32]
//   72   SPI_ISR_CALLBACK UnderflowInt_isr = spi_init_structure.SPI_TxFIFO_UnderflowIntIsr;
        LDR      R0,[SP, #+116]
        STR      R0,[SP, #+28]
//   73   SPI_ISR_CALLBACK OverflowInt_isr = spi_init_structure.SPI_RxFIFO_OverflowIntIsr;
        LDR      R0,[SP, #+120]
        STR      R0,[SP, #+24]
//   74   SPI_ISR_CALLBACK FillInt_isr = spi_init_structure.SPI_TxFIFO_FillIntIsr;
        LDR      R0,[SP, #+124]
        STR      R0,[SP, #+20]
//   75   SPI_ISR_CALLBACK DrainInt_isr = spi_init_structure.SPI_RxFIFO_DrainIntIsr;
        LDR      R0,[SP, #+128]
        STR      R0,[SP, #+16]
//   76   //检测参数
//   77   ASSERT(spi_mode <= SPI_MODE_MASTER);
        LDRB     R0,[SP, #+9]
        CMP      R0,#+0
        BEQ.N    ??LPLD_SPI_Init_0
        MOVS     R1,#+77
        LDR.W    R0,??DataTable8_2
        BL       assert_failed
//   78   ASSERT(sck_div <= SPI_SCK_DIV_32768);
??LPLD_SPI_Init_0:
        LDRB     R0,[SP, #+8]
        CMP      R0,#+16
        BLT.N    ??LPLD_SPI_Init_1
        MOVS     R1,#+78
        LDR.W    R0,??DataTable8_2
        BL       assert_failed
//   79 
//   80   if(spix == SPI0)
??LPLD_SPI_Init_1:
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.W    ??LPLD_SPI_Init_2
//   81   {
//   82 #if defined(CPU_MK60D10)  
//   83     SIM->SCGC6 |= SIM_SCGC6_SPI0_MASK; 
//   84 #elif defined(CPU_MK60DZ10) || defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   85     SIM->SCGC6 |= SIM_SCGC6_DSPI0_MASK;  
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   86 #endif
//   87      
//   88     //选择PCS0
//   89     if(pcs0_pin == PTA14)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+14
        BNE.N    ??LPLD_SPI_Init_3
//   90     {
//   91       PORTA->PCR[14] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_5  ;; 0x40049038
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_4
//   92     }
//   93     else//pcs0_pin == PTC4
//   94     {
//   95       PORTC->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_3:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_6  ;; 0x4004b010
        STR      R0,[R1, #+0]
//   96     }
//   97     //选择PCS1
//   98     if(pcs1_pin == PTC3)
??LPLD_SPI_Init_4:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+63
        BNE.N    ??LPLD_SPI_Init_5
//   99     {
//  100       PORTC->PCR[3]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_7  ;; 0x4004b00c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_6
//  101     }
//  102     else //pcs1_pin == PTD4
//  103     {
//  104       PORTD->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_5:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_8  ;; 0x4004c010
        STR      R0,[R1, #+0]
//  105     }
//  106     //选择PCS2
//  107     if(pcs2_pin == PTC2)
??LPLD_SPI_Init_6:
        LDRB     R0,[SP, #+7]
        CMP      R0,#+62
        BNE.N    ??LPLD_SPI_Init_7
//  108     {
//  109       PORTC->PCR[2]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_9  ;; 0x4004b008
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_8
//  110     }
//  111     else //pcs2_pin == PTD5
//  112     {
//  113       PORTD->PCR[5]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_7:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_10  ;; 0x4004c014
        STR      R0,[R1, #+0]
//  114     }
//  115     //选择PCS3
//  116     if(pcs3_pin == PTC1)
??LPLD_SPI_Init_8:
        LDRB     R0,[SP, #+6]
        CMP      R0,#+61
        BNE.N    ??LPLD_SPI_Init_9
//  117     {
//  118       PORTC->PCR[1]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_11  ;; 0x4004b004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_10
//  119     }
//  120     else //pcs3_pin == PTD6
//  121     {
//  122       PORTD->PCR[6]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_9:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_12  ;; 0x4004c018
        STR      R0,[R1, #+0]
//  123     }
//  124     //选择PCS4
//  125     if(pcs4_pin == PTC0)
??LPLD_SPI_Init_10:
        LDRB     R0,[SP, #+11]
        CMP      R0,#+60
        BNE.N    ??LPLD_SPI_Init_11
//  126     {
//  127       PORTC->PCR[0]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_13  ;; 0x4004b000
        STR      R0,[R1, #+0]
//  128     }
//  129     //选择PCS5
//  130     if(pcs5_pin == PTB23)
??LPLD_SPI_Init_11:
        LDRB     R0,[SP, #+10]
        CMP      R0,#+55
        BNE.N    ??LPLD_SPI_Init_12
//  131     {
//  132       PORTB->PCR[23] = 0 | PORT_PCR_MUX(3) | PORT_PCR_DSE_MASK;
        MOV      R0,#+832
        LDR.W    R1,??DataTable8_14  ;; 0x4004a05c
        STR      R0,[R1, #+0]
//  133     }
//  134 
//  135     //选择SCK
//  136     if(sck_pin == PTA15)
??LPLD_SPI_Init_12:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+15
        BNE.N    ??LPLD_SPI_Init_13
//  137     {
//  138       PORTA->PCR[15] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_15  ;; 0x4004903c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_14
//  139     }
//  140     else //sck_pin == PTC5
//  141     {
//  142       PORTC->PCR[5] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??LPLD_SPI_Init_13:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_16  ;; 0x4004b014
        STR      R0,[R1, #+0]
//  143     }
//  144     //选择MOSI
//  145     if(mosi_pin == PTA16)
??LPLD_SPI_Init_14:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+16
        BNE.N    ??LPLD_SPI_Init_15
//  146     {
//  147       PORTA->PCR[16] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_17  ;; 0x40049040
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_16
//  148     }
//  149     else //mosi_pin == PTC6
//  150     {
//  151       PORTC->PCR[6] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??LPLD_SPI_Init_15:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_18  ;; 0x4004b018
        STR      R0,[R1, #+0]
//  152     }
//  153     //选择MISO
//  154     if(miso_pin == PTA17)
??LPLD_SPI_Init_16:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+17
        BNE.N    ??LPLD_SPI_Init_17
//  155     {
//  156       PORTA->PCR[17] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_19  ;; 0x40049044
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  157     }
//  158     else //miso_pin == PTC7
//  159     {
//  160       PORTC->PCR[7] = 0 | PORT_PCR_MUX(2); //SIN
??LPLD_SPI_Init_17:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_20  ;; 0x4004b01c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  161     } 
//  162   
//  163   }
//  164   else if(spix == SPI1)
??LPLD_SPI_Init_2:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_19
//  165   {
//  166 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  167     SIM->SCGC6 |= SIM_SCGC6_SPI1_MASK; 
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  168 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  169     SIM->SCGC6 |= SIM_SCGC6_DSPI1_MASK; 
//  170 #endif
//  171     //选择PCS0
//  172     if(pcs0_pin == PTB10)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+42
        BNE.N    ??LPLD_SPI_Init_20
//  173     {
//  174       PORTB->PCR[10] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_22  ;; 0x4004a028
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_21
//  175     }
//  176     else//pcs0_pin == PTE4
//  177     {
//  178       PORTE->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_20:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_23  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  179     }
//  180     //选择PCS1
//  181     if(pcs1_pin == PTB9)
??LPLD_SPI_Init_21:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+41
        BNE.N    ??LPLD_SPI_Init_22
//  182     {
//  183       PORTB->PCR[9]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_24  ;; 0x4004a024
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_23
//  184     }
//  185     else //pcs1_pin == PTE0
//  186     {
//  187       PORTE->PCR[0] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_22:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_25  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  188     }
//  189     //选择PCS2
//  190     if(pcs2_pin == PTE5)
??LPLD_SPI_Init_23:
        LDRB     R0,[SP, #+7]
        CMP      R0,#+129
        BNE.N    ??LPLD_SPI_Init_24
//  191     {
//  192       PORTE->PCR[5]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_26  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  193     }
//  194 
//  195     //选择PCS3
//  196     if(pcs3_pin == PTE6)
??LPLD_SPI_Init_24:
        LDRB     R0,[SP, #+6]
        CMP      R0,#+130
        BNE.N    ??LPLD_SPI_Init_25
//  197     {
//  198       PORTE->PCR[6]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_27  ;; 0x4004d018
        STR      R0,[R1, #+0]
//  199     }
//  200 
//  201     //选择SCK
//  202     if(sck_pin == PTB11)
??LPLD_SPI_Init_25:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+43
        BNE.N    ??LPLD_SPI_Init_26
//  203     {
//  204       PORTB->PCR[11] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_28  ;; 0x4004a02c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_27
//  205     }
//  206     else //sck_pin == PTE2
//  207     {
//  208       PORTE->PCR[2] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??LPLD_SPI_Init_26:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_29  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  209     }
//  210     //选择MOSI
//  211     if(mosi_pin == PTB16)
??LPLD_SPI_Init_27:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+48
        BNE.N    ??LPLD_SPI_Init_28
//  212     {
//  213       PORTB->PCR[16] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_30  ;; 0x4004a040
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_29
//  214     }
//  215     else //mosi_pin == PTE1
//  216     {
//  217       PORTE->PCR[1] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??LPLD_SPI_Init_28:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_31  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  218     }
//  219     //选择MISO
//  220     if(miso_pin == PTB17)
??LPLD_SPI_Init_29:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+49
        BNE.N    ??LPLD_SPI_Init_30
//  221     {
//  222       PORTB->PCR[17] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_32  ;; 0x4004a044
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  223     }
//  224     else //miso_pin == PTE3
//  225     {
//  226       PORTE->PCR[3] = 0 | PORT_PCR_MUX(2); //SIN
??LPLD_SPI_Init_30:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_33  ;; 0x4004d00c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  227     } 
//  228   }
//  229   else if(spix == SPI2)
??LPLD_SPI_Init_19:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_31
//  230   {
//  231 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  232     SIM->SCGC3 |= SIM_SCGC3_SPI2_MASK; 
        LDR.W    R0,??DataTable8_35  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_35  ;; 0x40048030
        STR      R0,[R1, #+0]
//  233 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  234     SIM->SCGC3 |= SIM_SCGC3_DSPI2_MASK; 
//  235 #endif
//  236     //选择PCS0
//  237     if(pcs0_pin == PTD11)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+103
        BNE.N    ??LPLD_SPI_Init_32
//  238     {
//  239       PORTD->PCR[11] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_36  ;; 0x4004c02c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_33
//  240     }
//  241     else//pcs0_pin == PTB20
//  242     {
//  243       PORTB->PCR[20] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_32:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_37  ;; 0x4004a050
        STR      R0,[R1, #+0]
//  244     }
//  245     //选择PCS1
//  246     if(pcs1_pin == PTD15)
??LPLD_SPI_Init_33:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+107
        BNE.N    ??LPLD_SPI_Init_34
//  247     {
//  248       PORTD->PCR[15]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_38  ;; 0x4004c03c
        STR      R0,[R1, #+0]
//  249     }
//  250 
//  251     //选择SCK
//  252     if(sck_pin == PTD12)
??LPLD_SPI_Init_34:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+104
        BNE.N    ??LPLD_SPI_Init_35
//  253     {
//  254       PORTD->PCR[12] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_39  ;; 0x4004c030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_36
//  255     }
//  256     else //sck_pin == PTB21
//  257     {
//  258       PORTB->PCR[21] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??LPLD_SPI_Init_35:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_40  ;; 0x4004a054
        STR      R0,[R1, #+0]
//  259     }
//  260     //选择MOSI
//  261     if(mosi_pin == PTD13)
??LPLD_SPI_Init_36:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+105
        BNE.N    ??LPLD_SPI_Init_37
//  262     {
//  263       PORTD->PCR[13] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_41  ;; 0x4004c034
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_38
//  264     }
//  265     else //mosi_pin == PTB22
//  266     {
//  267       PORTB->PCR[22] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??LPLD_SPI_Init_37:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_42  ;; 0x4004a058
        STR      R0,[R1, #+0]
//  268     }
//  269     //选择MISO
//  270     if(miso_pin == PTD14)
??LPLD_SPI_Init_38:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+106
        BNE.N    ??LPLD_SPI_Init_39
//  271     {
//  272       PORTD->PCR[14] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_43  ;; 0x4004c038
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  273     }
//  274     else //miso_pin == PTB23
//  275     {
//  276       PORTB->PCR[23] = 0 | PORT_PCR_MUX(2); //SIN
??LPLD_SPI_Init_39:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_14  ;; 0x4004a05c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  277     } 
//  278   }
//  279   else
//  280     return 0;
??LPLD_SPI_Init_31:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_Init_40
//  281   //配置SPI MCR寄存器
//  282   spix->MCR = 0 & (~SPI_MCR_MDIS_MASK)        
//  283                 |SPI_MCR_HALT_MASK        
//  284                 |SPI_MCR_PCSIS_MASK       
//  285                 |SPI_MCR_CLR_TXF_MASK    
//  286                 |SPI_MCR_CLR_RXF_MASK;  
??LPLD_SPI_Init_18:
        LDR.W    R0,??DataTable8_44  ;; 0x3f0c01
        STR      R0,[R4, #+0]
//  287   //选择SPI 工作模式
//  288   if(spi_mode == SPI_MODE_SLAVE)
        LDRB     R0,[SP, #+9]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_41
//  289   {
//  290     spix->MCR &= ~SPI_MCR_MSTR_MASK;//从机模式  
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+1        ;; ZeroExtS R0,R0,#+1,#+1
        LSRS     R0,R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??LPLD_SPI_Init_42
//  291   }
//  292   else
//  293   {
//  294     spix->MCR |= SPI_MCR_MSTR_MASK; //主机模式 
??LPLD_SPI_Init_41:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R4, #+0]
//  295   }
//  296   //选择使能tx FIFO
//  297   if(txFIFO_enable == TRUE)
??LPLD_SPI_Init_42:
        LDRB     R0,[SP, #+13]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_43
//  298   {
//  299     spix->MCR &= ~SPI_MCR_DIS_TXF_MASK; 
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x2000
        STR      R0,[R4, #+0]
        B.N      ??LPLD_SPI_Init_44
//  300   }
//  301   else
//  302   {
//  303     spix->MCR |= SPI_MCR_DIS_TXF_MASK;//选择传统方式
??LPLD_SPI_Init_43:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x2000
        STR      R0,[R4, #+0]
//  304   }
//  305   //选择使能Rx FIFO
//  306   if(rxFIFO_enable == TRUE)
??LPLD_SPI_Init_44:
        LDRB     R0,[SP, #+12]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_45
//  307   {
//  308     spix->MCR &= ~SPI_MCR_DIS_RXF_MASK;
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x1000
        STR      R0,[R4, #+0]
        B.N      ??LPLD_SPI_Init_46
//  309   }
//  310   else
//  311   {
//  312     spix->MCR |= SPI_MCR_DIS_RXF_MASK; //选择传统方式
??LPLD_SPI_Init_45:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x1000
        STR      R0,[R4, #+0]
//  313   }
//  314   //选择使能发送完成中断
//  315   if(tx_complete_int == TRUE)
??LPLD_SPI_Init_46:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_47
//  316   {
//  317     spix->RSER |= SPI_RSER_TCF_RE_MASK; 
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_48
//  318   }
//  319   else
//  320   { 
//  321     spix->RSER &= ~SPI_RSER_TCF_RE_MASK;
??LPLD_SPI_Init_47:
        LDR      R0,[R4, #+48]
        LSLS     R0,R0,#+1        ;; ZeroExtS R0,R0,#+1,#+1
        LSRS     R0,R0,#+1
        STR      R0,[R4, #+48]
//  322   }
//  323   //选择使能发送队列结束中断
//  324   if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_48:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_49
//  325   {
//  326     spix->RSER |=SPI_RSER_EOQF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x10000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_50
//  327   }
//  328   else
//  329     spix->RSER &= ~SPI_RSER_EOQF_RE_MASK;
??LPLD_SPI_Init_49:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x10000000
        STR      R0,[R4, #+48]
//  330   //选择使能txFIFO为空中断
//  331   if(txFIFO_underflow_int== TRUE)
??LPLD_SPI_Init_50:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_51
//  332   {
//  333     spix->RSER |=SPI_RSER_TFUF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x8000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_52
//  334   }
//  335   else
//  336     spix->RSER &= ~SPI_RSER_TFUF_RE_MASK;
??LPLD_SPI_Init_51:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x8000000
        STR      R0,[R4, #+48]
//  337   //选择使能rxFIFO溢出中断
//  338   if(rxFIFO_overflow_int== TRUE)
??LPLD_SPI_Init_52:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_53
//  339   {
//  340     spix->RSER |=SPI_RSER_RFOF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x80000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_54
//  341   }
//  342   else
//  343   {
//  344     spix->RSER &= ~SPI_RSER_RFOF_RE_MASK;
??LPLD_SPI_Init_53:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x80000
        STR      R0,[R4, #+48]
//  345   }
//  346   //选择使能txFIFO有数据进入队列中断或者DMA请求
//  347   if(txFIFO_Fill_int== TRUE)
??LPLD_SPI_Init_54:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_SPI_Init_55
//  348   {
//  349     spix->RSER |=SPI_RSER_TFFF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x2000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_56
//  350   }
//  351   else
//  352   {
//  353     spix->RSER &= ~SPI_RSER_TFFF_RE_MASK;
??LPLD_SPI_Init_55:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x2000000
        STR      R0,[R4, #+48]
//  354   }
//  355   //选择使能rxFIFO非空中断或者DMA请求
//  356   if(rxFIFO_Drain_int== TRUE)
??LPLD_SPI_Init_56:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SPI_Init_57
//  357   {
//  358     spix->RSER |=SPI_RSER_RFDF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x20000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_58
//  359   }
//  360   else
//  361   {
//  362     spix->RSER &= ~SPI_RSER_RFDF_RE_MASK;
??LPLD_SPI_Init_57:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x20000
        STR      R0,[R4, #+48]
//  363   }
//  364   //选择使能txFIFO中断或者DMA请求
//  365   if(txFIFO_req == SPI_FIFO_DMAREQUEST)
??LPLD_SPI_Init_58:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+1
        BNE.N    ??LPLD_SPI_Init_59
//  366   {
//  367     spix->RSER |=SPI_RSER_TFFF_DIRS_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x1000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_60
//  368   }
//  369   else
//  370   {
//  371     spix->RSER &= ~SPI_RSER_TFFF_DIRS_MASK;
??LPLD_SPI_Init_59:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x1000000
        STR      R0,[R4, #+48]
//  372   }
//  373   //选择使能rxFIFO中断或者DMA请求
//  374   if(rxFIFO_req == SPI_FIFO_DMAREQUEST)
??LPLD_SPI_Init_60:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+1
        BNE.N    ??LPLD_SPI_Init_61
//  375   {
//  376     spix->RSER |= SPI_RSER_RFDF_DIRS_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x10000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_62
//  377   }
//  378   else 
//  379   {
//  380     spix->RSER &= ~SPI_RSER_RFDF_DIRS_MASK;
??LPLD_SPI_Init_61:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x10000
        STR      R0,[R4, #+48]
//  381   }
//  382   //添加中断回调函数
//  383 
//  384   if(spix == SPI0)
??LPLD_SPI_Init_62:
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_63
//  385   {
//  386     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_64
//  387     { SPI0_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+0]
//  388     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_64:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_65
//  389     { SPI0_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+4]
//  390     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_65:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_66
//  391     { SPI0_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+8]
//  392     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_66:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_67
//  393     { SPI0_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+12]
//  394     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_67:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_SPI_Init_68
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BNE.N    ??LPLD_SPI_Init_68
//  395     { SPI0_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+16]
//  396     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_68:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.W    ??LPLD_SPI_Init_69
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BNE.W    ??LPLD_SPI_Init_69
//  397     { SPI0_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+20]
        B.N      ??LPLD_SPI_Init_69
//  398   }
//  399   else if (spix == SPI1)
??LPLD_SPI_Init_63:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_70
//  400   {
//  401     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_71
//  402     { SPI1_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+0]
//  403     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_71:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_72
//  404     { SPI1_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+4]
//  405     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_72:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_73
//  406     { SPI1_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+8]
//  407     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_73:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_74
//  408     { SPI1_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+12]
//  409     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_74:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_SPI_Init_75
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BNE.N    ??LPLD_SPI_Init_75
//  410     { SPI1_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+16]
//  411     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_75:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SPI_Init_69
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BNE.N    ??LPLD_SPI_Init_69
//  412     { SPI1_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+20]
        B.N      ??LPLD_SPI_Init_69
//  413   }
//  414   else if (spix == SPI2)
??LPLD_SPI_Init_70:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_69
//  415   {
//  416     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_76
//  417     { SPI2_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+0]
//  418     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_76:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_77
//  419     { SPI2_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+4]
//  420     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_77:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_78
//  421     { SPI2_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+8]
//  422     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_78:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_79
//  423     { SPI2_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+12]
//  424     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_79:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_SPI_Init_80
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BNE.N    ??LPLD_SPI_Init_80
//  425     { SPI2_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+16]
//  426     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_80:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SPI_Init_69
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BNE.N    ??LPLD_SPI_Init_69
//  427     { SPI2_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+20]
//  428   }
//  429   //配置SPI CTAR寄存器，设置SPI的总线时序
//  430   spix->CTAR[0] = 0 & (~SPI_CTAR_LSBFE_MASK)
//  431                       |SPI_CTAR_DBR_MASK  
//  432                       |SPI_CTAR_PBR(0)           
//  433                       |SPI_CTAR_FMSZ(7);        
??LPLD_SPI_Init_69:
        MOVS     R0,#-1207959552
        STR      R0,[R4, #+12]
//  434                        
//  435   //设置SPI总线频率
//  436   //SCK总线频率 = g_bus_clock/ SCK_DIV_x                                             
//  437   spix->CTAR[0] |=SPI_CTAR_BR(sck_div);
        LDR      R0,[R4, #+12]
        LDRB     R1,[SP, #+8]
        ANDS     R1,R1,#0xF
        ORRS     R0,R1,R0
        STR      R0,[R4, #+12]
//  438 
//  439   //tCSC = (1/g_bus_clock) x PCSSCK x CSSCK
//  440   //tCSC = 1/50,000,000 x PCSSCK x CSSCK
//  441   spix->CTAR[0] |=SPI_CTAR_PCSSCK(1); 
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x400000
        STR      R0,[R4, #+12]
//  442   spix->CTAR[0] |=SPI_CTAR_CSSCK(1);  
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x1000
        STR      R0,[R4, #+12]
//  443   
//  444   //tDT = (1/g_bus_clock) x PDT x DT
//  445   spix->CTAR[0] |=SPI_CTAR_DT(1);
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x10
        STR      R0,[R4, #+12]
//  446   spix->CTAR[0] |=SPI_CTAR_PDT(1);
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x40000
        STR      R0,[R4, #+12]
//  447   
//  448   //Config the Delay of the last edge of SCK and the negation of PCS
//  449   //tASC = (1/g_bus_clock) x PASC x ASC
//  450   spix->CTAR[0] |=SPI_CTAR_PASC(1);
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x100000
        STR      R0,[R4, #+12]
//  451   spix->CTAR[0] |=SPI_CTAR_ASC(1);
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x100
        STR      R0,[R4, #+12]
//  452   //清除标志位
//  453   spix->SR =  SPI_SR_RFDF_MASK   
//  454               |SPI_SR_RFOF_MASK
//  455               |SPI_SR_TFFF_MASK
//  456               |SPI_SR_TFUF_MASK
//  457               |SPI_SR_TCF_MASK
//  458               |SPI_SR_EOQF_MASK;
        LDR.W    R0,??DataTable8_48  ;; 0x9a0a0000
        STR      R0,[R4, #+44]
//  459   //使能SPIx
//  460   spix->MCR &=~SPI_MCR_HALT_MASK; 
        LDR      R0,[R4, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R4, #+0]
//  461   
//  462   return 1;
        MOVS     R0,#+1
??LPLD_SPI_Init_40:
        ADD      SP,SP,#+44
        POP      {R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  463 }
//  464 
//  465 /*
//  466  * LPLD_SPI_Deinit
//  467  * SPI反初始化函数,在该函数中将SPI设置成为暂停模式，关闭SPI总线时钟，
//  468  * 关闭SPI外设中断
//  469  * 
//  470  * 参数:
//  471  *    spi_init_structure--SPI初始化结构体，
//  472  *                        具体定义见SPI_InitTypeDef
//  473  *
//  474  * 输出:
//  475  *    0--配置错误
//  476  *    1--配置成功
//  477  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  478 uint8 LPLD_SPI_Deinit(SPI_InitTypeDef spi_init_structure)
//  479 {
LPLD_SPI_Deinit:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  480   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  481   spix->MCR |= SPI_MCR_HALT_MASK; //
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+0]
//  482   if(spix == SPI0)
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Deinit_0
//  483   {
//  484     disable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_DisableIRQ
//  485 #if defined(CPU_MK60D10)
//  486     SIM->SCGC6 &= ~SIM_SCGC6_SPI0_MASK;
//  487 #elif defined(CPU_MK60DZ10) || defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  488     SIM->SCGC6 &= ~SIM_SCGC6_DSPI0_MASK;
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Deinit_1
//  489 #endif 
//  490   }
//  491   else if(spix == SPI1)
??LPLD_SPI_Deinit_0:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Deinit_2
//  492   {
//  493     disable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       NVIC_DisableIRQ
//  494 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  495     SIM->SCGC6 &= ~SIM_SCGC6_SPI1_MASK; 
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Deinit_1
//  496 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  497     SIM->SCGC6 &= ~SIM_SCGC6_DSPI1_MASK; 
//  498 #endif
//  499   }
//  500   else if(spix == SPI2)
??LPLD_SPI_Deinit_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Deinit_3
//  501   {
//  502     disable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       NVIC_DisableIRQ
//  503 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  504     SIM->SCGC3 &= ~SIM_SCGC3_SPI2_MASK; 
        LDR.W    R0,??DataTable8_35  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_35  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Deinit_1
//  505 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  506     SIM->SCGC3 &= ~SIM_SCGC3_DSPI2_MASK; 
//  507 #endif
//  508   }
//  509   else
//  510     return 0;
??LPLD_SPI_Deinit_3:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_Deinit_4
//  511   return 1;
??LPLD_SPI_Deinit_1:
        MOVS     R0,#+1
??LPLD_SPI_Deinit_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  512 }
//  513 
//  514 /*
//  515  * LPLD_SPI_EnableIrq
//  516  * 使能SPI外设中断
//  517  * 
//  518  * 参数:
//  519  *    spi_init_structure--SPI初始化结构体，
//  520  *                        具体定义见SPI_InitTypeDef
//  521  *
//  522  * 输出:
//  523  *    0--配置错误
//  524  *    1--配置成功
//  525  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  526 uint8 LPLD_SPI_EnableIrq(SPI_InitTypeDef spi_init_structure)
//  527 {
LPLD_SPI_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  528   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  529   if(spix == SPI0)
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_EnableIrq_0
//  530   {
//  531     enable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_SPI_EnableIrq_1
//  532   }
//  533   else if(spix == SPI1)
??LPLD_SPI_EnableIrq_0:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_EnableIrq_2
//  534   {
//  535     enable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_SPI_EnableIrq_1
//  536   }
//  537   else if(spix == SPI2)
??LPLD_SPI_EnableIrq_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_EnableIrq_3
//  538   {
//  539     enable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_SPI_EnableIrq_1
//  540   }
//  541   else
//  542     return 0;
??LPLD_SPI_EnableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_EnableIrq_4
//  543 
//  544   return 1;
??LPLD_SPI_EnableIrq_1:
        MOVS     R0,#+1
??LPLD_SPI_EnableIrq_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  545 }
//  546 
//  547 /*
//  548  * LPLD_SPI_EnableIrq
//  549  * 禁止SPI外设中断
//  550  * 
//  551  * 参数:
//  552  *    spi_init_structure--SPI初始化结构体，
//  553  *                        具体定义见SPI_InitTypeDef
//  554  *
//  555  * 输出:
//  556  *    0--配置错误
//  557  *    1--配置成功
//  558  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  559 uint8 LPLD_SPI_DisableIrq(SPI_InitTypeDef spi_init_structure)
//  560 {
LPLD_SPI_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  561   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  562   if(spix == SPI0)
        LDR.N    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_DisableIrq_0
//  563   {
//  564     disable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_SPI_DisableIrq_1
//  565   }
//  566   else if(spix == SPI1)
??LPLD_SPI_DisableIrq_0:
        LDR.N    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_DisableIrq_2
//  567   {
//  568     disable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_SPI_DisableIrq_1
//  569   }
//  570   else if(spix == SPI2)
??LPLD_SPI_DisableIrq_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_DisableIrq_3
//  571   {
//  572     disable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_SPI_DisableIrq_1
//  573   }
//  574   else
//  575     return 0;
??LPLD_SPI_DisableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_DisableIrq_4
//  576   return 1;
??LPLD_SPI_DisableIrq_1:
        MOVS     R0,#+1
??LPLD_SPI_DisableIrq_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  577 }
//  578 
//  579 /*
//  580  * LPLD_SPI_Master_WriteRead
//  581  * K60主机SPI向从机写数据，并读取从机数据
//  582  * 
//  583  * 参数:
//  584  *    spix--SPI选择
//  585  *      |__SPI0 -选择SPI0模块
//  586  *      |__SPI1 -选择SPI1模块
//  587  *      |__SPI2 -选择SPI2模块
//  588  *    data--要发送数据
//  589  *      |__单位为一个字节，8位
//  590  *    pcsx--CS片选端口号
//  591  *      |__SPI_PCS0 -0号片选(SPI0、SPI1、SPI2含有)
//  592  *      |__SPI_PCS1 -1号片选(SPI0、SPI1、SPI2含有)
//  593  *      |__SPI_PCS2 -2号片选(SPI0、SPI1含有)
//  594  *      |__SPI_PCS3 -3号片选(SPI0、SPI1含有)
//  595  *      |__SPI_PCS4 -4号片选(SPI0含有)
//  596  *      |__SPI_PCS5 -5号片选(SPI0含有)
//  597  *    pcs_state--一帧数据传输完成后CS的状态
//  598  *      |__SPI_PCS_ASSERTED -保持片选有效,PCS信号保持为低电平
//  599  *      |__SPI_PCS_INACTIVE -片选无效,PCS信号变为高电平
//  600  * 输出:
//  601  *    读取从机8位的数据
//  602  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  603 uint8 LPLD_SPI_Master_WriteRead(SPI_Type *spix,uint8 data,uint8 pcsx,uint8 pcs_state)
//  604 {
LPLD_SPI_Master_WriteRead:
        PUSH     {R4,R5}
        MOVS     R4,R0
//  605   uint8 temp;
//  606   
//  607   spix->PUSHR  = (((uint32_t)(((uint32_t)(pcs_state))<<SPI_PUSHR_CONT_SHIFT))&SPI_PUSHR_CONT_MASK)
//  608                |SPI_PUSHR_CTAS(0)
//  609                |SPI_PUSHR_PCS(pcsx)
//  610                |data;                 
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R5,R2,#+16
        ANDS     R5,R5,#0x3F0000
        ORRS     R5,R5,R3, LSL #+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R5,R1,R5
        STR      R5,[R4, #+52]
//  611   
//  612   while(!(spix->SR & SPI_SR_TCF_MASK));
??LPLD_SPI_Master_WriteRead_0:
        LDR      R5,[R4, #+44]
        CMP      R5,#+0
        BPL.N    ??LPLD_SPI_Master_WriteRead_0
//  613   spix->SR |= SPI_SR_TCF_MASK ;               
        LDR      R5,[R4, #+44]
        ORRS     R5,R5,#0x80000000
        STR      R5,[R4, #+44]
//  614   
//  615   while(!(spix->SR & SPI_SR_RFDF_MASK)); 
??LPLD_SPI_Master_WriteRead_1:
        LDR      R5,[R4, #+44]
        LSLS     R5,R5,#+14
        BPL.N    ??LPLD_SPI_Master_WriteRead_1
//  616   temp = (uint8)(spix->POPR & 0xff);           
        LDR      R5,[R4, #+56]
        MOVS     R0,R5
//  617   spix->SR |= SPI_SR_RFDF_MASK;                
        LDR      R5,[R4, #+44]
        ORRS     R5,R5,#0x20000
        STR      R5,[R4, #+44]
//  618   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,R5}
        BX       LR               ;; return
//  619   
//  620 }
//  621 
//  622 /*
//  623  * LPLD_SPI_Master_Read
//  624  * K60主机读取从机数据
//  625  * 
//  626  * 参数:
//  627  *    spix--SPI选择
//  628  *      |__SPI0 -选择SPI0模块
//  629  *      |__SPI1 -选择SPI1模块
//  630  *      |__SPI2 -选择SPI2模块
//  631  * 输出:
//  632  *    读取从机8位的数据
//  633  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  634 uint8 LPLD_SPI_Master_Read(SPI_Type *spix)
//  635 {
LPLD_SPI_Master_Read:
        MOVS     R1,R0
//  636   uint8 temp;
//  637 
//  638   while(!(spix->SR & SPI_SR_RFDF_MASK)); //=1 RIFO is not empty
??LPLD_SPI_Master_Read_0:
        LDR      R2,[R1, #+44]
        LSLS     R2,R2,#+14
        BPL.N    ??LPLD_SPI_Master_Read_0
//  639   temp=(uint8)spix->POPR;
        LDR      R2,[R1, #+56]
        MOVS     R0,R2
//  640   spix->SR |=SPI_SR_RFDF_MASK;
        LDR      R2,[R1, #+44]
        ORRS     R2,R2,#0x20000
        STR      R2,[R1, #+44]
//  641 
//  642   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  643 }
//  644 /*
//  645  * LPLD_SPI_Master_Write
//  646  * K60主机SPI向从机写数据
//  647  * 
//  648  * 参数:
//  649  *    spix--SPI选择
//  650  *      |__SPI0 -选择SPI0模块
//  651  *      |__SPI1 -选择SPI1模块
//  652  *      |__SPI2 -选择SPI2模块
//  653  *    data--要发送数据
//  654  *      |__单位为一个字节，8位
//  655  *    pcsx--CS片选端口号
//  656  *      |__SPI_PCS0  -0号片选(SPI0、SPI1、SPI2含有)
//  657  *      |__SPI_PCS1  -1号片选(SPI0、SPI1、SPI2含有)
//  658  *      |__SPI_PCS2  -2号片选(SPI0、SPI1含有)
//  659  *      |__SPI_PCS3  -3号片选(SPI0、SPI1含有)
//  660  *      |__SPI_PCS4  -4号片选(SPI0含有)
//  661  *      |__SPI_PCS5  -5号片选(SPI0含有)
//  662  *    pcs_state--一帧数据传输完成后CS的状态
//  663  *      |__SPI_PCS_ASSERTED -保持片选有效,PCS信号保持为低电平
//  664  *      |__SPI_PCS_INACTIVE -片选无效,PCS信号变为高电平
//  665  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  666 void LPLD_SPI_Master_Write(SPI_Type *spix,uint8 data,uint8 pcsx,uint8 pcs_state)
//  667 {  
LPLD_SPI_Master_Write:
        PUSH     {R4}
//  668   
//  669   spix->PUSHR = (((uint32_t)(((uint32_t)(pcs_state))<<SPI_PUSHR_CONT_SHIFT)) & SPI_PUSHR_CONT_MASK)
//  670                |SPI_PUSHR_CTAS(0)
//  671                |SPI_PUSHR_PCS(pcsx)
//  672                |data; 
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+16
        ANDS     R4,R4,#0x3F0000
        ORRS     R4,R4,R3, LSL #+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R4,R1,R4
        STR      R4,[R0, #+52]
//  673 
//  674   while(!(spix->SR & SPI_SR_TCF_MASK));
??LPLD_SPI_Master_Write_0:
        LDR      R4,[R0, #+44]
        CMP      R4,#+0
        BPL.N    ??LPLD_SPI_Master_Write_0
//  675   spix->SR |= SPI_SR_TCF_MASK ;            
        LDR      R4,[R0, #+44]
        ORRS     R4,R4,#0x80000000
        STR      R4,[R0, #+44]
//  676 }
        POP      {R4}
        BX       LR               ;; return
//  677 
//  678 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  679 void SPI0_IRQHandler(void)
//  680 {
SPI0_IRQHandler:
        PUSH     {R7,LR}
//  681 #if (UCOS_II > 0u)
//  682   OS_CPU_SR  cpu_sr = 0u;
//  683   OS_ENTER_CRITICAL(); 
//  684   OSIntEnter();
//  685   OS_EXIT_CRITICAL();
//  686 #endif
//  687   if( SPI0->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI0_IRQHandler_0
//  688   {
//  689     SPI0_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+0]
        BLX      R0
//  690     SPI0->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  691   }
//  692   else if( SPI0->SR & SPI_SR_EOQF_MASK)
??SPI0_IRQHandler_0:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI0_IRQHandler_2
//  693   {
//  694     SPI0_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+4]
        BLX      R0
//  695     SPI0->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  696   }
//  697   else if( SPI0->SR & SPI_SR_TFUF_MASK)
??SPI0_IRQHandler_2:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI0_IRQHandler_3
//  698   {
//  699     SPI0_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+8]
        BLX      R0
//  700     SPI0->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  701   }
//  702   else if( SPI0->SR & SPI_SR_TFFF_MASK)
??SPI0_IRQHandler_3:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI0_IRQHandler_4
//  703   {  
//  704     SPI0_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+16]
        BLX      R0
//  705     SPI0->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  706   }
//  707   else if( SPI0->SR & SPI_SR_RFOF_MASK)
??SPI0_IRQHandler_4:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI0_IRQHandler_5
//  708   {   
//  709     SPI0_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+12]
        BLX      R0
//  710     SPI0->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  711   }
//  712   else if( SPI0->SR & SPI_SR_RFDF_MASK)
??SPI0_IRQHandler_5:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI0_IRQHandler_1
//  713   {
//  714     SPI0_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+20]
        BLX      R0
//  715     SPI0->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
//  716   }
//  717 #if (UCOS_II > 0u)
//  718   OSIntExit();          
//  719 #endif
//  720 }
??SPI0_IRQHandler_1:
        POP      {R0,PC}          ;; return
//  721 
//  722 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  723 void SPI1_IRQHandler(void)
//  724 {
SPI1_IRQHandler:
        PUSH     {R7,LR}
//  725 #if (UCOS_II > 0u)
//  726   OS_CPU_SR  cpu_sr = 0u;
//  727   OS_ENTER_CRITICAL(); 
//  728   OSIntEnter();
//  729   OS_EXIT_CRITICAL();
//  730 #endif
//  731   if( SPI1->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI1_IRQHandler_0
//  732   {
//  733     SPI1_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+0]
        BLX      R0
//  734     SPI1->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  735   }
//  736   else if( SPI1->SR & SPI_SR_EOQF_MASK)
??SPI1_IRQHandler_0:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI1_IRQHandler_2
//  737   {
//  738     SPI1_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+4]
        BLX      R0
//  739     SPI1->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  740   }
//  741   else if( SPI1->SR & SPI_SR_TFUF_MASK)
??SPI1_IRQHandler_2:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI1_IRQHandler_3
//  742   {
//  743     SPI1_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+8]
        BLX      R0
//  744     SPI1->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  745   }
//  746   else if( SPI1->SR & SPI_SR_TFFF_MASK)
??SPI1_IRQHandler_3:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI1_IRQHandler_4
//  747   {  
//  748     SPI1_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+16]
        BLX      R0
//  749     SPI1->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  750   }
//  751   else if( SPI1->SR & SPI_SR_RFOF_MASK)
??SPI1_IRQHandler_4:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI1_IRQHandler_5
//  752   {   
//  753     SPI1_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+12]
        BLX      R0
//  754     SPI1->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  755   }
//  756   else if( SPI1->SR & SPI_SR_RFDF_MASK)
??SPI1_IRQHandler_5:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI1_IRQHandler_1
//  757   {
//  758     SPI1_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+20]
        BLX      R0
//  759     SPI1->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
//  760   }
//  761 #if (UCOS_II > 0u)
//  762   OSIntExit();         
//  763 #endif
//  764 }
??SPI1_IRQHandler_1:
        POP      {R0,PC}          ;; return
//  765 
//  766 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  767 void SPI2_IRQHandler(void)
//  768 {
SPI2_IRQHandler:
        PUSH     {R7,LR}
//  769 #if (UCOS_II > 0u)
//  770   OS_CPU_SR  cpu_sr = 0u;
//  771   OS_ENTER_CRITICAL(); 
//  772   OSIntEnter();
//  773   OS_EXIT_CRITICAL();
//  774 #endif
//  775   if( SPI2->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI2_IRQHandler_0
//  776   {
//  777     SPI2_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+0]
        BLX      R0
//  778     SPI2->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  779   }
//  780   else if( SPI2->SR & SPI_SR_EOQF_MASK)
??SPI2_IRQHandler_0:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI2_IRQHandler_2
//  781   {
//  782     SPI2_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+4]
        BLX      R0
//  783     SPI2->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  784   }
//  785   else if( SPI2->SR & SPI_SR_TFUF_MASK)
??SPI2_IRQHandler_2:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI2_IRQHandler_3
//  786   {
//  787     SPI2_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+8]
        BLX      R0
//  788     SPI2->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  789   }
//  790   else if( SPI2->SR & SPI_SR_TFFF_MASK)
??SPI2_IRQHandler_3:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI2_IRQHandler_4
//  791   {  
//  792     SPI2_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+16]
        BLX      R0
//  793     SPI2->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  794   }
//  795   else if( SPI2->SR & SPI_SR_RFOF_MASK)
??SPI2_IRQHandler_4:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI2_IRQHandler_5
//  796   {   
//  797     SPI2_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+12]
        BLX      R0
//  798     SPI2->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  799   }
//  800   else if( SPI2->SR & SPI_SR_RFDF_MASK)
??SPI2_IRQHandler_5:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI2_IRQHandler_1
//  801   {
//  802     SPI2_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+20]
        BLX      R0
//  803     SPI2->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
//  804   }
//  805 #if (UCOS_II > 0u)
//  806   OSIntExit();          
//  807 #endif
//  808 }
??SPI2_IRQHandler_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x4002c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x4004b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x4004a05c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     0x4004b018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     0x40049044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     0x4004b01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     0x4004a024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_26:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_27:
        DC32     0x4004d018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_28:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_29:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_30:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_31:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_32:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_33:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_34:
        DC32     0x400ac000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_35:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_36:
        DC32     0x4004c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_37:
        DC32     0x4004a050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_38:
        DC32     0x4004c03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_39:
        DC32     0x4004c030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_40:
        DC32     0x4004a054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_41:
        DC32     0x4004c034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_42:
        DC32     0x4004a058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_43:
        DC32     0x4004c038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_44:
        DC32     0x3f0c01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_45:
        DC32     SPI0_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_46:
        DC32     SPI1_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_47:
        DC32     SPI2_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_48:
        DC32     0x9a0a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_49:
        DC32     0x4002c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_50:
        DC32     0x4002d02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_51:
        DC32     0x400ac02c

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
        DC8 57H, 5CH, 48H, 57H, 5FH, 53H, 50H, 49H
        DC8 2EH, 63H, 0
        DC8 0

        END
//  809 
//  810 
//  811 
//  812 
//  813 
// 
//    72 bytes in section .bss
//    52 bytes in section .rodata
// 2 764 bytes in section .text
// 
// 2 764 bytes of CODE  memory
//    52 bytes of CONST memory
//    72 bytes of DATA  memory
//
//Errors: none
//Warnings: none
