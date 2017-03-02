/*
 * --------------"拉普兰德K60底层库"-----------------
 *
 * 测试硬件平台:LPLD_K60 Card
 * 版权所有:北京拉普兰德电子技术有限公司
 * 网络销售:http://laplenden.taobao.com
 * 公司门户:http://www.lpld.cn
 *
 * 文件名: HAL_USB_Device.h
 * 用途: 在该文件中定义了USB设备模式下的应用函数
 *          此时USB的工作类型为CDC类
 *
 * 开发者使用协议:
 *  本代码面向所有使用者开放源代码，开发者可以随意修改源代码。但本段及以上注释应
 *  予以保留，不得更改或删除原版权所有者姓名。二次开发者可以加注二次版权所有者，
 *  但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
 */
#ifndef __USB_DEVICE_H__
#define __USB_DEVICE_H__

#include "USB.h"


/*根据USB2.0标准*/
/*定义USB设备的类型*/
#define USB_DEVICE_CLASS_AUDIO        1
#define USB_DEVICE_CLASS_CDC          2
#define USB_DEVICE_CLASS_HID          3
#define USB_DEVICE_CLASS_PHY          4
#define USB_DEVICE_CLASS_IMAGE        5
#define USB_DEVICE_CLASS_MASS_STORAGE 6
#define USB_DEVICE_CLASS_HUB          7
#define USB_DEVICE_CLASS_CDC_DATA     8
#define USB_DEVICE_CLASS_SMARTCARD    9
//.......

/*选择当前USB设备的类型*/
#define USB_DEVICE_CLASS USB_DEVICE_CLASS_CDC


//USB模块中断回调函数类型
typedef void (*USB_ISR_CALLBACK)(void);
typedef void (*USB_REV_ISR_CALLBACK)(void);

/*声明外部变量 */
extern uint8_t gu8USB_Flags; 
extern uint8_t gu8EP3_OUT_ODD_Buffer[];
extern tBDT tBDTtable[];

void LPLD_USB_Init(void);
void LPLD_USB_Device_Init(void);
void LPLD_USB_Device_Enumed(void);
uint8_t LPLD_USB_VirtualCom_Rx(uint8_t *rx_buf);
void LPLD_USB_VirtualCom_Tx(uint8_t *tx_buf,uint8_t len);
void LPLD_USB_Device_Isr(void);
void LPLD_USB_SetRevIsr(USB_REV_ISR_CALLBACK);

#endif