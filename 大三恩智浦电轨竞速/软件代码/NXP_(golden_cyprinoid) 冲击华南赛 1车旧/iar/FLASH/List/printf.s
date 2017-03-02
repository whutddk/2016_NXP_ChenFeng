///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:57
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\common\printf.c
//    Command line =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\common\printf.c -D
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
//        冲击华南赛 1车\iar\FLASH\List\printf.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN out_char
        EXTERN strlen

        PUBLIC printf
        PUBLIC printk
        PUBLIC sprintf

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\lib\common\printf.c
//    1 /**
//    2  * @file printf.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief C库标准printf()函数
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
//   24 #include <stdarg.h>
//   25 
//   26 /********************************************************************/
//   27 
//   28 typedef struct
//   29 {
//   30     int32 dest;
//   31     void (*func)(int8);
//   32     int8 *loc;
//   33 } PRINTK_INFO;
//   34 
//   35 int32 
//   36 printk (PRINTK_INFO *, const int8 *, va_list);
//   37 
//   38 /********************************************************************/
//   39 
//   40 #define DEST_CONSOLE    (1)
//   41 #define DEST_STRING     (2)
//   42 
//   43 #define FLAGS_MINUS     (0x01)
//   44 #define FLAGS_PLUS      (0x02)
//   45 #define FLAGS_SPACE     (0x04)
//   46 #define FLAGS_ZERO      (0x08)
//   47 #define FLAGS_POUND     (0x10)
//   48 
//   49 #define IS_FLAG_MINUS(a)    (a & FLAGS_MINUS)
//   50 #define IS_FLAG_PLUS(a)     (a & FLAGS_PLUS)
//   51 #define IS_FLAG_SPACE(a)    (a & FLAGS_SPACE)
//   52 #define IS_FLAG_ZERO(a)     (a & FLAGS_ZERO)
//   53 #define IS_FLAG_POUND(a)    (a & FLAGS_POUND)
//   54 
//   55 #define LENMOD_h        (0x01)
//   56 #define LENMOD_l        (0x02)
//   57 #define LENMOD_L        (0x04)
//   58 
//   59 #define IS_LENMOD_h(a)  (a & LENMOD_h)
//   60 #define IS_LENMOD_l(a)  (a & LENMOD_l)
//   61 #define IS_LENMOD_L(a)  (a & LENMOD_L)
//   62 
//   63 #define FMT_d   (0x0001)
//   64 #define FMT_o   (0x0002)
//   65 #define FMT_x   (0x0004)
//   66 #define FMT_X   (0x0008)
//   67 #define FMT_u   (0x0010)
//   68 #define FMT_c   (0x0020)
//   69 #define FMT_s   (0x0040)
//   70 #define FMT_p   (0x0080)
//   71 #define FMT_n   (0x0100)
//   72 
//   73 #define IS_FMT_d(a)     (a & FMT_d)
//   74 #define IS_FMT_o(a)     (a & FMT_o)
//   75 #define IS_FMT_x(a)     (a & FMT_x)
//   76 #define IS_FMT_X(a)     (a & FMT_X)
//   77 #define IS_FMT_u(a)     (a & FMT_u)
//   78 #define IS_FMT_c(a)     (a & FMT_c)
//   79 #define IS_FMT_s(a)     (a & FMT_s)
//   80 #define IS_FMT_p(a)     (a & FMT_p)
//   81 #define IS_FMT_n(a)     (a & FMT_n)
//   82 
//   83 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   84 static void printk_putc (int32 c, int32 *count, PRINTK_INFO *info)
//   85 {
printk_putc:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   86     switch (info->dest)
        LDR      R0,[R6, #+0]
        CMP      R0,#+1
        BEQ.N    ??printk_putc_0
        CMP      R0,#+2
        BEQ.N    ??printk_putc_1
        B.N      ??printk_putc_2
//   87     {
//   88         case DEST_CONSOLE:
//   89             info->func((int8)c);
??printk_putc_0:
        MOVS     R0,R4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR      R1,[R6, #+4]
        BLX      R1
//   90             break;
        B.N      ??printk_putc_3
//   91         case DEST_STRING:
//   92             *(info->loc) = (uint8)c;
??printk_putc_1:
        LDR      R0,[R6, #+8]
        STRB     R4,[R0, #+0]
//   93             ++(info->loc);
        LDR      R0,[R6, #+8]
        ADDS     R0,R0,#+1
        STR      R0,[R6, #+8]
//   94             break;
        B.N      ??printk_putc_3
//   95         default:
//   96             break;
//   97     }
//   98     *count += 1;
??printk_putc_2:
??printk_putc_3:
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R5, #+0]
//   99 }
        POP      {R4-R6,PC}       ;; return
//  100 
//  101 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  102 static int32 printk_mknumstr (int8 *numstr, void *nump, int32 neg, int32 radix)
//  103 {
printk_mknumstr:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
//  104     int32 a,b,c;
//  105     uint32 ua,ub,uc;
//  106 
//  107     int32 nlen;
//  108     int8 *nstrp;
//  109 
//  110     nlen = 0;
        MOVS     R10,#+0
        MOV      R0,R10
//  111     nstrp = numstr;
        MOV      R9,R4
//  112     *nstrp++ = '\0';
        MOVS     R10,#+0
        STRB     R10,[R9, #+0]
        ADDS     R9,R9,#+1
//  113 
//  114     if (neg)
        CMP      R2,#+0
        BEQ.N    ??printk_mknumstr_0
//  115     {
//  116         a = *(int32 *)nump;
        LDR      R10,[R1, #+0]
        MOV      R5,R10
//  117         if (a == 0)
        CMP      R5,#+0
        BNE.N    ??printk_mknumstr_1
//  118         {
//  119             *nstrp = '0';
        MOVS     R10,#+48
        STRB     R10,[R9, #+0]
//  120             ++nlen;
        ADDS     R0,R0,#+1
//  121             goto done;
        B.N      ??printk_mknumstr_2
//  122         }
//  123         while (a != 0)
??printk_mknumstr_1:
        CMP      R5,#+0
        BEQ.N    ??printk_mknumstr_2
//  124         {
//  125             b = (int32)a / (int32)radix;
        SDIV     R10,R5,R3
        MOV      R6,R10
//  126             c = (int32)a - ((int32)b * (int32)radix);
        MLS      R10,R3,R6,R5
        MOV      R7,R10
//  127             if (c < 0)
        CMP      R7,#+0
        BPL.N    ??printk_mknumstr_3
//  128             {
//  129                 c = ~c + 1 + '0';
        MVNS     R7,R7
        ADDS     R7,R7,#+49
        B.N      ??printk_mknumstr_4
//  130             }
//  131             else
//  132             {
//  133                 c = c + '0';
??printk_mknumstr_3:
        ADDS     R7,R7,#+48
//  134             }
//  135             a = b;
??printk_mknumstr_4:
        MOVS     R5,R6
//  136             *nstrp++ = (int8)c;
        STRB     R7,[R9, #+0]
        ADDS     R9,R9,#+1
//  137             ++nlen;
        ADDS     R0,R0,#+1
        B.N      ??printk_mknumstr_1
//  138         }
//  139     }
//  140     else
//  141     {
//  142         ua = *(uint32 *)nump;
??printk_mknumstr_0:
        LDR      R10,[R1, #+0]
        MOV      R12,R10
//  143         if (ua == 0)
        CMP      R12,#+0
        BNE.N    ??printk_mknumstr_5
//  144         {
//  145             *nstrp = '0';
        MOVS     R10,#+48
        STRB     R10,[R9, #+0]
//  146             ++nlen;
        ADDS     R0,R0,#+1
//  147             goto done;
        B.N      ??printk_mknumstr_2
//  148         }
//  149         while (ua != 0)
??printk_mknumstr_5:
        CMP      R12,#+0
        BEQ.N    ??printk_mknumstr_2
//  150         {
//  151             ub = (uint32)ua / (uint32)radix;
        UDIV     R10,R12,R3
        MOV      LR,R10
//  152             uc = (uint32)ua - ((uint32)ub * (uint32)radix);
        MLS      R10,R3,LR,R12
        MOV      R8,R10
//  153             if (uc < 10)
        CMP      R8,#+10
        BCS.N    ??printk_mknumstr_6
//  154             {
//  155                 uc = uc + '0';
        ADDS     R8,R8,#+48
        B.N      ??printk_mknumstr_7
//  156             }
//  157             else
//  158             {
//  159                 uc = uc - 10 + 'A';
??printk_mknumstr_6:
        ADDS     R8,R8,#+55
//  160             }
//  161             ua = ub;
??printk_mknumstr_7:
        MOV      R12,LR
//  162             *nstrp++ = (int8)uc;
        STRB     R8,[R9, #+0]
        ADDS     R9,R9,#+1
//  163             ++nlen;
        ADDS     R0,R0,#+1
        B.N      ??printk_mknumstr_5
//  164         }
//  165     }
//  166     done:
//  167     return nlen;
??printk_mknumstr_2:
        POP      {R4-R10,PC}      ;; return
//  168 }
//  169 
//  170 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 static void printk_pad_zero (int32 curlen, int32 field_width, int32 *count, PRINTK_INFO *info)
//  172 {
printk_pad_zero:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  173     int32 i;
//  174 
//  175     for (i = curlen; i < field_width; i++)
        MOV      R8,R4
??printk_pad_zero_0:
        CMP      R8,R5
        BGE.N    ??printk_pad_zero_1
//  176     {
//  177         printk_putc('0',count, info);
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,#+48
        BL       printk_putc
//  178     }
        ADDS     R8,R8,#+1
        B.N      ??printk_pad_zero_0
//  179 }
??printk_pad_zero_1:
        POP      {R4-R8,PC}       ;; return
//  180 
//  181 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 static void
//  183 printk_pad_space (int32 curlen, int32 field_width, int32 *count, PRINTK_INFO *info)
//  184 {
printk_pad_space:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//  185     int32 i;
//  186 
//  187     for (i = curlen; i < field_width; i++)
        MOV      R8,R4
??printk_pad_space_0:
        CMP      R8,R5
        BGE.N    ??printk_pad_space_1
//  188     {
//  189         printk_putc(' ',count, info);
        MOVS     R2,R7
        MOVS     R1,R6
        MOVS     R0,#+32
        BL       printk_putc
//  190     }
        ADDS     R8,R8,#+1
        B.N      ??printk_pad_space_0
//  191 }
??printk_pad_space_1:
        POP      {R4-R8,PC}       ;; return
//  192 
//  193 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 int32 printk (PRINTK_INFO *info, const int8 *fmt, va_list ap)
//  195 {
printk:
        PUSH     {R1,R4-R11,LR}
        SUB      SP,SP,#+72
        MOVS     R4,R0
        MOVS     R5,R2
//  196     /* va_list ap; */
//  197     int8 *p;
//  198     int32 c;
//  199 
//  200     int8 vstr[33];
//  201     int8 *vstrp;
//  202     int32 vlen;
//  203 
//  204     int32 done;
//  205     int32 count = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  206 
//  207     int32 flags_used;
//  208     int32 field_width;
//  209 #if 0
//  210     int32 precision_used;
//  211     int32 precision_width;
//  212     int32 length_modifier;
//  213 #endif
//  214 
//  215     int32 ival;
//  216     int32 schar, dschar;
//  217     int32 *ivalp;
//  218     int8 *sval;
//  219     int32 cval;
//  220     uint32 uval;
//  221 
//  222     /*
//  223      * Start parsing apart the format string and display appropriate
//  224      * formats and data.
//  225      */
//  226     for (p = (int8 *)fmt; (c = *p) != 0; p++)
        LDR      R0,[SP, #+72]
        MOV      R11,R0
??printk_0:
        LDRSB    R0,[R11, #+0]
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BEQ.W    ??printk_1
//  227     {
//  228         /*
//  229          * All formats begin with a '%' marker.  Special chars like
//  230          * '\n' or '\t' are normally converted to the appropriate
//  231          * character by the __compiler__.  Thus, no need for this
//  232          * routine to account for the '\' character.
//  233          */
//  234         if (c != '%')
        LDR      R0,[SP, #+4]
        CMP      R0,#+37
        BEQ.N    ??printk_2
//  235         {
//  236             /*
//  237              * This needs to be replaced with something like
//  238              * 'out_char()' or call an OS routine.
//  239              */
//  240 #ifndef UNIX_DEBUG
//  241             if (c != '\n')
        LDR      R0,[SP, #+4]
        CMP      R0,#+10
        BEQ.N    ??printk_3
//  242             {
//  243                 printk_putc(c, &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        LDR      R0,[SP, #+4]
        BL       printk_putc
        B.N      ??printk_4
//  244             }
//  245             else
//  246             {
//  247                 printk_putc(0x0D /* CR */, &count, info);
??printk_3:
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,#+13
        BL       printk_putc
//  248                 printk_putc(0x0A /* LF */, &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,#+10
        BL       printk_putc
//  249             }
//  250 #else
//  251             printk_putc(c, &count, info);
//  252 #endif
//  253 
//  254             /*
//  255              * By using 'continue', the next iteration of the loop
//  256              * is used, skipping the code that follows.
//  257              */
//  258             continue;
??printk_4:
        B.N      ??printk_5
//  259         }
//  260 
//  261         /*
//  262          * First check for specification modifier flags.
//  263          */
//  264         flags_used = 0;
??printk_2:
        MOVS     R0,#+0
        MOV      R9,R0
//  265         done = FALSE;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  266         while (!done)
??printk_6:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BNE.N    ??printk_7
//  267         {
//  268             switch (/* c = */ *++p)
        ADDS     R11,R11,#+1
        LDRSB    R0,[R11, #+0]
        CMP      R0,#+32
        BEQ.N    ??printk_8
        CMP      R0,#+35
        BEQ.N    ??printk_9
        CMP      R0,#+43
        BEQ.N    ??printk_10
        CMP      R0,#+45
        BEQ.N    ??printk_11
        CMP      R0,#+48
        BEQ.N    ??printk_12
        B.N      ??printk_13
//  269             {
//  270                 case '-':
//  271                     flags_used |= FLAGS_MINUS;
??printk_11:
        ORRS     R9,R9,#0x1
//  272                     break;
        B.N      ??printk_6
//  273                 case '+':
//  274                     flags_used |= FLAGS_PLUS;
??printk_10:
        ORRS     R9,R9,#0x2
//  275                     break;
        B.N      ??printk_6
//  276                 case ' ':
//  277                     flags_used |= FLAGS_SPACE;
??printk_8:
        ORRS     R9,R9,#0x4
//  278                     break;
        B.N      ??printk_6
//  279                 case '0':
//  280                     flags_used |= FLAGS_ZERO;
??printk_12:
        ORRS     R9,R9,#0x8
//  281                     break;
        B.N      ??printk_6
//  282                 case '#':
//  283                     flags_used |= FLAGS_POUND;
??printk_9:
        ORRS     R9,R9,#0x10
//  284                     break;
        B.N      ??printk_6
//  285                 default:
//  286                     /* we've gone one int8 too far */
//  287                     --p;
??printk_13:
        SUBS     R11,R11,#+1
//  288                     done = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+16]
//  289                     break;
        B.N      ??printk_6
//  290             }
//  291         }
//  292 
//  293         /*
//  294          * Next check for minimum field width.
//  295          */
//  296         field_width = 0;
??printk_7:
        MOVS     R0,#+0
        MOV      R10,R0
//  297         done = FALSE;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  298         while (!done)
??printk_14:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BNE.N    ??printk_15
//  299         {
//  300             switch (c = *++p)
        ADDS     R11,R11,#+1
        LDRSB    R0,[R11, #+0]
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+4]
        SUBS     R0,R0,#+48
        CMP      R0,#+9
        BHI.N    ??printk_16
//  301             {
//  302                 case '0':
//  303                 case '1':
//  304                 case '2':
//  305                 case '3':
//  306                 case '4':
//  307                 case '5':
//  308                 case '6':
//  309                 case '7':
//  310                 case '8':
//  311                 case '9':
//  312                     field_width = (field_width * 10) + (c - '0');
??printk_17:
        MOVS     R0,#+10
        LDR      R1,[SP, #+4]
        MLA      R0,R0,R10,R1
        SUBS     R10,R0,#+48
//  313                     break;
        B.N      ??printk_14
//  314                 default:
//  315                     /* we've gone one int8 too far */
//  316                     --p;
??printk_16:
        SUBS     R11,R11,#+1
//  317                     done = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+16]
//  318                     break;
        B.N      ??printk_14
//  319             }
//  320         }
//  321 
//  322         /*
//  323          * Next check for the width and precision field separator.
//  324          */
//  325         if (/* (c = *++p) */ *++p == '.')
??printk_15:
        ADDS     R11,R11,#+1
        LDRSB    R0,[R11, #+0]
        CMP      R0,#+46
        BNE.N    ??printk_18
//  326         {
//  327             /* precision_used = TRUE; */
//  328 
//  329             /*
//  330              * Must get precision field width, if present.
//  331              */
//  332             /* precision_width = 0; */
//  333             done = FALSE;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//  334             while (!done)
??printk_19:
        LDR      R0,[SP, #+16]
        CMP      R0,#+0
        BNE.N    ??printk_20
//  335             {
//  336                 switch (/* c = uncomment if used below */ *++p)
        ADDS     R11,R11,#+1
        LDRSB    R0,[R11, #+0]
        SUBS     R0,R0,#+48
        CMP      R0,#+9
        BHI.N    ??printk_21
//  337                 {
//  338                     case '0':
//  339                     case '1':
//  340                     case '2':
//  341                     case '3':
//  342                     case '4':
//  343                     case '5':
//  344                     case '6':
//  345                     case '7':
//  346                     case '8':
//  347                     case '9':
//  348 #if 0
//  349                         precision_width = (precision_width * 10) +
//  350                             (c - '0');
//  351 #endif
//  352                         break;
??printk_22:
        B.N      ??printk_19
//  353                     default:
//  354                         /* we've gone one int8 too far */
//  355                         --p;
??printk_21:
        SUBS     R11,R11,#+1
//  356                         done = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+16]
//  357                         break;
        B.N      ??printk_19
//  358                 }
//  359             }
//  360         }
//  361         else
//  362         {
//  363             /* we've gone one int8 too far */
//  364             --p;
??printk_18:
        SUBS     R11,R11,#+1
//  365 #if 0
//  366             precision_used = FALSE;
//  367             precision_width = 0;
//  368 #endif
//  369         }
//  370 
//  371         /*
//  372          * Check for the length modifier.
//  373          */
//  374         /* length_modifier = 0; */
//  375         switch (/* c = */ *++p)
??printk_20:
        ADDS     R11,R11,#+1
        LDRSB    R0,[R11, #+0]
        CMP      R0,#+76
        BEQ.N    ??printk_23
        CMP      R0,#+104
        BEQ.N    ??printk_24
        CMP      R0,#+108
        BEQ.N    ??printk_25
        B.N      ??printk_26
//  376         {
//  377             case 'h':
//  378                 /* length_modifier |= LENMOD_h; */
//  379                 break;
??printk_24:
        B.N      ??printk_27
//  380             case 'l':
//  381                 /* length_modifier |= LENMOD_l; */
//  382                 break;
??printk_25:
        B.N      ??printk_27
//  383             case 'L':
//  384                 /* length_modifier |= LENMOD_L; */
//  385                 break;
??printk_23:
        B.N      ??printk_27
//  386             default:
//  387                 /* we've gone one int8 too far */
//  388                 --p;
??printk_26:
        SUBS     R11,R11,#+1
//  389                 break;
//  390         }
//  391 
//  392         /*
//  393          * Now we're ready to examine the format.
//  394          */
//  395         switch (c = *++p)
??printk_27:
        ADDS     R11,R11,#+1
        LDRSB    R0,[R11, #+0]
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+4]
        CMP      R0,#+88
        BEQ.N    ??printk_28
        CMP      R0,#+98
        BEQ.W    ??printk_29
        CMP      R0,#+99
        BEQ.W    ??printk_30
        CMP      R0,#+100
        BEQ.N    ??printk_31
        CMP      R0,#+105
        BEQ.N    ??printk_31
        CMP      R0,#+110
        BEQ.W    ??printk_32
        CMP      R0,#+111
        BEQ.W    ??printk_33
        CMP      R0,#+112
        BEQ.W    ??printk_34
        CMP      R0,#+115
        BEQ.W    ??printk_35
        CMP      R0,#+117
        BEQ.W    ??printk_36
        CMP      R0,#+120
        BEQ.N    ??printk_28
        B.N      ??printk_37
//  396         {
//  397             case 'd':
//  398             case 'i':
//  399                 ival = (int32)va_arg(ap, int32);
??printk_31:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        STR      R0,[SP, #+24]
//  400                 vlen = printk_mknumstr(vstr,&ival,TRUE,10);
        MOVS     R3,#+10
        MOVS     R2,#+1
        ADD      R1,SP,#+24
        ADD      R0,SP,#+36
        BL       printk_mknumstr
        MOVS     R7,R0
//  401                 vstrp = &vstr[vlen];
        ADD      R0,SP,#+36
        ADDS     R0,R7,R0
        MOVS     R6,R0
//  402 
//  403                 if (ival < 0)
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BPL.N    ??printk_38
//  404                 {
//  405                     schar = '-';
        MOVS     R0,#+45
        STR      R0,[SP, #+12]
//  406                     ++vlen;
        ADDS     R7,R7,#+1
        B.N      ??printk_39
//  407                 }
//  408                 else
//  409                 {
//  410                     if (IS_FLAG_PLUS(flags_used))
??printk_38:
        LSLS     R0,R9,#+30
        BPL.N    ??printk_40
//  411                     {
//  412                         schar = '+';
        MOVS     R0,#+43
        STR      R0,[SP, #+12]
//  413                         ++vlen;
        ADDS     R7,R7,#+1
        B.N      ??printk_39
//  414                     }
//  415                     else
//  416                     {
//  417                         if (IS_FLAG_SPACE(flags_used))
??printk_40:
        LSLS     R0,R9,#+29
        BPL.N    ??printk_41
//  418                         {
//  419                             schar = ' ';
        MOVS     R0,#+32
        STR      R0,[SP, #+12]
//  420                             ++vlen;
        ADDS     R7,R7,#+1
        B.N      ??printk_39
//  421                         }
//  422                         else
//  423                         {
//  424                             schar = 0;
??printk_41:
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  425                         }
//  426                     }
//  427                 }
//  428                 dschar = FALSE;
??printk_39:
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  429             
//  430                 /*
//  431                  * do the ZERO pad.
//  432                  */
//  433                 if (IS_FLAG_ZERO(flags_used))
        LSLS     R0,R9,#+28
        BPL.N    ??printk_42
//  434                 {
//  435                     if (schar)
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??printk_43
//  436                         printk_putc(schar, &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        LDR      R0,[SP, #+12]
        BL       printk_putc
//  437                     dschar = TRUE;
??printk_43:
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
//  438             
//  439                     printk_pad_zero (vlen, field_width, &count, info);
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_zero
//  440                     vlen = field_width;
        MOV      R7,R10
        B.N      ??printk_44
//  441                 }
//  442                 else
//  443                 {
//  444                     if (!IS_FLAG_MINUS(flags_used))
??printk_42:
        LSLS     R0,R9,#+31
        BMI.N    ??printk_44
//  445                     {
//  446                         printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_space
//  447             
//  448                         if (schar)
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??printk_45
//  449                             printk_putc(schar, &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        LDR      R0,[SP, #+12]
        BL       printk_putc
//  450                         dschar = TRUE;
??printk_45:
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
//  451                     }
//  452                 }
//  453             
//  454                 /* the string was built in reverse order, now display in */
//  455                 /* correct order */
//  456                 if (!dschar && schar)
??printk_44:
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BNE.N    ??printk_46
        LDR      R0,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??printk_46
//  457                 {
//  458                     printk_putc(schar, &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        LDR      R0,[SP, #+12]
        BL       printk_putc
//  459                 }
//  460                 goto cont_xd;
??printk_46:
        B.N      ??printk_47
//  461 
//  462             case 'x':
//  463             case 'X':
//  464                 uval = (uint32)va_arg(ap, uint32);
??printk_28:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        STR      R0,[SP, #+8]
//  465                 vlen = printk_mknumstr(vstr,&uval,FALSE,16);
        MOVS     R3,#+16
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       printk_mknumstr
        MOVS     R7,R0
//  466                 vstrp = &vstr[vlen];
        ADD      R0,SP,#+36
        ADDS     R0,R7,R0
        MOVS     R6,R0
//  467 
//  468                 dschar = FALSE;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  469                 if (IS_FLAG_ZERO(flags_used))
        LSLS     R0,R9,#+28
        BPL.N    ??printk_48
//  470                 {
//  471                     if (IS_FLAG_POUND(flags_used))
        LSLS     R0,R9,#+27
        BPL.N    ??printk_49
//  472                     {
//  473                         printk_putc('0', &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,#+48
        BL       printk_putc
//  474                         printk_putc('x', &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,#+120
        BL       printk_putc
//  475                         /*vlen += 2;*/
//  476                         dschar = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
//  477                     }
//  478                     printk_pad_zero (vlen, field_width, &count, info);
??printk_49:
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_zero
//  479                     vlen = field_width;
        MOV      R7,R10
        B.N      ??printk_50
//  480                 }
//  481                 else
//  482                 {
//  483                     if (!IS_FLAG_MINUS(flags_used))
??printk_48:
        LSLS     R0,R9,#+31
        BMI.N    ??printk_50
//  484                     {
//  485                         if (IS_FLAG_POUND(flags_used))
        LSLS     R0,R9,#+27
        BPL.N    ??printk_51
//  486                         {
//  487                             vlen += 2;
        ADDS     R7,R7,#+2
//  488                         }
//  489                         printk_pad_space (vlen, field_width, &count, info);
??printk_51:
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_space
//  490                         if (IS_FLAG_POUND(flags_used))
        LSLS     R0,R9,#+27
        BPL.N    ??printk_50
//  491                         {
//  492                             printk_putc('0', &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,#+48
        BL       printk_putc
//  493                             printk_putc('x', &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,#+120
        BL       printk_putc
//  494                             dschar = TRUE;
        MOVS     R0,#+1
        STR      R0,[SP, #+20]
//  495                         }
//  496                     }
//  497                 }
//  498 
//  499                 if ((IS_FLAG_POUND(flags_used)) && !dschar)
??printk_50:
        LSLS     R0,R9,#+27
        BPL.N    ??printk_52
        LDR      R0,[SP, #+20]
        CMP      R0,#+0
        BNE.N    ??printk_52
//  500                 {
//  501                     printk_putc('0', &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,#+48
        BL       printk_putc
//  502                     printk_putc('x', &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        MOVS     R0,#+120
        BL       printk_putc
//  503                     vlen += 2;
        ADDS     R7,R7,#+2
//  504                 }
//  505                 goto cont_xd;
??printk_52:
        B.N      ??printk_47
//  506 
//  507             case 'o':
//  508                 uval = (uint32)va_arg(ap, uint32);
??printk_33:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        STR      R0,[SP, #+8]
//  509                 vlen = printk_mknumstr(vstr,&uval,FALSE,8);
        MOVS     R3,#+8
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       printk_mknumstr
        MOVS     R7,R0
//  510                 goto cont_u;
        B.N      ??printk_53
//  511             case 'b':
//  512                 uval = (uint32)va_arg(ap, uint32);
??printk_29:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        STR      R0,[SP, #+8]
//  513                 vlen = printk_mknumstr(vstr,&uval,FALSE,2);
        MOVS     R3,#+2
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       printk_mknumstr
        MOVS     R7,R0
//  514                 goto cont_u;
        B.N      ??printk_53
//  515             case 'p':
//  516                 uval = (uint32)va_arg(ap, void *);
??printk_34:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        STR      R0,[SP, #+8]
//  517                 vlen = printk_mknumstr(vstr,&uval,FALSE,16);
        MOVS     R3,#+16
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       printk_mknumstr
        MOVS     R7,R0
//  518                 goto cont_u;
        B.N      ??printk_53
//  519             case 'u':
//  520                 uval = (uint32)va_arg(ap, uint32);
??printk_36:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        STR      R0,[SP, #+8]
//  521                 vlen = printk_mknumstr(vstr,&uval,FALSE,10);
        MOVS     R3,#+10
        MOVS     R2,#+0
        ADD      R1,SP,#+8
        ADD      R0,SP,#+36
        BL       printk_mknumstr
        MOVS     R7,R0
//  522 
//  523                 cont_u:
//  524                     vstrp = &vstr[vlen];
??printk_53:
        ADD      R0,SP,#+36
        ADDS     R0,R7,R0
        MOVS     R6,R0
//  525 
//  526                     if (IS_FLAG_ZERO(flags_used))
        LSLS     R0,R9,#+28
        BPL.N    ??printk_54
//  527                     {
//  528                         printk_pad_zero (vlen, field_width, &count, info);
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_zero
//  529                         vlen = field_width;
        MOV      R7,R10
        B.N      ??printk_47
//  530                     }
//  531                     else
//  532                     {
//  533                         if (!IS_FLAG_MINUS(flags_used))
??printk_54:
        LSLS     R0,R9,#+31
        BMI.N    ??printk_47
//  534                         {
//  535                             printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_space
//  536                         }
//  537                     }
//  538 
//  539                 cont_xd:
//  540                     while (*vstrp)
??printk_47:
        LDRSB    R0,[R6, #+0]
        CMP      R0,#+0
        BEQ.N    ??printk_55
//  541                         printk_putc(*vstrp--, &count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        LDRSB    R0,[R6, #+0]
        BL       printk_putc
        SUBS     R6,R6,#+1
        B.N      ??printk_47
//  542 
//  543                     if (IS_FLAG_MINUS(flags_used))
??printk_55:
        LSLS     R0,R9,#+31
        BPL.N    ??printk_56
//  544                     {
//  545                         printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_space
//  546                     }
//  547                 break;
??printk_56:
        B.N      ??printk_5
//  548 
//  549             case 'c':
//  550                 cval = (int8)va_arg(ap, uint32);
??printk_30:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        STR      R0,[SP, #+28]
//  551                 printk_putc(cval,&count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        LDR      R0,[SP, #+28]
        BL       printk_putc
//  552                 break;
        B.N      ??printk_5
//  553             case 's':
//  554                 sval = (int8 *)va_arg(ap, int8 *);
??printk_35:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        MOV      R8,R0
//  555                 if (sval)
        CMP      R8,#+0
        BEQ.N    ??printk_57
//  556                 {
//  557                     vlen = strlen(sval);
        MOV      R0,R8
        BL       strlen
        MOVS     R7,R0
//  558                     if (!IS_FLAG_MINUS(flags_used))
        LSLS     R0,R9,#+31
        BMI.N    ??printk_58
//  559                     {
//  560                         printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_space
//  561                     }
//  562                     while (*sval)
??printk_58:
        LDRSB    R0,[R8, #+0]
        CMP      R0,#+0
        BEQ.N    ??printk_59
//  563                         printk_putc(*sval++,&count, info);
        MOVS     R2,R4
        ADD      R1,SP,#+0
        LDRSB    R0,[R8, #+0]
        BL       printk_putc
        ADDS     R8,R8,#+1
        B.N      ??printk_58
//  564                     if (IS_FLAG_MINUS(flags_used))
??printk_59:
        LSLS     R0,R9,#+31
        BPL.N    ??printk_57
//  565                     {
//  566                         printk_pad_space (vlen, field_width, &count, info);
        MOVS     R3,R4
        ADD      R2,SP,#+0
        MOV      R1,R10
        MOVS     R0,R7
        BL       printk_pad_space
//  567                     }
//  568                 }
//  569                 break;
??printk_57:
        B.N      ??printk_5
//  570             case 'n':
//  571                 ivalp = (int32 *)va_arg(ap, int32 *);
??printk_32:
        LDR      R0,[R5, #+0]
        ADDS     R5,R5,#+4
        STR      R0,[SP, #+32]
//  572                 *ivalp = count;
        LDR      R0,[SP, #+0]
        LDR      R1,[SP, #+32]
        STR      R0,[R1, #+0]
//  573                 break;
        B.N      ??printk_5
//  574             default:
//  575                 printk_putc(c,&count, info);
??printk_37:
        MOVS     R2,R4
        ADD      R1,SP,#+0
        LDR      R0,[SP, #+4]
        BL       printk_putc
//  576                 break;
//  577         }
//  578     }
??printk_5:
        ADDS     R11,R11,#+1
        B.N      ??printk_0
//  579     return count;
??printk_1:
        LDR      R0,[SP, #+0]
        ADD      SP,SP,#+76
        POP      {R4-R11,PC}      ;; return
//  580 }
//  581 
//  582 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  583 int32 printf (const int8 *fmt, ...)
//  584 {
printf:
        PUSH     {R1-R3}
        PUSH     {R1-R6,LR}
        MOVS     R4,R0
//  585     va_list ap;
//  586     int32 rvalue;
//  587     PRINTK_INFO info;
//  588 
//  589 
//  590     info.dest = DEST_CONSOLE;
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
//  591     info.func = &out_char;
        LDR.N    R0,??DataTable0
        STR      R0,[SP, #+4]
//  592     /*
//  593      * Initialize the pointer to the variable length argument list.
//  594      */
//  595     va_start(ap, fmt);
        ADD      R0,SP,#+28
        MOVS     R5,R0
//  596     rvalue = printk(&info, fmt, ap);
        MOVS     R2,R5
        MOVS     R1,R4
        ADD      R0,SP,#+0
        BL       printk
        MOVS     R6,R0
//  597     /*
//  598      * Cleanup the variable length argument list.
//  599      */
//  600     va_end(ap);
//  601     return rvalue;
        MOVS     R0,R6
        POP      {R1-R6}
        LDR      PC,[SP], #+16    ;; return
//  602 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     out_char
//  603 
//  604 /********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  605 int32 sprintf (int8 *s, const int8 *fmt, ...)
//  606 {
sprintf:
        PUSH     {R2,R3}
        PUSH     {R1-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  607     va_list ap;
//  608     int32 rvalue = 0;
        MOVS     R7,#+0
//  609     PRINTK_INFO info;
//  610 
//  611     /*
//  612      * Initialize the pointer to the variable length argument list.
//  613      */
//  614     if (s != 0)
        CMP      R4,#+0
        BEQ.N    ??sprintf_0
//  615     {
//  616         info.dest = DEST_STRING;
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
//  617         info.loc = s;
        STR      R4,[SP, #+8]
//  618         va_start(ap, fmt);
        ADD      R0,SP,#+32
        MOVS     R6,R0
//  619         rvalue = printk(&info, fmt, ap);
        MOVS     R2,R6
        MOVS     R1,R5
        ADD      R0,SP,#+0
        BL       printk
        MOVS     R7,R0
//  620         *info.loc = '\0';
        MOVS     R0,#+0
        LDR      R1,[SP, #+8]
        STRB     R0,[R1, #+0]
//  621         va_end(ap);
//  622     }
//  623     return rvalue;
??sprintf_0:
        MOVS     R0,R7
        POP      {R1-R7}
        LDR      PC,[SP], #+12    ;; return
//  624 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  625 
//  626 /********************************************************************/
// 
// 1 434 bytes in section .text
// 
// 1 434 bytes of CODE memory
//
//Errors: none
//Warnings: none
