///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:03:00
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\CPU\system_MK60DZ10.c
//    Command line =  
//        C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\CPU\system_MK60DZ10.c
//        -D LPLD_K60 -lCN
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
//        ��������� 1��\iar\FLASH\List\system_MK60DZ10.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_PLL_Setup
        EXTERN LPLD_UART_Init
        EXTERN __aeabi_memcpy4
        EXTERN common_relocate
        EXTERN g_bus_clock
        EXTERN g_core_clock
        EXTERN g_flash_clock
        EXTERN g_flexbus_clock
        EXTERN printf

        PUBLIC DefaultISR
        PUBLIC HardFault_Handler
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit

// C:\�ٶ���ͬ����\��������\LPLD_OSKinetis_V3\lib\CPU\system_MK60DZ10.c
//    1 /**
//    2  * @file system_MK60DZ10.c
//    3  * @version 1.2.1[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MK60DZ10ϵ�е�Ƭ��ϵͳ�����ļ�
//    6  *
//    7  * ���Ľ���:��ֹ�޸�
//    8  *
//    9  * �ô����ṩϵͳ���ú����Լ�һ������ϵͳ��Ƶ��ȫ�ֱ�����
//   10  * ���ú�����Ҫ������ϵͳ��ģ���ʱ�ӡ�
//   11  * ���뻹ʵ�ֳ�����ϵͳ�жϺ�����
//   12  *
//   13  * ��Ȩ����:�����������µ��Ӽ������޹�˾
//   14  * http://www.lpld.cn
//   15  * mail:support@lpld.cn
//   16  *
//   17  * @par
//   18  * ����������������[LPLD]������ά������������ʹ���߿���Դ���롣
//   19  * �����߿���������ʹ�û��Դ���롣�����μ�����ע��Ӧ���Ա�����
//   20  * ���ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߡ�
//   21  * ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
//   22  * �������²���������ʹ�ñ��������������κ��¹ʡ��������λ���ز���Ӱ�졣
//   23  * ����������������͡�˵��������ľ���ԭ�����ܡ�ʵ�ַ�����
//   24  * ������������[LPLD]��Ȩ�������߲��ý�������������ҵ��Ʒ��
//   25  */
//   26 
//   27 #include <stdint.h>
//   28 #include "common.h"
//   29 
//   30 #define DISABLE_WDOG    1
//   31 
//   32 /*----------------------------------------------------------------------------
//   33   ����ʱ�����ֵ
//   34  *----------------------------------------------------------------------------*/
//   35 #define CPU_XTAL_CLK_HZ                 50000000u       //�ⲿ��Դ����Ƶ�ʣ���λHz
//   36 #define CPU_XTAL32k_CLK_HZ              32768u          //�ⲿ32kʱ�Ӿ���Ƶ�ʣ���λHz    
//   37 #define CPU_INT_SLOW_CLK_HZ             32768u          //�����ڲ�������ֵ����λHz
//   38 #define CPU_INT_FAST_CLK_HZ             4000000u        //�����ڲ�������ֵ����λHz
//   39 #define DEFAULT_SYSTEM_CLOCK            100000000u      //Ĭ��ϵͳ��Ƶ����λHz
//   40 
//   41 /**
//   42  * @brief ϵͳ��Ƶ����λHz��
//   43  */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   44 uint32_t SystemCoreClock = DEFAULT_SYSTEM_CLOCK;
SystemCoreClock:
        DATA
        DC32 100000000
