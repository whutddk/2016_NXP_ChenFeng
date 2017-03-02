///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:10
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_CAN.c
//    Command line =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_CAN.c -D LPLD_K60
//        -lCN
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -lB
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -o
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\BSP\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\ITAC\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\CTL\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\MAIN\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\SENSOR\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\CPU\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\common\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\HW\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\DEV\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\option\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\common\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\driver\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\descriptor\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\class\" -On -I D:\IAR\arm\CMSIS\Include\ -D
//        ARM_MATH_CM4
//    List file    =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
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

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_CAN.c
//    1 /**
//    2  * @file HW_CAN.c
//    3  * @version 3.03[By LPLD]
//    4  * @date 2014-3-9
//    5  * @brief CAN底层模块相关函数
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
//   25 //FlexCAN模块设置波特率函数
//   26 static void LPLD_CAN_SetBaudRate(CAN_Type *,uint32 );
//   27 //FlexCAN 清楚中断标志位函数
//   28 static void LPLD_CAN_Interrupt_ClearPending(CAN_Type *, uint8 );
//   29 //FlexCAN 获得中断标志位函数
//   30 static uint8 LPLD_CAN_Interrupt_GetFlag(CAN_Type *, uint8 );
//   31 //FlexCAN 解锁Msg缓冲区函数
//   32 static uint16 LPLD_CAN_UnlockMsg(CAN_Type *);
//   33 //FlexCAN 使能Msg缓冲区中断函数
//   34 static void LPLD_CAN_EnableMsgInterrupt(CAN_Type *, uint8 );
//   35 //FlexCAN 设置Msg缓冲区的CODE
//   36 static void LPLD_CAN_SetMsgCode(CAN_Type *, uint8 , uint8 );
//   37 //FlexCAN 获得Msg缓冲区的CODE
//   38 static uint32 LPLD_CAN_GetMsgCode(CAN_Type *, uint8 );
//   39 //FlexCAN 获得Msg缓冲区的TIMESTAMP
//   40 static uint16 LPLD_CAN_GetMsgTimeStamp(CAN_Type *, uint8 );
//   41 //FlexCAN 设置Msg缓冲区的ID
//   42 void LPLD_CAN_SetMsgID(CAN_Type *, uint8 ,uint8, uint32 );
//   43 //FlexCAN 获得Msg缓冲区的ID
//   44 static uint32 LPLD_CAN_GetMsgID(CAN_Type *, uint8 );
//   45 //FlexCAN 获得Msg缓冲区的长度
//   46 uint8 LPLD_CAN_GetMsgLength(CAN_Type *canx, uint8 MSG_NUM);
//   47 //FlexCAN 获得Msg缓冲区的数据
//   48 static void LPLD_CAN_GetData(CAN_Type *canx, uint8 , uint8 ,  uint8 *);
//   49 //FlexCAN 写Msg缓冲区的数据
//   50 static void LPLD_CAN_WriteData(CAN_Type *, uint8 , uint8, uint8 * );
//   51 //FlexCAN 传输中断函数
//   52 void LPLD_CAN_Transmit_Interrupt(CAN_Type *, uint8 );
//   53 //FlexCAN 接收中断函数
//   54 static void LPLD_CAN_Receive_Interrupt(CAN_Type *, uint8 );
//   55 //FlexCAN CANx的中断处理函数
//   56 static void LPLD_CAN_MB_ISR(void);
//   57 //设置16个Msg的结构体

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   58 CAN_MSGOBJ_InitTypeDef  flexcan_msgobj_param_t[MSG_MAX_NO] = {0};
flexcan_msgobj_param_t:
        DS8 256
