#ifndef _BSP_H_
#define _BSP_H_

#include "IIC.h"
#include "LDC1614.h"


#define FLASH_LENTH 10


extern void bspinit();
extern void adc_offset();

extern void key_init();
extern uint8 read_key();

extern int32 FLASH_BUFF[FLASH_LENTH];

extern void STATUE_get();

void record();
void read_flash();
int enter_vlpr(void);
#endif 
