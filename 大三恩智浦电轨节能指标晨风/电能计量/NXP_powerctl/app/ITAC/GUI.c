//DDK
//2016 3 14

#include "include.h"

struct _GUI GUI;

/*�˻�������ʼ����
��break֮ǰ��һֱ�Ǵ�ѭ��
*/

int16 AIM_Buff[7]={
  1000,        //Set_Speed----0
  1100,       //Step_Speed----1
  1200,      //Set_Speed---2
  1300,      //Set_Speed---3
  1400,      //Set_Speed---4
  1500,
  1600,
};

float Dir_Buff[14]={                      
  0.45,      // Dir_Kp_1------0
  1.5,      //Dir_Kd_1------1
  0.45,     //Dir_Kp_2------2
  1.5,        //Dir_Kd_2------3
  0.5,      //Dir_Kp_3-----4
  1.5,      //Dir_Kd_3----5
  0.5,      //Dir_Kp_4-----6
  1.8,      //Dir_Kd_4-----7
  0.47,      //Dir_Kp_5-----8
  1.7,      //Dir_Kd_5----9
  
  0.48,
  1.8,
  
  0.52,
  1.88,
  
};

void GUI_work()
{
  uint8 key_temp = 0;
  //��ѭ��
  
  GUI.page = 1;
  GUI.point = 1;
  GUI.para.AI = 0;
  GUI.para.endline = 1;
  for (;;)
  {
    //ˢ��Һ��
    GUI_update();
    //��������ʱ��һֱѭ�����
    while ( !key_temp )
    {   
      key_temp = wait_key();
    }
    //����֮���������԰���ֵ�����ж�
    
    /*page�����Ҽ�*/
    //�������ҳ
    if ( key_temp == 2 )
    {
      GUI.page --;
      //��С1ҳ
      if ( GUI.page < 1 )
      {
        GUI.page = 1;
      }
    }
    //�Ҽ����ҷ�ҳ
    if ( key_temp == 3 )
    {
      GUI.page ++;
      //���6ҳ�������ټ�
      if ( GUI.page > 5 )
      {
        GUI.page = 5;
      }
    }
    
    //�ϼ� Ŀǰֻ���ڵڶ�/4ҳ����
    if ( key_temp == 1 && (GUI.page == 2 ||GUI.page == 4 ))
    {
      GUI.point --;
      if ( GUI.point < 1 )
      {
        GUI.point = 1;
      }
    }
    
    //�¼���Ŀǰֻ���ڵ���/4ҳ����
    if ( key_temp == 4 && (GUI.page == 2 ||GUI.page == 4 ))
    {
      GUI.point ++ ;
      if ( GUI.point > 4 )
      {
        GUI.point = 4;
      }
    }
    
    //ȷ�ϼ���������Ҫд����
    if ( key_temp == 5 )
    {
      //�ڵڶ�ҳ
      if ( GUI.page == 2)
      {
        switch (GUI.point)
        {
          case(1): 
            sensor_isr();
            break; //���ô�����У׼����
            
            case(2):
              dec_sec += 3;
              if(dec_sec > 12)
              {
                dec_sec = 3;
              }
              
            case(3):
              
              GUI.para.endline_time += 2000;
              if(GUI.para.endline_time > 29000)
              {
                GUI.para.endline_time = 10000;
              }

              
        }
      }
      //����ҳ�����Ĳ���
      if(GUI.page == 4)
      {
        switch (GUI.point)
        {
          case(1):
            GUI.para.AI ++;
            if (  GUI.para.AI > 5 )
            {
              GUI.para.AI = 1;
            }
            break;
            
            
            case(2):
              AIM_Buff[GUI.para.AI - 1] += 100;
              break;
              
              case(3):
                Dir_Buff[GUI.para.AI * 2 - 2] += 0.01;
                break;
                
                case(4):
                  Dir_Buff[GUI.para.AI * 2-1] += 0.01;
                  break;
                  
        }
        
      }
      //�ڿ�ʼ��������
      if ( GUI.page == 5 )
      {
        //�˳��˻��������������뷢������״̬
        break;
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
    //��ʾ��ҳ��
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
  Draw_BMP(0,0,66,7,mushroom);
}

void update_page2()
{
  OLED_P6x8Str(0,0,"WUT");
  
  //��pointѡ�еĻ�ռ���
  if ( GUI.point != 1 )
  {
    OLED_P8x16Str( 0,2 ,"SENSOR_CHECK" );
  }
  else 
  {
    OLED_P8x16Str( 15,2 ,"SENSOR_CHECK" );
  }
  if ( GUI.point != 2 )
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

  
  
    if ( GUI.point != 3 )
  {
    OLED_P8x16Str( 0,6 ,"ENDLINE_T" );
  }
  else
  {
    OLED_P8x16Str( 12,6 ,"ENDLINE_T" );
  }

  
  OLED_PrintInt16( 70,6 ,GUI.para.endline_time );
 
  
  
  
  
}

void update_page3()
{
  //��ʾ1����������Ҫ��ʾ�ı������뼴��
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
  //ѡ��λ
  if ( GUI.point != 1 )
  {
    OLED_P8x16Str( 0,0 ,"gear" );
  }
  else 
  {
    OLED_P8x16Str( 15,0 ,"gear" );
  }
  
  if ( GUI.para.AI == 0 )
  {
    OLED_P8x16Str( 70,0 ,"AI: 0" );
    OLED_P8x16Str( 0,2,"AIM" );
    OLED_PrintInt16(40, 2,0);
    OLED_P8x16Str( 0,4,"K" );
    OLED_PrintInt16(40, 4,0);
    OLED_P8x16Str( 0,6,"D" );
    OLED_PrintInt16(40, 6,0);
  }
  
  else 
  {
    OLED_P8x16Str( 60,0 ,"AI:" );
    OLED_PrintInt16( 74,0 ,GUI.para.AI );
    OLED_P8x16Str( 0,2,"AIM" );
    OLED_PrintInt16(40, 2,AIM_Buff[GUI.para.AI-1]);
    OLED_P8x16Str( 0,4,"K" );
    OLED_PrintFloat(40, 4,Dir_Buff[GUI.para.AI * 2 - 2]);
    OLED_P8x16Str( 0,6,"D" );
    OLED_PrintFloat(40, 6,Dir_Buff[GUI.para.AI * 2 - 1]);
  }
  
}

void update_page5()
{
  switch (sw)
  {
    case(0x00):
      OLED_P8x16Str(2,0,"COMPETITION");
      break;
    case(0x01):
      OLED_P8x16Str(2,0,"NO STOP");
      break;
    case(0x02):
      OLED_P8x16Str(6,0,"TEST");
      break;
  }
  
  
  OLED_P8x16Str(6,4,"START!!!!!");
}