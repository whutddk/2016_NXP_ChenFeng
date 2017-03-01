#include "include.h"

enum _bz_style bz_style = norm;
uint16 bz_cnt = 0;

void bzled_init()
{
  gpio_init(PTD3, GPO, 0);
  gpio_init(PTD0, GPO, 0);
}

void bzled_work()
{
  switch(bz_style)
  {
    case(ready): bz_ready();break;
    case(datarec): bz_datarec();break;
    case(warn):bz_warn(); break;
    case(cross):bz_cross(); break;
    case(norm):bz_norm(); break;
    case(goon):bz_goon();break;
  }
}

void bz_ready()
{
#define RADIO 2 
  if ( bz_cnt < 10 / RADIO  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 20 / RADIO)
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt <= 30 / RADIO)
  {
    BZ_ON;
    LED_ON;
  } 
  else if ( bz_cnt <= 40 / RADIO)
  {
    BZ_OFF;
    LED_OFF;
  }  
  else if ( bz_cnt <= 50 / RADIO)
  {
    BZ_ON;
    LED_ON;
  } 
  else if ( bz_cnt <= 100 / RADIO)
  {
    BZ_OFF;
    LED_OFF;
  } 
  else if ( bz_cnt <= 150 / RADIO)
  {
    BZ_ON;
    LED_ON;
  } 
  else 
  {
    BZ_OFF;
    LED_OFF;
    bz_style = norm;
  } 
  
}

void bz_datarec()
{
  if ( bz_cnt < 5 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 10 / RADIO)
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 15 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 20 / RADIO)
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 25 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else
  {
    BZ_OFF;
    LED_OFF;
    bz_style = norm;
  }
  
}
  
void bz_norm()
{
  if ( bz_cnt < 10 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 500 / RADIO)
  {
    BZ_OFF;
    LED_OFF;
  }
  else
  {
    bz_cnt = 0;
  }
}

void bz_warn()
{
  if ( bz_cnt < 50 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 100 / RADIO)
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 150 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 200 / RADIO )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 250 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else 
  {
    BZ_OFF;
    LED_OFF;
    bz_style = norm;
  }
}

void bz_fuzzyrec()
{
  if ( bz_cnt < 10 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 20 / RADIO )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 25 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 30 / RADIO )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 35 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else
  {
    BZ_OFF;
    LED_OFF;
    bz_style = norm;
  }
}

void bz_cross()
{
  if ( bz_cnt < 3 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 6 / RADIO )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 9 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 12 / RADIO )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 17 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else
  {
    BZ_OFF;
    LED_OFF;
    bz_style = norm;
  }
}

void bz_goon()
{
  if ( bz_cnt < 10 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 20 / RADIO )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 30 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
    else if ( bz_cnt <= 40 / RADIO )
  {
    BZ_OFF;
    LED_OFF;
  }
    else if ( bz_cnt < 50 / RADIO )
  {
    BZ_ON;
    LED_ON;
  }
  else
  {
    BZ_OFF;
    LED_OFF;
    bz_style = norm;
  }
}

void bz_set(enum _bz_style bz)
{
  bz_cnt = 0;
  bz_style = bz; 
}
