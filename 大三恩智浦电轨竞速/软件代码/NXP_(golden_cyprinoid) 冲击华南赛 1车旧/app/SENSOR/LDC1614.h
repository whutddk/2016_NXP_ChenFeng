/*!
 * \file LDC1614.h
 *
 * Copyright (c) 2014-2015, Texas Instruments Incorporated - http://www.ti.com
 * All rights reserved.
 */

#ifndef LDC1614_H_
#define LDC1614_H_

//*****************************************************************************
// #defines
//*****************************************************************************
#define LDC1614_ADDRESS 0x2A	//I2C address for LDC1614

//Register Addresses for LDC1614
#define DATA_MSB_CH0			0x00	//Channel 0 MSB Conversion Result and Error Status
#define DATA_LSB_CH0			0x01	//Channel 0 LSB Conversion Result
#define DATA_MSB_CH1			0x02	//Channel 1 MSB Conversion Result and Error Status
#define DATA_LSB_CH1			0x03	//Channel 1 LSB Conversion Result
#define DATA_MSB_CH2			0x04	//Channel 2 MSB Conversion Result and Error Status
#define DATA_LSB_CH2			0x05	//Channel 2 LSB Conversion Result
#define DATA_MSB_CH3			0x06	//Channel 3 MSB Conversion Result and Error Status
#define DATA_LSB_CH3			0x07	//Channel 3 LSB Conversion Result
#define REF_COUNT_CH0			0x08	//Reference Count setting for Channel 0
#define REF_COUNT_CH1			0x09	//Reference Count setting for Channel 1
#define REF_COUNT_CH2			0x0A	//Reference Count setting for Channel 2
#define REF_COUNT_CH3			0x0B	//Reference Count setting for Channel 3
#define	OFFSET_CH0				0x0C	//Offset value for Channel 0
#define	OFFSET_CH1				0x0D	//Offset value for Channel 1
#define	OFFSET_CH2				0x0E	//Offset value for Channel 2
#define	OFFSET_CH3				0x0F	//Offset value for Channel 3
#define SETTLECOUNT_CH0	 		0x10	//Channel 0 Settling Reference Count
#define SETTLECOUNT_CH1			0x11	//Channel 1 Settling Reference Count
#define SETTLECOUNT_CH2 		0x12	//Channel 2 Settling Reference Count
#define SETTLECOUNT_CH3 		0x13	//Channel 3 Settling Reference Count
#define CLOCK_DIVIDERS_CH0		0x14	//Reference and Tank Divider settings for Channel 0
#define CLOCK_DIVIDERS_CH1		0x15	//Reference and Tank Divider settings for Channel 1
#define CLOCK_DIVIDERS_CH2		0x16	//Reference and Tank Divider settings for Channel 2
#define CLOCK_DIVIDERS_CH3		0x17	//Reference and Tank Divider settings for Channel 3
#define	STATUS					0x18	//Device Status Report
#define ERROR_CONFIG			0x19	//Error Reporting Configuration
#define CONFIG					0x1A	//Conversion Configuration
#define MUX_CONFIG				0x1B	//Channel Multiplexing Configuration
#define RESET_DEV				0x1C	//Reset Device
#define	DRIVE_CURRENT_CH0		0x1E	//Channel 0 sensor current drive configuration
#define	DRIVE_CURRENT_CH1		0x1F	//Channel 1 sensor current drive configuration
#define	DRIVE_CURRENT_CH2		0x20	//Channel 2 sensor current drive configuration
#define	DRIVE_CURRENT_CH3		0x21	//Channel 3 sensor current drive configuration

#define ERR_UR					0x10	//Under-range Error Flag
#define ERR_OR					0x20	//Over-range Error Flag
#define ERR_WD					0x40	//Watchdog Timeout Error Flag
#define ERR_AE					0x80	//Amplitude Error Flag

extern uint32 LDC_data[4];
extern uint16 LDC_STATUS;
extern uint8 LDC_flag[4];

void LDC1614_sleep(void);
void LDC1614_init(void);
void LDC1614_reset(void);
void LDC1614_start_meas(void);
void LDC1614_read_meas(void);
void LDC1614_status(void);

#endif /* LDC1614_H_ */