//   45 
//   46 /**
//   47  * ��ʼ��ϵͳ
//   48  *
//   49  * @param  none
//   50  * @return none
//   51  *
//   52  * @brief  ��ʼ��MCUӲ��ϵͳ����������IOʱ�ӡ���ʼ����Ƶ����ʼ�����Դ��ڣ�
//   53  *         ��ӡ������Ϣ��SystemInit��MCU�����ļ����á�
//   54  *         
//   55  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 void SystemInit (void) {
SystemInit:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   57   UART_InitTypeDef term_port_structure;
//   58   //ʹ��ȫ��IOʱ��
//   59   SIM->SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   60               | SIM_SCGC5_PORTB_MASK
//   61               | SIM_SCGC5_PORTC_MASK
//   62               | SIM_SCGC5_PORTD_MASK
//   63               | SIM_SCGC5_PORTE_MASK );
        LDR.N    R0,??DataTable3_1  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.N    R1,??DataTable3_1  ;; 0x40048038
        STR      R0,[R1, #+0]
//   64 #if (DISABLE_WDOG)
//   65   //���ÿ��Ź�ģ��
//   66   /* WDOG_UNLOCK: WDOGUNLOCK=0xC520 */
//   67   WDOG->UNLOCK = (uint16_t)0xC520u;     /* Key 1 */
        MOVW     R0,#+50464
        LDR.N    R1,??DataTable3_2  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   68   /* WDOG_UNLOCK : WDOGUNLOCK=0xD928 */
//   69   WDOG->UNLOCK  = (uint16_t)0xD928u;    /* Key 2 */
        MOVW     R0,#+55592
        LDR.N    R1,??DataTable3_2  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   70   /* WDOG_STCTRLH: ??=0,DISTESTWDOG=0,BYTESEL=0,TESTSEL=0,TESTWDOG=0,??=0,STNDBYEN=1,WAITEN=1,STOPEN=1,DBGEN=0,ALLOWUPDATE=1,WINEN=0,IRQRSTEN=0,CLKSRC=1,WDOGEN=0 */
//   71   WDOG->STCTRLH = (uint16_t)0x01D2u;
        MOV      R0,#+466
        LDR.N    R1,??DataTable3_3  ;; 0x40052000
        STRH     R0,[R1, #+0]
//   72 #endif /* (DISABLE_WDOG) */
//   73   
//   74   //���ж�����������RAM�����еĺ��������ݿ�����RAM��
//   75   common_relocate();
        BL       common_relocate
//   76   
//   77   //��ʼ��������ʱ�ӣ�ϵͳ�ں���Ƶ������ʱ�ӡ�FlexBusʱ�ӡ�Flashʱ��
//   78   LPLD_PLL_Setup(CORE_CLK_MHZ);
        MOVS     R0,#+100
        BL       LPLD_PLL_Setup
//   79   
//   80   //�����ں���Ƶ
//   81   SystemCoreClockUpdate();
        BL       SystemCoreClockUpdate
//   82   
//   83   //��ȡ������ʱ��
//   84   g_core_clock = SystemCoreClock;
        LDR.N    R0,??DataTable3_4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_5
        STR      R0,[R1, #+0]
//   85   g_bus_clock = g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> SIM_CLKDIV1_OUTDIV2_SHIFT)+ 1u);
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_6  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable3_7
        STR      R0,[R1, #+0]
//   86   g_flexbus_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV3_MASK) >> SIM_CLKDIV1_OUTDIV3_SHIFT)+ 1u);
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_6  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+20,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//   87   g_flash_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> SIM_CLKDIV1_OUTDIV4_SHIFT)+ 1u);
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_6  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+16,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//   88   
//   89   //��ʼ�����ڴ�ӡ������Ϣ�Ĵ���ģ��
//   90   //TERM_PORTΪUARTͨ������k60_card.h�ж���
//   91   //TERMINAL_BAUDΪUART�����ʣ���k60_card.h�ж���
//   92   term_port_structure.UART_Uartx = TERM_PORT;
        LDR.N    R0,??DataTable3_10  ;; 0x400eb000
        STR      R0,[SP, #+4]
//   93   term_port_structure.UART_BaudRate = TERMINAL_BAUD;
        MOVS     R0,#+115200
        STR      R0,[SP, #+8]
//   94   LPLD_UART_Init(term_port_structure);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_UART_Init
//   95   
//   96   //��ӡϵͳ������Ϣ
//   97 #ifdef DEBUG_PRINT     
//   98   printf("\r\n");   
        ADR.N    R0,??DataTable3  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       printf
//   99   printf("*********** ������������K60�ײ�� http://www.lpld.cn ***********\r\n");
        LDR.N    R0,??DataTable3_11
        BL       printf
//  100   printf("OSKinetis�̼���汾:%s\tmail:support@lpld.cn\r\n", OSKinetis_Version);
        LDR.N    R1,??DataTable3_12
        LDR.N    R0,??DataTable3_13
        BL       printf
//  101   printf("ϵͳ�ں�ʱ��:%dMHz\t����ʱ��:%dMHz\r\n", g_core_clock/1000000u, g_bus_clock/1000000u);
        LDR.N    R0,??DataTable3_7
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_14  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_14  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.N    R0,??DataTable3_15
        BL       printf
//  102   printf("FlexBusʱ��:%dMHz\tFlashʱ��:%dMHz\r\n", g_flexbus_clock/1000000u, g_flash_clock/1000000u);
        LDR.N    R0,??DataTable3_9
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_14  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR.N    R0,??DataTable3_8
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable3_14  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.N    R0,??DataTable3_16
        BL       printf
//  103   printf("ϵͳ������ϣ���Ҫ���õ�������붨��PRINT_ON_OFFΪ1(k60_card.h)\r\n");
        LDR.N    R0,??DataTable3_17
        BL       printf
//  104   printf("********************************************************************\r\n");
        LDR.N    R0,??DataTable3_18
        BL       printf
//  105 #endif
//  106   
//  107 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  108 
//  109 /**
//  110  * ����SystemCoreClock
//  111  *
//  112  * @param  none
//  113  * @return none
//  114  *
//  115  * @brief  ����ȫ�ֱ���SystemCoreClock��ֵ���Ա��ȡ���µ�ϵͳ�ں�Ƶ�ʡ�
//  116  *         
//  117  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void SystemCoreClockUpdate (void) {
//  119   uint32_t temp;
//  120   temp =  CPU_XTAL_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
SystemCoreClockUpdate:
        LDR.N    R1,??DataTable3_19  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1F
        ADDS     R1,R1,#+24
        LDR.N    R2,??DataTable3_20  ;; 0x2faf080
        MULS     R1,R2,R1
        MOVS     R0,R1
//  121   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
        LDR.N    R1,??DataTable3_21  ;; 0x40064004
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1F
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
//  122   SystemCoreClock = temp;
        LDR.N    R1,??DataTable3_4
        STR      R0,[R1, #+0]
//  123 }
        BX       LR               ;; return
//  124 
//  125 /**
//  126  * Ӳ�������жϺ���
//  127  *
//  128  * @param  none
//  129  * @return none
//  130  *
//  131  * @brief  �������жϵ�ԭ��һ��Ϊ��ģ��ʹ��δ��ʼ���������Ѱַ�ռ�ȡ�
//  132  *         
//  133  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 void HardFault_Handler(void)
//  135 {
HardFault_Handler:
        PUSH     {R7,LR}
//  136 #ifdef DEBUG_PRINT 
//  137    printf("\r\n****�ں˷���Ӳ������*****\r\n");
        LDR.N    R0,??DataTable3_22
        BL       printf
//  138 #endif
//  139    return;
        POP      {R0,PC}          ;; return
//  140 }
//  141 
//  142 /**
//  143  * Ĭ���жϺ���
//  144  *
//  145  * @param  none
//  146  * @return none
//  147  *
//  148  * @brief  δ�����жϴ��������ж�Դ�����˺���������ӡ�ж������š�
//  149  *         
//  150  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  151 void DefaultISR(void)
//  152 {
DefaultISR:
        PUSH     {R7,LR}
//  153    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04)) 
//  154 #ifdef DEBUG_PRINT 
//  155    printf("\r\n****����δ�����ж�,Interrupt Number %d*****\r\n",VECTORNUM-16);
        LDR.N    R0,??DataTable3_23  ;; 0xe000ed04
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        SUBS     R1,R0,#+16
        LDR.N    R0,??DataTable3_24
        BL       printf
//  156 #endif
//  157    return;
        POP      {R0,PC}          ;; return
//  158 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      0x0D, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x4005200e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x40052000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     g_flexbus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     g_flash_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     ?_7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     0x2faf080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     ?_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     ?_9

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 20H, 0BBH, 0F9H, 0D3H, 0DAH
        DC8 0C0H, 0ADH, 0C6H, 0D5H, 0C0H, 0BCH, 0B5H, 0C2H
        DC8 4BH, 36H, 30H, 0B5H, 0D7H, 0B2H, 0E3H, 0BFH
        DC8 0E2H, 20H, 68H, 74H, 74H, 70H, 3AH, 2FH
        DC8 2FH, 77H, 77H, 77H, 2EH, 6CH, 70H, 6CH
        DC8 64H, 2EH, 63H, 6EH, 20H, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC8 "OSKinetis\271\314\274\376\277\342\260\346\261\276:%s\tmail:support@lpld.cn\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "3.03"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "\317\265\315\263\304\332\272\313\312\261\326\323:%dMHz\t\327\334\317\337\312\261\326\323:%dMHz\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_5:
        DATA
        DC8 "FlexBus\312\261\326\323:%dMHz\tFlash\312\261\326\323:%dMHz\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_6:
        DATA
        DC8 0CFH, 0B5H, 0CDH, 0B3H, 0C6H, 0F4H, 0B6H, 0AFH
        DC8 0CDH, 0EAH, 0B1H, 0CFH, 0A3H, 0ACH, 0C8H, 0F4H
        DC8 0D2H, 0AAH, 0BDH, 0FBH, 0D3H, 0C3H, 0B5H, 0F7H
        DC8 0CAH, 0D4H, 0CAH, 0E4H, 0B3H, 0F6H, 0C7H, 0EBH
        DC8 0B6H, 0A8H, 0D2H, 0E5H, 50H, 52H, 49H, 4EH
        DC8 54H, 5FH, 4FH, 4EH, 5FH, 4FH, 46H, 46H
        DC8 0CEH, 0AAH, 31H, 28H, 6BH, 36H, 30H, 5FH
        DC8 63H, 61H, 72H, 64H, 2EH, 68H, 29H, 0DH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_7:
        DATA
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_8:
        DATA
        DC8 "\015\012****\304\332\272\313\267\242\311\372\323\262\274\376\264\355\316\363*****\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_9:
        DATA
        DC8 "\015\012****\275\370\310\353\316\264\266\250\322\345\326\320\266\317,Interrupt Number %d*****\015\012"

        END
//  159 
//  160 /**
//  161  * ��ʼ������ϵͳ�ĵδ�ʱ��(OS Tick)
//  162  *
//  163  * @param  none
//  164  * @return none
//  165  *
//  166  * @brief  �ú�������uC/OS��ϵͳ�е��ã��б�����OSStart()�ʹ�������ʼ�������
//  167  *         
//  168  */
//  169 #if UCOS_II > 0u
//  170 void SystemTickInit (void)
//  171 {
//  172   uint32  cpu_clk_freq;
//  173   uint32  cnts;
//  174 
//  175   cpu_clk_freq = g_core_clock;  //��ȡSysTickʱ��
//  176 
//  177 #if (OS_VERSION >= 30000u)
//  178   cnts  = cpu_clk_freq / (uint32)OSCfg_TickRate_Hz;    
//  179 #else
//  180   cnts  = cpu_clk_freq / (uint32)OS_TICKS_PER_SEC;        
//  181 #endif
//  182 
//  183   OS_CPU_SysTickInit(cnts);     //��ʼ��uCOS�δ�ʱ��SysTick
//  184 }
//  185 #endif
//  186 
// 
//   4 bytes in section .data
// 420 bytes in section .rodata
// 414 bytes in section .text
// 
// 414 bytes of CODE  memory
// 420 bytes of CONST memory
//   4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
