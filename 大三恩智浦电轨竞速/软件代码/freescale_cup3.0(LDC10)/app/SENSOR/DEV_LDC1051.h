#ifndef _DEV_LDC1051_H_
#define _DEV_LDC1051_H_

#define SPI_RWBIT 		0x80 				                           //地址的第一位：1=读出,0=写入

#define LDC1051_DEVID 	        0x00
#define LDC1051_RPMAX 	        0x01
#define LDC1051_RPMIN 	        0x02
#define LDC1051_WATCHDOG 	0x03
#define LDC1051_LDCCONFIG 	0x04
//#define LDC1051_RESERVED 	0x05
//#define LDC1051_RESERVED 	0x06
#define LDC1051_THRESHIMSB 	0x07
//#define LDC1051_RESERVED 	0x08
#define LDC1051_THRESLOMSB 	0x09
#define LDC1051_INTCONFIG 	0x0A
#define LDC1051_PWRCONFIG 	0x0B
#define LDC1051_STATUS	 	0x20
//#define LDC1051_RESERVED 	0x21
#define LDC1051_PROXMSB 	0x22
//#define LDC1051_RESERVED	0x23
//#define LDC1051_RESERVED	0x24
//#define LDC1051_RESERVED	0x25

void LDC1051_init();


#endif

