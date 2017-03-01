#include "include.h"

struct _GUI GUI;

void GUI_work()
{
  uint8 key_temp = 0;
  //��ѭ��
  
  GUI.page = 1;
  GUI.point = 1;
  GUI.AI = 3;
  for (;;)
  {
    //ˢ��Һ��
    GUI_update();
    //��������ʱ��һֱѭ�����
    while ( !key_temp )
    { 
      key_temp = read_key();
    }
    //����֮���������԰���ֵ�����ж�
    if ( key_temp == 4)//��
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
    if ( key_temp == 5 )//��
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
        
        if ( GUI.page == 3 )   //�궨���ʼ����ʱ��
        {
          EnableInterrupts;
        }
        
        //���6ҳ�������ټ�
        if ( GUI.page > 5 )
        {
          GUI.page = 5;
        }
        GUI.point = 1;
      }
    }
    if ( key_temp == 1 && (GUI.page == 2 ||GUI.page == 4 ) )//��
    {
      GUI.point --;
      if ( GUI.point < 1 )
      {
        GUI.point = 1;
      }
    }
    if ( key_temp == 3 && (GUI.page == 2 || GUI.page == 4 || GUI.page == 5))//��
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
    if ( key_temp == 2 )//��
    {
      //�ڵڶ�ҳ
      if ( GUI.page == 2)
      {
        switch (GUI.point)
        {
          case(1): 
            sensor_offset();
            break; //���ô�����У׼����
            
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
            //�ڿ�ʼ��������
      if ( GUI.page == 5 )
      {
        //�˳��˻��������������뷢������״̬
        ctl.flag_start = 1;
        OLED_CLS();
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
  OLED_P14x16Str( 20,0 ,"�人����ѧ" );
  OLED_P14x16Str( 40,4 ,"�����" );
}

void update_page2()
{
  //��pointѡ�еĻ�ռ���
  if ( GUI.point != 1 )//��ƫ
  {
    OLED_P8x16Str( 0,0 ,"SENSOR_OFFSET" );
  }
  else 
  {
    OLED_P8x16Str( 15,0 ,"SENSOR_OFFSET" );
  }
  
  if ( GUI.point != 2 )//ѡ��궨
  {
    OLED_P8x16Str( 0,2 ,"SENSOR_CHECK" );
  }
  else 
  {
    OLED_P8x16Str( 15,2 ,"SENSOR_CHECK" );
  }
  
  if ( GUI.point != 3 ) //���ö�ʱʱ��
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
  //��ʾ1����������Ҫ��ʾ�ı������뼴��
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
  //ѡ��λ
  OLED_P8x16Str( 0,0,"AI" );
}

void update_page5()
{
  OLED_P8x16Str(6,4,"START!!!!!");
}