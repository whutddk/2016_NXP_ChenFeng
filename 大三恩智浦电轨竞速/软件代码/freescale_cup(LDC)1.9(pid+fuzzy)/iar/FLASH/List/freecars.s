///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:52
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\freecars.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\freecars.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\freecars.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_PutChar
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_i2d
        EXTERN bz_set
        EXTERN ctl
        EXTERN dec_sec
        EXTERN flag_stop
        EXTERN timer_debug

        PUBLIC FreeCarsDataNum
        PUBLIC SerialPortRx
        PUBLIC UartCmd
        PUBLIC UartData
        PUBLIC UartDebug
        PUBLIC flag_receive
        PUBLIC freecars_isr
        PUBLIC `push`
        PUBLIC sendDataToScope
        PUBLIC uSendBuf

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\ITAC\freecars.c
//    1 /*
//    2 name：  FreeCars上位机示波器例程
//    3 author：FreeCars军哥
//    4 Date:   2014-10-22
//    5 site:   Http://FreeCars.taobao.com
//    6 QQ群：  384273254，149168724
//    7 版权：  此代码为FreeCars上位机协议代码，允许任意使用，也允许用于商业用途，但请保留此段文字！
//    8 tips:   强烈建议小伙伴们使用FreeCars出品的蓝牙模块套装，无线上位机从这里开始！
//    9 */
//   10 #include "include.h"
//   11 
//   12 #define IsSingleLine  0
//   13 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   14 uint8 uSendBuf[UartDataNum*2]={0};
uSendBuf:
        DS8 80

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   15 uint8 FreeCarsDataNum=UartDataNum*2;
FreeCarsDataNum:
        DATA
        DC8 80
//   16 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
//   17 double UartData[9] = {0};
UartData:
        DS8 72

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   18 SerialPortType SerialPortRx;
SerialPortRx:
        DS8 108
//   19 
//   20 /*
//   21 向某个通道缓冲区填充数据
//   22 chanel：通道
//   23 data  ：数据-32768~32767
//   24 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   25 void push(uint8 chanel,uint16 data)
//   26 {
//   27     uSendBuf[chanel*2]=data/256;
`push`:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R2,R1,R2
        LDR.W    R3,??DataTable4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRB     R2,[R3, R0, LSL #+1]
//   28     uSendBuf[chanel*2+1]=data%256;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOV      R2,#+256
        SDIV     R3,R1,R2
        MLS      R3,R3,R2,R1
        LDR.W    R2,??DataTable4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADDS     R2,R2,R0, LSL #+1
        STRB     R3,[R2, #+1]
//   29 }
        BX       LR               ;; return
//   30 
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void sendDataToScope()
//   33 {
sendDataToScope:
        PUSH     {R3-R5,LR}
//   34   uint8 i,sum=0; 
        MOVS     R5,#+0
//   35   
//   36   LPLD_UART_PutChar(FreeCarsUARTPort,251);
        MVNS     R1,#+4
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   37   LPLD_UART_PutChar(FreeCarsUARTPort,109);
        MOVS     R1,#+109
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   38   LPLD_UART_PutChar(FreeCarsUARTPort,37);
        MOVS     R1,#+37
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   39   sum+=(251);     
        SUBS     R5,R5,#+5
//   40   sum+=(109);
        ADDS     R5,R5,#+109
//   41   sum+=(37);
        ADDS     R5,R5,#+37
//   42   for(i=0;i<FreeCarsDataNum;i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??sendDataToScope_0:
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCS.N    ??sendDataToScope_1
//   43   {
//   44     LPLD_UART_PutChar(FreeCarsUARTPort,uSendBuf[i]);
        LDR.N    R0,??DataTable4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R1,[R4, R0]
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   45     sum+=uSendBuf[i];      
        LDR.N    R0,??DataTable4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRB     R0,[R4, R0]
        ADDS     R5,R0,R5
//   46   }
        ADDS     R4,R4,#+1
        B.N      ??sendDataToScope_0
//   47  LPLD_UART_PutChar(FreeCarsUARTPort,sum);
??sendDataToScope_1:
        MOVS     R1,R5
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   48 }
        POP      {R0,R4,R5,PC}    ;; return
//   49 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   50 void freecars_isr(void)//接收中断
//   51 {
freecars_isr:
        PUSH     {R3-R7,LR}
//   52   int i,b,d1;
//   53   uint32 d;
//   54   {
//   55 #if USE_UART5
//   56     SerialPortRx.Data = LPLD_UART_GetChar(UART5); 
//   57 #else
//   58     SerialPortRx.Data = LPLD_UART_GetChar(UART0); 
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+4]
//   59 #endif
//   60        
//   61     if( SerialPortRx.Stack < UartRxBufferLen )
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BGE.W    ??freecars_isr_0
//   62     {
//   63       SerialPortRx.Buffer[SerialPortRx.Stack++] = SerialPortRx.Data;
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+4]
        LDR.N    R1,??DataTable4_3
        LDR.N    R2,??DataTable4_3
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        STRB     R0,[R1, #+6]
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
//   64       
//   65       if(   SerialPortRx.Stack >= UartRxDataLen 
//   66          && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen]  ==0xff //校验字头
//   67            && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+1]==0x55
//   68              && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+2]==0xaa
//   69                && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+3]==0x10 )
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+41
        BLT.W    ??freecars_isr_1
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-35]
        CMP      R0,#+255
        BNE.W    ??freecars_isr_1
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-34]
        CMP      R0,#+85
        BNE.W    ??freecars_isr_1
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-33]
        CMP      R0,#+170
        BNE.N    ??freecars_isr_1
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-32]
        CMP      R0,#+16
        BNE.N    ??freecars_isr_1
