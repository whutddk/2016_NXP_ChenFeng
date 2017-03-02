#include "include.h"

GPIO_InitTypeDef KEY_inittype;
void keyboard_init()
{
  KEY_inittype.GPIO_PTx = PTD;
  KEY_inittype.GPIO_Pins = GPIO_Pin0 | GPIO_Pin1 | GPIO_Pin2| GPIO_Pin3 | GPIO_Pin4;
  KEY_inittype.GPIO_PinControl = INPUT_PULL_UP | INPUT_PF_EN | IRQC_DIS;
  KEY_inittype.GPIO_Dir = DIR_INPUT;
  KEY_inittype.GPIO_Output = OUTPUT_H;
  
  LPLD_GPIO_Init(KEY_inittype);
  
}

enum _bz_style key_event()
{
 while(1)
  {
    if (LPLD_GPIO_Input_b(PTD, 0))
    {     
        
      if (LPLD_GPIO_Input_b(PTD, 0))
      {  
        while ( LPLD_GPIO_Input_b(PTD, 0) );
        return key_up;
      }
    }

    if (LPLD_GPIO_Input_b(PTD, 1))
    {
      if (LPLD_GPIO_Input_b(PTD, 1))
      {
        while ( LPLD_GPIO_Input_b(PTD, 1) );
        return key_click;
      }
    }  
  
    if (LPLD_GPIO_Input_b(PTD, 2))
    {
           if (LPLD_GPIO_Input_b(PTD, 2))
      {
        while ( LPLD_GPIO_Input_b(PTD, 2) );
        return key_left;
      } 
    } 
  
    if (LPLD_GPIO_Input_b(PTD, 3))
    {
            if (LPLD_GPIO_Input_b(PTD, 3))
      {
        while ( LPLD_GPIO_Input_b(PTD, 3) );
        return key_right;
      }
    } 
        if (LPLD_GPIO_Input_b(PTD, 4))
    {
            if (LPLD_GPIO_Input_b(PTD, 4))
      {
        while ( LPLD_GPIO_Input_b(PTD, 4) );
        return key_down;
      }
    } 
  }
}