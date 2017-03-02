#include "include.h"


void key_init()
{
  GPIO_InitTypeDef key_inittype;
  
  key_inittype.GPIO_PTx = PTB;
  key_inittype.GPIO_Pins = GPIO_Pin17 | GPIO_Pin20 | GPIO_Pin21 | GPIO_Pin22 | GPIO_Pin23; 
  key_inittype.GPIO_Dir = DIR_INPUT;        //输入
  key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_DIS; //上拉 下降沿触发外部中断
  key_inittype.GPIO_Isr = NULL;
  LPLD_GPIO_Init(key_inittype);
  
  
  key_inittype.GPIO_PTx = PTB;
  key_inittype.GPIO_Pins = GPIO_Pin16 | GPIO_Pin11 | GPIO_Pin10 | GPIO_Pin9; 
  key_inittype.GPIO_Dir = DIR_INPUT;        //输入
  key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_DIS; //上拉 下降沿触发外部中断
  key_inittype.GPIO_Isr = NULL;
  LPLD_GPIO_Init(key_inittype);
  
  key_inittype.GPIO_PTx = PTD;//启停线检测
  key_inittype.GPIO_Pins = GPIO_Pin1 | GPIO_Pin5 | GPIO_Pin6 | GPIO_Pin15;
  key_inittype.GPIO_Dir =DIR_INPUT;
  key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_FA;//内部上拉/
  key_inittype.GPIO_Isr = portd_isr;
  LPLD_GPIO_Init(key_inittype);
  LPLD_GPIO_EnableIrq(key_inittype);
  
    //  key_inittype.GPIO_PTx = PTD;//中断时间检测
    //  key_inittype.GPIO_Pins = GPIO_Pin1;
//  key_inittype.GPIO_Dir = DIR_OUTPUT;
//  key_inittype.GPIO_PinControl = OUTPUT_L ;//内部上拉/下降沿触发外部中断
//  key_inittype.GPIO_Isr = NULL;
//  LPLD_GPIO_Init(key_inittype);

}


uint8 wait_key()
{
  
  if ( !KEY_UP )
  {
    BZ_ON;
    LPLD_LPTMR_DelayMs(1);
    if ( !KEY_UP )
    {
      while( !KEY_UP );
      BZ_OFF;
      return ( 1 );
    }
  }
    if ( !KEY_LEFT )
  {
    BZ_ON;
    LPLD_LPTMR_DelayMs(1);
    if ( !KEY_LEFT )
    {
      while( !KEY_LEFT );
      BZ_OFF;
      return ( 2 );
    }
  }
    if ( !KEY_RIGHT )
  {
    BZ_ON;
    LPLD_LPTMR_DelayMs(1);
    if ( !KEY_RIGHT )
    {  
      while( !KEY_RIGHT );
      BZ_OFF;
      return ( 3 );
    }
  }
    if ( !KEY_DOWN )
  {
    BZ_ON;
    LPLD_LPTMR_DelayMs(1);
    if ( !KEY_DOWN)
    {
      while( !KEY_DOWN );
      BZ_OFF;
      return ( 4 );
    }
  }
    if ( !KEY_CLICK )
  {
    BZ_ON;
    LPLD_LPTMR_DelayMs(1);
    if ( !KEY_CLICK )
    {
      while( !KEY_CLICK );
      BZ_OFF;
      return ( 5 );
    }
  }
  BZ_OFF;
  return 0;
}

uint8 sw = 0;
void read_sw()
{
  sw = 0;
  sw |= LPLD_GPIO_Input_b(PTB,16);
  sw <<= 1;
  sw |= LPLD_GPIO_Input_b(PTB,11);
  sw <<= 1;
  sw |= LPLD_GPIO_Input_b(PTB,10);
  sw <<= 1;
  sw |= LPLD_GPIO_Input_b(PTB,9);
  
      ramp_Enable = LPLD_GPIO_Input_b(PTB,16);
    //  cross_Enable = LPLD_GPIO_Input_b(PTB,11);
    speed_up_Enable = LPLD_GPIO_Input_b(PTB,11);
    GUI.para.endline = LPLD_GPIO_Input_b(PTB,10);
    flag_bihuan = LPLD_GPIO_Input_b(PTB,9);

}


