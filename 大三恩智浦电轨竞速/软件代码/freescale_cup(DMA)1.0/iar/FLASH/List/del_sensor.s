///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       02/Jan/2016  16:00:25
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\SENSOR\del_sensor.c
//    Command line =  
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\SENSOR\del_sensor.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -lB
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\"
//        -o
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "D:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\sensor\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "D:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\FLASH\List\del_sensor.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC line

// G:\¿ìÅÌÍøÂç³·Àë\whutddk\·ÉË¼¿¨¶û\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\SENSOR\del_sensor.c
//    1 #include "include.h"
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    4 struct _line line;
line:
        DS8 48

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
// 48 bytes in section .bss
// 
// 48 bytes of DATA memory
//
//Errors: none
//Warnings: none
