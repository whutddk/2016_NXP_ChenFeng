//DDK
//2016 3 14

//   1��

#include "include.h"

struct _GUI GUI;

/*�˻�������ʼ����
��break֮ǰ��һֱ�Ǵ�ѭ��
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
  
  
  0.34,      //KP_S ����400
  0.1,      //KD_S
  0.36,     //KP_M
  0.3,      //KD_M
  0.39,     //KP_B
  0.5,      //KD_B
  
  
  0.34,//425  ������ѡ
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
  //��ѭ��
  
  GUI.page = 1;
  GUI.point = 1;
  GUI.para.AI = 3;
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
      if(GUI.page == 4)
      {
        //������
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
        //��С1ҳ
        if ( GUI.page < 1 )
        {
          GUI.page = 1;
        }
        GUI.point = 1;
      }
    }
    
    //�Ҽ����ҷ�ҳ
    if ( key_temp == 3 )
    {
      
      if ( GUI.page == 5 )//����
      {
        //�˳��˻��������������뷢������״̬
        break;
      }
      
      if(GUI.page == 4)
      {
        //�Ӳ���
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
        
        if ( GUI.page == 3 )   //�궨���ʼ����ʱ��
        {
          PIT1_init();//����ϵͳʱ�� //�ݶ�10ms
          PIT0_init();//��ϵͳʱ�� //1MS һ���ж�
          NVIC_init();
        }
        
        //���6ҳ�������ټ�
        if ( GUI.page > 5 )
        {
          GUI.page = 5;
        }
        GUI.point = 1;
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
    if ( key_temp == 4 && (GUI.page == 2 || GUI.page == 4 || GUI.page == 5))
    {
      if ( GUI.page == 5 )//����
      {
        //�˳��˻��������������뷢������״̬
        break;
      }
      
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
      //�ڿ�ʼ��������
      if ( GUI.page == 5 )
      {
        //�˳��˻��������������뷢������״̬
        break;
      }
      
      //����ҳ������ҳ
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
  //Draw_BMP(0,0,66,7,mushroom);
  OLED_P14x16Str( 20,0 ,"�人����ѧ" );
  OLED_P14x16Str( 40,4 ,"�����" );
}

void update_page2()
{
  
  
  //��pointѡ�еĻ�ռ���
  if ( GUI.point != 1 )
  {
    OLED_P8x16Str( 0,0 ,"SENSOR_CHECK" );
  }
  else 
  {
    OLED_P8x16Str( 15,0 ,"SENSOR_CHECK" );
  }
  
  if ( debug_Enable == 0 )  //ѡ��ʱ����
  {
    OLED_P8x16Str( 0,2 ,"TEST OFF" );
  }
  else 
  {
    OLED_P8x16Str( 0,2 ,"TEST ON" );
  }
  
  if ( GUI.point != 3 ) //���ö�ʱʱ��
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
  
  OLED_P8x16Str( 60,0 ,"AI:" );
  OLED_PrintInt16( 74,0 ,GUI.para.AI );
  OLED_P8x16Str( 0,2,"AIM" );
  
  if(1 == flag_bihuan)
  {
    OLED_PrintInt16(40, 2,AIM_Buff[GUI.para.AI-1]);//�ٶ�
    if ( GUI.para.AI < 3 )
    { 
      OLED_P8x16Str( 0,4,"K" );
      OLED_P8x16Str( 0,6,"D" );
      
      OLED_PrintFloat(40, 4,Dir_Buff[GUI.para.AI * 2 - 2]);//����
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
      OLED_PrintFloat(40, 4,0);       //����buffδ����
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