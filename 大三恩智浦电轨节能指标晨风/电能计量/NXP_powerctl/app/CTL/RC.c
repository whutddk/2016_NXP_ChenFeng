#include "include.h"

void order()
{
  LPLD_LPTMR_DelayMs(10);
  LPLD_GPIO_ClearIntFlag(PORTD);
  
  if ( PTD0_I )//BBBBBDDDDDD
  {
    bz_set(datarec);
    ctl.flag_on = 0;
  }

  else if( PTD2_I  )/////AAAAAAAAAACCCCCCCC
  {
    bz_set(datarec);
    ctl.flag_on = 1;
  }

  else
  {}
//  if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin0)||LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin2))
//  {
//    LPLD_GPIO_ClearIntFlag(PORTD);
//    bz_set(datarec);
//    
//    //BBBBBBBBBBBBBBBBB DDDDDD
//  }
//  if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin1)||LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin3))
//  {
//    LPLD_GPIO_ClearIntFlag(PORTD);
//    bz_set(datarec);
//    
//    //AAAAAAAAAAAAAAAAAAAA CCCCCCC
//  }

  
}
  
  


void RC_init()
{
  GPIO_InitTypeDef RCgpio_inittype;
  RCgpio_inittype.GPIO_PTx = PTD;
  RCgpio_inittype.GPIO_Pins = GPIO_Pin0 | GPIO_Pin1 |  GPIO_Pin2 |  GPIO_Pin3 ; 
  RCgpio_inittype.GPIO_Dir = DIR_INPUT;        // ‰»Î
  RCgpio_inittype.GPIO_PinControl = INPUT_PULL_DOWN | IRQC_RI; //
  RCgpio_inittype.GPIO_Isr =  order;
  LPLD_GPIO_Init(RCgpio_inittype);
  LPLD_GPIO_EnableIrq(RCgpio_inittype);
}

void check_sw()
{
 
  LPLD_LPTMR_DelayMs(100);
  if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin6))//up
  { 
    ctl.flag_on = 1;
    while( !LPLD_GPIO_Input_b(PTE, 6) );
  }
  
  if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin7))//left
  {
    ctl.flag_start = 1; 
    while( !LPLD_GPIO_Input_b(PTE, 7) );
  }
    if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin10))//down
  {
    ctl.flag_on = 0; 
    while( !LPLD_GPIO_Input_b(PTE, 10) );
  }
  
  if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin11))//click
  {
    //bz_set(datarec);
    ctl.current_sum = 0;
    while( !LPLD_GPIO_Input_b(PTE, 11) );
  }
  if ( LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin12))//right
  {
    ctl.flag_start = 0; 
    while( !LPLD_GPIO_Input_b(PTE, 12));
  }
  bz_set(datarec);
  LPLD_GPIO_ClearIntFlag(PORTE);
}