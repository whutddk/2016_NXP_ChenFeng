///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Mar/2016  20:36:51
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\common\uif.c
//    Command line =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\common\uif.c -D LPLD_K60 -D
//        USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\app\SENSOR\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\uif.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN UIF_CMDTAB
        EXTERN UIF_NUM_CMD
        EXTERN UIF_NUM_SETCMD
        EXTERN UIF_SETCMDTAB
        EXTERN in_char
        EXTERN out_char
        EXTERN printf
        EXTERN strcasecmp
        EXTERN strcpy
        EXTERN strtoul

        PUBLIC HELPMSG
        PUBLIC INVALUE
        PUBLIC INVARG
        PUBLIC get_line
        PUBLIC get_value
        PUBLIC make_argv
        PUBLIC run_cmd
        PUBLIC uif_cmd_help
        PUBLIC uif_cmd_set
        PUBLIC uif_cmd_show


        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 "Valid 'set' options:\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%s\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "Error: Invalid argument list\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\012\012"
        DC8 0
// D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\common\uif.c
//    1 /**
//    2  * @file uif.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief 提供简单的交互接口
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * The commands, set/show parameters, and prompt are configured 
//   10  * at the project level
//   11  *
//   12  * 版权所有:北京拉普兰德电子技术有限公司
//   13  * http://www.lpld.cn
//   14  * mail:support@lpld.cn
//   15  *
//   16  * @par
//   17  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   18  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   19  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   20  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   21  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   22  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   23  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   24  */
//   25 
//   26 #include "common.h"
//   27 #include "uif.h"
//   28 
//   29 /********************************************************************/
//   30 /*
//   31  * Global messages -- constant strings
//   32  */

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   33 const int8 HELPMSG[] =
HELPMSG:
        DATA
        DC8 "Enter 'help' for help.\012"
//   34     "Enter 'help' for help.\n";
//   35 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   36 const int8 INVARG[] =
INVARG:
        DATA
        DC8 "Error: Invalid argument: %s\012"
        DC8 0, 0, 0
//   37     "Error: Invalid argument: %s\n";
//   38 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   39 const int8 INVALUE[] = 
INVALUE:
        DATA
        DC8 "Error: Invalid value: %s\012"
        DC8 0, 0
//   40     "Error: Invalid value: %s\n";
//   41 
//   42 /*
//   43  * Strings used by this file only
//   44  */

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   45 static const int8 INVCMD[] =
INVCMD:
        DATA
        DC8 "Error: No such command: %s\012"
//   46     "Error: No such command: %s\n";
//   47 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   48 static const int8 HELPFORMAT[] = 
HELPFORMAT:
        DATA
        DC8 "%8s  %-25s %s %s\012"
        DC8 0, 0
//   49     "%8s  %-25s %s %s\n";
//   50 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   51 static const int8 SYNTAX[] = 
SYNTAX:
        DATA
        DC8 "Error: Invalid syntax for: %s\012"
        DC8 0
//   52     "Error: Invalid syntax for: %s\n";
//   53 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   54 static const int8 INVOPT[] = 
INVOPT:
        DATA
        DC8 "Error:  Invalid set/show option: %s\012"
        DC8 0, 0, 0
//   55     "Error:  Invalid set/show option: %s\n";
//   56 

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
//   57 static const int8 OPTFMT[] = 
OPTFMT:
        DATA
        DC8 "%12s: "
        DC8 0
//   58     "%12s: ";
//   59 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   60 static int8 cmdline1 [UIF_MAX_LINE];
cmdline1:
        DS8 80

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   61 static int8 cmdline2 [UIF_MAX_LINE];
cmdline2:
        DS8 80
//   62 
//   63 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   64 int8 *get_line (int8 *line)
//   65 {
get_line:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   66     int32 pos;
//   67     int32 ch;
//   68 
//   69     pos = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//   70     ch = (int32)in_char();
        BL       in_char
        MOVS     R6,R0
//   71     while ( (ch != 0x0D /* CR */) &&
//   72             (ch != 0x0A /* LF/NL */) &&
//   73             (pos < UIF_MAX_LINE))
??get_line_0:
        CMP      R6,#+13
        BEQ.N    ??get_line_1
        CMP      R6,#+10
        BEQ.N    ??get_line_1
        CMP      R5,#+80
        BGE.N    ??get_line_1