//   59 //设置CANx Msg的中断回掉函数

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
//   65  * 在该函数中使能CANx，设置CANx的波特率，选择相应的工作模式
//   66  * 通过CAN_InitTypeDef结构体对CAN进行初始化。
//   67  * 
//   68  * 参数:
//   69  *    CAN_InitTypeDef--can_init_structure
//   70  *                     具体定义见HW_CAN.h can_init_structure
//   71  *
//   72  * 输出:
//   73  *    无
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
//  135   //禁止CAN外设
//  136   canx->MCR   |= CAN_MCR_MDIS_MASK;
??LPLD_CAN_Init_8:
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R5, #+0]
//  137   //只有在LPM_ACK = 1情况下才可以选择钟源
//  138   canx->CTRL1 |= CAN_CTRL1_CLKSRC_MASK;  //选择peripheral clock作为CAN外设的时钟源
        LDR      R0,[R5, #+4]
        ORRS     R0,R0,#0x2000
        STR      R0,[R5, #+4]
//  139                                          //设置此位必须在CAN停止模式下
//  140   //在时钟初始化完毕和CAN总线使能完毕后，
//  141   //单片机自动进入冻结模式
//  142   //只有在冻结模式下才能配置大多数CAN总线寄存器
//  143   //使能冻结模式 
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
//  149   //进行软件复位
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
//  153   //等待进入冻结模式 
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
//  158     canx->MCR &= ~CAN_MCR_IRMQ_MASK;   //使能全局匹配寄存器禁止单独匹配 
        LDR      R0,[R5, #+0]
        BICS     R0,R0,#0x10000
        STR      R0,[R5, #+0]
        B.N      ??LPLD_CAN_Init_16
//  159   }
//  160   else
//  161   {
//  162     canx->MCR |= CAN_MCR_IRMQ_MASK;   //使能Msg单独匹配 
??LPLD_CAN_Init_15:
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x10000
        STR      R0,[R5, #+0]
//  163   }
//  164   //将MB_MAX个邮箱缓冲区内容清0
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
//  173   canx->MCR |= CAN_MCR_SRXDIS_MASK ; //禁止自我接收
??LPLD_CAN_Init_18:
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x20000
        STR      R0,[R5, #+0]
//  174   //canx->MCR |= CAN_MCR_RFEN_MASK ;   //使能接收FIFO
//  175   //canx->CTRL2 |= CAN_CTRL2_RFFN(0);
//  176   //canx->MCR |= CAN_MCR_IDAM(0);
//  177   
//  178   //配置相关的寄存器
//  179   canx->CTRL2 &= ~CAN_CTRL2_EACEN_MASK; //接收邮箱过滤IDE匹配，RTR不匹配
        LDR      R0,[R5, #+52]
        BICS     R0,R0,#0x10000
        STR      R0,[R5, #+52]
//  180   canx->CTRL2 &= ~CAN_CTRL2_RRS_MASK;  //不自动产生远程请求帧产生
        LDR      R0,[R5, #+52]
        BICS     R0,R0,#0x20000
        STR      R0,[R5, #+52]
//  181   canx->CTRL2 &= ~CAN_CTRL2_MRP_MASK;   //ID首先从邮箱中匹配
        LDR      R0,[R5, #+52]
        BICS     R0,R0,#0x40000
        STR      R0,[R5, #+52]
//  182 
//  183   //canx->CTRL1 |= CAN_CTRL1_LBUF_MASK;  //发送的时候从低Msg开始
//  184   canx->CTRL1 &= ~CAN_CTRL1_LBUF_MASK;   //发送的时候从低优先级发送
        LDR      R0,[R5, #+4]
        BICS     R0,R0,#0x10
        STR      R0,[R5, #+4]
//  185                              
//  186   //canx->CTRL1 |= CAN_CTRL1_LPB_MASK;  //loop 模式,用于测试
//  187   canx->CTRL1 &= ~CAN_CTRL1_LPB_MASK;   //使用正常模式
        LDR      R0,[R5, #+4]
        BICS     R0,R0,#0x1000
        STR      R0,[R5, #+4]
//  188   //设置CAN总线通信的波特率
//  189   LPLD_CAN_SetBaudRate(canx,baud);
        MOVS     R1,R6
        MOVS     R0,R5
        BL       LPLD_CAN_SetBaudRate
//  190 
//  191   //清空CAN自由计数器 
//  192   canx->TIMER = 0x0000; 
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
//  193    /*
//  194   如果MCR的IRMQ为1，表示每个邮箱都可以单独进行ID匹配
//  195   注意：如果是low cost MCUs（低配置的MCU），没有单独匹配这项功能。
//  196           1\ID匹配会选择free to receive状态的邮箱作为胜者，
//  197           获胜的邮箱可以从接收缓冲区内将接收的帧 Move in 到MB中；
//  198           2\如果出现ID号相同的邮箱，会首先从序号低的邮箱进行匹配，如果
//  199           低序号邮箱是non free to receive状态，那么匹配过程将会查找
//  200           下一个邮箱直到找到free to receive状态且ID相同的邮箱；
//  201           3\如果ID号相同的邮箱都处于non free to receive状态，那么匹配过程
//  202           将停止在最后一个有相同ID的邮箱位置，将帧Move in 到MB中并且将该邮
//  203           箱的状态设置成OVERRUN。
//  204           RXIMR[i]存储在单片机的RAM中，只有在CAN冻结模式下可写。
//  205           此时CANx_RXMGMASK、CANx_RX14MASK、CANx_RX15MASK不起作用
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
//  211       canx->RXIMR[i] = 0x1FFFFFFFL;//设置邮箱29位全部屏蔽
        MVNS     R0,#-536870912
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADDS     R1,R5,R4, LSL #+2
        STR      R0,[R1, #+2176]
//  212     }
        ADDS     R4,R4,#+1
        B.N      ??LPLD_CAN_Init_20
//  213   } 
//  214  /*
//  215   如果MCR的IRMQ为0，表示使用全局匹配寄存器进行匹配，
//  216           此时CANx_RXMGMASK、CANx_RX14MASK、CANx_RX15MASK起作用；
//  217           CANx_RXMGMASK管理除CANx_RX14MASK、CANx_RX15MASK以外的所有Msg；
//  218           ID匹配过程会停止在找到的第一个ID相同的邮箱位置，不管该邮箱是否处于
//  219           free to receive状态。
//  220   */
//  221 
//  222   canx->RXMGMASK = 0x1FFFFFFF; //29位ID全部匹配            
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
//  227   //等到不在冻结模式，休眠模式或者停止模式
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
//  234  * 设置CAN波特率,PLL必须是100Mhz
//  235  * 参数:
//  236  *    CAN_Type *canx
//  237  *      |___CAN0 --CAN0号模块
//  238  *      |___CAN1 --CAN0号模块
//  239  *    baud 波特率
//  240  *      |__CAN_BAUD_RATE_50KBPS  --波特率50KBPS
//  241  *      |__CAN_BAUD_RATE_100KBPS --波特率100KBPS
//  242  *      |__CAN_BAUD_RATE_250KBPS --波特率250KBPS
//  243  *      |__CAN_BAUD_RATE_500KBPS --波特率500KBPS
//  244  *      |__CAN_BAUD_RATE_1MBPS   --波特率1MBPS
//  245  *  输出：
//  246  *    无
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
//  251   //1个CAN总线位的时间量子：Time Quanta = SYNC_SEG + (PROP_SEG + PSEG1 + 2) + (PSEG2 + 1)，
//  252   //SYNC_SEG =  1 （固定值）
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
//  259         //设置CAN总线通信的波特率
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
//  272         //设置time_quanta = 12 
//  273         prescale = CAN_GET_PRESCALE(g_bus_clock,baud,12); 
??LPLD_CAN_SetBaudRate_1:
        LDR.W    R0,??DataTable19_22
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        MUL      R1,R1,R5
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        MOVS     R6,R0
//  274         //设置CAN总线通信的波特率
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
//  286         //设置time_quanta = 12 
//  287         prescale = CAN_GET_PRESCALE(g_bus_clock,baud,12); 
??LPLD_CAN_SetBaudRate_2:
        LDR.W    R0,??DataTable19_22
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        MUL      R1,R1,R5
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        MOVS     R6,R0
//  288         //设置CAN总线通信的波特率
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
//  302  * CAN反初始化函数，在该函数中禁止CANx的总线时钟，禁止模块中断，关闭CAN模块
//  303  * 
//  304  * 参数:
//  305  *    CAN_InitTypeDef--can_init_structure
//  306  *                     具体定义见HW_CAN.h can_init_structure
//  307  * 输出:
//  308  *    无
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
//  325   //禁止CAN外设
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
//  332  * 使能CAN模块中断
//  333  * 
//  334  * 参数:
//  335  *    CAN_InitTypeDef--can_init_structure
//  336  *                     具体定义见HW_CAN.h can_init_structure
//  337  * 输出:
//  338  *    无
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
//  357  * 禁止CAN模块中断
//  358  * 
//  359  * 参数:
//  360  *    CAN_InitTypeDef--can_init_structure
//  361  *                     具体定义见HW_CAN.h can_init_structure
//  362  * 输出:
//  363  *    无
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
//  383  * 设置CAN Message buffer（Msg）格式，通过CAN_MSGOBJ_InitTypeDef
//  384  * 结构体对CAN Message buffer进行初始化。
//  385  * 
//  386  * 参数:
//  387  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  388  *                            具体定义见HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  389  *    message_id
//  390  *      设置message_id，id长度根据CAN_MSGOBJ_InitTypeDef的参数而定
//  391  *      id的长度分为11位标准帧和29位扩展帧两种
//  392  *      CAN_MSGOBJ_ID_STD 表示标准帧，如CAN_MSGOBJ_InitTypeDef中设置id长度为CAN_MSGOBJ_ID_STD
//  393  *      此时message_id最长为11位，不能超过0x0FFF；
//  394  *      CAN_MSGOBJ_ID_EXT 表示扩展帧，如CAN_MSGOBJ_InitTypeDef中设置id长度为CAN_MSGOBJ_ID_EXT
//  395  *      此时message_id最长为29位，不能超过0x1FFFFFFF；
//  396  * 输出:
//  397  *    无
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
//  413     //设置Msg的ID
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
//  427     LPLD_CAN_EnableMsgInterrupt(canx_ptr,msg_num_temp);//使能Msg中断 
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        BL       LPLD_CAN_EnableMsgInterrupt
//  428     //设置Msg中断回掉函数
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
//  458  * CAN 发送消息函数
//  459  * 参数:
//  460  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  461  *                            具体定义见HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  462  *    CAN_MessageFormat_TypeDef--*can_rx_msg
//  463  *                            具体定义见HW_CAN.h CAN_MessageFormat_TypeDef
//  464  *    该结构体用于定义CAN的消息格式，当CAN发送消息时，会从CAN_MessageFormat_TypeDef定义的结构体对象中
//  465  *    提取信息并存储到MSG中，MSG会将消息发送到CAN总线上。
//  466  *    该结构体中的主要变量为 消息ID、时间戳、数据长度、存储数据的缓冲区
//  467  * 输出:
//  468  *    1 发送完毕
//  469  *    0 发送失败
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
//  491     return 0; // 超出阈值
??LPLD_CAN_TransmitMessage_0:
        MOVS     R0,#+0
        B.N      ??LPLD_CAN_TransmitMessage_2
//  492   }
//  493   //如果发送Msg缓冲区中的CODE不等于CAN_MSGOBJ_TX_ONCE
//  494   if( LPLD_CAN_GetMsgCode(canx_ptr,msg_num_temp) != CAN_MSGOBJ_TX_ONCE)
??LPLD_CAN_TransmitMessage_1:
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        BL       LPLD_CAN_GetMsgCode
        CMP      R0,#+12
        BEQ.N    ??LPLD_CAN_TransmitMessage_3
//  495   {
//  496     //设置Msg的ID
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
//  505     //向发送Msg缓冲区中的CODE中写INACTIVE命令
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
//  508     //向Msg中写入要发送的数据
//  509     LPLD_CAN_WriteData(canx_ptr,msg_num_temp,in_data_length,in_data_buffer);
        LDR      R3,[SP, #+0]
        MOV      R2,R9
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        BL       LPLD_CAN_WriteData
//  510     //向发送Msg缓冲区中的CODE中写TX_ONCE命令，等待发送完成
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
//  514     //如果开启发送中断，发送完毕后会触发中断
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
//  526  * CAN 处理接收函数，此函数一般在CAN中断函数中调用
//  527  * 参数:
//  528  *    CAN_MSGOBJ_InitTypeDef--can_msg_init_structure
//  529  *                            具体定义见HW_CAN.h CAN_MSGOBJ_InitTypeDef
//  530  *    CAN_MessageFormat_TypeDef--*can_rx_msg
//  531  *                            具体定义见HW_CAN.h CAN_MessageFormat_TypeDef
//  532  *    该结构体用于定义CAN的消息格式，当CAN成功接收消息以后，会从MSG中将信息存储到
//  533  *    CAN_MessageFormat_TypeDef定义的结构体对象中。
//  534  *    该结构体中的主要变量为 消息ID、时间戳、数据长度、存储数据的缓冲区
//  535  *    
//  536  *  输出：
//  537  *    无
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
//  550   //获得Msg缓冲区中的code值
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
//  556     //读取ID(可选)
//  557     msg_id = LPLD_CAN_GetMsgID(canx, msg_num);
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_GetMsgID
        MOV      R8,R0
//  558    
//  559     //读取Msg缓冲区接收数据的长度
//  560     data_length    = (uint8_t)LPLD_CAN_GetMsgLength(canx, msg_num);
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_GetMsgLength
        MOVS     R6,R0
//  561     //读取Msg缓冲区接收数据
//  562     LPLD_CAN_GetData(canx, msg_num,data_length,rx_data);
        ADD      R3,SP,#+4
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_GetData
//  563     //获得Msg缓冲区时间戳
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
//  570     //将MSG中的消息存储到can_rx_msg中
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
//  576     //读取自由计数器，解锁当前Msg缓冲区
//  577     timer = LPLD_CAN_UnlockMsg(canx);
        MOV      R0,R9
        BL       LPLD_CAN_UnlockMsg
        STRH     R0,[SP, #+0]
//  578     //清空Msg缓冲区的中断标志位
//  579     LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_Interrupt_ClearPending
//  580     //再次写邮箱的code为empty状态
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
//  585     //接收邮箱溢出
//  586     LPLD_CAN_Interrupt_ClearPending(canx,msg_num);
??LPLD_CAN_ReceivedMessage_0:
        MOV      R1,R10
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOV      R0,R9
        BL       LPLD_CAN_Interrupt_ClearPending
//  587     //读取自由计数器，解锁当前Msg缓冲区
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
//  594  * 清除Msg的中断标志位
//  595  * 参数:
//  596  *    CAN_Type *canx
//  597  *      |___ CAN0 --CAN0号模块
//  598  *      |___ CAN1 --CAN1号模块
//  599  *    msg_num 选择要清除中断标志的Msg缓冲区
//  600  *      |___ MSG_NUM_0 --Msg缓冲区0
//  601  *      |___ MSG_NUM_1 --Msg缓冲区1
//  602  *      |___ MSG_NUM_2 --Msg缓冲区2
//  603  *      |___ MSG_NUM_3 --Msg缓冲区3
//  604  *      |___ MSG_NUM_4 --Msg缓冲区4
//  605  *      ...... 
//  606  *      |___ MSG_NUM_15 --Msg缓冲区15
//  607  * 输出:
//  608  *   无
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
//  624  * 获得CAN 的中断标志位
//  625  * 参数:
//  626  *    CAN_Type *canx
//  627  *      |___ CAN0 --CAN0号模块
//  628  *      |___ CAN1 --CAN1号模块
//  629  *    msg_num 选择要获得中断标志的Msg缓冲区
//  630  *      |___ MSG_NUM_0 --Msg缓冲区0
//  631  *      |___ MSG_NUM_1 --Msg缓冲区1
//  632  *      |___ MSG_NUM_2 --Msg缓冲区2
//  633  *      |___ MSG_NUM_3 --Msg缓冲区3
//  634  *      |___ MSG_NUM_4 --Msg缓冲区4
//  635  *      ...... 
//  636  *      |___ MSG_NUM_15 --Msg缓冲区15
//  637  * 输出:
//  638  *    返回需要 Msg缓冲区的中断标志位
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
//  656  * 该函数通过读取自由计数器，解锁Msg
//  657  * 参数:
//  658  *    canx--设置CAN总线通道
//  659  *      |__CAN0 --CAN0号模块
//  660  *      |__CAN1 --CAN1号模块
//  661  * 输出:
//  662  *    16位CAN自由计数器记录的时间戳
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
//  671  * 该函数用于使能Msg中断
//  672  * 
//  673  * 参数:
//  674  *    canx--设置CAN总线通道
//  675  *      |__CAN0 --CAN0号模块
//  676  *      |__CAN1 --CAN1号模块
//  677  *    msg_num 选择需要使能中断的Msg缓冲区
//  678  *      |___ MSG_NUM_0 --Msg缓冲区0
//  679  *      |___ MSG_NUM_1 --Msg缓冲区1
//  680  *      |___ MSG_NUM_2 --Msg缓冲区2
//  681  *      |___ MSG_NUM_3 --Msg缓冲区3
//  682  *      |___ MSG_NUM_4 --Msg缓冲区4
//  683  *      ...... 
//  684  *      |___ MSG_NUM_15 --Msg缓冲区15
//  685  * 输出:
//  686  *    无
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
//  703  * 该函数用于设置Msg的code值
//  704  * 
//  705  * 参数:
//  706  *    canx--设置CAN总线通道
//  707  *      |__CAN0 --CAN0号模块
//  708  *      |__CAN1 --CAN1号模块
//  709  *    msg_num 选择需要设置CODE的Msg缓冲区
//  710  *      |___ MSG_NUM_0 --Msg缓冲区0
//  711  *      |___ MSG_NUM_1 --Msg缓冲区1
//  712  *      |___ MSG_NUM_2 --Msg缓冲区2
//  713  *      |___ MSG_NUM_3 --Msg缓冲区3
//  714  *      |___ MSG_NUM_4 --Msg缓冲区4
//  715  *      ...... 
//  716  *      |___ MSG_NUM_15 --Msg缓冲区15
//  717  *    code--需要设置的code值
//  718  * 输出:
//  719  *    无
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
//  730  * 该函数用于获得Msg缓冲区的code值
//  731  * 
//  732  * 参数:
//  733  *    canx--设置CAN总线通道
//  734  *      |__CAN0 --CAN0号模块
//  735  *      |__CAN1 --CAN1号模块
//  736  *    msg_num 选择需要获得CODE的Msg缓冲区
//  737  *      |___ MSG_NUM_0 --Msg缓冲区0
//  738  *      |___ MSG_NUM_1 --Msg缓冲区1
//  739  *      |___ MSG_NUM_2 --Msg缓冲区2
//  740  *      |___ MSG_NUM_3 --Msg缓冲区3
//  741  *      |___ MSG_NUM_4 --Msg缓冲区4
//  742  *      ...... 
//  743  *      |___ MSG_NUM_15 --Msg缓冲区15
//  744  * 输出:
//  745  *     返回相应Msg缓冲区的code
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
//  754  * 该函数用于获得Msg缓冲区的时间戳
//  755  * 
//  756  * 参数:
//  757  *    canx--设置CAN总线通道
//  758  *      |__CAN0 --CAN0号模块
//  759  *      |__CAN1 --CAN1号模块
//  760  *    msg_num 选择需要获得时间戳的Msg缓冲区
//  761  *      |___ MSG_NUM_0 --Msg缓冲区0
//  762  *      |___ MSG_NUM_1 --Msg缓冲区1
//  763  *      |___ MSG_NUM_2 --Msg缓冲区2
//  764  *      |___ MSG_NUM_3 --Msg缓冲区3
//  765  *      |___ MSG_NUM_4 --Msg缓冲区4
//  766  *      ...... 
//  767  *      |___ MSG_NUM_15 --Msg缓冲区15
//  768  * 输出:
//  769  *     返回相应Msg缓冲区的时间戳
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
//  778  * 该函数用于获得Msg缓冲区的ID值
//  779  * 
//  780  * 参数:
//  781  *    canx--设置CAN总线通道
//  782  *      |__CAN0 --CAN0号模块
//  783  *      |__CAN1 --CAN1号模块
//  784  *    msg_num 选择需要获得ID的Msg缓冲区
//  785  *      |___ MSG_NUM_0 --Msg缓冲区0
//  786  *      |___ MSG_NUM_1 --Msg缓冲区1
//  787  *      |___ MSG_NUM_2 --Msg缓冲区2
//  788  *      |___ MSG_NUM_3 --Msg缓冲区3
//  789  *      |___ MSG_NUM_4 --Msg缓冲区4
//  790  *      ...... 
//  791  *      |___ MSG_NUM_15 --Msg缓冲区15
//  792  * 输出:
//  793  *     返回相应Msg缓冲区的ID
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
//  811  * 该函数用于获得Msg缓冲区的数据长度
//  812  * 
//  813  * 参数:
//  814  *    canx--设置CAN总线通道
//  815  *      |__CAN0 --CAN0号模块
//  816  *      |__CAN1 --CAN1号模块
//  817  *    msg_num 选择需要获得数据长度的Msg缓冲区
//  818  *      |___ MSG_NUM_0 --Msg缓冲区0
//  819  *      |___ MSG_NUM_1 --Msg缓冲区1
//  820  *      |___ MSG_NUM_2 --Msg缓冲区2
//  821  *      |___ MSG_NUM_3 --Msg缓冲区3
//  822  *      |___ MSG_NUM_4 --Msg缓冲区4
//  823  *      ...... 
//  824  *      |___ MSG_NUM_15 --Msg缓冲区15
//  825  * 输出:
//  826  *     数据的长度
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
//  836  * 该函数用于获得Msg缓冲区中的数据
//  837  * 
//  838  * 参数:
//  839  *    canx--设置CAN总线通道
//  840  *      |__CAN0 --CAN0号模块
//  841  *      |__CAN1 --CAN1号模块
//  842  *    msg_num 选择需要获得数据的Msg缓冲区
//  843  *      |___ MSG_NUM_0 --Msg缓冲区0
//  844  *      |___ MSG_NUM_1 --Msg缓冲区1
//  845  *      |___ MSG_NUM_2 --Msg缓冲区2
//  846  *      |___ MSG_NUM_3 --Msg缓冲区3
//  847  *      |___ MSG_NUM_4 --Msg缓冲区4
//  848  *      ...... 
//  849  *      |___ MSG_NUM_15 --Msg缓冲区15
//  850  *    in_length
//  851  *      |__获得数据长度
//  852  *    *in_buffer
//  853  *      |__获得数据的缓冲区
//  854  * 输出:
//  855  *    无 
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
//  890  * 该函数用于向Msg缓冲区中的写数据
//  891  * 
//  892  * 参数:
//  893  *    canx--设置CAN总线通道
//  894  *      |__CAN0 --CAN0号模块
//  895  *      |__CAN1 --CAN1号模块
//  896  *    msg_num 选择需要写数据的Msg缓冲区
//  897  *      |___ MSG_NUM_0 --Msg缓冲区0
//  898  *      |___ MSG_NUM_1 --Msg缓冲区1
//  899  *      |___ MSG_NUM_2 --Msg缓冲区2
//  900  *      |___ MSG_NUM_3 --Msg缓冲区3
//  901  *      |___ MSG_NUM_4 --Msg缓冲区4
//  902  *      ...... 
//  903  *      |___ MSG_NUM_15 --Msg缓冲区15
//  904  *    in_length
//  905  *      |__写入数据长度
//  906  *    *in_buffer
//  907  *      |__写入数据的缓冲区
//  908  * 输出:
//  909  *    无 
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
//  919   uint8  word_num   = (in_length - 1)/ 4; //获得 Msg 的Word 值
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        SUBS     R5,R2,#+1
        MOVS     R6,#+4
        SDIV     R5,R5,R6
//  920   uint8  rest_bytes = (in_length - 1)% 4; //获得剩余字节的值
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
//  951  * 该函数用于处理Msg缓冲区发送中断函数
//  952  * 
//  953  * 参数:
//  954  *    canx--设置CAN总线通道
//  955  *      |__CAN0 --CAN0号模块
//  956  *      |__CAN1 --CAN1号模块
//  957  *    msg_num 选择需要处理发送中断的Msg缓冲区
//  958  *      |___ MSG_NUM_0 --Msg缓冲区0
//  959  *      |___ MSG_NUM_1 --Msg缓冲区1
//  960  *      |___ MSG_NUM_2 --Msg缓冲区2
//  961  *      |___ MSG_NUM_3 --Msg缓冲区3
//  962  *      |___ MSG_NUM_4 --Msg缓冲区4
//  963  *      ...... 
//  964  *      |___ MSG_NUM_15 --Msg缓冲区15
//  965  * 输出:
//  966  *    无 
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
//  996  * 该函数用于处理Msg缓冲区接收中断函数
//  997  * 
//  998  * 参数:
//  999  *    canx--设置CAN总线通道
// 1000  *      |__CAN0 --CAN0号模块
// 1001  *      |__CAN1 --CAN1号模块
// 1002  *    msg_num 选择需要处理接收中断的Msg缓冲区
// 1003  *      |___ MSG_NUM_0 --Msg缓冲区0
// 1004  *      |___ MSG_NUM_1 --Msg缓冲区1
// 1005  *      |___ MSG_NUM_2 --Msg缓冲区2
// 1006  *      |___ MSG_NUM_3 --Msg缓冲区3
// 1007  *      |___ MSG_NUM_4 --Msg缓冲区4
// 1008  *      ...... 
// 1009  *      |___ MSG_NUM_15 --Msg缓冲区15
// 1010  * 输出:
// 1011  *    无 
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
// 1017     //如果定义了中断回掉函数，在此执行
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
// 1041  * CANx中断处理函数
// 1042  * 
// 1043  * 参数:
// 1044  *    无
// 1045  * 输出:
// 1046  *    无 
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
// 1070  * CAN0中断处理函数
// 1071  * 与启动文件startup_K60.s中的中断向量表关联
// 1072  * 用户无需修改，程序自动进入对应通道中断函数
// 1073  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1074 void CAN0_MESS_IRQHandler(void)
// 1075 {
CAN0_MESS_IRQHandler:
        PUSH     {R7,LR}
// 1076 #if (UCOS_II > 0u)
// 1077   OS_CPU_SR  cpu_sr = 0u;
// 1078   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1079   OSIntEnter();
// 1080   OS_EXIT_CRITICAL();
// 1081 #endif
// 1082   LPLD_CAN_MB_ISR();
        BL       LPLD_CAN_MB_ISR
// 1083 #if (UCOS_II > 0u)
// 1084   OSIntExit();          //告知系统此时即将离开中断服务子函数
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
// 1117  * CAN1中断处理函数
// 1118  * 与启动文件startup_K60.s中的中断向量表关联
// 1119  * 用户无需修改，程序自动进入对应通道中断函数
// 1120  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1121 void CAN1_MESS_IRQHandler(void)
// 1122 {
CAN1_MESS_IRQHandler:
        PUSH     {R7,LR}
// 1123 #if (UCOS_II > 0u)
// 1124   OS_CPU_SR  cpu_sr = 0u;
// 1125   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1126   OSIntEnter();
// 1127   OS_EXIT_CRITICAL();
// 1128 #endif
// 1129   LPLD_CAN_MB_ISR();
        BL       LPLD_CAN_MB_ISR
// 1130 #if (UCOS_II > 0u)
// 1131   OSIntExit();          //告知系统此时即将离开中断服务子函数
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
