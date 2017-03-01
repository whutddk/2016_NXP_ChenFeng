#ifndef _ITAC_H_
#define _ITAC_H_

#include "include.h" 
#include "freecars.h"
#include "OLED.h"

enum _bz_style
{
  ready    = 0,
  datarec  = 1,
  warn     = 2,
  norm     = 3,
  cross    = 4,
  fuzzyrec = 5
  
};

#define LED_ON     PTD3_OUT = 0
#define LED_OFF    PTD3_OUT = 1

#define BZ_ON      PTE0_OUT = 1
#define BZ_OFF     PTE0_OUT = 0

extern enum _bz_style bz_style;

extern uint16 bz_cnt;

void bzled_init();
void bzled_work();
void bz_set(enum _bz_style bz);
void bz_ready();
void bz_datarec();
void bz_norm();
void bz_warn();
void bz_cross();



#endif

