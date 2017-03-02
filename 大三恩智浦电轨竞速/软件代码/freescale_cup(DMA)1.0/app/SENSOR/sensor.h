#ifndef _SENSOR_H_
#define _SENSOR_H_


struct _line
{
  uint16 read_sensor[2][10];   //暂时认为是两排电感，
                                 //开关控制,保存10组
  
  uint8 roadwidth;    // 宽度
  
  int8 lose_cnt;  //丢线次数计数
  
  boolean flag_lose;   //当作布尔标志，丢线
  
  uint8 Hight;     //最后一次找到线的高度
  
  uint8 final;     //最后一次找到线的位置

  boolean cross;   //赛道元素布尔量 ，十字

  int8 pos;             //最终处理认定位置 
};


extern struct _line line;

#endif
