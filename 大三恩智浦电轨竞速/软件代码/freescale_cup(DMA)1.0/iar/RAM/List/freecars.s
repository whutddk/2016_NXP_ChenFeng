///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Mar/2016  20:36:13
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\ITAC\freecars.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\ITAC\freecars.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\iar\RAM\List\freecars.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_UART_GetChar
        EXTERN LPLD_UART_PutChar
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_i2d
        EXTERN bz_set
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
        PUBLIC sendDataToCCDViewer
        PUBLIC sendDataToScope
        PUBLIC uSendBuf

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(DMA)1.0\app\ITAC\freecars.c
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
        DS8 36

        SECTION `.data`:DATA:REORDER:NOROOT(0)
//   15 uint8 FreeCarsDataNum=UartDataNum*2;
FreeCarsDataNum:
        DATA
        DC8 34
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
        LDR.W    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   37   LPLD_UART_PutChar(FreeCarsUARTPort,109);
        MOVS     R1,#+109
        LDR.W    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//   38   LPLD_UART_PutChar(FreeCarsUARTPort,37);
        MOVS     R1,#+37
        LDR.W    R0,??DataTable4_1  ;; 0x4006a000
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
        LDR.W    R0,??DataTable4_2
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCS.N    ??sendDataToScope_1
//   43   {
//   44     LPLD_UART_PutChar(FreeCarsUARTPort,uSendBuf[i]);
        LDR.W    R0,??DataTable4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDRSB    R1,[R4, R0]
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable4_1  ;; 0x4006a000
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
//   54   
//   55   {
//   56     SerialPortRx.Data = LPLD_UART_GetChar(UART0);  
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_GetChar
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+4]
//   57     
//   58     if( SerialPortRx.Stack < UartRxBufferLen )
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+100
        BGE.W    ??freecars_isr_0
//   59     {
//   60       SerialPortRx.Buffer[SerialPortRx.Stack++] = SerialPortRx.Data;
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
//   61       
//   62       if(   SerialPortRx.Stack >= UartRxDataLen 
//   63          && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen]  ==0xff //校验字头
//   64            && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+1]==0x55
//   65              && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+2]==0xaa
//   66                && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxDataLen+3]==0x10 )
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
//   67       {  
//   68         SerialPortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+107]
//   69         b = SerialPortRx.Stack - UartRxDataLen; 
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+41
        MOVS     R5,R0
//   70         for(i=b; i<SerialPortRx.Stack-1; i++) 
        MOVS     R4,R5
??freecars_isr_2:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R4,R0
        BGE.N    ??freecars_isr_3
//   71         {
//   72           SerialPortRx.Check += SerialPortRx.Buffer[i];
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_3
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+6]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+107]
//   73         }
        ADDS     R4,R4,#+1
        B.N      ??freecars_isr_2
//   74         
//   75         if( SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1] )
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
//   76         {   //校验成功，进行数据解算
//   77           for(i = 0; i<9; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??freecars_isr_5:
        CMP      R4,#+9
        BGE.N    ??freecars_isr_6
//   78           {
//   79             d = SerialPortRx.Buffer[b+i*4+4]*0x1000000L + SerialPortRx.Buffer[b+i*4+5]*0x10000L + SerialPortRx.Buffer[b+i*4+6]*0x100L + SerialPortRx.Buffer[b+i*4+7];
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
//   80             if(d>0x7FFFFFFF)
        CMP      R7,#-2147483648
        BCC.N    ??freecars_isr_7
//   81             {
//   82               d1 = 0x7FFFFFFF - d;
        MVNS     R0,#-2147483648
        SUBS     R0,R0,R7
        MOVS     R6,R0
        B.N      ??freecars_isr_8
//   83             }
//   84             else
//   85             {
//   86               d1 = d;
??freecars_isr_7:
        MOVS     R6,R7
