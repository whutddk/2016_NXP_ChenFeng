#ifndef _SENSOR_H_
#define _SENSOR_H_


struct _line
{
  uint16 read_sensor[2][10];   //��ʱ��Ϊ�����ŵ�У�
                                 //���ؿ���,����10��
  
  uint8 roadwidth;    // ���
  
  int8 lose_cnt;  //���ߴ�������
  
  boolean flag_lose;   //����������־������
  
  uint8 Hight;     //���һ���ҵ��ߵĸ߶�
  
  uint8 final;     //���һ���ҵ��ߵ�λ��

  boolean cross;   //����Ԫ�ز����� ��ʮ��

  int8 pos;             //���մ����϶�λ�� 
};


extern struct _line line;

#endif
