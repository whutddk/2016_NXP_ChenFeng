///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       26/Apr/2016  20:21:27
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\app\SENSOR\DEV_MMA8451.c
//    Command line =  
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\app\SENSOR\DEV_MMA8451.c"
//        -D LPLD_K60 -lCN
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\FLASH\List\"
//        -lB
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\FLASH\List\"
//        -o
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\app\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\app\BSP\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\app\ITAC\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\app\CTL\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\app\MAIN\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\app\SENSOR\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\common\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\iar\FLASH\List\DEV_MMA8451.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_I2C_Init
        EXTERN LPLD_I2C_ReStart
        EXTERN LPLD_I2C_ReadByte
        EXTERN LPLD_I2C_SetMasterWR
        EXTERN LPLD_I2C_StartTrans
        EXTERN LPLD_I2C_Stop
        EXTERN LPLD_I2C_WaitAck
        EXTERN LPLD_I2C_WriteByte

        PUBLIC LPLD_MMA8451_GetResult
        PUBLIC LPLD_MMA8451_Init
        PUBLIC LPLD_MMA8451_ReadReg
        PUBLIC LPLD_MMA8451_WriteReg

// D:\����ͬ��\2016ʡ��\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)\app\SENSOR\DEV_MMA8451.c
//    1 /**
//    2  * @file DEV_MMA8451.c
//    3  * @version 0.1[By LPLD]
//    4  * @date 2013-09-24
//    5  * @brief MMA8451������ٶȴ������豸��������
//    6  *
//    7  * ���Ľ���:�ɸ���ʵ��Ӳ���޸�
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
//   22 #include "DEV_MMA8451.h"
//   23 
//   24 static void MMA8451_Delay(void);
//   25 
//   26 /*
//   27  *   LPLD_MMA8451_Init
//   28  *   ��ʼ��MMA8451��������ʼ��8451�����I2C�ӿ��Լ�8451�ļĴ���
//   29  *
//   30  *   ������
//   31  *    ��
//   32  *
//   33  *   ����ֵ
//   34  *      �豸ID
//   35  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 uint8 LPLD_MMA8451_Init(void)
//   37 {
LPLD_MMA8451_Init:
        PUSH     {R0-R4,LR}
