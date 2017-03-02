//DDK
//2016 3 14

//   1车

#include "include.h"

struct _GUI GUI;

/*人机交互开始工作
在break之前，一直是大循环
*/

int16 AIM_Buff[7]=
{
  
  300,      //Step_Speed----1
  375,
  400,
  425,
  450,
  475,
  500,
};

int16 kaihuan_Buff[3]=
{
  3000,
  3500,
  4000,
};


float Dir_Buff[34]={    
  
  0.36,     //300
  0,      
    
  
  0.39,
  0.3,
  
  
  0.34,      //KP_S ——400
  0.1,      //KD_S
  0.36,     //KP_M
  0.3,      //KD_M
  0.39,     //KP_B
  0.5,      //KD_B
  
  
  0.34,//425  尽量不选
  0.1,
  0.36,
  0.6,
  0.39,
  0.8,
  
  0.34,//450
  0.1,
  0.37,
  1.2,
  0.41,
  1.4,
  
  0.34,//475    ++
  0.1,
  0.38,
  2,
  0.41,
  2.3,
  
  0.34,//500
  0.3,
  0.38,
  2.6,
  0.41,
  2.8,
};

void GUI_work()
{
  uint8 key_temp = 0;
  //大循环
  
  GUI.page = 1;
  GUI.point = 1;
  GUI.para.AI = 3;
  for (;;)
  {
    //刷新液晶
    GUI_update();
    //当不按键时，一直循环检测
    while ( !key_temp )
    { 
      key_temp = wait_key();
    }
    //按键之后跳出，对按键值进行判定
    
    /*page，左右键*/
    //左键，左翻页
    if ( key_temp == 2 )
    {
      if(GUI.page == 4)
      {
        //减参数
        switch (GUI.point)
        {
          case(1):
            GUI.para.AI --;
            if (  GUI.para.AI < 1 )
            {
              GUI.para.AI = 1;
            }
            break;
            
            case(2):
              AIM_Buff[GUI.para.AI - 1] -= 25;
              break;
              
              case(3):
                if(GUI.para.AI < 3)
                  Dir_Buff[GUI.para.AI * 2 - 2] -= 0.01;
                else
                  Dir_Buff[GUI.para.AI * 6 - 11] -= 0.1;
                break;
                
                case(4):
                  if(GUI.para.AI < 3)
                    Dir_Buff[GUI.para.AI * 2 - 2] -= 0.1;
                  else
                    Dir_Buff[GUI.para.AI * 6 - 9] -= 0.1;
                  break;
                  
        }
      }
      else
      {
        GUI.page --;
        //最小1页
        if ( GUI.page < 1 )
        {
          GUI.page = 1;
        }
        GUI.point = 1;
      }
    }
    
    //右键，右翻页
    if ( key_temp == 3 )
    {
      
      if ( GUI.page == 5 )//发车
      {
        //退出人机交互函数，进入发车运行状态
        break;
      }
      
      if(GUI.page == 4)
      {
        //加参数
        switch (GUI.point)
        {
          case(1):
            GUI.para.AI ++;
            if (  GUI.para.AI > 7 )
            {
              GUI.para.AI = 1;
            }
            break;
            
            case(2):
              AIM_Buff[GUI.para.AI - 1] += 25;
              break;
              
              case(3):
                if(GUI.para.AI < 3)
                  Dir_Buff[GUI.para.AI * 2 - 2] += 0.01;
                else
                  Dir_Buff[GUI.para.AI * 6 - 11] += 0.1;
                break;
                
                case(4):
                  if(GUI.para.AI < 3)
                    Dir_Buff[GUI.para.AI * 2 - 2] += 0.1;
                  else
                    Dir_Buff[GUI.para.AI * 6 - 9] += 0.1;
                  break;
        }
      }
      else
      {
        
        GUI.page ++;
        
        if ( GUI.page == 3 )   //标定后初始化定时器
        {
          PIT1_init();//控制系统时钟 //暂定10ms
          PIT0_init();//主系统时钟 //1MS 一次中断
          NVIC_init();
        }
        
        //最多6页，不够再加
        if ( GUI.page > 5 )
        {
          GUI.page = 5;
        }
        GUI.point = 1;
      }
    }
    
    //上键 目前只能在第二/4页操作
    if ( key_temp == 1 && (GUI.page == 2 ||GUI.page == 4 ))
    {
      
      GUI.point --;
      if ( GUI.point < 1 )
      {
        GUI.point = 1;
      }
    }
    
    //下键，目前只能在第三/4页操作
    if ( key_temp == 4 && (GUI.page == 2 || GUI.page == 4 || GUI.page == 5))
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
    
    //确认键，根据需要写条件
    if ( key_temp == 5 )
    {
      //在第二页
      if ( GUI.page == 2)
      {
        switch (GUI.point)
        {
          case(1): 
            sensor_isr();
            break; //调用传感器校准函数
            
            case(2):
              debug_Enable = !debug_Enable;
              break;
              
              case(3):
                dec_sec += 3;
                if(dec_sec > 12)
                {
                  dec_sec = 3;
                }
                break;
                
                case(4):
                  GUI.para.endline_time += 3;
                  if(GUI.para.endline_time > 40)
                  {
                    GUI.para.endline_time = 10;
                  }
                  break;
                  
        }
      }
      //在开始比赛界面
      if ( GUI.page == 5 )
      {
        //退出人机交互函数，进入发车运行状态
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
  //Draw_BMP(0,0,66,7,mushroom);
  OLED_P14x16Str( 20,0 ,"武汉理工大学" );
  OLED_P14x16Str( 40,4 ,"晨风队" );
}

void update_page2()
{
  
  
  //被point选中的会空几格
  if ( GUI.point != 1 )
  {
    OLED_P8x16Str( 0,0 ,"SENSOR_CHECK" );
  }
  else 
  {
    OLED_P8x16Str( 15,0 ,"SENSOR_CHECK" );
  }
  
  if ( debug_Enable == 0 )  //选择定时调试
  {
    OLED_P8x16Str( 0,2 ,"TEST OFF" );
  }
  else 
  {
    OLED_P8x16Str( 0,2 ,"TEST ON" );
  }
  
  if ( GUI.point != 3 ) //设置定时时间
  {
    OLED_P8x16Str( 0,4 ,"DEBUG_T" );
  }
  else
  {
    OLED_P8x16Str( 15,4 ,"DEBUG_T" );
  }
  
  if ( dec_sec == 3 )
    OLED_P8x16Str( 90,4 ,"3" );
  else if( dec_sec == 6 )
    OLED_P8x16Str( 90,4 ,"6" );
  else if( dec_sec == 9 )
    OLED_P8x16Str( 90,4 ,"9" );
  else if( dec_sec == 12 )
    OLED_P8x16Str( 90,4 ,"12" );
  
  
  if ( GUI.point != 4 )
  {
    OLED_P8x16Str( 0,6 ,"ENDLINE_T" );
  }
  else
  {
    OLED_P8x16Str( 10,6 ,"ENDLINE_T" );
  }
  
  
  OLED_PrintInt16( 70,6 ,GUI.para.endline_time );
  
  
  
  
  
}

void update_page3()
{
  //显示1参数，将需要显示的变量代入即可
  OLED_P8x16Str( 0,0,"POS" );
  OLED_PrintInt16(40, 0, line.pos);
  OLED_P8x16Str( 0,2,"M-L" );
  OLED_PrintInt16(50, 2, sensor.error[0]);
  OLED_P8x16Str( 0,4,"M-R" );
  OLED_PrintInt16(50, 4, sensor.error[1]);
  OLED_P8x16Str( 0,6,"R-L" );
  OLED_PrintInt16(50, 6, sensor.error[2]);
}

void update_page4()
{
  //选择档位
  if ( GUI.point != 1 )
  {
    OLED_P8x16Str( 0,0 ,"gear" );
  }
  else 
  {
    OLED_P8x16Str( 15,0 ,"gear" );
  }
  
  OLED_P8x16Str( 60,0 ,"AI:" );
  OLED_PrintInt16( 74,0 ,GUI.para.AI );
  OLED_P8x16Str( 0,2,"AIM" );
  
  if(1 == flag_bihuan)
  {
    OLED_PrintInt16(40, 2,AIM_Buff[GUI.para.AI-1]);//速度
    if ( GUI.para.AI < 3 )
    { 
      OLED_P8x16Str( 0,4,"K" );
      OLED_P8x16Str( 0,6,"D" );
      
      OLED_PrintFloat(40, 4,Dir_Buff[GUI.para.AI * 2 - 2]);//参数
      OLED_PrintFloat(40, 6,Dir_Buff[GUI.para.AI * 2 - 1]);
    }
    else
    {
      OLED_PrintFloat(0, 4,Dir_Buff[GUI.para.AI * 6 - 14]);
      OLED_PrintFloat(40,4,Dir_Buff[GUI.para.AI * 6 - 12]);
      OLED_PrintFloat(80,4,Dir_Buff[GUI.para.AI * 6 - 10]);
      
      OLED_PrintFloat(0, 6,Dir_Buff[GUI.para.AI * 6 - 13]);
      OLED_PrintFloat(40,6,Dir_Buff[GUI.para.AI * 6 - 11]);
      OLED_PrintFloat(80,6,Dir_Buff[GUI.para.AI * 6 - 9]);
      
    }
  }
  else
  {
    if ( GUI.para.AI == 0 )
    {
      OLED_PrintInt16(40, 2,0);
      OLED_PrintInt16(40, 4,0);
      OLED_PrintInt16(40, 6,0);
    }
    
    else 
    {
      OLED_PrintInt16(40, 2,kaihuan_Buff[GUI.para.AI-1]);
      OLED_PrintFloat(40, 4,0);       //开环buff未建立
      OLED_PrintFloat(40, 6,0);
    }
    
  }
}

void update_page5()
{
  switch (sw)
  {
    case(0x0F):
      OLED_P8x16Str(2,0,"COMPETITION");
      break;
      case(0x0D):
        OLED_P8x16Str(6,0,"NO STOP");
        break;
        case(0x07):
          OLED_P8x16Str(6,0,"RAMP OFF");
          break;
          case(0x0B):
            OLED_P8x16Str(6,0,"speed_up OFF");
            break;
            case(0x0E):
              OLED_P8x16Str(6,0,"KAIHUAN");
              break;
              
  }
  
  OLED_P8x16Str(6,4,"START!!!!!");
}