/*
 * --------------"��������K60�ײ��"-----------------
 *
 * ����Ӳ��ƽ̨:LPLD_K60 Card
 * ��Ȩ����:�����������µ��Ӽ������޹�˾
 * ��������:http://laplenden.taobao.com
 * ��˾�Ż�:http://www.lpld.cn
 *
 * �ļ���: HAL_USB_Device.h
 * ��;: �ڸ��ļ��ж�����USB�豸ģʽ�µ�Ӧ�ú���
 *          ��ʱUSB�Ĺ�������ΪCDC��
 *
 * ������ʹ��Э��:
 *  ��������������ʹ���߿���Դ���룬�����߿��������޸�Դ���롣�����μ�����ע��Ӧ
 *  ���Ա��������ø��Ļ�ɾ��ԭ��Ȩ���������������ο����߿��Լ�ע���ΰ�Ȩ�����ߣ�
 *  ��Ӧ�����ش�Э��Ļ����ϣ�����Դ���롢���ó��۴��뱾��
 */
#ifndef __USB_DEVICE_H__
#define __USB_DEVICE_H__

#include "USB.h"


/*����USB2.0��׼*/
/*����USB�豸������*/
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

/*ѡ��ǰUSB�豸������*/
#define USB_DEVICE_CLASS USB_DEVICE_CLASS_CDC


//USBģ���жϻص���������
typedef void (*USB_ISR_CALLBACK)(void);
typedef void (*USB_REV_ISR_CALLBACK)(void);

/*�����ⲿ���� */
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