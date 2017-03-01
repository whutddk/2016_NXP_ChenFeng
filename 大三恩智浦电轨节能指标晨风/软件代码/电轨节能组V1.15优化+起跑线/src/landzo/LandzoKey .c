#include  "LandzoKey.h"
#include  "LandzoOLED.h"
/*********************************************************** 
�������ƣ�key_Init   
�������ܣ�������ʼ��
��ڲ�����
���ڲ������� 
�� ע�� 
***********************************************************/
void Key_Init(void)
{   
    gpio_Interrupt_init(PORTD , 7, GPI_DOWN,  RING) ;
    gpio_Interrupt_init(PORTD , 8, GPI_DOWN,  RING) ;
    gpio_Interrupt_init(PORTD , 9, GPI_DOWN,  RING) ;
    gpio_Interrupt_init(PORTD , 10, GPI_DOWN, RING) ;
    gpio_Interrupt_init(PORTD , 11, GPI_DOWN, RING) ;   
}
/*********************************************************** 
�������ƣ�Key_print 
�������ܣ���ʾ�ǶȺͼ��ٶȳ�ʼ��
��ڲ�����Angle : �Ƕ���ʾ�ַ�
          Gryo:   ���ٶ���ʾ�ַ�
���ڲ������� 
�� ע�� 
***********************************************************/
void Key_print(uint16_t Angle ,uint16_t Gryo)
{   
  OLED_Fill(0x00);//���� 
  Dly_ms(1500); 
  OLED_Print_Str(5,0,"�������/LANDZO");  //�����ַ�����ʾ
  OLED_Print_Str(5,2,"Angle:");  //�����ַ�����ʾ
  OLED_Print_Num(55,2,Angle);  //�����ַ�����ʾ
  OLED_Print_Str(5,4,"Gryo:");  //�����ַ�����ʾ
  OLED_Print_Num(55,4,Gryo);  //�����ַ�����ʾ
  OLED_Print_Str(5,6," please check ");  //�����ַ�����ʾ
}
 /*********************************************************** 
�������ƣ�Key_Scan 
�������ܣ�����ɨ��
��ڲ�����angle_value :�Ƕ���ʾ�ַ�
          gryo_value :���ٶ���ʾ�ַ�
���ڲ������� 
�� ע�� 
***********************************************************/
int8_t check = 0;
void Key_Scan(uint16_t angle_value ,uint16_t gryo_value)
{
  extern uint8_t key_up_flag ;   
  extern uint8_t key_down_flag ;
  extern uint8_t key_center_flag ;
  extern uint8_t key_left_flag ;
  extern uint8_t key_right_flag ;
  extern uint8_t TIME0flag_100ms;
  
  uint8_t LineCout = 0 ;
  uint8_t print[4]={0};
  
  Key_print(angle_value ,gryo_value);
  while(check == 0)
  {
    /*********************
    10ms����ִ�д����
    *********************/
    if(TIME0flag_100ms == 1)
    { 
      TIME0flag_100ms = 0 ;             
      
      if(key_up_flag)
      {
        key_up_flag = 0 ;
        LineCout ++ ;
        if(LineCout >= 4)
          LineCout = 0 ;
      }         
      
      if(key_down_flag)
      {
        key_down_flag = 0 ;
        LineCout -- ;
        if(LineCout <= 0)
          LineCout = 3 ; 
      }
      
      if(LineCout == 0) 
      {
        
      }
      if(LineCout == 1)
      {
        if(key_left_flag)
        { 
          key_left_flag = 0 ;
          
          angle_value +=4;             
        }
        if(key_right_flag)
        { 
          key_right_flag = 0 ;
          
          angle_value -=4;  
        }         
      }
      if(LineCout == 2)
      {
        if(key_left_flag)
        { 
          key_left_flag = 0 ;
          gryo_value +=4;
          
        }
        if(key_right_flag)
        { 
          key_right_flag = 0 ;
          gryo_value -=4;
          
        }         
      }         
      
      Key_print(angle_value ,gryo_value);
      if(LineCout == 0)
      {
        if(print[0] == 0)
        {
          print[0] = 1;
          OLED_Print_Str(5,0,"               ");  //�����ַ�����ʾ 
        }
        else if(print[0] == 1)
        {
          print[0] = 0;
          OLED_Print_Str(5,0,"�������/LANDZO");  //�����ַ�����ʾ 
        }
      }
      else if(LineCout ==1)
      {
        if(print[1] == 0)
        {
          print[1] = 1;
          OLED_Print_Str(5,2,"               ");  //�����ַ�����ʾ 
        }
        else if(print[1] == 1)
        {
          print[1] = 0;
          OLED_Print_Str(5,2,"Angle:");  //�����ַ�����ʾ
          OLED_Print_Num(55,2,angle_value);  
        }
      }
      else if(LineCout == 2)
      {
        if(print[2] == 0)
        {
          print[2] = 1;
          OLED_Print_Str(5,4,"              ");  //�����ַ�����ʾ 
        }
        else if(print[2] == 1)
        {
          print[2] = 0;
          OLED_Print_Str(5,4,"Gryo:");  //�����ַ�����ʾ
          OLED_Print_Num(55,4,gryo_value);  //�����ַ�����ʾ  
        }      
      }
      else if(LineCout == 3)
      {
        if(print[3] == 0)
        {
          print[3] = 1;
          OLED_Print_Str(5,6,"               ");  //�����ַ�����ʾ 
        }
        else if(print[3] == 1)
        {
          print[3] = 0;
          OLED_Print_Str(5,6,"  please check ");  //�����ַ�����ʾ 
        }
      }
      /***********
      ȷ�ϰ���
      ************/
      if(key_center_flag)
      {
        key_center_flag = 0 ;
        check = 1 ;
        
        Key_print(angle_value ,gryo_value);        
      }
    }
  }
}