//   87             }
//   88             UartData[i]=d1;
??freecars_isr_8:
        MOVS     R0,R6
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable4_4
        ADDS     R2,R2,R4, LSL #+3
        STRD     R0,R1,[R2, #+0]
//   89             UartData[i]/=65536.0;
        LDR.N    R0,??DataTable4_4
        ADDS     R2,R0,R4, LSL #+3
        LDRD     R0,R1,[R2, #+0]
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_5  ;; 0x40f00000
        BL       __aeabi_ddiv
        LDR.N    R2,??DataTable4_4
        ADDS     R2,R2,R4, LSL #+3
        STRD     R0,R1,[R2, #+0]
//   90           }
        ADDS     R4,R4,#+1
        B.N      ??freecars_isr_5
//   91           UartDebug();  //转去处理，把受到的数据付给变量
??freecars_isr_6:
        BL       UartDebug
//   92         }
//   93         SerialPortRx.Stack = 0;
??freecars_isr_4:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
        B.N      ??freecars_isr_9
//   94       }
//   95       else if(   SerialPortRx.Stack >= UartRxCmdLen //UartRxDataLen个数为一帧
//   96               && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen]  ==0xff
//   97                 && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+1]==0x55
//   98                   && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+2]==0xaa
//   99                     && SerialPortRx.Buffer[SerialPortRx.Stack - UartRxCmdLen+3]==0x77 )//cmd
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
//  100       {
//  101         SerialPortRx.Check = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+107]
//  102         b = SerialPortRx.Stack - UartRxCmdLen; //起始位
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+7
        MOVS     R5,R0
//  103         for(i=b; i<SerialPortRx.Stack-1; i++)  //除校验位外的位进行校验
        MOVS     R4,R5
??freecars_isr_10:
        LDR.N    R0,??DataTable4_3
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        CMP      R4,R0
        BGE.N    ??freecars_isr_11
//  104         {
//  105           SerialPortRx.Check += SerialPortRx.Buffer[i];//校验
        LDR.N    R0,??DataTable4_3
        LDRB     R0,[R0, #+107]
        LDR.N    R1,??DataTable4_3
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+6]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable4_3
        STRB     R0,[R1, #+107]
//  106         }
        ADDS     R4,R4,#+1
        B.N      ??freecars_isr_10
//  107         if( SerialPortRx.Check == SerialPortRx.Buffer[SerialPortRx.Stack-1] )
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
//  108         {   //校验成功
//  109           UartCmd(UartCmdNum,UartCmdData);//处理接收到的命令，付给MCU命令变量
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
//  110         }
//  111         SerialPortRx.Stack = 0;
??freecars_isr_12:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
        B.N      ??freecars_isr_9
//  112       }
//  113     }
//  114     else
//  115     {
//  116       SerialPortRx.Stack = 0;
??freecars_isr_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_3
        STR      R0,[R1, #+0]
//  117     } 
//  118   }
//  119 }
??freecars_isr_9:
        POP      {R0,R4-R7,PC}    ;; return
//  120 
//  121 /*接收数据处理*/

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//  122 uint8 flag_receive = 0;
flag_receive:
        DS8 1
//  123 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  124 void UartDebug()
//  125 {
UartDebug:
        PUSH     {R7,LR}
//  126 //  ctl.S3010.Kp = UartData[0];
//  127 //  ctl.S3010.Kd = UartData[1];
//  128 //  ctl.left.out = (int32)UartData[2];
//  129 //  ctl.rigt.out = (int32)UartData[2];
//  130 //  dec_sec = UartData[3];
//  131   //ctl.left.aim = ctl.rigt.aim = UartData[0];
//  132   //ctl.rigt.Kp = UartData[1];
//  133   //ctl.rigt.Ki = UartData[2];
//  134   
//  135 
//  136   //img.THR = UartData[3];
//  137   //bz_datarec();
//  138   bz_set(datarec);
        MOVS     R0,#+1
        BL       bz_set
//  139 }
        POP      {R0,PC}          ;; return
//  140 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  141 void UartCmd(uint8 cmdnum,uint8 cmddata)///
//  142 {
UartCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  143   switch(cmddata)
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
//  144   {
//  145     case(6):break;//F6
??UartCmd_0:
        B.N      ??UartCmd_12
//  146     case(7):break;//F7
??UartCmd_1:
        B.N      ??UartCmd_12
//  147     case(8):break;//F8
??UartCmd_2:
        B.N      ??UartCmd_12
//  148     case(9):break;//F9
??UartCmd_3:
        B.N      ??UartCmd_12
//  149     case(10):break;//F10
??UartCmd_4:
        B.N      ??UartCmd_12
//  150     case(11):break;//F11
??UartCmd_5:
        B.N      ??UartCmd_12
//  151     case(12):break;//F12
??UartCmd_6:
        B.N      ??UartCmd_12
//  152     case(100):break;//PAUSE
??UartCmd_7:
        B.N      ??UartCmd_12
//  153     case(101):flag_stop = 0;break;//HOME
??UartCmd_8:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_6
        STRB     R0,[R1, #+0]
        B.N      ??UartCmd_12
//  154     case(102):timer_debug();break;//PG UP
??UartCmd_9:
        BL       timer_debug
        B.N      ??UartCmd_12
//  155     case(103):break;//PF DN
??UartCmd_10:
        B.N      ??UartCmd_12
//  156     case(104):flag_stop = 1;break;//END
??UartCmd_11:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_6
        STRB     R0,[R1, #+0]
//  157   }
//  158   bz_set(datarec);
??UartCmd_12:
        MOVS     R0,#+1
        BL       bz_set
//  159 }
        POP      {R0,R4,R5,PC}    ;; return
//  160 
//  161 
//  162 /*
//  163 轮询法发送一帧数据
//  164 消耗时间与数据长度有关
//  165 不可以放在中断里面周期性调用
//  166 CCDSelection:选择指定发送的是哪个CCD的数据
//  167 CCDData     :宽度为CCDWidth的CCD线阵数据
//  168 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 void sendDataToCCDViewer(uint8 CCDSelection,uint8* CCDData)
//  170 {
sendDataToCCDViewer:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  171   uint8 i,sum=0; 
        MOVS     R7,#+0
//  172   //使用轮询的方式发送数据，当数据未发送，程序停在此处直到发送完成
//  173   LPLD_UART_PutChar(FreeCarsUARTPort,0xFC);
        MVNS     R1,#+3
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//  174   LPLD_UART_PutChar(FreeCarsUARTPort,0x07);
        MOVS     R1,#+7
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//  175   LPLD_UART_PutChar(FreeCarsUARTPort,0xCF);
        MVNS     R1,#+48
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//  176   LPLD_UART_PutChar(FreeCarsUARTPort,CCDSelection);//多CCD下，指定发送的是哪个CCD的数据
        MOVS     R1,R4
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//  177   sum+=(0xFC);      //全部数据加入校验
        SUBS     R7,R7,#+4
//  178   sum+=(0x07);
        ADDS     R7,R7,#+7
//  179   sum+=(0xCF);
        SUBS     R7,R7,#+49
//  180   sum+=CCDSelection;
        ADDS     R7,R4,R7
//  181   for(i=0;i < CCDWidth;i++)
        MOVS     R0,#+0
        MOVS     R6,R0
??sendDataToCCDViewer_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+128
        BGE.N    ??sendDataToCCDViewer_1
//  182   {
//  183     LPLD_UART_PutChar(FreeCarsUARTPort,CCDData[i]);
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRSB    R1,[R6, R5]
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//  184     sum+=CCDData[i];         //全部数据加入校验
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R6, R5]
        ADDS     R7,R0,R7
//  185   }
        ADDS     R6,R6,#+1
        B.N      ??sendDataToCCDViewer_0
//  186   LPLD_UART_PutChar(FreeCarsUARTPort,sum);
??sendDataToCCDViewer_1:
        MOVS     R1,R7
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable4_1  ;; 0x4006a000
        BL       LPLD_UART_PutChar
//  187 }
        POP      {R0,R4-R7,PC}    ;; return

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
// 
// 217 bytes in section .bss
//   1 byte  in section .data
// 916 bytes in section .text
// 
// 916 bytes of CODE memory
// 218 bytes of DATA memory
//
//Errors: none
//Warnings: 1
