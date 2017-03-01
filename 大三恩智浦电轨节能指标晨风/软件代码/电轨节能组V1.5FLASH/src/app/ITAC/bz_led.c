#include "include.h"

enum _bz_style bz_style = norm;
uint16 bz_cnt = 0;

void bzled_init()
{
  gpio_init(PTD3, GPO, 0);
  gpio_init(PTE0, GPO, 0);
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
  if ( bz_cnt < 10  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 20 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt <= 30 )
  {
    BZ_ON;
    LED_ON;
  } 
  else if ( bz_cnt <= 40 )
  {
    BZ_OFF;
    LED_OFF;
  }  
  else if ( bz_cnt <= 50 )
  {
    BZ_ON;
    LED_ON;
  } 
  else if ( bz_cnt <= 100 )
  {
    BZ_OFF;
    LED_OFF;
  } 
  else if ( bz_cnt <= 150 )
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
  if ( bz_cnt < 5  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 10 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 15  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 20 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 25  )
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
  if ( bz_cnt < 10  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 500 )
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
  if ( bz_cnt < 50  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 100 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 150  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 200 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 250  )
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
  if ( bz_cnt < 10  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 20 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 25  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 30 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 35  )
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
  if ( bz_cnt < 3  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 6 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 9  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 12 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 17  )
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
  if ( bz_cnt < 2  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 4 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 6  )
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
