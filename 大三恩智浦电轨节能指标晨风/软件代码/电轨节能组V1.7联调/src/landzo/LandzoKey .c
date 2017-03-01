#include  "LandzoKey.h"
#include  "LandzoOLED.h"
/*********************************************************** 
函数名称：key_Init   
函数功能：按键初始化
入口参数：
出口参数：无 
备 注： 
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
函数名称：Key_print 
函数功能：显示角度和加速度初始化
入口参数：Angle : 角度显示字符
          Gryo:   加速度显示字符
出口参数：无 
备 注： 
***********************************************************/
void Key_print(uint16_t Angle ,uint16_t Gryo)
{   
  OLED_Fill(0x00);//黑屏 
  Dly_ms(1500); 
  OLED_Print_Str(5,0,"蓝宙电子/LANDZO");  //汉字字符串显示
  OLED_Print_Str(5,2,"Angle:");  //汉字字符串显示
  OLED_Print_Num(55,2,Angle);  //汉字字符串显示
  OLED_Print_Str(5,4,"Gryo:");  //汉字字符串显示
  OLED_Print_Num(55,4,Gryo);  //汉字字符串显示
  OLED_Print_Str(5,6," please check ");  //汉字字符串显示
}
 /*********************************************************** 
函数名称：Key_Scan 
函数功能：按键扫描
入口参数：angle_value :角度显示字符
          gryo_value :加速度显示字符
出口参数：无 
备 注： 
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
    10ms程序执行代码段
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
          OLED_Print_Str(5,0,"               ");  //汉字字符串显示 
        }
        else if(print[0] == 1)
        {
          print[0] = 0;
          OLED_Print_Str(5,0,"蓝宙电子/LANDZO");  //汉字字符串显示 
        }
      }
      else if(LineCout ==1)
      {
        if(print[1] == 0)
        {
          print[1] = 1;
          OLED_Print_Str(5,2,"               ");  //汉字字符串显示 
        }
        else if(print[1] == 1)
        {
          print[1] = 0;
          OLED_Print_Str(5,2,"Angle:");  //汉字字符串显示
          OLED_Print_Num(55,2,angle_value);  
        }
      }
      else if(LineCout == 2)
      {
        if(print[2] == 0)
        {
          print[2] = 1;
          OLED_Print_Str(5,4,"              ");  //汉字字符串显示 
        }
        else if(print[2] == 1)
        {
          print[2] = 0;
          OLED_Print_Str(5,4,"Gryo:");  //汉字字符串显示
          OLED_Print_Num(55,4,gryo_value);  //汉字字符串显示  
        }      
      }
      else if(LineCout == 3)
      {
        if(print[3] == 0)
        {
          print[3] = 1;
          OLED_Print_Str(5,6,"               ");  //汉字字符串显示 
        }
        else if(print[3] == 1)
        {
          print[3] = 0;
          OLED_Print_Str(5,6,"  please check ");  //汉字字符串显示 
        }
      }
      /***********
      确认按键
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

