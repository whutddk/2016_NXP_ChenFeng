/*
 *
 * �ļ���: USB_DESC.h
 * ��;: �ڸ��ļ��ж�����USB ������
 *
 * ˵��:��ҳ�������Freescale�ٷ�ʾ�������޸ģ�Դ�����ļ�Ϊ USB_DESC.h
 *    �ڱ��ļ��н��豸�������е�bcdUSB��bcdDevice�޸ĳ�2.0�汾
 */
#ifndef __USB_DESC_H__
#define __USB_DESC_H__

/* Includes */
#include "FslTypes.h"

/********************************************************************
*       Device Descriptor
********************************************************************/

#if(USB_DEVICE_CLASS == USB_DEVICE_CLASS_CDC)

const UINT8 Device_Descriptor[18]= 
{
 	0x12,		      //blength           �豸���������ֽڳ���
	0x01,		      //bDescriptor       ��ʾ��������������
	0x00,0x02,            //bcdUSB ver R=1.10 ����USB�İ汾ΪUSB2.0,
	0x02,		      //bDeviceClass      ����CDC��
	0x00,		      //bDeviceSubClass			
	0x00,		      //bDeviceProtocol			
	0x40,		      //bMaxPacketSize0   ����Ϊ64���ֽ�
	0xA2,0x15,	      //idVendor - 0x15A2(freescale Vendor ID)
	0x0F,0xA5,	      //idProduct
	0x00,0x02,	      //bcdDevice - Version 2.00
	0x01,                 //iManufacturer - Index to string Manufacturer descriptor
	0x02,	              //iProduct  - Index to string product descriptor 
	0x03,		      //iSerialNumber - Index to string serial number 
	0x01	              //bNumConfigurations - # of config. at current speed,
};


/********************************************************************
*       String 0
********************************************************************/
const UINT8 String_Descriptor0[4] = 
{
	0x04,		   //bLength;
	0x03,		   //bDescriptorType - STRING descriptor
	0x09,
        0x04	           //wLANDID0 - English (American)
};

/********************************************************************
*       String 1
********************************************************************/
const UINT8 String_Descriptor1[] = 
{
	0x14,	            //bLength; 20bytes
	0x03,		    //bDescriptorType - STRING descriptor
	'L',0x00,	    // "l"                                                                          
	'a',0x00,	    // "a"
	'p',0x00,	    // "p"
	'l',0x00,	    // "l"
	'e',0x00,	    // "e"
	'n',0x00,	    // "n"
	'd',0x00,	    // "d"
	'e',0x00,	    // "e"
	'n',0x00	    // "n"
};	 

/********************************************************************
*       String 2
********************************************************************/
const UINT8 String_Descriptor2[] = 
{
	0x12,		    //bLength; 18bytes
	0x03,		    //bDescriptorType - STRING descriptor
	'U',0x00,	    
	'S',0x00,	
	'B',0x00,	
	'-',0x00,
	'U',0x00,	    
	'A',0x00,	
	'R',0x00,	
	'T',0x00
};	 
/********************************************************************
*       String 3
********************************************************************/
const UINT8 String_Descriptor3[] = 
{
	0x12,		    //bLength; 18bytes
	0x03,		    //bDescriptorType - STRING descriptor
	'T',0x00,	    
	'E',0x00,	
	'S',0x00,	
	'T',0x00,
	'_',0x00,	    
	'1',0x00,	
	'.',0x00,	
	'1',0x00
};	 


/********************************************************************
*       Configuration Descriptor
********************************************************************/
const UINT8 Configuration_Descriptor[0x43]= 
{
	0x09,		    //blength
	0x02,		    //bDescriptor
	0x43,0x00,	    //wTotalLength - # of bytes including interface and endpoint descpt.
	0x02,		    //bNumInterfaces - at least 1 data interface
	0x01,		    //bConfigurationValue - 
	0x00,		    //iConfiguration - index to string descriptor	
	0xC0,		    //bmAttributes - 	            bit 7- Compatibility with USB 1.0
			    //bit 6 if 1 self powered else Bus powered
			    //bit 5-remote wakeup
		            //bit 4-0-reserved
	0x32,		    //bMaxPower - 100mA
/********************************************************************
*       Interface Descriptor
********************************************************************/
	0x09,	            //blength
	0x04,		    //bDescriptorType - Interface descriptor
	0x00,		    //bInterfaceNumber - Zero based value identifying the index of the config.
	0x00,		    //bAlternateSetting;
	0x01,		    //bNumEndpoints - 1 endpoints
	0x02,		    //bInterfaceClass - CDC
	0x02,		    //bInterfaceSubClass 
	0x01,		    //bInterfaceProtocol 
	0x01,		    //iInterface - Index to String descriptor
        /*Header Functional Descriptor*/
        0x05,               //bFunctionLength 
        0x24,               //bDescriptorType: CS_INTERFACE 
        0x00,               // bDescriptorSubtype: Call Management Func Desc 
        0x10,               // bmCapabilities: D0+D1 
        0x01,               // bDataInterface: 1 
        /*Call Managment Functional Descriptor*/
        0x05,
        0x24,
        0x01,
        0x00,
        0x01,
        /*ACM Functional Descriptor*/
        0x04,
        0x24,
        0x02,
        0x00,
        /*Union Functional Descriptor*/
        0x05,
        0x24,
        0x06,
        0x00,
        0x01, 
/********************************************************************
*       Endpoint  Descriptor
********************************************************************/
	0x07,           //blength
	0x05,           //bDescriptorType - EndPoint
	0x81,           //bEndpointAddress    
	0x03,           //bmAttributes
	0x40,0x00,      //wMaxPacketSize           
	0x02,           //bInterval
/********************************************************************
*       Interface Descriptor
********************************************************************/
	0x09,           //blength
	0x04,           //bDescriptorType - Interface descriptor
	0x01,           //bInterfaceNumber - Zero based value identifying the index of the config.
	0x00,           //bAlternateSetting;
	0x02,           //bNumEndpoints - 2 endpoints
	0x0A,           //bInterfaceClass - mass storage 
	0x00,           //bInterfaceSubClass - SCSI Transparent command Set
	0x00,           //bInterfaceProtocol - Bulk-Only transport
	0x01,           //iInterface - Index to String descriptor
/********************************************************************
*       Endpoint OUT Descriptor
********************************************************************/
	0x07,           //blength
	0x05,           //bDescriptorType - EndPoint
	0x82,           //bEndpointAddress    
	0x02,           //bmAttributes
	0x40,0x00,      //wMaxPacketSize           
	0x00,           //bInterval
/********************************************************************
*       Endpoint IN Descriptor
********************************************************************/
	0x07,           //blength
	0x05,           //bDescriptorType - EndPoint
	0x03,           //bEndpointAddress    
	0x02,           //bmAttributes
	0x40,0x00,      //wMaxPacketSize           
	0x00,           //bInterval	
};
#endif

#endif /* __USB_Desc__ */