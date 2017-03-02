///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:15
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_USB.c
//    Command line =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_USB.c -D LPLD_K60
//        -lCN
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -lB
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -o
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\BSP\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\ITAC\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\CTL\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\MAIN\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\SENSOR\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\CPU\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\common\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\HW\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\DEV\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\option\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\common\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\driver\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\descriptor\" -I
//        "E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\class\" -On -I D:\IAR\arm\CMSIS\Include\ -D
//        ARM_MATH_CM4
//    List file    =  
//        E:\��˼����\�¹���\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\HW_USB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN USB_DEVICE_ISR

        PUBLIC LPLD_USB_DeInit
        PUBLIC LPLD_USB_Init
        PUBLIC USB_ISR
        PUBLIC USB_OTG_IRQHandler

// E:\��˼����\�¹���\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_USB.c
//    1 /**
//    2  * @file HW_USB.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief UART�ײ�ģ����غ���
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
//   22 #include "common.h"     /* Common definitions */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_EnableIRQ(IRQn_Type)
NVIC_EnableIRQ:
        MOVS     R1,#+1
        ANDS     R2,R0,#0x1F
        LSLS     R1,R1,R2
        LDR.N    R2,??DataTable2  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R3,R0,#+5
        STR      R1,[R2, R3, LSL #+2]
        BX       LR               ;; return
//   23 #include "HW_USB.h"
//   24 #include "usb_driver.h"
//   25 
//   26 //�û��Զ����жϷ���������

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 USB_ISR_CALLBACK USB_ISR[1];
USB_ISR:
        DS8 4
//   28 
//   29 /*
//   30 * LPLD_USB_Init
//   31 * K60 USB�����ʼ������
//   32 * �ڸú�����,��ʼ��USB����ʱ��,����USB������жϷ�����,
//   33 * ���ҵ���USB�豸��ʼ������
//   34 */
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void LPLD_USB_Init(void)
//   37 { 
LPLD_USB_Init:
        PUSH     {R7,LR}
//   38   MPU->CESR=0; //MPU ���� 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1  ;; 0x4000d000
        STR      R0,[R1, #+0]
//   39   SIM->SOPT2 |= SIM_SOPT2_USBSRC_MASK |   //ѡ��PLL/FLL��Ϊʱ��Դ
//   40                SIM_SOPT2_PLLFLLSEL_MASK; //��PLL��ΪUSB��ʱ��Դ����ʱ��PLL��Ƶ��Ϊ96Mhz 
        LDR.N    R0,??DataTable2_2  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x50000
        LDR.N    R1,??DataTable2_2  ;; 0x40048004
        STR      R0,[R1, #+0]
//   41 #if(CORE_CLK_MHZ == PLL_96)
//   42   SIM->CLKDIV2 = 0x02;                    //���÷�Ƶϵ��USBʱ�� = 96Mhz/2 =48Mhz
        MOVS     R0,#+2
        LDR.N    R1,??DataTable2_3  ;; 0x40048048
        STR      R0,[R1, #+0]
//   43 #endif 
//   44   SIM->SCGC4 |= (SIM_SCGC4_USBOTG_MASK);  //ʹ��USB����ʱ��  
        LDR.N    R0,??DataTable2_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.N    R1,??DataTable2_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   45   USB0->USBTRC0 = 0x40;                   //�����ĵ���������λ��������Ϊ1
        MOVS     R0,#+64
        LDR.N    R1,??DataTable2_5  ;; 0x4007210c
        STRB     R0,[R1, #+0]
//   46   SIM->SOPT1 |= SIM_SOPT1_USBREGEN_MASK;  //����USB�豸��ѹԴ
        LDR.N    R0,??DataTable2_6  ;; 0x40047000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable2_6  ;; 0x40047000
        STR      R0,[R1, #+0]
//   47   
//   48   /* NVICģ������ */
//   49   enable_irq(USB0_IRQn);                 //ʹ��NVIC�е�USB OTG�ж�
        MOVS     R0,#+73
        BL       NVIC_EnableIRQ
//   50   USB_ISR[0] = USB_DEVICE_ISR;           //��USBЭ�鴦������ӵ��жϴ�����������
        LDR.N    R0,??DataTable2_7
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
//   51   
//   52 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   53   USB_CDC_Init();                        //��ʼ��CDC��
//   54 #elif(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//   55   USB_HID_Mouse_Init();                  //��ʼ��HID��
//   56 #endif
//   57   
//   58   
//   59 }
        POP      {R0,PC}          ;; return
//   60 
//   61 /*
//   62 * LPLD_USB_DeInit
//   63 * K60 USBģ��ע������
//   64 * ע����ѡ���USB�豸
//   65 */
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void LPLD_USB_DeInit(void)
//   68 { 
//   69 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   70   USB_Class_CDC_DeInit(CONTROLLER_ID);                        //ע��CDC��
//   71 #elif(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//   72   USB_Class_HID_DeInit(CONTROLLER_ID);                        //ע��HID��
//   73 #endif
//   74 }
LPLD_USB_DeInit:
        BX       LR               ;; return
//   75 
//   76 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   77 /*
//   78 *  LPLD_USB_VirtualCom_Rx
//   79 *  ��USB CDC��ģʽ����ɴ���ģʽ���ú����Ǵ��ڽ��պ���
//   80 *  ������
//   81 *      *rx_buf--ָ���û����ݴ洢�������ڴ�����յ�������
//   82 *  ������������ݵĳ��ȣ����ֽ�Ϊ��λ
//   83 */
//   84 uint8 LPLD_USB_VirtualCom_Rx(uint8 *rx_buf)
//   85 {
//   86   memcpy(rx_buf,tUSB_Rev_Data.buffer,tUSB_Rev_Data.len);
//   87   return tUSB_Rev_Data.len;
//   88 }
//   89 
//   90 /*
//   91 *  LPLD_USB_VirtualCom_Tx
//   92 *  ��USB CDC��ģʽ����ɴ���ģʽ���ú����Ǵ��ڷ��ͺ���
//   93 *  ������
//   94 *      *tx_buf -- ָ���û����ݴ洢�������ڴ���Ҫ���͵�����
//   95 *      len -- Ҫ���͵����ݳ���
//   96 *  �����0x00   ���ͳɹ�
//   97 *        ��0x00 ����ʧ��
//   98 */
//   99 uint8 LPLD_USB_VirtualCom_Tx(uint8 *tx_buf,uint8 len)
//  100 {
//  101   uint8 status = 0;
//  102   status = USB_Class_CDC_Interface_DIC_Send_Data(CONTROLLER_ID,tx_buf,len);
//  103   return status;
//  104 }
//  105 
//  106 /*
//  107 *  LPLD_USB_SetRevIsr
//  108 *  ���USB ���⴮�ڽ��������жϷ�����
//  109 *  ��
//  110 *  ��
//  111 */
//  112 void LPLD_USB_SetRevIsr(USB_REV_ISR_CALLBACK isr)
//  113 {
//  114   USB_Rev_SetIsr(isr);
//  115 }
//  116 
//  117 /*
//  118 *  LPLD_USB_QueueData
//  119 *  ��USB���ڴ��лָ����յ������ݵ��û��ڴ���
//  120 *  ���ճɹ�����ô˺���
//  121 *  ��
//  122 *  ��
//  123 */
//  124 void LPLD_USB_QueueData(void)
//  125 {
//  126   (void)USB_Class_CDC_Interface_DIC_Recv_Data(CONTROLLER_ID, NULL, 0);
//  127 }
//  128 #endif
//  129 
//  130 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//  131 /*
//  132 *  LPLD_USB_HID_MouseControl
//  133 *  HID�����ƺ���
//  134 *  ����
//  135 *    uint8 *buf -- �������4���ֽڿ�������
//  136 *      ��һ���ֽڿ���������Ҽ�
//  137 *        ȡֵ��MOUSE_LEFT_CLICK  ���
//  138 *              MOUSE_RIGHT_CLICK �Ҽ�
//  139 *      �ڶ����ֽڿ���X���ƶ�
//  140 *        ȡֵ��MOUSE_LEFT_MOVE   ����
//  141 *              MOUSE_RIGHT_MOVE  ����
//  142 *      �������ֽڿ���Y���ƶ�
//  143 *        ȡֵ��MOUSE_UP_MOVE    ����
//  144 *              MOUSE_DOWN_MOVE  ����
//  145 *  �����
//  146 *    ��
//  147 */
//  148 void LPLD_USB_HID_MouseControl(uint8 *buf)
//  149 {
//  150   USB_HID_MouseControl(buf);
//  151 }
//  152 
//  153 /*
//  154 *  LPLD_USB_HID_LoopTask
//  155 *  ��main loop��ѭ�����������
//  156 *  ����
//  157 *    uint8 *buf -- �������4���ֽڿ�������
//  158 *      ��һ���ֽڿ���������Ҽ�
//  159 *        ȡֵ��MOUSE_LEFT_CLICK  ���
//  160 *              MOUSE_RIGHT_CLICK �Ҽ�
//  161 *      �ڶ����ֽڿ���X���ƶ�
//  162 *        ȡֵ��MOUSE_LEFT_MOVE   ����
//  163 *              MOUSE_RIGHT_MOVE  ����
//  164 *      �������ֽڿ���Y���ƶ�
//  165 *        ȡֵ��MOUSE_UP_MOVE    ����
//  166 *              MOUSE_DOWN_MOVE  ����
//  167 *  �����
//  168 *    ��
//  169 */
//  170 void LPLD_USB_HID_LoopTask(uint8 *buf)
//  171 {
//  172   if(USB_HID_Mouse_Task())
//  173   {
//  174     LPLD_USB_HID_MouseControl(buf);
//  175   }
//  176 }
//  177 #endif
//  178 /*
//  179 *  LPLD_USB_Isr
//  180 *  USB�жϴ�����
//  181 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 void USB_OTG_IRQHandler(void)
//  183 {
USB_OTG_IRQHandler:
        PUSH     {R7,LR}
//  184   //�����û��Զ����жϷ���
//  185   USB_ISR[0]();  
        LDR.N    R0,??DataTable2_8
        LDR      R0,[R0, #+0]
        BLX      R0
//  186 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x4000d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x40048004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x40048048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x4007210c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x40047000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     USB_DEVICE_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     USB_ISR

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
//   4 bytes in section .bss
// 138 bytes in section .text
// 
// 138 bytes of CODE memory
//   4 bytes of DATA memory
//
//Errors: none
//Warnings: none
