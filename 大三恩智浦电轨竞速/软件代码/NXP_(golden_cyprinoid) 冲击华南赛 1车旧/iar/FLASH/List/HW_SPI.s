///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:52
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c -D
//        LPLD_K60 -lCN
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -lB
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -o
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\BSP\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\ITAC\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\CTL\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\MAIN\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\SENSOR\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\CPU\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\driver\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\class\" -On -I "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench 7.0\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\HW_SPI.s
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

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_SPI.c
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
//   82     SIM->SCGC6 |= SIM_SCGC6_DSPI0_MASK;  
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   83 
//   84     //选择PCS0
//   85     if(pcs0_pin == PTA14)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+14
        BNE.N    ??LPLD_SPI_Init_3
//   86     {
//   87       PORTA->PCR[14] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_5  ;; 0x40049038
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_4
//   88     }
//   89     else//pcs0_pin == PTC4
//   90     {
//   91       PORTC->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_3:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_6  ;; 0x4004b010
        STR      R0,[R1, #+0]
//   92     }
//   93     //选择PCS1
//   94     if(pcs1_pin == PTC3)
??LPLD_SPI_Init_4:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+63
        BNE.N    ??LPLD_SPI_Init_5
//   95     {
//   96       PORTC->PCR[3]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_7  ;; 0x4004b00c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_6
//   97     }
//   98     else //pcs1_pin == PTD4
//   99     {
//  100       PORTD->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_5:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_8  ;; 0x4004c010
        STR      R0,[R1, #+0]
//  101     }
//  102     //选择PCS2
//  103     if(pcs2_pin == PTC2)
??LPLD_SPI_Init_6:
        LDRB     R0,[SP, #+7]
        CMP      R0,#+62
        BNE.N    ??LPLD_SPI_Init_7
//  104     {
//  105       PORTC->PCR[2]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_9  ;; 0x4004b008
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_8
//  106     }
//  107     else //pcs2_pin == PTD5
//  108     {
//  109       PORTD->PCR[5]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_7:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_10  ;; 0x4004c014
        STR      R0,[R1, #+0]
//  110     }
//  111     //选择PCS3
//  112     if(pcs3_pin == PTC1)
??LPLD_SPI_Init_8:
        LDRB     R0,[SP, #+6]
        CMP      R0,#+61
        BNE.N    ??LPLD_SPI_Init_9
//  113     {
//  114       PORTC->PCR[1]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_11  ;; 0x4004b004
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_10
//  115     }
//  116     else //pcs3_pin == PTD6
//  117     {
//  118       PORTD->PCR[6]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_9:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_12  ;; 0x4004c018
        STR      R0,[R1, #+0]
//  119     }
//  120     //选择PCS4
//  121     if(pcs4_pin == PTC0)
??LPLD_SPI_Init_10:
        LDRB     R0,[SP, #+11]
        CMP      R0,#+60
        BNE.N    ??LPLD_SPI_Init_11
//  122     {
//  123       PORTC->PCR[0]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_13  ;; 0x4004b000
        STR      R0,[R1, #+0]
//  124     }
//  125     //选择PCS5
//  126     if(pcs5_pin == PTB23)
??LPLD_SPI_Init_11:
        LDRB     R0,[SP, #+10]
        CMP      R0,#+55
        BNE.N    ??LPLD_SPI_Init_12
//  127     {
//  128       PORTB->PCR[23] = 0 | PORT_PCR_MUX(3) | PORT_PCR_DSE_MASK;
        MOV      R0,#+832
        LDR.W    R1,??DataTable8_14  ;; 0x4004a05c
        STR      R0,[R1, #+0]
//  129     }
//  130 
//  131     //选择SCK
//  132     if(sck_pin == PTA15)
??LPLD_SPI_Init_12:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+15
        BNE.N    ??LPLD_SPI_Init_13
//  133     {
//  134       PORTA->PCR[15] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_15  ;; 0x4004903c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_14
//  135     }
//  136     else //sck_pin == PTC5
//  137     {
//  138       PORTC->PCR[5] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??LPLD_SPI_Init_13:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_16  ;; 0x4004b014
        STR      R0,[R1, #+0]
//  139     }
//  140     //选择MOSI
//  141     if(mosi_pin == PTA16)
??LPLD_SPI_Init_14:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+16
        BNE.N    ??LPLD_SPI_Init_15
//  142     {
//  143       PORTA->PCR[16] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_17  ;; 0x40049040
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_16
//  144     }
//  145     else //mosi_pin == PTC6
//  146     {
//  147       PORTC->PCR[6] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??LPLD_SPI_Init_15:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_18  ;; 0x4004b018
        STR      R0,[R1, #+0]
//  148     }
//  149     //选择MISO
//  150     if(miso_pin == PTA17)
??LPLD_SPI_Init_16:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+17
        BNE.N    ??LPLD_SPI_Init_17
//  151     {
//  152       PORTA->PCR[17] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_19  ;; 0x40049044
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  153     }
//  154     else //miso_pin == PTC7
//  155     {
//  156       PORTC->PCR[7] = 0 | PORT_PCR_MUX(2); //SIN
??LPLD_SPI_Init_17:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_20  ;; 0x4004b01c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  157     } 
//  158   
//  159   }
//  160   else if(spix == SPI1)
??LPLD_SPI_Init_2:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_19
//  161   {
//  162     SIM->SCGC6 |= SIM_SCGC6_SPI1_MASK;
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  163     //选择PCS0
//  164     if(pcs0_pin == PTB10)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+42
        BNE.N    ??LPLD_SPI_Init_20
//  165     {
//  166       PORTB->PCR[10] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_22  ;; 0x4004a028
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_21
//  167     }
//  168     else//pcs0_pin == PTE4
//  169     {
//  170       PORTE->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_20:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_23  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  171     }
//  172     //选择PCS1
//  173     if(pcs1_pin == PTB9)
??LPLD_SPI_Init_21:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+41
        BNE.N    ??LPLD_SPI_Init_22
//  174     {
//  175       PORTB->PCR[9]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_24  ;; 0x4004a024
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_23
//  176     }
//  177     else //pcs1_pin == PTE0
//  178     {
//  179       PORTE->PCR[0] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_22:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_25  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  180     }
//  181     //选择PCS2
//  182     if(pcs2_pin == PTE5)
??LPLD_SPI_Init_23:
        LDRB     R0,[SP, #+7]
        CMP      R0,#+129
        BNE.N    ??LPLD_SPI_Init_24
//  183     {
//  184       PORTE->PCR[5]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_26  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  185     }
//  186 
//  187     //选择PCS3
//  188     if(pcs3_pin == PTE6)
??LPLD_SPI_Init_24:
        LDRB     R0,[SP, #+6]
        CMP      R0,#+130
        BNE.N    ??LPLD_SPI_Init_25
//  189     {
//  190       PORTE->PCR[6]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_27  ;; 0x4004d018
        STR      R0,[R1, #+0]
//  191     }
//  192 
//  193     //选择SCK
//  194     if(sck_pin == PTB11)
??LPLD_SPI_Init_25:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+43
        BNE.N    ??LPLD_SPI_Init_26
//  195     {
//  196       PORTB->PCR[11] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_28  ;; 0x4004a02c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_27
//  197     }
//  198     else //sck_pin == PTE2
//  199     {
//  200       PORTE->PCR[2] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??LPLD_SPI_Init_26:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_29  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  201     }
//  202     //选择MOSI
//  203     if(mosi_pin == PTB16)
??LPLD_SPI_Init_27:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+48
        BNE.N    ??LPLD_SPI_Init_28
//  204     {
//  205       PORTB->PCR[16] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_30  ;; 0x4004a040
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_29
//  206     }
//  207     else //mosi_pin == PTE1
//  208     {
//  209       PORTE->PCR[1] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??LPLD_SPI_Init_28:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_31  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  210     }
//  211     //选择MISO
//  212     if(miso_pin == PTB17)
??LPLD_SPI_Init_29:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+49
        BNE.N    ??LPLD_SPI_Init_30
//  213     {
//  214       PORTB->PCR[17] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_32  ;; 0x4004a044
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  215     }
//  216     else //miso_pin == PTE3
//  217     {
//  218       PORTE->PCR[3] = 0 | PORT_PCR_MUX(2); //SIN
??LPLD_SPI_Init_30:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_33  ;; 0x4004d00c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  219     } 
//  220   }
//  221   else if(spix == SPI2)
??LPLD_SPI_Init_19:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_31
//  222   {
//  223     SIM->SCGC3 |= SIM_SCGC3_SPI2_MASK;
        LDR.W    R0,??DataTable8_35  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_35  ;; 0x40048030
        STR      R0,[R1, #+0]
//  224     //选择PCS0
//  225     if(pcs0_pin == PTD11)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+103
        BNE.N    ??LPLD_SPI_Init_32
//  226     {
//  227       PORTD->PCR[11] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_36  ;; 0x4004c02c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_33
//  228     }
//  229     else//pcs0_pin == PTB20
//  230     {
//  231       PORTB->PCR[20] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??LPLD_SPI_Init_32:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_37  ;; 0x4004a050
        STR      R0,[R1, #+0]
//  232     }
//  233     //选择PCS1
//  234     if(pcs1_pin == PTD15)
??LPLD_SPI_Init_33:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+107
        BNE.N    ??LPLD_SPI_Init_34
//  235     {
//  236       PORTD->PCR[15]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_38  ;; 0x4004c03c
        STR      R0,[R1, #+0]
//  237     }
//  238 
//  239     //选择SCK
//  240     if(sck_pin == PTD12)
??LPLD_SPI_Init_34:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+104
        BNE.N    ??LPLD_SPI_Init_35
//  241     {
//  242       PORTD->PCR[12] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_39  ;; 0x4004c030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_36
//  243     }
//  244     else //sck_pin == PTB21
//  245     {
//  246       PORTB->PCR[21] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??LPLD_SPI_Init_35:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_40  ;; 0x4004a054
        STR      R0,[R1, #+0]
//  247     }
//  248     //选择MOSI
//  249     if(mosi_pin == PTD13)
??LPLD_SPI_Init_36:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+105
        BNE.N    ??LPLD_SPI_Init_37
//  250     {
//  251       PORTD->PCR[13] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_41  ;; 0x4004c034
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_38
//  252     }
//  253     else //mosi_pin == PTB22
//  254     {
//  255       PORTB->PCR[22] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??LPLD_SPI_Init_37:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_42  ;; 0x4004a058
        STR      R0,[R1, #+0]
//  256     }
//  257     //选择MISO
//  258     if(miso_pin == PTD14)
??LPLD_SPI_Init_38:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+106
        BNE.N    ??LPLD_SPI_Init_39
//  259     {
//  260       PORTD->PCR[14] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_43  ;; 0x4004c038
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  261     }
//  262     else //miso_pin == PTB23
//  263     {
//  264       PORTB->PCR[23] = 0 | PORT_PCR_MUX(2); //SIN
??LPLD_SPI_Init_39:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_14  ;; 0x4004a05c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Init_18
//  265     } 
//  266   }
//  267   else
//  268     return 0;
??LPLD_SPI_Init_31:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_Init_40
//  269   //配置SPI MCR寄存器
//  270   spix->MCR = 0 & (~SPI_MCR_MDIS_MASK)        
//  271                 |SPI_MCR_HALT_MASK        
//  272                 |SPI_MCR_PCSIS_MASK       
//  273                 |SPI_MCR_CLR_TXF_MASK    
//  274                 |SPI_MCR_CLR_RXF_MASK;  
??LPLD_SPI_Init_18:
        LDR.W    R0,??DataTable8_44  ;; 0x3f0c01
        STR      R0,[R4, #+0]
//  275   //选择SPI 工作模式
//  276   if(spi_mode == SPI_MODE_SLAVE)
        LDRB     R0,[SP, #+9]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_41
//  277   {
//  278     spix->MCR &= ~SPI_MCR_MSTR_MASK;//从机模式  
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+1        ;; ZeroExtS R0,R0,#+1,#+1
        LSRS     R0,R0,#+1
        STR      R0,[R4, #+0]
        B.N      ??LPLD_SPI_Init_42
//  279   }
//  280   else
//  281   {
//  282     spix->MCR |= SPI_MCR_MSTR_MASK; //主机模式 
??LPLD_SPI_Init_41:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R4, #+0]
//  283   }
//  284   //选择使能tx FIFO
//  285   if(txFIFO_enable == TRUE)
??LPLD_SPI_Init_42:
        LDRB     R0,[SP, #+13]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_43
//  286   {
//  287     spix->MCR &= ~SPI_MCR_DIS_TXF_MASK; 
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x2000
        STR      R0,[R4, #+0]
        B.N      ??LPLD_SPI_Init_44
//  288   }
//  289   else
//  290   {
//  291     spix->MCR |= SPI_MCR_DIS_TXF_MASK;//选择传统方式
??LPLD_SPI_Init_43:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x2000
        STR      R0,[R4, #+0]
//  292   }
//  293   //选择使能Rx FIFO
//  294   if(rxFIFO_enable == TRUE)
??LPLD_SPI_Init_44:
        LDRB     R0,[SP, #+12]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_45
//  295   {
//  296     spix->MCR &= ~SPI_MCR_DIS_RXF_MASK;
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x1000
        STR      R0,[R4, #+0]
        B.N      ??LPLD_SPI_Init_46
//  297   }
//  298   else
//  299   {
//  300     spix->MCR |= SPI_MCR_DIS_RXF_MASK; //选择传统方式
??LPLD_SPI_Init_45:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x1000
        STR      R0,[R4, #+0]
//  301   }
//  302   //选择使能发送完成中断
//  303   if(tx_complete_int == TRUE)
??LPLD_SPI_Init_46:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_47
//  304   {
//  305     spix->RSER |= SPI_RSER_TCF_RE_MASK; 
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_48
//  306   }
//  307   else
//  308   { 
//  309     spix->RSER &= ~SPI_RSER_TCF_RE_MASK;
??LPLD_SPI_Init_47:
        LDR      R0,[R4, #+48]
        LSLS     R0,R0,#+1        ;; ZeroExtS R0,R0,#+1,#+1
        LSRS     R0,R0,#+1
        STR      R0,[R4, #+48]
//  310   }
//  311   //选择使能发送队列结束中断
//  312   if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_48:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_49
//  313   {
//  314     spix->RSER |=SPI_RSER_EOQF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x10000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_50
//  315   }
//  316   else
//  317     spix->RSER &= ~SPI_RSER_EOQF_RE_MASK;
??LPLD_SPI_Init_49:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x10000000
        STR      R0,[R4, #+48]
//  318   //选择使能txFIFO为空中断
//  319   if(txFIFO_underflow_int== TRUE)
??LPLD_SPI_Init_50:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_51
//  320   {
//  321     spix->RSER |=SPI_RSER_TFUF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x8000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_52
//  322   }
//  323   else
//  324     spix->RSER &= ~SPI_RSER_TFUF_RE_MASK;
??LPLD_SPI_Init_51:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x8000000
        STR      R0,[R4, #+48]
//  325   //选择使能rxFIFO溢出中断
//  326   if(rxFIFO_overflow_int== TRUE)
??LPLD_SPI_Init_52:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_53
//  327   {
//  328     spix->RSER |=SPI_RSER_RFOF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x80000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_54
//  329   }
//  330   else
//  331   {
//  332     spix->RSER &= ~SPI_RSER_RFOF_RE_MASK;
??LPLD_SPI_Init_53:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x80000
        STR      R0,[R4, #+48]
//  333   }
//  334   //选择使能txFIFO有数据进入队列中断或者DMA请求
//  335   if(txFIFO_Fill_int== TRUE)
??LPLD_SPI_Init_54:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_SPI_Init_55
//  336   {
//  337     spix->RSER |=SPI_RSER_TFFF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x2000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_56
//  338   }
//  339   else
//  340   {
//  341     spix->RSER &= ~SPI_RSER_TFFF_RE_MASK;
??LPLD_SPI_Init_55:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x2000000
        STR      R0,[R4, #+48]
//  342   }
//  343   //选择使能rxFIFO非空中断或者DMA请求
//  344   if(rxFIFO_Drain_int== TRUE)
??LPLD_SPI_Init_56:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SPI_Init_57
//  345   {
//  346     spix->RSER |=SPI_RSER_RFDF_RE_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x20000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_58
//  347   }
//  348   else
//  349   {
//  350     spix->RSER &= ~SPI_RSER_RFDF_RE_MASK;
??LPLD_SPI_Init_57:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x20000
        STR      R0,[R4, #+48]
//  351   }
//  352   //选择使能txFIFO中断或者DMA请求
//  353   if(txFIFO_req == SPI_FIFO_DMAREQUEST)
??LPLD_SPI_Init_58:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+1
        BNE.N    ??LPLD_SPI_Init_59
//  354   {
//  355     spix->RSER |=SPI_RSER_TFFF_DIRS_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x1000000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_60
//  356   }
//  357   else
//  358   {
//  359     spix->RSER &= ~SPI_RSER_TFFF_DIRS_MASK;
??LPLD_SPI_Init_59:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x1000000
        STR      R0,[R4, #+48]
//  360   }
//  361   //选择使能rxFIFO中断或者DMA请求
//  362   if(rxFIFO_req == SPI_FIFO_DMAREQUEST)
??LPLD_SPI_Init_60:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+1
        BNE.N    ??LPLD_SPI_Init_61
//  363   {
//  364     spix->RSER |= SPI_RSER_RFDF_DIRS_MASK;
        LDR      R0,[R4, #+48]
        ORRS     R0,R0,#0x10000
        STR      R0,[R4, #+48]
        B.N      ??LPLD_SPI_Init_62
//  365   }
//  366   else 
//  367   {
//  368     spix->RSER &= ~SPI_RSER_RFDF_DIRS_MASK;
??LPLD_SPI_Init_61:
        LDR      R0,[R4, #+48]
        BICS     R0,R0,#0x10000
        STR      R0,[R4, #+48]
//  369   }
//  370   //添加中断回调函数
//  371 
//  372   if(spix == SPI0)
??LPLD_SPI_Init_62:
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_63
//  373   {
//  374     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_64
//  375     { SPI0_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+0]
//  376     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_64:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_65
//  377     { SPI0_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+4]
//  378     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_65:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_66
//  379     { SPI0_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+8]
//  380     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_66:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_67
//  381     { SPI0_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+12]
//  382     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_67:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_SPI_Init_68
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BNE.N    ??LPLD_SPI_Init_68
//  383     { SPI0_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+16]
//  384     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_68:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.W    ??LPLD_SPI_Init_69
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BNE.W    ??LPLD_SPI_Init_69
//  385     { SPI0_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+20]
        B.N      ??LPLD_SPI_Init_69
//  386   }
//  387   else if (spix == SPI1)
??LPLD_SPI_Init_63:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_70
//  388   {
//  389     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_71
//  390     { SPI1_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+0]
//  391     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_71:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_72
//  392     { SPI1_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+4]
//  393     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_72:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_73
//  394     { SPI1_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+8]
//  395     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_73:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_74
//  396     { SPI1_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+12]
//  397     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_74:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_SPI_Init_75
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BNE.N    ??LPLD_SPI_Init_75
//  398     { SPI1_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+16]
//  399     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_75:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SPI_Init_69
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BNE.N    ??LPLD_SPI_Init_69
//  400     { SPI1_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+20]
        B.N      ??LPLD_SPI_Init_69
//  401   }
//  402   else if (spix == SPI2)
??LPLD_SPI_Init_70:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Init_69
//  403   {
//  404     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??LPLD_SPI_Init_76
//  405     { SPI2_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+0]
//  406     if(QueueEnd_Request_int == TRUE)
??LPLD_SPI_Init_76:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??LPLD_SPI_Init_77
//  407     { SPI2_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+4]
//  408     if(txFIFO_underflow_int == TRUE)
??LPLD_SPI_Init_77:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??LPLD_SPI_Init_78
//  409     { SPI2_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+8]
//  410     if(rxFIFO_overflow_int == TRUE)
??LPLD_SPI_Init_78:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??LPLD_SPI_Init_79
//  411     { SPI2_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+12]
//  412     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_79:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??LPLD_SPI_Init_80
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+0
        BNE.N    ??LPLD_SPI_Init_80
//  413     { SPI2_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+16]
//  414     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??LPLD_SPI_Init_80:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??LPLD_SPI_Init_69
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BNE.N    ??LPLD_SPI_Init_69
//  415     { SPI2_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+20]
//  416   }
//  417   //配置SPI CTAR寄存器，设置SPI的总线时序
//  418   spix->CTAR[0] = 0 & (~SPI_CTAR_LSBFE_MASK)
//  419                       |SPI_CTAR_DBR_MASK  
//  420                       |SPI_CTAR_PBR(0)           
//  421                       |SPI_CTAR_FMSZ(7);        
??LPLD_SPI_Init_69:
        MOVS     R0,#-1207959552
        STR      R0,[R4, #+12]
//  422                        
//  423   //设置SPI总线频率
//  424   //SCK总线频率 = g_bus_clock/ SCK_DIV_x                                             
//  425   spix->CTAR[0] |=SPI_CTAR_BR(sck_div);
        LDR      R0,[R4, #+12]
        LDRB     R1,[SP, #+8]
        ANDS     R1,R1,#0xF
        ORRS     R0,R1,R0
        STR      R0,[R4, #+12]
//  426 
//  427   //tCSC = (1/g_bus_clock) x PCSSCK x CSSCK
//  428   //tCSC = 1/50,000,000 x PCSSCK x CSSCK
//  429   spix->CTAR[0] |=SPI_CTAR_PCSSCK(1); 
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x400000
        STR      R0,[R4, #+12]
//  430   spix->CTAR[0] |=SPI_CTAR_CSSCK(1);  
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x1000
        STR      R0,[R4, #+12]
//  431   
//  432   //tDT = (1/g_bus_clock) x PDT x DT
//  433   spix->CTAR[0] |=SPI_CTAR_DT(1);
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x10
        STR      R0,[R4, #+12]
//  434   spix->CTAR[0] |=SPI_CTAR_PDT(1);
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x40000
        STR      R0,[R4, #+12]
//  435   
//  436   //Config the Delay of the last edge of SCK and the negation of PCS
//  437   //tASC = (1/g_bus_clock) x PASC x ASC
//  438   spix->CTAR[0] |=SPI_CTAR_PASC(1);
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x100000
        STR      R0,[R4, #+12]
//  439   spix->CTAR[0] |=SPI_CTAR_ASC(1);
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x100
        STR      R0,[R4, #+12]
//  440   //清除标志位
//  441   spix->SR =  SPI_SR_RFDF_MASK   
//  442               |SPI_SR_RFOF_MASK
//  443               |SPI_SR_TFFF_MASK
//  444               |SPI_SR_TFUF_MASK
//  445               |SPI_SR_TCF_MASK
//  446               |SPI_SR_EOQF_MASK;
        LDR.W    R0,??DataTable8_48  ;; 0x9a0a0000
        STR      R0,[R4, #+44]
//  447   //使能SPIx
//  448   spix->MCR &=~SPI_MCR_HALT_MASK; 
        LDR      R0,[R4, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R4, #+0]
//  449   
//  450   return 1;
        MOVS     R0,#+1
??LPLD_SPI_Init_40:
        ADD      SP,SP,#+44
        POP      {R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  451 }
//  452 
//  453 /*
//  454  * LPLD_SPI_Deinit
//  455  * SPI反初始化函数,在该函数中将SPI设置成为暂停模式，关闭SPI总线时钟，
//  456  * 关闭SPI外设中断
//  457  * 
//  458  * 参数:
//  459  *    spi_init_structure--SPI初始化结构体，
//  460  *                        具体定义见SPI_InitTypeDef
//  461  *
//  462  * 输出:
//  463  *    0--配置错误
//  464  *    1--配置成功
//  465  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  466 uint8 LPLD_SPI_Deinit(SPI_InitTypeDef spi_init_structure)
//  467 {
LPLD_SPI_Deinit:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  468   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  469   spix->MCR |= SPI_MCR_HALT_MASK; //
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+0]
//  470   if(spix == SPI0)
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Deinit_0
//  471   {
//  472     disable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_DisableIRQ
//  473     SIM->SCGC6 &= ~SIM_SCGC6_DSPI0_MASK;
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Deinit_1
//  474   }
//  475   else if(spix == SPI1)
??LPLD_SPI_Deinit_0:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Deinit_2
//  476   {
//  477     disable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       NVIC_DisableIRQ
//  478     SIM->SCGC6 &= ~SIM_SCGC6_SPI1_MASK;
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Deinit_1
//  479   }
//  480   else if(spix == SPI2)
??LPLD_SPI_Deinit_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_Deinit_3
//  481   {
//  482     disable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       NVIC_DisableIRQ
//  483     SIM->SCGC3 &= ~SIM_SCGC3_SPI2_MASK;
        LDR.W    R0,??DataTable8_35  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_35  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??LPLD_SPI_Deinit_1
//  484   }
//  485   else
//  486     return 0;
??LPLD_SPI_Deinit_3:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_Deinit_4
//  487   return 1;
??LPLD_SPI_Deinit_1:
        MOVS     R0,#+1
??LPLD_SPI_Deinit_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  488 }
//  489 
//  490 /*
//  491  * LPLD_SPI_EnableIrq
//  492  * 使能SPI外设中断
//  493  * 
//  494  * 参数:
//  495  *    spi_init_structure--SPI初始化结构体，
//  496  *                        具体定义见SPI_InitTypeDef
//  497  *
//  498  * 输出:
//  499  *    0--配置错误
//  500  *    1--配置成功
//  501  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  502 uint8 LPLD_SPI_EnableIrq(SPI_InitTypeDef spi_init_structure)
//  503 {
LPLD_SPI_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  504   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  505   if(spix == SPI0)
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_EnableIrq_0
//  506   {
//  507     enable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_SPI_EnableIrq_1
//  508   }
//  509   else if(spix == SPI1)
??LPLD_SPI_EnableIrq_0:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_EnableIrq_2
//  510   {
//  511     enable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_SPI_EnableIrq_1
//  512   }
//  513   else if(spix == SPI2)
??LPLD_SPI_EnableIrq_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_EnableIrq_3
//  514   {
//  515     enable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       NVIC_EnableIRQ
        B.N      ??LPLD_SPI_EnableIrq_1
//  516   }
//  517   else
//  518     return 0;
??LPLD_SPI_EnableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_EnableIrq_4
//  519 
//  520   return 1;
??LPLD_SPI_EnableIrq_1:
        MOVS     R0,#+1
??LPLD_SPI_EnableIrq_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  521 }
//  522 
//  523 /*
//  524  * LPLD_SPI_EnableIrq
//  525  * 禁止SPI外设中断
//  526  * 
//  527  * 参数:
//  528  *    spi_init_structure--SPI初始化结构体，
//  529  *                        具体定义见SPI_InitTypeDef
//  530  *
//  531  * 输出:
//  532  *    0--配置错误
//  533  *    1--配置成功
//  534  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  535 uint8 LPLD_SPI_DisableIrq(SPI_InitTypeDef spi_init_structure)
//  536 {
LPLD_SPI_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  537   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  538   if(spix == SPI0)
        LDR.N    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_DisableIrq_0
//  539   {
//  540     disable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_SPI_DisableIrq_1
//  541   }
//  542   else if(spix == SPI1)
??LPLD_SPI_DisableIrq_0:
        LDR.N    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_DisableIrq_2
//  543   {
//  544     disable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_SPI_DisableIrq_1
//  545   }
//  546   else if(spix == SPI2)
??LPLD_SPI_DisableIrq_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??LPLD_SPI_DisableIrq_3
//  547   {
//  548     disable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       NVIC_DisableIRQ
        B.N      ??LPLD_SPI_DisableIrq_1
//  549   }
//  550   else
//  551     return 0;
??LPLD_SPI_DisableIrq_3:
        MOVS     R0,#+0
        B.N      ??LPLD_SPI_DisableIrq_4
//  552   return 1;
??LPLD_SPI_DisableIrq_1:
        MOVS     R0,#+1
??LPLD_SPI_DisableIrq_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  553 }
//  554 
//  555 /*
//  556  * LPLD_SPI_Master_WriteRead
//  557  * K60主机SPI向从机写数据，并读取从机数据
//  558  * 
//  559  * 参数:
//  560  *    spix--SPI选择
//  561  *      |__SPI0 -选择SPI0模块
//  562  *      |__SPI1 -选择SPI1模块
//  563  *      |__SPI2 -选择SPI2模块
//  564  *    data--要发送数据
//  565  *      |__单位为一个字节，8位
//  566  *    pcsx--CS片选端口号
//  567  *      |__SPI_PCS0 -0号片选(SPI0、SPI1、SPI2含有)
//  568  *      |__SPI_PCS1 -1号片选(SPI0、SPI1、SPI2含有)
//  569  *      |__SPI_PCS2 -2号片选(SPI0、SPI1含有)
//  570  *      |__SPI_PCS3 -3号片选(SPI0、SPI1含有)
//  571  *      |__SPI_PCS4 -4号片选(SPI0含有)
//  572  *      |__SPI_PCS5 -5号片选(SPI0含有)
//  573  *    pcs_state--一帧数据传输完成后CS的状态
//  574  *      |__SPI_PCS_ASSERTED -保持片选有效,PCS信号保持为低电平
//  575  *      |__SPI_PCS_INACTIVE -片选无效,PCS信号变为高电平
//  576  * 输出:
//  577  *    读取从机8位的数据
//  578  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  579 uint8 LPLD_SPI_Master_WriteRead(SPI_Type *spix,uint8 data,uint8 pcsx,uint8 pcs_state)
//  580 {
LPLD_SPI_Master_WriteRead:
        PUSH     {R4,R5}
        MOVS     R4,R0
//  581   uint8 temp;
//  582   
//  583   spix->PUSHR  = (((uint32_t)(((uint32_t)(pcs_state))<<SPI_PUSHR_CONT_SHIFT))&SPI_PUSHR_CONT_MASK)
//  584                |SPI_PUSHR_CTAS(0)
//  585                |SPI_PUSHR_PCS(pcsx)
//  586                |data;                 
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R5,R2,#+16
        ANDS     R5,R5,#0x3F0000
        ORRS     R5,R5,R3, LSL #+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R5,R1,R5
        STR      R5,[R4, #+52]
//  587   
//  588   while(!(spix->SR & SPI_SR_TCF_MASK));
??LPLD_SPI_Master_WriteRead_0:
        LDR      R5,[R4, #+44]
        CMP      R5,#+0
        BPL.N    ??LPLD_SPI_Master_WriteRead_0
//  589   spix->SR |= SPI_SR_TCF_MASK ;               
        LDR      R5,[R4, #+44]
        ORRS     R5,R5,#0x80000000
        STR      R5,[R4, #+44]
//  590   
//  591   while(!(spix->SR & SPI_SR_RFDF_MASK)); 
??LPLD_SPI_Master_WriteRead_1:
        LDR      R5,[R4, #+44]
        LSLS     R5,R5,#+14
        BPL.N    ??LPLD_SPI_Master_WriteRead_1
//  592   temp = (uint8)(spix->POPR & 0xff);           
        LDR      R5,[R4, #+56]
        MOVS     R0,R5
//  593   spix->SR |= SPI_SR_RFDF_MASK;                
        LDR      R5,[R4, #+44]
        ORRS     R5,R5,#0x20000
        STR      R5,[R4, #+44]
//  594   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,R5}
        BX       LR               ;; return
//  595   
//  596 }
//  597 
//  598 /*
//  599  * LPLD_SPI_Master_Read
//  600  * K60主机读取从机数据
//  601  * 
//  602  * 参数:
//  603  *    spix--SPI选择
//  604  *      |__SPI0 -选择SPI0模块
//  605  *      |__SPI1 -选择SPI1模块
//  606  *      |__SPI2 -选择SPI2模块
//  607  * 输出:
//  608  *    读取从机8位的数据
//  609  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  610 uint8 LPLD_SPI_Master_Read(SPI_Type *spix)
//  611 {
LPLD_SPI_Master_Read:
        MOVS     R1,R0
//  612   uint8 temp;
//  613 
//  614   while(!(spix->SR & SPI_SR_RFDF_MASK)); //=1 RIFO is not empty
??LPLD_SPI_Master_Read_0:
        LDR      R2,[R1, #+44]
        LSLS     R2,R2,#+14
        BPL.N    ??LPLD_SPI_Master_Read_0
//  615   temp=(uint8)spix->POPR;
        LDR      R2,[R1, #+56]
        MOVS     R0,R2
//  616   spix->SR |=SPI_SR_RFDF_MASK;
        LDR      R2,[R1, #+44]
        ORRS     R2,R2,#0x20000
        STR      R2,[R1, #+44]
//  617 
//  618   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  619 }
//  620 /*
//  621  * LPLD_SPI_Master_Write
//  622  * K60主机SPI向从机写数据
//  623  * 
//  624  * 参数:
//  625  *    spix--SPI选择
//  626  *      |__SPI0 -选择SPI0模块
//  627  *      |__SPI1 -选择SPI1模块
//  628  *      |__SPI2 -选择SPI2模块
//  629  *    data--要发送数据
//  630  *      |__单位为一个字节，8位
//  631  *    pcsx--CS片选端口号
//  632  *      |__SPI_PCS0  -0号片选(SPI0、SPI1、SPI2含有)
//  633  *      |__SPI_PCS1  -1号片选(SPI0、SPI1、SPI2含有)
//  634  *      |__SPI_PCS2  -2号片选(SPI0、SPI1含有)
//  635  *      |__SPI_PCS3  -3号片选(SPI0、SPI1含有)
//  636  *      |__SPI_PCS4  -4号片选(SPI0含有)
//  637  *      |__SPI_PCS5  -5号片选(SPI0含有)
//  638  *    pcs_state--一帧数据传输完成后CS的状态
//  639  *      |__SPI_PCS_ASSERTED -保持片选有效,PCS信号保持为低电平
//  640  *      |__SPI_PCS_INACTIVE -片选无效,PCS信号变为高电平
//  641  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  642 void LPLD_SPI_Master_Write(SPI_Type *spix,uint8 data,uint8 pcsx,uint8 pcs_state)
//  643 {  
LPLD_SPI_Master_Write:
        PUSH     {R4}
//  644   
//  645   spix->PUSHR = (((uint32_t)(((uint32_t)(pcs_state))<<SPI_PUSHR_CONT_SHIFT)) & SPI_PUSHR_CONT_MASK)
//  646                |SPI_PUSHR_CTAS(0)
//  647                |SPI_PUSHR_PCS(pcsx)
//  648                |data; 
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+16
        ANDS     R4,R4,#0x3F0000
        ORRS     R4,R4,R3, LSL #+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R4,R1,R4
        STR      R4,[R0, #+52]
//  649 
//  650   while(!(spix->SR & SPI_SR_TCF_MASK));
??LPLD_SPI_Master_Write_0:
        LDR      R4,[R0, #+44]
        CMP      R4,#+0
        BPL.N    ??LPLD_SPI_Master_Write_0
//  651   spix->SR |= SPI_SR_TCF_MASK ;            
        LDR      R4,[R0, #+44]
        ORRS     R4,R4,#0x80000000
        STR      R4,[R0, #+44]
//  652 }
        POP      {R4}
        BX       LR               ;; return
//  653 
//  654 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  655 void SPI0_IRQHandler(void)
//  656 {
SPI0_IRQHandler:
        PUSH     {R7,LR}
//  657 #if (UCOS_II > 0u)
//  658   OS_CPU_SR  cpu_sr = 0u;
//  659   OS_ENTER_CRITICAL(); 
//  660   OSIntEnter();
//  661   OS_EXIT_CRITICAL();
//  662 #endif
//  663   if( SPI0->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI0_IRQHandler_0
//  664   {
//  665     SPI0_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+0]
        BLX      R0
//  666     SPI0->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  667   }
//  668   else if( SPI0->SR & SPI_SR_EOQF_MASK)
??SPI0_IRQHandler_0:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI0_IRQHandler_2
//  669   {
//  670     SPI0_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+4]
        BLX      R0
//  671     SPI0->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  672   }
//  673   else if( SPI0->SR & SPI_SR_TFUF_MASK)
??SPI0_IRQHandler_2:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI0_IRQHandler_3
//  674   {
//  675     SPI0_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+8]
        BLX      R0
//  676     SPI0->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  677   }
//  678   else if( SPI0->SR & SPI_SR_TFFF_MASK)
??SPI0_IRQHandler_3:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI0_IRQHandler_4
//  679   {  
//  680     SPI0_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+16]
        BLX      R0
//  681     SPI0->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  682   }
//  683   else if( SPI0->SR & SPI_SR_RFOF_MASK)
??SPI0_IRQHandler_4:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI0_IRQHandler_5
//  684   {   
//  685     SPI0_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+12]
        BLX      R0
//  686     SPI0->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  687   }
//  688   else if( SPI0->SR & SPI_SR_RFDF_MASK)
??SPI0_IRQHandler_5:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI0_IRQHandler_1
//  689   {
//  690     SPI0_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+20]
        BLX      R0
//  691     SPI0->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
//  692   }
//  693 #if (UCOS_II > 0u)
//  694   OSIntExit();          
//  695 #endif
//  696 }
??SPI0_IRQHandler_1:
        POP      {R0,PC}          ;; return
//  697 
//  698 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  699 void SPI1_IRQHandler(void)
//  700 {
SPI1_IRQHandler:
        PUSH     {R7,LR}
//  701 #if (UCOS_II > 0u)
//  702   OS_CPU_SR  cpu_sr = 0u;
//  703   OS_ENTER_CRITICAL(); 
//  704   OSIntEnter();
//  705   OS_EXIT_CRITICAL();
//  706 #endif
//  707   if( SPI1->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI1_IRQHandler_0
//  708   {
//  709     SPI1_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+0]
        BLX      R0
//  710     SPI1->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  711   }
//  712   else if( SPI1->SR & SPI_SR_EOQF_MASK)
??SPI1_IRQHandler_0:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI1_IRQHandler_2
//  713   {
//  714     SPI1_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+4]
        BLX      R0
//  715     SPI1->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  716   }
//  717   else if( SPI1->SR & SPI_SR_TFUF_MASK)
??SPI1_IRQHandler_2:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI1_IRQHandler_3
//  718   {
//  719     SPI1_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+8]
        BLX      R0
//  720     SPI1->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  721   }
//  722   else if( SPI1->SR & SPI_SR_TFFF_MASK)
??SPI1_IRQHandler_3:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI1_IRQHandler_4
//  723   {  
//  724     SPI1_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+16]
        BLX      R0
//  725     SPI1->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  726   }
//  727   else if( SPI1->SR & SPI_SR_RFOF_MASK)
??SPI1_IRQHandler_4:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI1_IRQHandler_5
//  728   {   
//  729     SPI1_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+12]
        BLX      R0
//  730     SPI1->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  731   }
//  732   else if( SPI1->SR & SPI_SR_RFDF_MASK)
??SPI1_IRQHandler_5:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI1_IRQHandler_1
//  733   {
//  734     SPI1_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+20]
        BLX      R0
//  735     SPI1->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
//  736   }
//  737 #if (UCOS_II > 0u)
//  738   OSIntExit();         
//  739 #endif
//  740 }
??SPI1_IRQHandler_1:
        POP      {R0,PC}          ;; return
//  741 
//  742 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  743 void SPI2_IRQHandler(void)
//  744 {
SPI2_IRQHandler:
        PUSH     {R7,LR}
//  745 #if (UCOS_II > 0u)
//  746   OS_CPU_SR  cpu_sr = 0u;
//  747   OS_ENTER_CRITICAL(); 
//  748   OSIntEnter();
//  749   OS_EXIT_CRITICAL();
//  750 #endif
//  751   if( SPI2->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI2_IRQHandler_0
//  752   {
//  753     SPI2_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+0]
        BLX      R0
//  754     SPI2->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  755   }
//  756   else if( SPI2->SR & SPI_SR_EOQF_MASK)
??SPI2_IRQHandler_0:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI2_IRQHandler_2
//  757   {
//  758     SPI2_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+4]
        BLX      R0
//  759     SPI2->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  760   }
//  761   else if( SPI2->SR & SPI_SR_TFUF_MASK)
??SPI2_IRQHandler_2:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI2_IRQHandler_3
//  762   {
//  763     SPI2_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+8]
        BLX      R0
//  764     SPI2->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  765   }
//  766   else if( SPI2->SR & SPI_SR_TFFF_MASK)
??SPI2_IRQHandler_3:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI2_IRQHandler_4
//  767   {  
//  768     SPI2_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+16]
        BLX      R0
//  769     SPI2->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  770   }
//  771   else if( SPI2->SR & SPI_SR_RFOF_MASK)
??SPI2_IRQHandler_4:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI2_IRQHandler_5
//  772   {   
//  773     SPI2_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+12]
        BLX      R0
//  774     SPI2->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  775   }
//  776   else if( SPI2->SR & SPI_SR_RFDF_MASK)
??SPI2_IRQHandler_5:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI2_IRQHandler_1
//  777   {
//  778     SPI2_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+20]
        BLX      R0
//  779     SPI2->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
//  780   }
//  781 #if (UCOS_II > 0u)
//  782   OSIntExit();          
//  783 #endif
//  784 }
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
        DC8 43H, 3AH, 5CH, 0B0H, 0D9H, 0B6H, 0C8H, 0D4H
        DC8 0C6H, 0CDH, 0ACH, 0B2H, 0BDH, 0C5H, 0CCH, 5CH
        DC8 0B1H, 0C8H, 0C8H, 0FCH, 0B4H, 0FAH, 0C2H, 0EBH
        DC8 5CH, 4CH, 50H, 4CH, 44H, 5FH, 4FH, 53H
        DC8 4BH, 69H, 6EH, 65H, 74H, 69H, 73H, 5FH
        DC8 56H, 33H, 5CH, 6CH, 69H, 62H, 5CH, 4CH
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 48H
        DC8 57H, 5FH, 53H, 50H, 49H, 2EH, 63H, 0

        END
//  785 
//  786 
//  787 
//  788 
//  789 
// 
//    72 bytes in section .bss
//    64 bytes in section .rodata
// 2 764 bytes in section .text
// 
// 2 764 bytes of CODE  memory
//    64 bytes of CONST memory
//    72 bytes of DATA  memory
//
//Errors: none
//Warnings: none