//   74     {
//   75         switch (ch)
        MOVS     R0,R6
        CMP      R0,#+8
        BEQ.N    ??get_line_2
        CMP      R0,#+127
        BNE.N    ??get_line_3
//   76         {
//   77             case 0x08:      /* Backspace */
//   78             case 0x7F:      /* Delete */
//   79                 if (pos > 0)
??get_line_2:
        CMP      R5,#+1
        BLT.N    ??get_line_4
//   80                 {
//   81                     pos -= 1;
        SUBS     R5,R5,#+1
//   82                     out_char(0x08);    /* backspace */
        MOVS     R0,#+8
        BL       out_char
//   83                     out_char(' ');
        MOVS     R0,#+32
        BL       out_char
//   84                     out_char(0x08);    /* backspace */
        MOVS     R0,#+8
        BL       out_char
//   85                 }
//   86                 break;
??get_line_4:
        B.N      ??get_line_5
//   87             default:
//   88                 if ((pos+1) < UIF_MAX_LINE)
??get_line_3:
        ADDS     R0,R5,#+1
        CMP      R0,#+80
        BGE.N    ??get_line_6
//   89                 {
//   90                     if ((ch > 0x1f) && (ch < 0x80))
        CMP      R6,#+32
        BLT.N    ??get_line_6
        CMP      R6,#+128
        BGE.N    ??get_line_6
//   91                     {
//   92                         line[pos++] = (int8)ch;
        STRB     R6,[R5, R4]
        ADDS     R5,R5,#+1
//   93                         out_char((int8)ch);
        MOVS     R0,R6
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       out_char
//   94                     }
//   95                 }
//   96                 break;
//   97         }
//   98         ch = (int32)in_char();
??get_line_6:
??get_line_5:
        BL       in_char
        MOVS     R6,R0
        B.N      ??get_line_0
//   99     }
//  100     line[pos] = '\0';
??get_line_1:
        MOVS     R0,#+0
        STRB     R0,[R5, R4]
//  101     out_char(0x0D);    /* CR */
        MOVS     R0,#+13
        BL       out_char
//  102     out_char(0x0A);    /* LF */
        MOVS     R0,#+10
        BL       out_char
//  103 
//  104     return line;
        MOVS     R0,R4
        POP      {R4-R6,PC}       ;; return
//  105 }
//  106 
//  107 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  108 int32 make_argv (int8 *cmdline, int8 *argv[])
//  109 {
make_argv:
        PUSH     {R4,R5}
        MOVS     R2,R0
//  110     int32 argc, i, in_text;
//  111 
//  112     /* 
//  113      * Break cmdline into strings and argv
//  114      * It is permissible for argv to be NULL, in which case
//  115      * the purpose of this routine becomes to count args
//  116      */
//  117     argc = 0;
        MOVS     R5,#+0
        MOVS     R0,R5
//  118     i = 0;
        MOVS     R5,#+0
        MOVS     R3,R5
//  119     in_text = FALSE;
        MOVS     R5,#+0
        MOVS     R4,R5
//  120     while (cmdline[i] != '\0')  /* getline() must place 0x00 on end */
??make_argv_0:
        LDRSB    R5,[R3, R2]
        CMP      R5,#+0
        BEQ.N    ??make_argv_1
//  121     {
//  122         if (((cmdline[i] == ' ')   ||
//  123              (cmdline[i] == '\t')) )
        LDRSB    R5,[R3, R2]
        CMP      R5,#+32
        BEQ.N    ??make_argv_2
        LDRSB    R5,[R3, R2]
        CMP      R5,#+9
        BNE.N    ??make_argv_3
//  124         {
//  125             if (in_text)
??make_argv_2:
        CMP      R4,#+0
        BEQ.N    ??make_argv_4
//  126             {
//  127                 /* end of command line argument */
//  128                 cmdline[i] = '\0';
        MOVS     R5,#+0
        STRB     R5,[R3, R2]
//  129                 in_text = FALSE;
        MOVS     R5,#+0
        MOVS     R4,R5
        B.N      ??make_argv_4
//  130             }
//  131             else
//  132             {
//  133                 /* still looking for next argument */
//  134                 
//  135             }
//  136         }
//  137         else
//  138         {
//  139             /* got non-whitespace character */
//  140             if (in_text)
??make_argv_3:
        CMP      R4,#+0
        BNE.N    ??make_argv_4
//  141             {
//  142             }
//  143             else
//  144             {
//  145                 /* start of an argument */
//  146                 in_text = TRUE;
        MOVS     R5,#+1
        MOVS     R4,R5
