#ifndef _BSP_H_
#define _BSP_H_

#include "IIC.h"
#include "LDC1614.h"



#define EEPROM_LENTH 10


extern void bspinit();
extern void adc_offset();


extern void key_init();
extern uint8 read_key();

extern uint8 EEPROM_BUFF[EEPROM_LENTH];

extern void EEPROM_get();
extern void EEPROM_Write(uint8 addr,uint8 dat);
extern uint8 EEPROM_Read(uint8 addr);
extern void EEPROM_CLEAR();
extern void EEPROM_COPY();
extern void takeoff();//此次为人工启动
extern void go_on();//此次为掉电启动
#endif 