//   70       {  
//   71         SerialPortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+107]
//   72         b = SerialPortRx.Stack - UartRxDataLen; 
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+41
        MOVS     R5,R0
//   73         for(i=b; i<SerialPortRx.Stack-1; i++) 
        MOVS     R4,R5
??freecars_isr_2:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R4,R0
        BGE.N    ??freecars_isr_3
//   74         {
//   75           SerialPortRx.Check += SerialPortRx.Buffer[i];
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_3
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+6]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+107]
//   76         }
        ADDS     R4,R4,#+1
        B.N      ??freecars_isr_2
//   77         
//   78         if( SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1] )
??freecars_isr_3:
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_3
        LDR.N    R2,??DataTable4_3
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BNE.N    ??freecars_isr_4
//   79         {   //校验成功，进行数据解算
//   80           for(i = 0; i<9; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??freecars_isr_5:
        CMP      R4,#+9
        BGE.N    ??freecars_isr_6
//   81           {
//   82             d = SerialPortRx.Buffer[b+i*4+4]*0x1000000L + SerialPortRx.Buffer[b+i*4+5]*0x10000L + SerialPortRx.Buffer[b+i*4+6]*0x100L + SerialPortRx.Buffer[b+i*4+7];
        LDR.N    R0,??DataTable4_3
        ADDS     R1,R5,R4, LSL #+2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+10]
        MOVS     R1,#+16777216
        LDR.N    R2,??DataTable4_3
        ADDS     R3,R5,R4, LSL #+2
        ADDS     R2,R3,R2
        LDRB     R2,[R2, #+11]
        MOVS     R3,#+65536
        MULS     R2,R3,R2
        MLA      R0,R1,R0,R2
        LDR.N    R1,??DataTable4_3
        ADDS     R2,R5,R4, LSL #+2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+12]
        MOV      R2,#+256
        MLA      R0,R2,R1,R0
        LDR.N    R1,??DataTable4_3
        ADDS     R2,R5,R4, LSL #+2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+13]
        UXTAB    R0,R0,R1
        MOVS     R7,R0
//   83             if(d>0x7FFFFFFF)
        CMP      R7,#-2147483648
        BCC.N    ??freecars_isr_7
//   84             {
//   85               d1 = 0x7FFFFFFF - d;
        MVNS     R0,#-2147483648
        SUBS     R0,R0,R7
        MOVS     R6,R0
        B.N      ??freecars_isr_8
//   86             }
//   87             else
//   88             {
//   89               d1 = d;
??freecars_isr_7:
        MOVS     R6,R7
//   90             }
//   91             UartData[i]=d1;
??freecars_isr_8:
        MOVS     R0,R6
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable4_4
        ADDS     R2,R2,R4, LSL #+3
        STRD     R0,R1,[R2, #+0]
//   92             UartData[i]/=65536.0;
        LDR.N    R0,??DataTable4_4
        ADDS     R2,R0,R4, LSL #+3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_5  ;; 0x40f00000
        BL       __aeabi_ddiv
        LDR.N    R2,??DataTable4_4
        ADDS     R2,R2,R4, LSL #+3
        STRD     R0,R1,[R2, #+0]
//   93           }
        ADDS     R4,R4,#+1
        B.N      ??freecars_isr_5
//   94           UartDebug();  //转去处理，把受到的数据付给变量
??freecars_isr_6:
        BL       UartDebug
//   95         }
//   96         SerialPortRx.Stack = 0;
??freecars_isr_4:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
        B.N      ??freecars_isr_9
//   97       }
//   98       else if(   SerialPortRx.Stack >= UartRxCmdLen //UartRxDataLen个数为一帧
//   99               && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen]  ==0xff
//  100                 && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+1]==0x55
//  101                   && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+2]==0xaa
//  102                     && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+3]==0x77 )//cmd
??freecars_isr_1:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+7
        BLT.N    ??freecars_isr_9
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #-1]
        CMP      R0,#+255
        BNE.N    ??freecars_isr_9
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        LDRB     R0,[R1, R0]
        CMP      R0,#+85
        BNE.N    ??freecars_isr_9
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+1]
        CMP      R0,#+170
        BNE.N    ??freecars_isr_9
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+2]
        CMP      R0,#+119
        BNE.N    ??freecars_isr_9
//  103       {
//  104         SerialPortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+107]
//  105         b = SerialPortRx.Stack - UartRxCmdLen; //起始位
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+7
        MOVS     R5,R0
//  106         for(i=b; i<SerialPortRx.Stack-1; i++)  //除校验位外的位进行校验
        MOVS     R4,R5
??freecars_isr_10:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R4,R0
        BGE.N    ??freecars_isr_11
//  107         {
//  108           SerialPortRx.Check += SerialPortRx.Buffer[i];//校验
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_3
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+6]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+107]
//  109         }
        ADDS     R4,R4,#+1
        B.N      ??freecars_isr_10
