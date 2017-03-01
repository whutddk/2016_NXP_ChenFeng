#include "include.h"

struct _GUI GUI;

void GUI_work()
{
  uint8 key_temp = 0;
  //大循环
  
  GUI.page = 1;
  GUI.point = 1;
  GUI.AI = 3;
  for (;;)
  {
    //刷新液晶
    GUI_update();
    //当不按键时，一直循环检测
    while ( !key_temp )
    { 
      key_temp = read_key();
    }
    //按键之后跳出，对按键值进行判定
    if ( key_temp == 4)//左
    {
      if ( GUI.page == 4 )
      {

        
      }
      else
      {
        GUI.page--;
        if ( GUI.page < 1 )
        {
          GUI.page = 1;
        }
        GUI.point = 1;
      }
        
    }
    if ( key_temp == 5 )//右
    {
      if ( GUI.page == 5 )
      {
        break;
      }
      if ( GUI.page == 4 )
      {
      
        
      }
      else
      {
        GUI.page ++;
        
        if ( GUI.page == 3 )   //标定后初始化定时器
        {
          EnableInterrupts;
        }
        
        //最多6页，不够再加
        if ( GUI.page > 5 )
        {
          GUI.page = 5;
        }
        GUI.point = 1;
      }
    }
    if ( key_temp == 1 && (GUI.page == 2 ||GUI.page == 4 ) )//上
    {
      GUI.point --;
      if ( GUI.point < 1 )
      {
        GUI.point = 1;
      }
    }
    if ( key_temp == 3 && (GUI.page == 2 || GUI.page == 4 || GUI.page == 5))//下
    {
      if ( GUI.page == 5 )//发车
      {
        //退出人机交互函数，进入发车运行状态
        break;
      }
      GUI.point ++ ;
      if ( GUI.point > 4 )
      {
        GUI.point = 4;
      }
    }
    if ( key_temp == 2 )//中
    {
      //在第二页
      if ( GUI.page == 2)
      {
        switch (GUI.point)
        {
          case(1): 
            sensor_offset();
            break; //调用传感器校准函数
            
            case(2):
              sensor_isr();
              break;
              
              case(3):
                record();
                break;
                
                case(4):
                  read_flash();
                  break;
                  
        }
      }
            //在开始比赛界面
      if ( GUI.page == 5 )
      {
        //退出人机交互函数，进入发车运行状态
        ctl.flag_start = 1;
        OLED_CLS();
        break;
      }
      
      //第四页，，翻页
      if(GUI.page == 4)
      {
        GUI.page ++;
        GUI.point = 1;
      }
    }
     key_temp = 0;
  }
}

void GUI_update()
{
  OLED_CLS();
  switch (GUI.page)
  {
    //显示的页面
    case(1):update_page1();break;
    case(2):update_page2();break;
    case(3):update_page3();break;
    case(4):update_page4();break;
    case(5):update_page5();break;
    
  default:break;
  }
}

void update_page1()
{
  OLED_P14x16Str( 20,0 ,"武汉理工大学" );
  OLED_P14x16Str( 40,4 ,"晨风队" );
}

void update_page2()
{
  //被point选中的会空几格
  if ( GUI.point != 1 )//零偏
  {
    OLED_P8x16Str( 0,0 ,"SENSOR_OFFSET" );
  }
  else 
  {
    OLED_P8x16Str( 15,0 ,"SENSOR_OFFSET" );
  }
  
  if ( GUI.point != 2 )//选择标定
  {
    OLED_P8x16Str( 0,2 ,"SENSOR_CHECK" );
  }
  else 
  {
    OLED_P8x16Str( 15,2 ,"SENSOR_CHECK" );
  }
  
  if ( GUI.point != 3 ) //设置定时时间
  {
    OLED_P8x16Str( 0,4 ,"WRITE_FLASH" );
  }
  else
  {
    OLED_P8x16Str( 15,4 ,"WRITE_FLASH" );
  }

  if ( GUI.point != 4 )
  {
    OLED_P8x16Str( 0,6 ,"READ_FLASH" );
  }
  else
  {
    OLED_P8x16Str( 10,6 ,"READ_FLASH" );
  }
}

void update_page3()
{
  //显示1参数，将需要显示的变量代入即可
  OLED_P8x16Str( 0,0,"POS" );
  OLED_PrintInt16(40, 0, LDC.pos);
  OLED_P8x16Str( 0,2,"M-L" );
  OLED_PrintInt16(50, 2, LDC.error[0]);
  OLED_P8x16Str( 0,4,"M-R" );
  OLED_PrintInt16(50, 4, LDC.error[1]);
  OLED_P8x16Str( 0,6,"R-L" );
  OLED_PrintInt16(50, 6, LDC.error[2]);
}

void update_page4()
{
  //选择档位
  OLED_P8x16Str( 0,0,"AI" );
}

void update_page5()
{
  OLED_P8x16Str(6,4,"START!!!!!");
}