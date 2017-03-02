///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       12/Mar/2016  16:29:26
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\common\queue.c
//    Command line =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\common\queue.c -D LPLD_K60 -D
//        USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\sensor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\queue.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC queue_add
        PUBLIC queue_init
        PUBLIC queue_isempty
        PUBLIC queue_move
        PUBLIC queue_peek
        PUBLIC queue_remove

// D:\LPLDV3.1\LPLD_OSKinetis_V3\lib\common\queue.c
//    1 /**
//    2  * @file queue.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief ʵ���Ƚ��ȳ�����
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
//   22 
//   23 #include "common.h"
//   24 #include "queue.h"
//   25 
//   26 /********************************************************************/
//   27 /* 
//   28  * Initialize the specified queue to an empty state
//   29  * 
//   30  * Parameters:
//   31  *  q   Pointer to queue structure
//   32  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   33 void queue_init(QUEUE *q)
//   34 {
//   35     q->head = NULL;
queue_init:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   36 }
        BX       LR               ;; return
//   37 /********************************************************************/
//   38 /* 
//   39  * Check for an empty queue
//   40  *
//   41  * Parameters:
//   42  *  q       Pointer to queue structure
//   43  * 
//   44  * Return Value:
//   45  *  1 if Queue is empty
//   46  *  0 otherwise
//   47  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   48 int32 queue_isempty(QUEUE *q)
//   49 {
//   50     return (q->head == NULL);
queue_isempty:
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??queue_isempty_0
        MOVS     R0,#+1
        B.N      ??queue_isempty_1
??queue_isempty_0:
        MOVS     R0,#+0
??queue_isempty_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   51 }
//   52 /********************************************************************/
//   53 /* 
//   54  * Add an item to the end of the queue 
//   55  *
//   56  * Parameters:
//   57  *  q       Pointer to queue structure
//   58  *  node    New node to add to the queue
//   59  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 void queue_add(QUEUE *q, QNODE *node)
//   61 {
queue_add:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   62     if (queue_isempty(q))
        MOVS     R0,R4
        BL       queue_isempty
        CMP      R0,#+0
        BEQ.N    ??queue_add_0
//   63     {
//   64         q->head = q->tail = node;
        STR      R5,[R4, #+4]
        LDR      R0,[R4, #+4]
        STR      R0,[R4, #+0]
        B.N      ??queue_add_1
//   65     }
//   66     else
//   67     {
//   68         q->tail->next = node;
??queue_add_0:
        LDR      R0,[R4, #+4]
        STR      R5,[R0, #+0]
//   69         q->tail = node;
        STR      R5,[R4, #+4]
//   70     }
//   71     
//   72     node->next = NULL;
??queue_add_1:
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//   73 }
        POP      {R0,R4,R5,PC}    ;; return
//   74 
//   75 /********************************************************************/
//   76 /* 
//   77  * Remove and return first (oldest) entry from the specified queue 
//   78  *
//   79  * Parameters:
//   80  *  q       Pointer to queue structure
//   81  *
//   82  * Return Value:
//   83  *  Node at head of queue - NULL if queue is empty
//   84  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   85 QNODE* queue_remove(QUEUE *q)
//   86 {
queue_remove:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   87     QNODE *oldest;
//   88     
//   89     if (queue_isempty(q))
        MOVS     R0,R4
        BL       queue_isempty
        CMP      R0,#+0
        BEQ.N    ??queue_remove_0
//   90         return NULL;
        MOVS     R0,#+0
        B.N      ??queue_remove_1
//   91     
//   92     oldest = q->head;
??queue_remove_0:
        LDR      R0,[R4, #+0]
        MOVS     R5,R0
//   93     q->head = oldest->next;
        LDR      R0,[R5, #+0]
        STR      R0,[R4, #+0]
//   94     return oldest;
        MOVS     R0,R5
??queue_remove_1:
        POP      {R1,R4,R5,PC}    ;; return
//   95 }
//   96 /********************************************************************/
//   97 /* 
//   98  * Peek into the queue and return pointer to first (oldest) entry.
//   99  * The queue is not modified
//  100  *
//  101  * Parameters:
//  102  *  q       Pointer to queue structure
//  103  *
//  104  * Return Value:
//  105  *  Node at head of queue - NULL if queue is empty
//  106  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 QNODE* queue_peek(QUEUE *q)
//  108 {
//  109     return q->head;
queue_peek:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  110 }
//  111 /********************************************************************/
//  112 /* 
//  113  * Move entire contents of one queue to the other
//  114  *
//  115  * Parameters:
//  116  *  src     Pointer to source queue
//  117  *  dst     Pointer to destination queue
//  118  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  119 void queue_move(QUEUE *dst, QUEUE *src)
//  120 {
queue_move:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  121     if (queue_isempty(src))
        MOVS     R0,R5
        BL       queue_isempty
        CMP      R0,#+0
        BNE.N    ??queue_move_0
//  122         return;
//  123     
//  124     if (queue_isempty(dst))
??queue_move_1:
        MOVS     R0,R4
        BL       queue_isempty
        CMP      R0,#+0
        BEQ.N    ??queue_move_2
//  125         dst->head = src->head;
        LDR      R0,[R5, #+0]
        STR      R0,[R4, #+0]
        B.N      ??queue_move_3
//  126     else
//  127         dst->tail->next = src->head;
??queue_move_2:
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+4]
        STR      R0,[R1, #+0]
//  128 
//  129     dst->tail = src->tail;
??queue_move_3:
        LDR      R0,[R5, #+4]
        STR      R0,[R4, #+4]
//  130     src->head = NULL;
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
//  131     return;
??queue_move_0:
        POP      {R0,R4,R5,PC}    ;; return
//  132 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  133 /********************************************************************/
// 
// 140 bytes in section .text
// 
// 140 bytes of CODE memory
//
//Errors: none
//Warnings: none