//  147                 if (argc < UIF_MAX_ARGS)
        CMP      R0,#+10
        BGE.N    ??make_argv_5
//  148                 {
//  149                     if (argv != NULL)
        CMP      R1,#+0
        BEQ.N    ??make_argv_6
//  150                         argv[argc] = &cmdline[i];
        ADDS     R5,R3,R2
        STR      R5,[R1, R0, LSL #+2]
//  151                     argc++;
??make_argv_6:
        ADDS     R0,R0,#+1
        B.N      ??make_argv_4
//  152                 }
//  153                 else
//  154                     /*return argc;*/
//  155                     break;
??make_argv_5:
        B.N      ??make_argv_1
//  156             }
//  157 
//  158         }
//  159         i++;    /* proceed to next character */
??make_argv_4:
        ADDS     R3,R3,#+1
        B.N      ??make_argv_0
//  160     }
//  161     if (argv != NULL)
??make_argv_1:
        CMP      R1,#+0
        BEQ.N    ??make_argv_7
//  162         argv[argc] = NULL;
        MOVS     R5,#+0
        STR      R5,[R1, R0, LSL #+2]
//  163     return argc;
??make_argv_7:
        POP      {R4,R5}
        BX       LR               ;; return
//  164 }
//  165 
//  166 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 void run_cmd (void)
//  168 {
run_cmd:
        PUSH     {R4,R5,LR}
        SUB      SP,SP,#+44
//  169     /*
//  170      * Global array of pointers to emulate C argc,argv interface
//  171      */
//  172     int32 argc;
//  173     int8 *argv[UIF_MAX_ARGS + 1];   /* one extra for null terminator */
//  174 
//  175     get_line(cmdline1);
        LDR.N    R0,??DataTable3_3
        BL       get_line
//  176 
//  177     if (!(argc = make_argv(cmdline1,argv)))
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable3_3
        BL       make_argv
        MOVS     R4,R0
        CMP      R0,#+0
        BNE.N    ??run_cmd_0
//  178     {
//  179         /* no command entered, just a blank line */
//  180         strcpy(cmdline1,cmdline2);
        LDR.N    R1,??DataTable3_4
        LDR.N    R0,??DataTable3_3
        BL       strcpy
//  181         argc = make_argv(cmdline1,argv);
        ADD      R1,SP,#+0
        LDR.N    R0,??DataTable3_3
        BL       make_argv
        MOVS     R4,R0
//  182     }
//  183     cmdline2[0] = '\0';
??run_cmd_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_4
        STRB     R0,[R1, #+0]
//  184 
//  185     if (argc)
        CMP      R4,#+0
        BEQ.N    ??run_cmd_1
//  186     {
//  187         int32 i;
//  188         for (i = 0; i < UIF_NUM_CMD; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??run_cmd_2:
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        CMP      R5,R0
        BGE.N    ??run_cmd_3
//  189         {
//  190             if (strcasecmp(UIF_CMDTAB[i].cmd,argv[0]) == 0)
        LDR      R1,[SP, #+0]
        LDR.N    R0,??DataTable3_6
        MOVS     R2,#+28
        MLA      R0,R2,R5,R0
        LDR      R0,[R0, #+0]
        BL       strcasecmp
        CMP      R0,#+0
        BNE.N    ??run_cmd_4
//  191             {
//  192                 if (((argc-1) >= UIF_CMDTAB[i].min_args) &&
//  193                     ((argc-1) <= UIF_CMDTAB[i].max_args))
        SUBS     R0,R4,#+1
        LDR.N    R1,??DataTable3_6
        MOVS     R2,#+28
        MLA      R1,R2,R5,R1
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??run_cmd_5
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+28
        MLA      R0,R1,R5,R0
        LDR      R0,[R0, #+8]
        SUBS     R1,R4,#+1
        CMP      R0,R1
        BLT.N    ??run_cmd_5
//  194                 {
//  195                     if (UIF_CMDTAB[i].flags & UIF_CMD_FLAG_REPEAT)
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+28
        MLA      R0,R1,R5,R0
        LDRB     R0,[R0, #+12]
        LSLS     R0,R0,#+31
        BPL.N    ??run_cmd_6
//  196                     {
//  197                         strcpy(cmdline2,argv[0]);
        LDR      R1,[SP, #+0]
        LDR.N    R0,??DataTable3_4
        BL       strcpy
//  198                     }
//  199                     UIF_CMDTAB[i].func(argc,argv);
??run_cmd_6:
        ADD      R1,SP,#+0
        MOVS     R0,R4
        LDR.N    R2,??DataTable3_6
        MOVS     R3,#+28
        MLA      R2,R3,R5,R2
        LDR      R2,[R2, #+16]
        BLX      R2
//  200                     return;
        B.N      ??run_cmd_7
//  201                 }
//  202                 else
//  203                 {
//  204                     printf(SYNTAX,argv[0]);
??run_cmd_5:
        LDR      R1,[SP, #+0]
        LDR.N    R0,??DataTable3_7
        BL       printf
//  205                     return;
        B.N      ??run_cmd_7
//  206                 }
//  207             }
//  208         }
??run_cmd_4:
        ADDS     R5,R5,#+1
        B.N      ??run_cmd_2
//  209         printf(INVCMD,argv[0]);
??run_cmd_3:
        LDR      R1,[SP, #+0]
        LDR.N    R0,??DataTable3_8
        BL       printf
//  210         printf(HELPMSG);
        LDR.N    R0,??DataTable3_9
        BL       printf
//  211     }
//  212 }
??run_cmd_1:
??run_cmd_7:
        ADD      SP,SP,#+44
        POP      {R4,R5,PC}       ;; return
//  213 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  214 uint32 get_value (int8 *s, int32 *success, int32 base)
//  215 {
get_value:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  216     uint32 value;
//  217     int8 *p;
//  218 
//  219     value = strtoul(s,&p,base);
        MOVS     R2,R6
        ADD      R1,SP,#+0
        MOVS     R0,R4
        BL       strtoul
        MOVS     R7,R0
//  220     if ((value == 0) && (p == s))
        CMP      R7,#+0
        BNE.N    ??get_value_0
        LDR      R0,[SP, #+0]
        CMP      R0,R4
        BNE.N    ??get_value_0
//  221     {
//  222         *success = FALSE;
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//  223         return 0;
        MOVS     R0,#+0
        B.N      ??get_value_1
//  224     }
//  225     else
//  226     {
//  227         *success = TRUE;
??get_value_0:
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
//  228         return value;
        MOVS     R0,R7
??get_value_1:
        POP      {R1,R4-R7,PC}    ;; return
//  229     }
//  230 }
//  231 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 void uif_cmd_help (int32 argc, int8 **argv)
//  233 {
uif_cmd_help:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
//  234     int32 index;
//  235     
//  236     (void)argc;
//  237     (void)argv;
//  238     
//  239     printf("\n");
        ADR.N    R0,??DataTable3  ;; "\n"
        BL       printf
//  240     for (index = 0; index < UIF_NUM_CMD; index++)
        MOVS     R0,#+0
        MOVS     R6,R0
??uif_cmd_help_0:
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_help_1
//  241     {
//  242         printf(HELPFORMAT,
//  243             UIF_CMDTAB[index].cmd,
//  244             UIF_CMDTAB[index].description,
//  245             UIF_CMDTAB[index].cmd,
//  246             UIF_CMDTAB[index].syntax);
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+28
        MLA      R0,R1,R6,R0
        LDR      R0,[R0, #+24]
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+28
        MLA      R0,R1,R6,R0
        LDR      R3,[R0, #+0]
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+28
        MLA      R0,R1,R6,R0
        LDR      R2,[R0, #+20]
        LDR.N    R0,??DataTable3_6
        MOVS     R1,#+28
        MLA      R0,R1,R6,R0
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_10
        BL       printf
//  247     }
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_help_0
//  248     printf("\n");
??uif_cmd_help_1:
        ADR.N    R0,??DataTable3  ;; "\n"
        BL       printf
//  249 }
        POP      {R0,R1,R4-R6,PC}  ;; return
//  250 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  251 void uif_cmd_set (int32 argc, int8 **argv)
//  252 {
uif_cmd_set:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  253     int32 index;
//  254 
//  255     printf("\n");
        ADR.N    R0,??DataTable3  ;; "\n"
        BL       printf
//  256     if (argc == 1)
        CMP      R4,#+1
        BNE.N    ??uif_cmd_set_0
//  257     {
//  258         printf("Valid 'set' options:\n");
        LDR.N    R0,??DataTable3_11
        BL       printf
//  259         for (index = 0; index < UIF_NUM_SETCMD; ++index)
        MOVS     R0,#+0
        MOVS     R6,R0
??uif_cmd_set_1:
        LDR.N    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_set_2
//  260         {
//  261             printf(OPTFMT,UIF_SETCMDTAB[index].option);
        LDR.N    R0,??DataTable3_13
        MOVS     R1,#+20
        MLA      R0,R1,R6,R0
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_14
        BL       printf
//  262             printf("%s\n",UIF_SETCMDTAB[index].syntax);
        LDR.N    R0,??DataTable3_13
        MOVS     R1,#+20
        MLA      R0,R1,R6,R0
        LDR      R1,[R0, #+16]
        ADR.N    R0,??DataTable3_1  ;; "%s\n"
        BL       printf
//  263         }
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_set_1
//  264         printf("\n");
??uif_cmd_set_2:
        ADR.N    R0,??DataTable3  ;; "\n"
        BL       printf
//  265         return;
        B.N      ??uif_cmd_set_3
//  266     }
//  267 
//  268     if (argc != 3)
??uif_cmd_set_0:
        CMP      R4,#+3
        BEQ.N    ??uif_cmd_set_4
//  269     {
//  270         printf("Error: Invalid argument list\n");
        LDR.N    R0,??DataTable3_15
        BL       printf
//  271         return;
        B.N      ??uif_cmd_set_3
//  272     }
//  273 
//  274     for (index = 0; index < UIF_NUM_SETCMD; index++)
??uif_cmd_set_4:
        MOVS     R0,#+0
        MOVS     R6,R0
??uif_cmd_set_5:
        LDR.N    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_set_6
//  275     {
//  276         if (strcasecmp(UIF_SETCMDTAB[index].option,argv[1]) == 0)
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable3_13
        MOVS     R2,#+20
        MLA      R0,R2,R6,R0
        LDR      R0,[R0, #+0]
        BL       strcasecmp
        CMP      R0,#+0
        BNE.N    ??uif_cmd_set_7
//  277         {
//  278             if (((argc-1-1) >= UIF_SETCMDTAB[index].min_args) &&
//  279                 ((argc-1-1) <= UIF_SETCMDTAB[index].max_args))
        SUBS     R0,R4,#+2
        LDR.N    R1,??DataTable3_13
        MOVS     R2,#+20
        MLA      R1,R2,R6,R1
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??uif_cmd_set_8
        LDR.N    R0,??DataTable3_13
        MOVS     R1,#+20
        MLA      R0,R1,R6,R0
        LDR      R0,[R0, #+8]
        SUBS     R1,R4,#+2
        CMP      R0,R1
        BLT.N    ??uif_cmd_set_8
//  280             {
//  281                 UIF_SETCMDTAB[index].func(argc,argv);
        MOVS     R1,R5
        MOVS     R0,R4
        LDR.N    R2,??DataTable3_13
        MOVS     R3,#+20
        MLA      R2,R3,R6,R2
        LDR      R2,[R2, #+12]
        BLX      R2
//  282                 return;
        B.N      ??uif_cmd_set_3
//  283             }
//  284             else
//  285             {
//  286                 printf(INVARG,argv[1]);
??uif_cmd_set_8:
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable3_16
        BL       printf
//  287                 return;
        B.N      ??uif_cmd_set_3
//  288             }
//  289         }
//  290     }
??uif_cmd_set_7:
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_set_5
//  291     printf(INVOPT,argv[1]);
??uif_cmd_set_6:
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable3_17
        BL       printf
//  292 }
??uif_cmd_set_3:
        POP      {R4-R6,PC}       ;; return
//  293 
//  294 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  295 void uif_cmd_show (int32 argc, int8 **argv)
//  296 {
uif_cmd_show:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  297     int32 index;
//  298 
//  299     printf("\n");
        ADR.N    R0,??DataTable3  ;; "\n"
        BL       printf
//  300     if (argc == 1)
        CMP      R4,#+1
        BNE.N    ??uif_cmd_show_0
//  301     {
//  302         /*
//  303          * Show all Option settings
//  304          */
//  305         argc = 2;
        MOVS     R0,#+2
        MOVS     R4,R0
//  306         argv[2] = NULL;
        MOVS     R0,#+0
        STR      R0,[R5, #+8]
//  307         for (index = 0; index < UIF_NUM_SETCMD; index++)
        MOVS     R0,#+0
        MOVS     R6,R0
??uif_cmd_show_1:
        LDR.N    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_show_2
//  308         {
//  309             printf(OPTFMT,UIF_SETCMDTAB[index].option);
        LDR.N    R0,??DataTable3_13
        MOVS     R1,#+20
        MLA      R0,R1,R6,R0
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_14
        BL       printf
//  310             UIF_SETCMDTAB[index].func(argc,argv);
        MOVS     R1,R5
        MOVS     R0,R4
        LDR.N    R2,??DataTable3_13
        MOVS     R3,#+20
        MLA      R2,R3,R6,R2
        LDR      R2,[R2, #+12]
        BLX      R2
//  311             printf("\n");
        ADR.N    R0,??DataTable3  ;; "\n"
        BL       printf
//  312         }
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_show_1
//  313         printf("\n");
??uif_cmd_show_2:
        ADR.N    R0,??DataTable3  ;; "\n"
        BL       printf
//  314         return;
        B.N      ??uif_cmd_show_3
//  315     }
//  316 
//  317     for (index = 0; index < UIF_NUM_SETCMD; index++)
??uif_cmd_show_0:
        MOVS     R0,#+0
        MOVS     R6,R0
??uif_cmd_show_4:
        LDR.N    R0,??DataTable3_12
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BGE.N    ??uif_cmd_show_5
//  318     {
//  319         if (strcasecmp(UIF_SETCMDTAB[index].option,argv[1]) == 0)
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable3_13
        MOVS     R2,#+20
        MLA      R0,R2,R6,R0
        LDR      R0,[R0, #+0]
        BL       strcasecmp
        CMP      R0,#+0
        BNE.N    ??uif_cmd_show_6
//  320         {
//  321             if (((argc-1-1) >= UIF_SETCMDTAB[index].min_args) &&
//  322                 ((argc-1-1) <= UIF_SETCMDTAB[index].max_args))
        SUBS     R0,R4,#+2
        LDR.N    R1,??DataTable3_13
        MOVS     R2,#+20
        MLA      R1,R2,R6,R1
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BLT.N    ??uif_cmd_show_7
        LDR.N    R0,??DataTable3_13
        MOVS     R1,#+20
        MLA      R0,R1,R6,R0
        LDR      R0,[R0, #+8]
        SUBS     R1,R4,#+2
        CMP      R0,R1
        BLT.N    ??uif_cmd_show_7
//  323             {
//  324                 printf(OPTFMT,UIF_SETCMDTAB[index].option);
        LDR.N    R0,??DataTable3_13
        MOVS     R1,#+20
        MLA      R0,R1,R6,R0
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable3_14
        BL       printf
//  325                 UIF_SETCMDTAB[index].func(argc,argv);
        MOVS     R1,R5
        MOVS     R0,R4
        LDR.N    R2,??DataTable3_13
        MOVS     R3,#+20
        MLA      R2,R3,R6,R2
        LDR      R2,[R2, #+12]
        BLX      R2
//  326                 printf("\n\n");
        ADR.N    R0,??DataTable3_2  ;; 0x0A, 0x0A, 0x00, 0x00
        BL       printf
//  327                 return;
        B.N      ??uif_cmd_show_3
//  328             }
//  329             else
//  330             {
//  331                 printf(INVARG,argv[1]);
??uif_cmd_show_7:
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable3_16
        BL       printf
//  332                 return;
        B.N      ??uif_cmd_show_3
//  333             }
//  334         }
//  335     }
??uif_cmd_show_6:
        ADDS     R6,R6,#+1
        B.N      ??uif_cmd_show_4
//  336     printf(INVOPT,argv[1]);
??uif_cmd_show_5:
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable3_17
        BL       printf
//  337 }
??uif_cmd_show_3:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      "\n",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC8      "%s\n"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC8      0x0A, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     cmdline1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     cmdline2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     UIF_NUM_CMD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     UIF_CMDTAB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     SYNTAX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     INVCMD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     HELPMSG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     HELPFORMAT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     UIF_NUM_SETCMD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     UIF_SETCMDTAB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     OPTFMT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     INVARG

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     INVOPT

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  338 
//  339 /********************************************************************/
// 
//   160 bytes in section .bss
//   278 bytes in section .rodata
// 1 012 bytes in section .text
// 
// 1 012 bytes of CODE  memory
//   278 bytes of CONST memory
//   160 bytes of DATA  memory
//
//Errors: none
//Warnings: none
