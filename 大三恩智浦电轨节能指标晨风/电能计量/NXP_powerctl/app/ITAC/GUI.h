#ifndef _GUI_H_
#define _GUI_H_

void portc_isr();
void star();
void GUI_work();
void GUI_update();
void update_page1();
void update_page2();
void update_page3();
void update_page4();
void update_page5();
void update_page6();


struct _para
{
  uint8 endline;
  uint16 endline_time;

  uint8 AI;
};

struct _GUI
{
  uint8 page;
  uint8 point;
  struct _para para;
};

extern struct _GUI GUI;
extern int16 AIM_Buff[7];
extern float Dir_Buff[14];
extern uint16 timer_cnt;
#endif

