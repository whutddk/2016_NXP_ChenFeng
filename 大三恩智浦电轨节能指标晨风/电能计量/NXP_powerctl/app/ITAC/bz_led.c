#include "include.h"


enum _bz_style bz_style = norm;
uint16 bz_cnt = 0;

void bzled_init()
{
  GPIO_InitTypeDef bzled_inittype;
  
  bzled_inittype.GPIO_PTx = PTA; //led bz
  bzled_inittype.GPIO_Pins = GPIO_Pin24 | GPIO_Pin28;
  bzled_inittype.GPIO_Dir = DIR_OUTPUT;
  bzled_inittype.GPIO_Output = OUTPUT_H;
  bzled_inittype.GPIO_PinControl = IRQC_DIS;
  bzled_inittype.GPIO_Isr = NULL;
  
  LPLD_GPIO_Init(bzled_inittype);
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
    case(fzc):bz_fzc(); break;
    case(on):bz_on(); break;
  }
  if ( ctl.flag_on &&  bz_style == norm)
  {
    bz_style = on;
  }
}

void bz_ready()
{
  if ( bz_cnt < 100  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 200 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt <= 300 )
  {
    BZ_ON;
    LED_ON;
  } 
  else if ( bz_cnt <= 400 )
  {
    BZ_OFF;
    LED_OFF;
  }  
  else if ( bz_cnt <= 500 )
  {
    BZ_ON;
    LED_ON;
  } 
  else if ( bz_cnt <= 1000 )
  {
    BZ_OFF;
    LED_OFF;
  } 
  else if ( bz_cnt <= 1500 )
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
  
void bz_norm()
{
  if ( bz_cnt < 100  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 10000 )
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
  if ( bz_cnt < 500  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 1000 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 1500  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 2000 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 2500  )
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

void bz_on()
{
  if ( bz_cnt < 10  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 1000 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else
  {
    bz_cnt = 0;
    bz_style = norm;
  }
}

void bz_cross()
{
  if ( bz_cnt < 30  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 60 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 90  )
  {
    BZ_ON;
    LED_ON;
  }
  else if ( bz_cnt <= 120 )
  {
    BZ_OFF;
    LED_OFF;
  }
  else if ( bz_cnt < 170  )
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

void bz_fzc()
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
  else  if ( bz_cnt < 150  )
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
