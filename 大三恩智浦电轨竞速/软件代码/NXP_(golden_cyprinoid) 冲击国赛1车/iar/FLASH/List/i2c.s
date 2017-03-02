///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:16
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\SENSOR\i2c.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\SENSOR\i2c.c" -D LPLD_K60 -lCN
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
//        1.9\iar\FLASH\List\i2c.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_SYSTICK_DelayUs
        EXTERN __aeabi_memcpy4

        PUBLIC I2CSendByte
        PUBLIC I2C_CLK_INIT
        PUBLIC I2C_DAT_IN
        PUBLIC I2C_DAT_OUT
        PUBLIC I2C_start
        PUBLIC I2C_stop
        PUBLIC I2Ccheck_ACK
        PUBLIC I2Cdelay_1us
        PUBLIC I2CreceiveByte
        PUBLIC I2Cslave_ACK
        PUBLIC I2Cslave_NOACK
        PUBLIC LDC_READ
        PUBLIC LDC_SEND

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\SENSOR\i2c.c
//    1 //I2C 通用C文件 IO模拟版
//    2 //DDK
//    3 //2015 5 4
//    4 
//    5 
//    6 #include "include.h"
//    7 #include "i2c.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    8 void I2Cdelay_1us(uint8 i)
//    9 {
I2Cdelay_1us:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   10   LPLD_SYSTICK_DelayUs(i);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        BL       LPLD_SYSTICK_DelayUs
//   11 }
        POP      {R4,PC}          ;; return
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void I2C_CLK_INIT()
//   14 {
I2C_CLK_INIT:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   15   GPIO_InitTypeDef gpio_inittype;
//   16   gpio_inittype.GPIO_PTx = I2C_CLK_PT;
        LDR.N    R0,??DataTable9  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   17   gpio_inittype.GPIO_Pins = I2C_CLK_PIN;
        MOV      R0,#+1024
        STR      R0,[SP, #+8]
//   18   gpio_inittype.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//   19   gpio_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   20   gpio_inittype.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   21   LPLD_GPIO_Init(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   22 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   23 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   24 void I2C_DAT_IN()
//   25 {
I2C_DAT_IN:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   26   GPIO_InitTypeDef gpio_inittype;
//   27   gpio_inittype.GPIO_PTx = I2C_DAT_PT;
        LDR.N    R0,??DataTable9  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   28   gpio_inittype.GPIO_Pins = I2C_DAT_PIN;
        MOV      R0,#+2048
        STR      R0,[SP, #+8]
//   29   gpio_inittype.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   30   gpio_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   31   gpio_inittype.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   32   LPLD_GPIO_Init(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   33 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   34 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   35 void I2C_DAT_OUT()
//   36 {
I2C_DAT_OUT:
        PUSH     {LR}
        SUB      SP,SP,#+28
//   37   GPIO_InitTypeDef gpio_inittype;
//   38   gpio_inittype.GPIO_PTx = I2C_DAT_PT;
        LDR.N    R0,??DataTable9  ;; 0x400ff080
        STR      R0,[SP, #+4]
//   39   gpio_inittype.GPIO_Pins = I2C_DAT_PIN;
        MOV      R0,#+2048
        STR      R0,[SP, #+8]
//   40   gpio_inittype.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//   41   gpio_inittype.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//   42   gpio_inittype.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   43   LPLD_GPIO_Init(gpio_inittype);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   44 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//   45 
//   46 //**************************************
//   47 //I2C起始信号
//   48 //**************************************
//   49 //--------------------------------------------------------------------------------------------------
//   50 // 函数名称： iic_start()
//   51 // 函数功能： 启动I2C总线子程序
//   52 //--------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   53 void I2C_start(void)
//   54 {    
I2C_start:
        PUSH     {R7,LR}
//   55   I2CDDRA = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//   56   I2CSDA = 1;  
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_2  ;; 0x43fe102c
        STR      R0,[R1, #+0]
//   57   I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//   58   I2CCLK = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//   59   I2Cdelay_1us(2);      // 延时5us 
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//   60   I2CSDA = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_2  ;; 0x43fe102c
        STR      R0,[R1, #+0]
//   61   I2Cdelay_1us(2);  
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//   62   I2CCLK = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//   63   I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//   64 }
        POP      {R0,PC}          ;; return
//   65 
//   66 
//   67 //**************************************
//   68 //I2C停止信号
//   69 //**************************************
//   70 //--------------------------------------------------------------------------------------------------
//   71 // 函数名称： iic_stop()
//   72 // 函数功能： 停止I2C总线数据传送子程序
//   73 //--------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void I2C_stop(void)
//   75 { 
I2C_stop:
        PUSH     {R7,LR}
//   76   I2CDDRA = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//   77   I2CSDA = 0;   	   //时钟保持高，数据线从低到高一次跳变，I2C通信停止
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_2  ;; 0x43fe102c
        STR      R0,[R1, #+0]
//   78   I2Cdelay_1us(2);      // 延时1us 
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//   79   I2CCLK = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//   80   I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//   81   I2CSDA = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_2  ;; 0x43fe102c
        STR      R0,[R1, #+0]
//   82   I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//   83   //BFCLK = 0;
//   84   //delay(2);
//   85 }
        POP      {R0,PC}          ;; return
//   86 //--------------------------------------------------------------------------------------------------
//   87 // 函数名称： check_ACK
//   88 // 函数功能： 主机应答位检查子程序，迫使数据传输过程结束
//   89 //--------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 uint8 I2Ccheck_ACK(void)
//   91 { 
I2Ccheck_ACK:
        PUSH     {R4,LR}
//   92   uint8 check ;
//   93 
//   94   I2CCLK = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//   95  I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//   96   check = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
//   97   I2CDDRA = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//   98   if(I2CSDAI == 1)    // 若BFSDA=1 表明非应答，置位非应答标志F0
        LDR.N    R0,??DataTable9_4  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??I2Ccheck_ACK_0
//   99   check = 1;
        MOVS     R0,#+1
        MOVS     R4,R0
//  100   I2Cdelay_1us(2);      // 延时1us 
??I2Ccheck_ACK_0:
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  101   I2CCLK = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  102   //gpio_init (PORTE , 12, GPO,HIGH);      
//  103   I2CDDRA = 1 ;         //
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//  104   //BFSDA = 1 ;
//  105   return  check ;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return
//  106 }
//  107 //**************************************
//  108 //I2C接收应答信号
//  109 //**************************************
//  110 //--------------------------------------------------------------------------------------------------
//  111 // 函数名称： slave_ACK
//  112 // 函数功能： 从机发送应答位子程序
//  113 //--------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 void I2Cslave_ACK(void)
//  115 {
I2Cslave_ACK:
        PUSH     {R7,LR}
//  116   I2CDDRA = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//  117   I2CSDA = 1; 
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_2  ;; 0x43fe102c
        STR      R0,[R1, #+0]
//  118   I2Cdelay_1us(2);      // 延时1us 
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  119   I2CCLK = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  120   I2Cdelay_1us(2);			
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  121   
//  122   I2CCLK = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  123   I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  124 }
        POP      {R0,PC}          ;; return
//  125 
//  126 //--------------------------------------------------------------------------------------------------
//  127 // 函数名称： slave_NOACK
//  128 // 函数功能： 从机发送非应答位子程序，迫使数据传输过程结束
//  129 //--------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 void I2Cslave_NOACK(void)
//  131 { 
I2Cslave_NOACK:
        PUSH     {R7,LR}
//  132   I2CDDRA = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//  133   I2CSDA = 0;  
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_2  ;; 0x43fe102c
        STR      R0,[R1, #+0]
//  134   I2Cdelay_1us(2);      // 延时1us 
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  135   I2CCLK = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  136   I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  137   //BFSDA = 0;
//  138   //delay(5);      // 延时1us 
//  139   I2CCLK = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  140 }
        POP      {R0,PC}          ;; return
//  141 //--------------------------------------------------------------------------------------------------
//  142 // 函数名称： IICSendByte
//  143 // 入口参数： ch
//  144 // 函数功能： 发送一个字节
//  145 //--------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 void I2CSendByte(uint8 ch)
//  147 { 
I2CSendByte:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  148   uint8_t i;     // 向BFSDA上发送一位数据字节，共八位
//  149   for (i=0; i<8; i++)         //8位计数器
        MOVS     R0,#+0
        MOVS     R5,R0
??I2CSendByte_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??I2CSendByte_1
//  150   {
//  151                   //移出数据的最高位
//  152     I2CDDRA = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//  153     I2CSDA = (( ch & 0x80 ) >> 7);               //送数据口
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LSRS     R0,R4,#+7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable9_2  ;; 0x43fe102c
        STR      R0,[R1, #+0]
//  154     I2CCLK = 1;                //拉高时钟线
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  155     I2Cdelay_1us(2);             //延时
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  156     I2CCLK = 0;                //拉低时钟线
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  157     I2Cdelay_1us(2);             //延时
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  158     ch <<= 1;
        LSLS     R4,R4,#+1
//  159   }
        ADDS     R5,R5,#+1
        B.N      ??I2CSendByte_0
//  160   I2Ccheck_ACK();
??I2CSendByte_1:
        BL       I2Ccheck_ACK
//  161 }
        POP      {R0,R4,R5,PC}    ;; return
//  162 //--------------------------------------------------------------------------------------------------
//  163 // 函数名称： IICreceiveByte
//  164 // 返回接收的数据
//  165 // 函数功能： 接收一字节子程序
//  166 //--------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 uint8 I2CreceiveByte(void)
//  168 {
I2CreceiveByte:
        PUSH     {R3-R5,LR}
//  169   uint8 n=8;    // 从BFSDA线上读取一上数据字节，共八位
        MOVS     R5,#+8
//  170   uint8 tdata = 0;
        MOVS     R4,#+0
//  171   while(n--)
??I2CreceiveByte_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??I2CreceiveByte_1
//  172   {      
//  173     I2CDDRA = 1 ;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//  174     I2CSDA = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_2  ;; 0x43fe102c
        STR      R0,[R1, #+0]
//  175     I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  176     I2CCLK=0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  177     I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  178     I2CCLK = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  179     I2Cdelay_1us(2);
        MOVS     R0,#+2
        BL       I2Cdelay_1us
//  180     
//  181     I2CDDRA = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
//  182     
//  183     tdata = tdata<<1;    // 左移一位，或_crol_(temp,1)
        LSLS     R4,R4,#+1
//  184     if(I2CSDAI == 1)
        LDR.N    R0,??DataTable9_4  ;; 0x43fe122c
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??I2CreceiveByte_2
//  185     tdata = tdata|0x01;    // 若接收到的位为1，则数据的最后一位置1
        ORRS     R4,R4,#0x1
        B.N      ??I2CreceiveByte_3
//  186     else 
//  187     tdata = tdata&0xfe;    // 否则数据的最后一位置0
??I2CreceiveByte_2:
        ANDS     R4,R4,#0xFE
//  188     I2CCLK=0;
??I2CreceiveByte_3:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable9_3  ;; 0x43fe1028
        STR      R0,[R1, #+0]
//  189     I2CDDRA = 1 ;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable9_1  ;; 0x43fe12ac
        STR      R0,[R1, #+0]
        B.N      ??I2CreceiveByte_0
//  190   }
//  191   return(tdata);
??I2CreceiveByte_1:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  192 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x43fe12ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x43fe102c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x43fe1028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x43fe122c
//  193 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  194 void LDC_SEND(uint8 addr,uint16 dat)
//  195 {
LDC_SEND:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  196   I2C_start();
        BL       I2C_start
//  197   I2CSendByte((0x2A <<1) );
        MOVS     R0,#+84
        BL       I2CSendByte
//  198   I2CSendByte(addr);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2CSendByte
//  199   
//  200   I2CSendByte((uint8) ((dat & 0xff00)>>8 ));
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2CSendByte
//  201   I2CSendByte((uint8) (dat & 0xff));
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2CSendByte
//  202   I2C_stop();
        BL       I2C_stop
//  203 }
        POP      {R0,R4,R5,PC}    ;; return
//  204 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  205 uint16 LDC_READ(uint8 addr)
//  206 {
LDC_READ:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  207   uint16 temp = 0;
        MOVS     R5,#+0
//  208   I2C_start();
        BL       I2C_start
//  209   I2CSendByte((0x2A << 1));
        MOVS     R0,#+84
        BL       I2CSendByte
//  210   I2CSendByte(addr);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2CSendByte
//  211   
//  212   I2C_start();
        BL       I2C_start
//  213   I2CSendByte((0x2A << 1)| 0x01);
        MOVS     R0,#+85
        BL       I2CSendByte
//  214   temp = I2CreceiveByte();
        BL       I2CreceiveByte
        MOVS     R5,R0
//  215   temp = temp << 8;
        LSLS     R5,R5,#+8
//  216   I2Cslave_NOACK();
        BL       I2Cslave_NOACK
//  217   temp |= I2CreceiveByte();
        BL       I2CreceiveByte
        ORRS     R0,R0,R5
        MOVS     R5,R0
//  218   I2Cslave_ACK();
        BL       I2Cslave_ACK
//  219   I2C_stop();
        BL       I2C_stop
//  220   
//  221   return temp;
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R4,R5,PC}    ;; return
//  222 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
//  223 
//  224 
// 
// 726 bytes in section .text
// 
// 726 bytes of CODE memory
//
//Errors: none
//Warnings: none