//  110         if( SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1] )
??freecars_isr_11:
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_3
        LDR.N    R2,??DataTable4_3
        LDR      R2,[R2, #+0]
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BNE.N    ??freecars_isr_12
//  111         {   //校验成功
//  112           UartCmd(UartCmdNum,UartCmdData);//处理接收到的命令，付给MCU命令变量
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_3
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable4_3
        LDR.N    R2,??DataTable4_3
        LDR      R2,[R2, #+0]
        ADDS     R0,R2,R0
        LDRB     R0,[R0, #+3]
        BL       UartCmd
//  113         }
//  114         SerialPortRx.Stack = 0;
??freecars_isr_12:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
        B.N      ??freecars_isr_9
//  115       }
//  116 #if     FUZZY
//  117       else if ( SerialPortRx.Stack >= UartRxDeltaLen //UartRxDataLen个数为一帧
//  118               && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDeltaLen]  == 0xff
//  119                 && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDeltaLen+1] == 0x55
//  120                   && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDeltaLen+2] == 0xaa
//  121                     && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDeltaLen+3] == 0x88 ) //FUZZY DELTA
//  122       {
//  123         SerialPortRx.Check = 0;
//  124         b = SerialPortRx.Stack - UartRxDeltaLen; 
//  125         for(i=b; i<SerialPortRx.Stack-1; i++) 
//  126         {
//  127           SerialPortRx.Check += SerialPortRx.Buffer[i];
//  128         }
//  129         if( SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1] )
//  130         {   //校验成功
//  131           uint8 i,j;
//  132           for ( i = 0;i < 7; i++ )
//  133           {
//  134             for ( j = 0;j<3;j++ )
//  135             {
//  136               E1_memf[i][j] = (int8)SerialPortRx.Buffer[b+4+i*3+j];
//  137               U_memf[i][j] =  (int16) ( (int8)SerialPortRx.Buffer[b+40+i*3+j]);   
//  138             }
//  139           }
//  140           for ( i = 0;i < 5;i++ )
//  141           {
//  142             for ( j = 0;j<3;j++)
//  143             {
//  144                E2_memf[i][j] = (int8)SerialPortRx.Buffer[b+25+i*3+j];
//  145             }
//  146           }
//  147           bz_set(fuzzyrec);
//  148         }
//  149         
//  150       }
//  151       else if ( SerialPortRx.Stack >= UartRxRuleLen //UartRxDataLen个数为一帧
//  152               && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxRuleLen]  == 0xff
//  153                 && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxRuleLen+1] == 0x55
//  154                   && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxRuleLen+2] == 0xaa
//  155                     && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxRuleLen+3] == 0x80 )
//  156       {
//  157         SerialPortRx.Check = 0;
//  158         b = SerialPortRx.Stack - UartRxRuleLen; 
//  159         for(i=b; i<SerialPortRx.Stack-1; i++) 
//  160         {
//  161           SerialPortRx.Check += SerialPortRx.Buffer[i];
//  162         }
//  163                 if( SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1] )
//  164         {  
//  165           //校验成功
//  166           uint8 *p = &rule_list[0][0];
//  167           uint8 i = 0;
//  168           for ( i = 0;i < 35 ; i++ )
//  169           {
//  170             *(p+i) = SerialPortRx.Buffer[b+4+i];
//  171           }
//  172           
//  173           bz_set(fuzzyrec);
//  174         }
//  175       }
//  176 #endif
//  177     } 
//  178     else
//  179     {
//  180       SerialPortRx.Stack = 0;
??freecars_isr_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
//  181     } 
//  182   }
//  183 }
??freecars_isr_9:
        POP      {R0,R4-R7,PC}    ;; return
//  184 
//  185 /*接收数据处理*/

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  186 uint8 flag_receive = 0;
flag_receive:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  187 void UartDebug()
//  188 {
UartDebug:
        PUSH     {R7,LR}
//  189   ctl.motto.aim = (int16)UartData[0]; 
        LDR.N    R2,??DataTable4_4
        LDRD     R0,R1,[R2, #+0]
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable4_6
        STRH     R0,[R1, #+46]
//  190 
//  191   dec_sec = (uint8)(UartData[8]);
        LDR.N    R2,??DataTable4_4
        LDRD     R0,R1,[R2, #+64]
        BL       __aeabi_d2iz
        LDR.N    R1,??DataTable4_7
        STRB     R0,[R1, #+0]
//  192   bz_set(datarec);
        MOVS     R0,#+1
        BL       bz_set
//  193 }
        POP      {R0,PC}          ;; return
//  194 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  195 void UartCmd(uint8 cmdnum,uint8 cmddata)///
//  196 {
UartCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  197   switch(cmddata)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        CMP      R0,#+6
        BEQ.N    ??UartCmd_0
        CMP      R0,#+7
        BEQ.N    ??UartCmd_1
        CMP      R0,#+8
        BEQ.N    ??UartCmd_2
        CMP      R0,#+9
        BEQ.N    ??UartCmd_3
        CMP      R0,#+10
        BEQ.N    ??UartCmd_4
        CMP      R0,#+11
        BEQ.N    ??UartCmd_5
        CMP      R0,#+12
        BEQ.N    ??UartCmd_6
        CMP      R0,#+100
        BEQ.N    ??UartCmd_7
        CMP      R0,#+101
        BEQ.N    ??UartCmd_8
        CMP      R0,#+102
        BEQ.N    ??UartCmd_9
        CMP      R0,#+103
        BEQ.N    ??UartCmd_10
        CMP      R0,#+104
        BEQ.N    ??UartCmd_11
        B.N      ??UartCmd_12
//  198   {
//  199     case(6):break;//F6
??UartCmd_0:
        B.N      ??UartCmd_12
//  200     case(7):break;//F7
??UartCmd_1:
        B.N      ??UartCmd_12
//  201     case(8):break;//F8
??UartCmd_2:
        B.N      ??UartCmd_12
//  202     case(9):break;//F9
??UartCmd_3:
        B.N      ??UartCmd_12
//  203     case(10):break;//F10
??UartCmd_4:
        B.N      ??UartCmd_12
//  204     case(11):break;//F11
??UartCmd_5:
        B.N      ??UartCmd_12
//  205     case(12):break;//F12
??UartCmd_6:
        B.N      ??UartCmd_12
//  206     case(100):break;//PAUSE
??UartCmd_7:
        B.N      ??UartCmd_12
//  207     case(101):flag_stop = 0;break;//HOME
??UartCmd_8:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_8
        STRB     R0,[R1, #+0]
        B.N      ??UartCmd_12
//  208     case(102):timer_debug();break;//PG UP
??UartCmd_9:
        BL       timer_debug
        B.N      ??UartCmd_12
//  209     case(103):break;//PF DN
??UartCmd_10:
        B.N      ??UartCmd_12
//  210     case(104):flag_stop = 1;break;//END
??UartCmd_11:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_8
        STRB     R0,[R1, #+0]
//  211 #if FUZZY
//  212     case(105):send_rule();break;
//  213     case(106):send_delta();break;
//  214 #endif
//  215   }
//  216   bz_set(datarec);
??UartCmd_12:
        MOVS     R0,#+1
        BL       bz_set
//  217 }
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     uSendBuf

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     FreeCarsDataNum

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     SerialPortRx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     UartData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40f00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     dec_sec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     flag_stop

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  218 
//  219 #if     FUZZY
//  220 void send_rule()
//  221 {
//  222   uint8 i,sum=0; 
//  223   uint8 *p = &rule_list[0][0];
//  224   
//  225   LPLD_UART_PutChar(FreeCarsUARTPort,0xAB);
//  226   LPLD_UART_PutChar(FreeCarsUARTPort,0xCD);
//  227   LPLD_UART_PutChar(FreeCarsUARTPort,0xEF);
//  228   
//  229   sum += 0xAB;
//  230   sum += 0xCD;
//  231   sum += 0xEF;
//  232   
//  233   for ( i = 0; i < 35;i++)
//  234   {
//  235     LPLD_UART_PutChar(FreeCarsUARTPort,*(p+i));
//  236     sum += *(p+i);
//  237   }
//  238   
//  239   LPLD_UART_PutChar(FreeCarsUARTPort,sum);
//  240 }
//  241 
//  242 void send_delta()
//  243 {
//  244   uint8 i,sum=0; 
//  245   int8 *p;
//  246   int16 *q;
//  247   int8 U_send;
//  248   
//  249   LPLD_UART_PutChar(FreeCarsUARTPort,0xEF);
//  250   LPLD_UART_PutChar(FreeCarsUARTPort,0xCD);
//  251   LPLD_UART_PutChar(FreeCarsUARTPort,0xAB);
//  252   
//  253   sum += 0xEF;
//  254   sum += 0xCD;
//  255   sum += 0xAB;
//  256   
//  257   p = &E1_memf[0][0];
//  258   
//  259   for ( i = 0; i < 21;i++)
//  260   {
//  261     LPLD_UART_PutChar(FreeCarsUARTPort,*(p+i));
//  262     sum += *(p+i);
//  263   }
//  264   
//  265   p = &E2_memf[0][0];
//  266     for ( i = 0; i < 21;i++)
//  267   {
//  268     LPLD_UART_PutChar(FreeCarsUARTPort,*(p+i));
//  269     sum += *(p+i);
//  270   }
//  271   
//  272   q = &U_memf[0][0];
//  273   for ( i = 0; i < 21;i++)
//  274   {
//  275     U_send = (int8)(*(q+i) );
//  276     LPLD_UART_PutChar(FreeCarsUARTPort,U_send);
//  277     sum += U_send;
//  278   }
//  279   
//  280   LPLD_UART_PutChar(FreeCarsUARTPort,sum);
//  281 }
//  282 #endif
// 
// 261 bytes in section .bss
//   1 byte  in section .data
// 842 bytes in section .text
// 
// 842 bytes of CODE memory
// 262 bytes of DATA memory
//
//Errors: none
//Warnings: 1
