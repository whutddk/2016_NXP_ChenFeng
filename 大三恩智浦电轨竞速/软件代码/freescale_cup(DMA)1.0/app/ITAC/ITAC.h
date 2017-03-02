#ifndef _ITAC_H_
#define _ITAC_H_

#include "freecars.h"
#include "OLED.h"

enum _bz_style
{
  ready    = 0,
  datarec  = 1,
  warn     = 2,
  norm     = 3
};

enum _key_style
{
  key_up =0,
  key_down = 1,
  key_left = 2,
  key_right = 3,
  key_click = 4
};

#define LED_ON     LPLD_GPIO_Output_b(PTC, 6 ,0)
#define LED_OFF     LPLD_GPIO_Output_b(PTC, 6 ,1)

#define BZ_ON     LPLD_GPIO_Output_b(PTC, 7 ,1)
#define BZ_OFF     LPLD_GPIO_Output_b(PTC, 7 ,0)

extern enum _bz_style bz_style;

extern uint16 bz_cnt;

void bzled_init();
void bzled_work();
void bz_set(enum _bz_style bz);
void bz_ready();
void bz_datarec();
void bz_norm();
void bz_warn();


#endif