//   38   I2C_InitTypeDef i2c_init_param;
//   39   uint8 device_id;
//   40     
//   41   //��ʼ��MMA8451_I2CX
//   42   i2c_init_param.I2C_I2Cx = MMA8451_I2CX;       //��DEV_MMA8451.h���޸ĸ�ֵ
        LDR.N    R0,??DataTable2  ;; 0x40066000
        STR      R0,[SP, #+0]
//   43   i2c_init_param.I2C_IntEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[SP, #+5]
//   44   i2c_init_param.I2C_ICR = MMA8451_SCL_200KHZ;  //�ɸ���ʵ�ʵ�·����SCLƵ��
        MOVS     R0,#+35
        STRB     R0,[SP, #+4]
//   45   i2c_init_param.I2C_SclPin = MMA8451_SCLPIN;   //��DEV_MMA8451.h���޸ĸ�ֵ
        MOVS     R0,#+100
        STRB     R0,[SP, #+6]
//   46   i2c_init_param.I2C_SdaPin = MMA8451_SDAPIN;   //��DEV_MMA8451.h���޸ĸ�ֵ
        MOVS     R0,#+101
        STRB     R0,[SP, #+7]
//   47   i2c_init_param.I2C_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   48   
//   49   LPLD_I2C_Init(i2c_init_param);
        ADD      R0,SP,#+0
        LDM      R0,{R0-R3}
        BL       LPLD_I2C_Init
//   50   
//   51   //��ȡ�豸ID
//   52   device_id = LPLD_MMA8451_ReadReg(MMA8451_REG_WHOAMI);
        MOVS     R0,#+13
        BL       LPLD_MMA8451_ReadReg
        MOVS     R4,R0
//   53 
//   54   //���мĴ�������
//   55   LPLD_MMA8451_WriteReg(MMA8451_REG_SYSMOD, 0x00);       //Ĭ��ģʽStandby Mode
        MOVS     R1,#+0
        MOVS     R0,#+11
        BL       LPLD_MMA8451_WriteReg
//   56   LPLD_MMA8451_WriteReg(MMA8451_REG_CTRL_REG2, 0x02);    //High Resolution
        MOVS     R1,#+2
        MOVS     R0,#+43
        BL       LPLD_MMA8451_WriteReg
//   57   LPLD_MMA8451_WriteReg(MMA8451_REG_CTRL_REG1, 0x01);    //����ģʽ,800HZ
        MOVS     R1,#+1
        MOVS     R0,#+42
        BL       LPLD_MMA8451_WriteReg
//   58   
//   59   return device_id;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
//   60 }
//   61 
//   62 /*
//   63  *   LPLD_MMA8451_WriteReg
//   64  *   �ú�����������MMA8451�ļĴ���
//   65  *
//   66  *   ������
//   67  *   RegisterAddress 
//   68  *    |__ MMA8451�Ĵ�����ַ
//   69  *   Data
//   70  *    |__ ����д����ֽ������� 
//   71  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 void LPLD_MMA8451_WriteReg(uint8 RegisterAddress, uint8 Data)
//   73 {
LPLD_MMA8451_WriteReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   74   //���ʹӻ���ַ
//   75   LPLD_I2C_StartTrans(MMA8451_I2CX, MMA8451_DEV_ADDR, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_StartTrans
//   76   LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   77   
//   78   //дMMA8451�Ĵ�����ַ
//   79   LPLD_I2C_WriteByte(MMA8451_I2CX, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//   80   LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   81   
//   82   //��Ĵ�����д��������
//   83   LPLD_I2C_WriteByte(MMA8451_I2CX, Data);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//   84   LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//   85 
//   86   LPLD_I2C_Stop(MMA8451_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//   87 
//   88   //MMA8451_Delay();
//   89 }
        POP      {R0,R4,R5,PC}    ;; return
//   90 
//   91 /*
//   92  *   LPLD_MMA8451_WriteReg
//   93  *   �ú������ڶ�ȡMMA8451������
//   94  *
//   95  *   ������
//   96  *     RegisterAddress 
//   97  *        |__ MMA8451�Ĵ�����ַ
//   98  *   ����ֵ
//   99  *      ���ٴ������Ĳ���ֵ
//  100  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  101 uint8 LPLD_MMA8451_ReadReg(uint8 RegisterAddress)
//  102 {
LPLD_MMA8451_ReadReg:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  103   uint8 result;
//  104 
//  105   //���ʹӻ���ַ
//  106   LPLD_I2C_StartTrans(MMA8451_I2CX, MMA8451_DEV_ADDR, I2C_MWSR);
        MOVS     R2,#+0
        MOVS     R1,#+29
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_StartTrans
//  107   LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  108 
//  109   //дMMA8451�Ĵ�����ַ
//  110   LPLD_I2C_WriteByte(MMA8451_I2CX, RegisterAddress);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  111   LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  112 
//  113   //�ٴβ�����ʼ�ź�
//  114   LPLD_I2C_ReStart(MMA8451_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReStart
//  115 
//  116   //���ʹӻ���ַ�Ͷ�ȡλ
//  117   LPLD_I2C_WriteByte(MMA8451_I2CX, MMA8451_DEV_READ);
        MOVS     R1,#+59
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WriteByte
//  118   LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  119 
//  120   //ת������ģʽΪ��
//  121   LPLD_I2C_SetMasterWR(MMA8451_I2CX, I2C_MRSW);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_SetMasterWR
//  122 
//  123   //�ر�Ӧ��ACK
//  124   LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_OFF);//�ر�ACK
        MOVS     R1,#+0
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  125 
//  126   //��IIC����
//  127   result =LPLD_I2C_ReadByte(MMA8451_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R5,R0
//  128   LPLD_I2C_WaitAck(MMA8451_I2CX, I2C_ACK_ON);
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_WaitAck
//  129 
//  130   //����ֹͣ�ź�
//  131   LPLD_I2C_Stop(MMA8451_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_Stop
//  132 
//  133    //��IIC����
//  134   result = LPLD_I2C_ReadByte(MMA8451_I2CX);
        LDR.N    R0,??DataTable2  ;; 0x40066000
        BL       LPLD_I2C_ReadByte
        MOVS     R5,R0
//  135   
//  136   MMA8451_Delay();
        BL       MMA8451_Delay
//  137 
//  138   return result;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  139 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40066000
//  140 
//  141 /*
//  142  * �������ܣ���MAA8451���ٶ����
//  143  * �����w
//  144  *       Status - ���ݼĴ���״̬
//  145  *       Regs_Addr - ���ݼĴ�����ַ
//  146  * ��������ֵ�����ٶ�ֵ��int16��
//  147  */   

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  148 int16 LPLD_MMA8451_GetResult(uint8 Status, uint8 Regs_Addr) 
//  149 {
LPLD_MMA8451_GetResult:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  150   uint8 ret=0;
        MOVS     R6,#+0
//  151   uint16 cnt=0;
        MOVS     R7,#+0
//  152   int16 result,temp;
//  153   
//  154   if(Regs_Addr>MMA8451_REG_OUTZ_LSB)
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BLT.N    ??LPLD_MMA8451_GetResult_0
//  155     return 0;
        MOVS     R0,#+0
        B.N      ??LPLD_MMA8451_GetResult_1
//  156   
//  157   // �ȴ�ת����ɲ�ȡ��ֵ 
//  158   while(!(ret&Status)) 
??LPLD_MMA8451_GetResult_0:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R4
        BNE.N    ??LPLD_MMA8451_GetResult_2
//  159   {
//  160     ret = LPLD_MMA8451_ReadReg( MMA8451_REG_STATUS);
        MOVS     R0,#+0
        BL       LPLD_MMA8451_ReadReg
        MOVS     R6,R0
//  161     if(++cnt>500)
        ADDS     R7,R7,#+1
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+500
        BLE.N    ??LPLD_MMA8451_GetResult_0
//  162       break;
//  163   }
//  164   
//  165   result= LPLD_MMA8451_ReadReg( Regs_Addr);
??LPLD_MMA8451_GetResult_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_MMA8451_ReadReg
        MOV      R8,R0
//  166   temp  = LPLD_MMA8451_ReadReg( Regs_Addr+1);
        ADDS     R0,R5,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       LPLD_MMA8451_ReadReg
        MOV      R9,R0
//  167   result=result<<8;
        LSLS     R8,R8,#+8
//  168   result=result|temp;
        ORRS     R8,R9,R8
//  169   
//  170   return result>>2;
        SXTH     R8,R8            ;; SignExt  R8,R8,#+16,#+16
        ASRS     R0,R8,#+2
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
??LPLD_MMA8451_GetResult_1:
        POP      {R1,R4-R9,PC}    ;; return
//  171 }
//  172 
//  173 
//  174 /*
//  175  * ��ʱ����
//  176  */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  177 static void MMA8451_Delay(void){
//  178   int n;
//  179   for(n=1;n<200;n++) {
MMA8451_Delay:
        MOVS     R1,#+1
        MOVS     R0,R1
??MMA8451_Delay_0:
        CMP      R0,#+200
        BGE.N    ??MMA8451_Delay_1
//  180     asm("nop");
        nop
//  181   }
        ADDS     R0,R0,#+1
        B.N      ??MMA8451_Delay_0
//  182 }
??MMA8451_Delay_1:
        BX       LR               ;; return

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
// 378 bytes in section .text
// 
// 378 bytes of CODE memory
//
//Errors: none
//Warnings: none
