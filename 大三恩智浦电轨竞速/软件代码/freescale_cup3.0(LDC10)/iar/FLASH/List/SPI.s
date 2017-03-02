///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       13/Mar/2016  16:39:21
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\SPI.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\SPI.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
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
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\iar\FLASH\List\SPI.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Input_b
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_SYSTICK_DelayUs
        EXTERN __aeabi_memcpy4

        PUBLIC SPI_GPIO_Init
        PUBLIC SPI_RW
        PUBLIC SPI_Read_Buf
        PUBLIC SPI_Read_OneByte
        PUBLIC SPI_WriteReg
        PUBLIC SPI_Write_OneByte
        PUBLIC SPI_inittypedef

// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup3.0(LDC10)\app\BSP\SPI.c
//    1 #include "include.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    2 GPIO_InitTypeDef SPI_inittypedef;
SPI_inittypedef:
        DS8 20

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 void SPI_GPIO_Init(void)
//    4 {
SPI_GPIO_Init:
        PUSH     {R7,LR}
//    5   /***** LDC_CS LDC_SCL MOSI 配置为输出模式*****/
//    6   
//    7   SPI_inittypedef.GPIO_PTx = PTC;
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        LDR.N    R1,??DataTable5_1
        STR      R0,[R1, #+0]
//    8   SPI_inittypedef.GPIO_Pins = GPIO_Pin10 | GPIO_Pin16 | GPIO_Pin15;
        MOVS     R0,#+99328
        LDR.N    R1,??DataTable5_1
        STR      R0,[R1, #+4]
//    9   SPI_inittypedef.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1
        STRB     R0,[R1, #+12]
//   10   SPI_inittypedef.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_1
        STR      R0,[R1, #+8]
//   11   SPI_inittypedef.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1
        STRB     R0,[R1, #+13]
//   12   LPLD_GPIO_Init(SPI_inittypedef);
        LDR.N    R1,??DataTable5_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   13   
//   14   /********* MISO 配置为输入模式********/
//   15   SPI_inittypedef.GPIO_PTx = PTC;
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        LDR.N    R1,??DataTable5_1
        STR      R0,[R1, #+0]
//   16   SPI_inittypedef.GPIO_Pins = GPIO_Pin11;
        MOV      R0,#+2048
        LDR.N    R1,??DataTable5_1
        STR      R0,[R1, #+4]
//   17   SPI_inittypedef.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_1
        STRB     R0,[R1, #+12]
//   18   SPI_inittypedef.GPIO_PinControl = IRQC_DIS;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5_1
        STR      R0,[R1, #+8]
//   19   SPI_inittypedef.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable5_1
        STRB     R0,[R1, #+13]
//   20   
//   21   LPLD_GPIO_Init(SPI_inittypedef);
        LDR.N    R1,??DataTable5_1
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//   22   
//   23   CSN_H;
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   24   SCK_L;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   25   MOSI_L;
        MOVS     R2,#+0
        MOVS     R1,#+15
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   26   
//   27 }
        POP      {R0,PC}          ;; return
//   28 ///******上升沿写据******/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 uint8 SPI_Write_OneByte(uint8 dt)
//   30 {
SPI_Write_OneByte:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   31   uint8 i;  
//   32   uint8 temp = 0;
        MOVS     R6,#+0
//   33   for ( i = 8;i > 0;i --)  
        MOVS     R0,#+8
        MOVS     R5,R0
??SPI_Write_OneByte_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_Write_OneByte_1
//   34   {  
//   35     if ( dt & 0x80 )//MOSI准备数据位  
        LSLS     R0,R4,#+24
        BPL.N    ??SPI_Write_OneByte_2
//   36     {
//   37       MOSI_H;  
        MOVS     R2,#+1
        MOVS     R1,#+15
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??SPI_Write_OneByte_3
//   38     }
//   39     else 
//   40     {
//   41       MOSI_L;  
??SPI_Write_OneByte_2:
        MOVS     R2,#+0
        MOVS     R1,#+15
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   42     }
//   43     dt <<= 1;   //左移抛弃已经输出的最高位
??SPI_Write_OneByte_3:
        LSLS     R4,R4,#+1
//   44     temp <<= 1;
        LSLS     R6,R6,#+1
//   45 
//   46     SCK_L;   
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   47     LPLD_SYSTICK_DelayUs(2);  
        MOVS     R0,#+2
        BL       LPLD_SYSTICK_DelayUs
//   48     if (MISO)
        MOVS     R1,#+11
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??SPI_Write_OneByte_4
//   49     {
//   50       temp |=1;
        ORRS     R6,R6,#0x1
//   51     }
//   52 
//   53     SCK_H;   //LDC_SCL恢复为低电平，并保持一段时间  
??SPI_Write_OneByte_4:
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   54     LPLD_SYSTICK_DelayUs(2);   
        MOVS     R0,#+2
        BL       LPLD_SYSTICK_DelayUs
//   55   }  	
        SUBS     R5,R5,#+1
        B.N      ??SPI_Write_OneByte_0
//   56   return (temp);
??SPI_Write_OneByte_1:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//   57 }
//   58 //
//   59 /****** 下降沿读数据，每次读取 1 bit ******/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   60 uint8 SPI_Read_OneByte(uint8 reg)
//   61 {
SPI_Read_OneByte:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   62   uint8 i;  
//   63   uint8 temp=0;
        MOVS     R6,#+0
//   64   LPLD_SYSTICK_DelayUs(2);
        MOVS     R0,#+2
        BL       LPLD_SYSTICK_DelayUs
//   65 
//   66   for(i=8;i>0;i--) 
        MOVS     R0,#+8
        MOVS     R5,R0
??SPI_Read_OneByte_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_Read_OneByte_1
//   67   {
//   68     temp<<=1;        //读取MISO 8次输入的值，存入temp
        LSLS     R6,R6,#+1
//   69     SCK_H;  
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   70     LPLD_SYSTICK_DelayUs(2);   
        MOVS     R0,#+2
        BL       LPLD_SYSTICK_DelayUs
//   71     if(MISO)
        MOVS     R1,#+11
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??SPI_Read_OneByte_2
//   72     {
//   73       temp++;  //读取最后1byte的最后一位之后，不能再左移了
        ADDS     R6,R6,#+1
//   74     }
//   75     SCK_L;  
??SPI_Read_OneByte_2:
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   76     LPLD_SYSTICK_DelayUs(2);   
        MOVS     R0,#+2
        BL       LPLD_SYSTICK_DelayUs
//   77   }  	
        SUBS     R5,R5,#+1
        B.N      ??SPI_Read_OneByte_0
//   78   return temp;		
??SPI_Read_OneByte_1:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//   79 }
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void SPI_WriteReg(uint8_t addr, uint8_t value) 
//   82 {  
SPI_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   83   CSN_L;                  //LDC_CS片选拉低      
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   84   SPI_Write_OneByte(addr|0X00);      //SPI写地址  以及  写信号    1=读出,0=写入
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SPI_Write_OneByte
//   85   SPI_Write_OneByte(value|0X00);     //SPI写数据   
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SPI_Write_OneByte
//   86   CSN_H;                   //LDC_CS片选拉高 
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//   87 }
        POP      {R0,R4,R5,PC}    ;; return
//   88 
//   89 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 uint8 SPI_RW(uint8 rwdata) 
//   91 {
SPI_RW:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   92   uint8 spi_rw_i=0; 
        MOVS     R5,#+0
//   93   uint8 temp=0; 
        MOVS     R6,#+0
//   94   
//   95   for( spi_rw_i = 0;spi_rw_i < 8;spi_rw_i++ ) //output8-bit 
        MOVS     R0,#+0
        MOVS     R5,R0
??SPI_RW_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BGE.N    ??SPI_RW_1
//   96   { /***preparethewritedataofreadbeforethecomingofrisingup******/ 
//   97     if( rwdata & 0x80 ) 
        LSLS     R0,R4,#+24
        BPL.N    ??SPI_RW_2
//   98     {
//   99       MOSI_H; 
        MOVS     R2,#+1
        MOVS     R1,#+15
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
        B.N      ??SPI_RW_3
//  100     }
//  101     else
//  102     {
//  103       MOSI_L; 
??SPI_RW_2:
        MOVS     R2,#+0
        MOVS     R1,#+15
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  104     }
//  105     rwdata <<= 1; //shiftnextbittoMSB 
??SPI_RW_3:
        LSLS     R4,R4,#+1
//  106     temp <<= 1; 
        LSLS     R6,R6,#+1
//  107     
//  108     LPLD_SYSTICK_DelayUs(2);
        MOVS     R0,#+2
        BL       LPLD_SYSTICK_DelayUs
//  109     SCK_L; //SetSCKhigh Risingup 
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  110     if(MISO) 
        MOVS     R1,#+11
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Input_b
        CMP      R0,#+0
        BEQ.N    ??SPI_RW_4
//  111     {
//  112       temp|=1; 
        ORRS     R6,R6,#0x1
//  113     }
//  114     
//  115     SCK_H; //set SCKlow Fallingdown 
??SPI_RW_4:
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  116   }
        ADDS     R5,R5,#+1
        B.N      ??SPI_RW_0
//  117   
//  118   return(temp); //returnreadbyte
??SPI_RW_1:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  119 }
//  120 
//  121 //uint8 Singal_SPI_Read(uint8 reg) 
//  122 //{ 
//  123 //  uint8 rdata; 
//  124 //  CSN_L; 
//  125 //  LPLD_SYSTICK_DelayUs(2); 
//  126 //  reg = reg | 0x80;//read 
//  127 //  SPI_RW(reg); //Selectregistertoreadfrom.. 
//  128 //  asm("nop"); asm("nop"); asm("nop"); asm("nop"); 
//  129 //  asm("nop");asm("nop");asm("nop"); asm("nop");
//  130 //  asm("nop");asm("nop"); asm("nop"); asm("nop"); 
//  131 //  asm("nop"); asm("nop");asm("nop"); asm("nop");
//  132 //  asm("nop"); asm("nop"); asm("nop"); asm("nop"); 
//  133 //  rdata = SPI_RW(0); 
//  134 //  LPLD_SYSTICK_DelayUs(1700);
//  135 //  CSN_H; 
//  136 //  return rdata; 
//  137 //} 
//  138 
//  139 //void SPI_Write(uint8 reg,uint8 wdata) 
//  140 //{ 
//  141 //  CSN_L;
//  142 //  LPLD_SYSTICK_DelayUs(5);//2us 
//  143 //  //reg= reg &~0x80; 
//  144 //  SPI_RW(reg); 
//  145 //  asm("nop"); asm("nop"); asm("nop"); asm("nop");
//  146 //  asm("nop"); asm("nop"); asm("nop"); asm("nop");
//  147 //  asm("nop"); asm("nop"); asm("nop"); asm("nop"); 
//  148 //  asm("nop"); asm("nop"); asm("nop"); asm("nop"); 
//  149 //  asm("nop"); asm("nop"); asm("nop"); asm("nop");
//  150 //  asm("nop"); 
//  151 //  SPI_RW(wdata); 
//  152 //  LPLD_SYSTICK_DelayUs(1875);//875us 
//  153 //  CSN_H;
//  154 //} 
//  155 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  156 void SPI_Read_Buf(uint8 reg,uint8 *pBuf,uint8 len) 
//  157 { 
SPI_Read_Buf:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  158   uint8 spi_rw_i; 
//  159   CSN_L;  
        MOVS     R2,#+0
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  160   reg = reg|0x80;
        ORRS     R4,R4,#0x80
//  161   SPI_RW(reg); 
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SPI_RW
//  162   for ( spi_rw_i = 0;spi_rw_i < len; spi_rw_i++ )
        MOVS     R0,#+0
        MOVS     R7,R0
??SPI_Read_Buf_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R7,R6
        BCS.N    ??SPI_Read_Buf_1
//  163   { 
//  164     pBuf[spi_rw_i]=SPI_RW(NULL); // 
        MOVS     R0,#+0
        BL       SPI_RW
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRB     R0,[R7, R5]
//  165   } 
        ADDS     R7,R7,#+1
        B.N      ??SPI_Read_Buf_0
//  166   LPLD_SYSTICK_DelayUs(2);
??SPI_Read_Buf_1:
        MOVS     R0,#+2
        BL       LPLD_SYSTICK_DelayUs
//  167   CSN_H;
        MOVS     R2,#+1
        MOVS     R1,#+16
        LDR.N    R0,??DataTable5  ;; 0x400ff080
        BL       LPLD_GPIO_Output_b
//  168 } 
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x400ff080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     SPI_inittypedef

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
// 544 bytes in section .text
// 
// 544 bytes of CODE memory
//  20 bytes of DATA memory
//
//Errors: none
//Warnings: none
