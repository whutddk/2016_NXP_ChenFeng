#include "include.h"


#define KEY_A  PTB20_I

void key_init()
{
  GPIO_InitTypeDef key_inittype;
  
  key_inittype.GPIO_PTx = PTB;
  key_inittype.GPIO_Pins = GPIO_Pin17 | GPIO_Pin20 | GPIO_Pin21 | GPIO_Pin22 | GPIO_Pin23; 
  key_inittype.GPIO_Dir = DIR_INPUT;        //����
  key_inittype.GPIO_PinControl = INPUT_PULL_UP | IRQC_FA; //���� �½��ش����ⲿ�ж�
  key_inittype.GPIO_Isr = key;
  LPLD_GPIO_Init(key_inittype);
  
  //ʹ���ж�
  LPLD_GPIO_EnableIrq(key_inittype);
}

void key()
{
  uint8 i = 0;

  // bz_set(datarec);
  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin23) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//���жϱ�־
    
    //����
    
    return;
  }
  
  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin20) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//���жϱ�־
    
    //����
    
    if(KEY_A == 0)
    {
      //ȥ��
      LPLD_LPTMR_DelayMs(5);
      
      if(KEY_A == 0)
      {
        
      }
      
        //ֱ�������ɿ�������
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

  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin22) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//���жϱ�־
    
    //����
    
    return;
  }

  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin17) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//���жϱ�־
    
    //����
    
    return;
  }

  if  LPLD_GPIO_IsPinxExt(PORTB, GPIO_Pin21) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTB);//���жϱ�־
    
    //����
    
    return;
  }
  
  
  
}