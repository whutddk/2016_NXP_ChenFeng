///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:15
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_USB.c
//    Command line =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_USB.c -D LPLD_K60
//        -lCN
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
//        1.9\iar\FLASH\List\HW_USB.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN USB_DEVICE_ISR

        PUBLIC LPLD_USB_DeInit
        PUBLIC LPLD_USB_Init
        PUBLIC USB_ISR
        PUBLIC USB_OTG_IRQHandler

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\lib\LPLD\HW\HW_USB.c
//    1 /**
//    2  * @file HW_USB.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief UART底层模块相关函数
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
//   26 //用户自定义中断服务函数数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   27 USB_ISR_CALLBACK USB_ISR[1];
USB_ISR:
        DS8 4
//   28 
//   29 /*
//   30 * LPLD_USB_Init
//   31 * K60 USB外设初始化函数
//   32 * 在该函数中,初始化USB外设时钟,设置USB外设的中断服务函数,
//   33 * 并且调用USB设备初始化函数
//   34 */
//   35 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 void LPLD_USB_Init(void)
//   37 { 
LPLD_USB_Init:
        PUSH     {R7,LR}
//   38   MPU->CESR=0; //MPU 配置 
        MOVS     R0,#+0
        LDR.N    R1,??DataTable2_1  ;; 0x4000d000
        STR      R0,[R1, #+0]
//   39   SIM->SOPT2 |= SIM_SOPT2_USBSRC_MASK |   //选择PLL/FLL作为时钟源
//   40                SIM_SOPT2_PLLFLLSEL_MASK; //用PLL作为USB的时钟源，此时的PLL的频率为96Mhz 
        LDR.N    R0,??DataTable2_2  ;; 0x40048004
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x50000
        LDR.N    R1,??DataTable2_2  ;; 0x40048004
        STR      R0,[R1, #+0]
//   41 #if(CORE_CLK_MHZ == PLL_96)
//   42   SIM->CLKDIV2 = 0x02;                    //设置分频系数USB时钟 = 96Mhz/2 =48Mhz
        MOVS     R0,#+2
        LDR.N    R1,??DataTable2_3  ;; 0x40048048
        STR      R0,[R1, #+0]
//   43 #endif 
//   44   SIM->SCGC4 |= (SIM_SCGC4_USBOTG_MASK);  //使能USB外设时钟  
        LDR.N    R0,??DataTable2_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.N    R1,??DataTable2_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   45   USB0->USBTRC0 = 0x40;                   //按照文档所述，此位必须设置为1
        MOVS     R0,#+64
        LDR.N    R1,??DataTable2_5  ;; 0x4007210c
        STRB     R0,[R1, #+0]
//   46   SIM->SOPT1 |= SIM_SOPT1_USBREGEN_MASK;  //配置USB设备稳压源
        LDR.N    R0,??DataTable2_6  ;; 0x40047000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable2_6  ;; 0x40047000
        STR      R0,[R1, #+0]
//   47   
//   48   /* NVIC模块配置 */
//   49   enable_irq(USB0_IRQn);                 //使能NVIC中的USB OTG中断
        MOVS     R0,#+73
        BL       NVIC_EnableIRQ
//   50   USB_ISR[0] = USB_DEVICE_ISR;           //将USB协议处理函数添加到中断处理函数数组中
        LDR.N    R0,??DataTable2_7
        LDR.N    R1,??DataTable2_8
        STR      R0,[R1, #+0]
//   51   
//   52 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   53   USB_CDC_Init();                        //初始化CDC类
//   54 #elif(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//   55   USB_HID_Mouse_Init();                  //初始化HID类
//   56 #endif
//   57   
//   58   
//   59 }
        POP      {R0,PC}          ;; return
//   60 
//   61 /*
//   62 * LPLD_USB_DeInit
//   63 * K60 USB模块注销函数
//   64 * 注销所选择的USB设备
//   65 */
//   66 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   67 void LPLD_USB_DeInit(void)
//   68 { 
//   69 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   70   USB_Class_CDC_DeInit(CONTROLLER_ID);                        //注销CDC类
//   71 #elif(USB_DEVICE_CLASS == USB_DEVICE_CLASS_HID)
//   72   USB_Class_HID_DeInit(CONTROLLER_ID);                        //注销HID类
//   73 #endif
//   74 }
LPLD_USB_DeInit:
        BX       LR               ;; return
//   75 
//   76 #if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)
//   77 /*
//   78 *  LPLD_USB_VirtualCom_Rx
//   79 *  将USB CDC类模式虚拟成串口模式，该函数是串口接收函数
//   80 *  参数：
//   81 *      *rx_buf--指向用户数据存储区，用于储存接收到的数据
//   82 *  输出：接收数据的长度，以字节为单位
//   83 */
//   84 uint8 LPLD_USB_VirtualCom_Rx(uint8 *rx_buf)
//   85 {
//   86   memcpy(rx_buf,tUSB_Rev_Data.buffer,tUSB_Rev_Data.len);
//   87   return tUSB_Rev_Data.len;
//   88 }
//   89 
//   90 /*
//   91 *  LPLD_USB_VirtualCom_Tx
//   92 *  将USB CDC类模式虚拟成串口模式，该函数是串口发送函数
//   93 *  参数：
//   94 *      *tx_buf -- 指向用户数据存储区，用于储存要发送的数据
//   95 *      len -- 要发送的数据长度
//   96 *  输出：0x00   发送成功
//   97 *        非0x00 发送失败
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
//  108 *  添加USB 虚拟串口接收数据中断服务函数
//  109 *  无
//  110 *  无
//  111 */
//  112 void LPLD_USB_SetRevIsr(USB_REV_ISR_CALLBACK isr)
//  113 {
//  114   USB_Rev_SetIsr(isr);
//  115 }
//  116 
//  117 /*
//  118 *  LPLD_USB_QueueData
//  119 *  从USB的内存中恢复接收到的数据到用户内存中
//  120 *  接收成功后调用此函数
//  121 *  无
//  122 *  无
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
//  133 *  HID鼠标控制函数
//  134 *  参数
//  135 *    uint8 *buf -- 数组包含4个字节控制命令
//  136 *      第一个字节控制鼠标左右键
//  137 *        取值：MOUSE_LEFT_CLICK  左键
//  138 *              MOUSE_RIGHT_CLICK 右键
//  139 *      第二个字节控制X轴移动
//  140 *        取值：MOUSE_LEFT_MOVE   左移
//  141 *              MOUSE_RIGHT_MOVE  右移
//  142 *      第三个字节控制Y轴移动
//  143 *        取值：MOUSE_UP_MOVE    上移
//  144 *              MOUSE_DOWN_MOVE  下移
//  145 *  输出：
//  146 *    无
//  147 */
//  148 void LPLD_USB_HID_MouseControl(uint8 *buf)
//  149 {
//  150   USB_HID_MouseControl(buf);
//  151 }
//  152 
//  153 /*
//  154 *  LPLD_USB_HID_LoopTask
//  155 *  在main loop中循环调度鼠标检测
//  156 *  参数
//  157 *    uint8 *buf -- 数组包含4个字节控制命令
//  158 *      第一个字节控制鼠标左右键
//  159 *        取值：MOUSE_LEFT_CLICK  左键
//  160 *              MOUSE_RIGHT_CLICK 右键
//  161 *      第二个字节控制X轴移动
//  162 *        取值：MOUSE_LEFT_MOVE   左移
//  163 *              MOUSE_RIGHT_MOVE  右移
//  164 *      第三个字节控制Y轴移动
//  165 *        取值：MOUSE_UP_MOVE    上移
//  166 *              MOUSE_DOWN_MOVE  下移
//  167 *  输出：
//  168 *    无
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
//  180 *  USB中断处理函数
//  181 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 void USB_OTG_IRQHandler(void)
//  183 {
USB_OTG_IRQHandler:
        PUSH     {R7,LR}
//  184   //调用用户自定义中断服务
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
