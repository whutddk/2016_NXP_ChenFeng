#ifndef _ITAC_H_
#define _ITAC_H_

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

#define LED_ON     LPLD_GPIO_Output_b(PTE, 11 ,0)
#define LED_OFF     LPLD_GPIO_Output_b(PTE, 11 ,1)

#define BZ_ON     LPLD_GPIO_Output_b(PTE, 10 ,1)
#define BZ_OFF     LPLD_GPIO_Output_b(PTE, 10 ,0)

extern enum _bz_style bz_style;

extern uint16 bz_cnt;

void bz_init();
void led_init();

void bzled_work();
void bz_set(enum _bz_style bz);
void bz_ready();
void bz_datarec();
void bz_norm();
void bz_warn();
void bz_cross();



#endif

