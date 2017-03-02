#include "include.h"


#define KEY_A  PTB20_I

void key_init()
{
  GPIO_InitTypeDef key_inittype;
  
  key_inittype.GPIO_PTx = PTB;
  key_inittype.GPIO_Pins = GPIO_Pin17 | GPIO_Pin20 | GPIO_Pin21 | GPIO_Pin22 | GPIO_Pin23; 
  key_inittype.GPIO_Dir = DIR_INPUT;        //输入
  key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_FA; //上拉 下降沿触发外部中断
  key_inittype.GPIO_Isr = key;
  LPLD_GPIO_Init(key_inittype);
  
  //使能中断
  LPLD_GPIO_EnableIrq(key_inittype);
}

void key()
{
  uint8 i = 0;

  // bz_set(datarec);
  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin23) //上 中断
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
    
    //操作
    
    return;
  }
  
  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin20) //中 中断
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
    
    //操作
    
    if(KEY_A == 0)
    {
      //去抖
      LPLD_LPTMR_DelayMs(5);
      
      if(KEY_A == 0)
      {
        
      }
      
        //直到按键松开再运行
        while(KEY_A == 0)
        {
          for(i=0;i<250;i++)
          {
            
           LPLD_LPTMR_DelayMs(10);
          sensor_isr();
         // PIT2_init();
          }
        
        } 
       
        bz_set(datarec);
      }
      
    return;
  }

  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin22) //左 中断
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
    
    //操作
    
    return;
  }

  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin17) //右 中断
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
    
    //操作
    
    return;
  }

  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin21) //下 中断
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//清中断标志
    
    //操作
    
    return;
  }
  
  
  
}