#include "include.h"
#include "key.h"
keyboardnote keyboard_ans = _X;

void key_init()
{
  GPIO_InitTypeDef key_inittype;
  
  key_inittype.GPIO_PTx = PTE;
  key_inittype.GPIO_Pins = GPIO_Pin6 | GPIO_Pin7 | GPIO_Pin10 | GPIO_Pin11 | GPIO_Pin12; 
  key_inittype.GPIO_Dir = DIR_INPUT;        //输入
  key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_FA; //上拉 下降沿触发外部中断
  key_inittype.GPIO_Isr = check_sw;
  LPLD_GPIO_Init(key_inittype);
  LPLD_GPIO_EnableIrq(key_inittype);
  
  key_inittype.GPIO_PTx = PTA;
  key_inittype.GPIO_Pins = GPIO_Pin26 | GPIO_Pin27 |  GPIO_Pin29  ; 
  key_inittype.GPIO_Dir = DIR_INPUT;        //输入
  key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_DIS; ; //上拉 跳变沿触发外部中断
  key_inittype.GPIO_Isr = NULL;
  LPLD_GPIO_Init(key_inittype);
  LPLD_GPIO_EnableIrq(key_inittype);
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


void  keyboard_init()
{
  //四个输出高电平
  GPIO_InitTypeDef gpio_inittype;
  gpio_inittype.GPIO_PTx = PTD;
  gpio_inittype.GPIO_Pins = GPIO_Pin8 | GPIO_Pin9 | GPIO_Pin10 | GPIO_Pin11;
  gpio_inittype.GPIO_Dir = DIR_OUTPUT;
  gpio_inittype.GPIO_Output = OUTPUT_H;
  gpio_inittype.GPIO_PinControl = IRQC_DIS | INPUT_PULL_DOWN ;
  LPLD_GPIO_Init(gpio_inittype);
  
  //四个下拉，读电平
  gpio_inittype.GPIO_PTx = PTD;
  gpio_inittype.GPIO_Pins = GPIO_Pin12 | GPIO_Pin13 | GPIO_Pin14 | GPIO_Pin15  ;
  gpio_inittype.GPIO_Dir = DIR_INPUT;
  gpio_inittype.GPIO_Output = OUTPUT_H;
  gpio_inittype.GPIO_PinControl = IRQC_RI | INPUT_PULL_DOWN ;//下拉，上升沿中断
  gpio_inittype.GPIO_Isr = check_keyboard;
  LPLD_GPIO_Init(gpio_inittype);
  LPLD_GPIO_EnableIrq(gpio_inittype);
  
}

void check_keyboard()
{
  GPIO_InitTypeDef gpio_inittype;
  
  BZ_ON;

  gpio_inittype.GPIO_PTx = PTD;
  gpio_inittype.GPIO_Pins = GPIO_Pin12 | GPIO_Pin13 | GPIO_Pin14 | GPIO_Pin15  ;
  
  LPLD_GPIO_DisableIrq(gpio_inittype);
  
  if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin12))
  {
    LPLD_GPIO_ClearIntFlag(PORTD);
    LPLD_GPIO_DisableIrq(gpio_inittype);
    
    
    DDRD12 = 1 ;//输出
    PTD12_O = 1;//输出0；
    PTD8_O = PTD9_O = PTD10_O = PTD11_O = 0;
    DDRD8 = DDRD9 = DDRD10 = DDRD11 = 0; //输入 
    
    if ( PTD8_I )
    {    
      while(PTD8_I);
      
      keyboard_ans = _D;
    }
    if ( PTD9_I )
    {
      while(PTD9_I);
      
      keyboard_ans = _J;
    }
    if ( PTD10_I )
    {
      while(PTD10_I);
      
      keyboard_ans = _0;
    }
    if ( PTD11_I )
    {
      while(PTD11_I);
      
      keyboard_ans = _X;
    }
    deal_keyboard();
  }
  
  if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin13))
  {
    LPLD_GPIO_ClearIntFlag(PORTD);
    LPLD_GPIO_DisableIrq(gpio_inittype);
    
    DDRD13 = 1 ;//输出
    PTD13_O = 1;//输出0；
    PTD8_O = PTD9_O = PTD10_O = PTD11_O = 0;
    DDRD8 = DDRD9 = DDRD10 = DDRD11 = 0; //输入
    if ( PTD8_I )
    {     
      while(PTD8_I);
      
      keyboard_ans = _C;
    }
    if ( PTD9_I )
    {
      while(PTD9_I);
      
      keyboard_ans = _9;
    }
    if ( PTD10_I )
    {
      while(PTD10_I);
      
      keyboard_ans = _8;
    }
    if ( PTD11_I )
    {
      while(PTD11_I);
      
      keyboard_ans = _7;
    }
    deal_keyboard();
  }  
  
  if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin14))
  {
    LPLD_GPIO_ClearIntFlag(PORTD);
    LPLD_GPIO_DisableIrq(gpio_inittype);  
    
    DDRD14 = 1 ;//输出
    PTD14_O = 1;//输出0；
    PTD8_O = PTD9_O = PTD10_O = PTD11_O = 0;
    DDRD8 = DDRD9 = DDRD10 = DDRD11 = 0; //输入
    if ( PTD8_I )
    {     
      while(PTD8_I);
      
      keyboard_ans = _B;
    }
    if ( PTD9_I )
    {
      while(PTD9_I);
      
      keyboard_ans = _6;
    }
    if ( PTD10_I )
    {
      while(PTD10_I);
      
      keyboard_ans = _5;
    }
    if ( PTD11_I )
    {
      while(PTD11_I);
      
      keyboard_ans = _4;
    }
    deal_keyboard();
  } 
  
  if (LPLD_GPIO_IsPinxExt(PORTD, GPIO_Pin15))
  {
    LPLD_GPIO_ClearIntFlag(PORTD);
    LPLD_GPIO_DisableIrq(gpio_inittype);  
    
    
    DDRD15 = 1 ;//输出
    PTD15_O = 1;//输出0；
    PTD8_O = PTD9_O = PTD10_O = PTD11_O = 0;
    DDRD8 = DDRD9 = DDRD10 = DDRD11 = 0; //输入
    if ( PTD8_I )
    {
      while(PTD8_I);
      
      keyboard_ans = _A;
    }
    if ( PTD9_I )
    {
      while(PTD9_I);
      
      keyboard_ans = _3;
    }
    if ( PTD10_I )
    {
      while(PTD10_I);
      
      keyboard_ans =  _2;
    }
    if ( PTD11_I )
    {
      while(PTD11_I);
      
      keyboard_ans = _1;
    }
    deal_keyboard();
  } 
  
  keyboard_init();  
  BZ_OFF;
}



void deal_keyboard()
{
  switch(keyboard_ans)
  {
    //换位
    case(_1):
      break;
      case(_3):
        
        break;
        
        //参数推减
        case(_2):
          
          break;
          
          case(_8):
            
            break;
            
            //翻页
            case(_4):
              
              
              break;
              
              case(_6):
                
                
                break;
                
                case(_C):
                  
                  case(_D): 
                    break;
                    
  }
  
}


