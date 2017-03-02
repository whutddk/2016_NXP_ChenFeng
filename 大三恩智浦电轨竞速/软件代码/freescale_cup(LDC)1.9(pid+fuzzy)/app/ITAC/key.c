#include "include.h"


#define KEY_A  PTE7_I

GPIO_InitTypeDef key_inittype;

void key_init()
{
  
  key_inittype.GPIO_PTx = PTE;
  key_inittype.GPIO_Pins = GPIO_Pin6 | GPIO_Pin7 | GPIO_Pin10 | GPIO_Pin11 | GPIO_Pin12; 
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
  if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin6) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTE);//���жϱ�־
    
    //����
    
    return;
  }
  
  
  
  
  
  if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin7) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTE);//���жϱ�־
    
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
  
  
  
  
  
  if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin10) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTE);//���жϱ�־
    
    //����
    
    return;
  }
  
  
  
  
  if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin11) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTE);//���жϱ�־
    
    //����
    
    return;
  }
  
  
  
  if  LPLD_GPIO_IsPinxExt(PORTE, GPIO_Pin12) //�� �ж�
  {
    LPLD_GPIO_ClearIntFlag(PORTE);//���жϱ�־
    
    //����
    
    return;
  }
  
  
  
}