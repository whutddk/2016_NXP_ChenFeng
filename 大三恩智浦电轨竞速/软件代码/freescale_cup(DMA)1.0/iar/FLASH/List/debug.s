///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       02/Jan/2016  16:00:25
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\debug.c
//    Command line =  
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\debug.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -lB
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -o
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\sensor\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\debug.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_FTM_PWM_ChangeDuty
        EXTERN LPLD_PIT_Deinit
        EXTERN LPLD_PIT_EnableIrq
        EXTERN LPLD_PIT_Init
        EXTERN __aeabi_memcpy4

        PUBLIC debug_end
        PUBLIC debugpit_init_struct
        PUBLIC dec_sec
        PUBLIC flag_stop
        PUBLIC safty_check
        PUBLIC timer_debug

// G:\�������糷��\whutddk\��˼����\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\CTL\debug.c
//    1 //�������Դ���
//    2 #include "include.h"
//    3 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//    4 uint8 dec_sec = 1; //��ʱ�ܵ�ʱ��
dec_sec:
        DATA
        DC8 1
//    5 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    6 PIT_InitTypeDef debugpit_init_struct;
debugpit_init_struct:
        DS8 20
//    7 
//    8 //��ʱʱ�䵽��ͣ��

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    9 void debug_end()
//   10 {
debug_end:
        PUSH     {R7,LR}
//   11   flag_stop = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+0]
//   12   LPLD_PIT_Deinit( debugpit_init_struct );
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Deinit
//   13 }
        POP      {R0,PC}          ;; return
//   14 
//   15 //�趨��ʱʱ��

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   16 void timer_debug()
//   17 {
timer_debug:
        PUSH     {R7,LR}
//   18   debugpit_init_struct.PIT_Pitx = PIT3;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable2_1
        STRB     R0,[R1, #+0]
//   19   debugpit_init_struct.PIT_PeriodS = dec_sec;
        LDR.N    R0,??DataTable2_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+12]
//   20   debugpit_init_struct.PIT_PeriodMs = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+8]
//   21   debugpit_init_struct.PIT_PeriodUs = 0;     
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+4]
//   22   debugpit_init_struct.PIT_Isr = debug_end;  
        LDR.N    R0,??DataTable2_3
        LDR.N    R1,??DataTable2_1
        STR      R0,[R1, #+16]
//   23  
//   24   LPLD_PIT_Init(debugpit_init_struct);  //��ʼ��PIT0
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_Init
//   25   
//   26   LPLD_PIT_EnableIrq(debugpit_init_struct);
        LDR.N    R1,??DataTable2_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_PIT_EnableIrq
//   27 
//   28   flag_stop = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2
        STRB     R0,[R1, #+0]
//   29 }
        POP      {R0,PC}          ;; return
//   30 
//   31 //��ȫ���� ��֤������ȫ
//   32 

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   33 uint8 flag_stop = 1; //��ͣ��־λ
flag_stop:
        DATA
        DC8 1
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void safty_check() //��ȫ���
//   36 {
safty_check:
        PUSH     {R7,LR}
//   37   if ( flag_stop == 1 )
        LDR.N    R0,??DataTable2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??safty_check_0
//   38   {
//   39     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch0, 0);
        MOVS     R2,#+0
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   40     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch1, 0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   41     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch2, 0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   42     LPLD_FTM_PWM_ChangeDuty(FTM0, FTM_Ch3, 0);  
        MOVS     R2,#+0
        MOVS     R1,#+3
        LDR.N    R0,??DataTable2_4  ;; 0x40038000
        BL       LPLD_FTM_PWM_ChangeDuty
//   43     
//   44     LPLD_FTM_PWM_ChangeDuty(FTM1, FTM_Ch0, 1520 );
        MOV      R2,#+1520
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2_5  ;; 0x40039000
        BL       LPLD_FTM_PWM_ChangeDuty
//   45   }
//   46 }
??safty_check_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     flag_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     debugpit_init_struct

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     dec_sec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     debug_end

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40039000

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
//  20 bytes in section .bss
//   2 bytes in section .data
// 194 bytes in section .text
// 
// 194 bytes of CODE memory
//  22 bytes of DATA memory
//
//Errors: none
//Warnings: none
