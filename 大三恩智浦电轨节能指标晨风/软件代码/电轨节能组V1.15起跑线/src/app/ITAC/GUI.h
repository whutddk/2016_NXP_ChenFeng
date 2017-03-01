#ifndef _GUI_H_
#define _GUI_H_

void GUI_work();
void GUI_update();
void update_page1();
void update_page2();
void update_page3();
void update_page4();
void update_page5();
void update_page6();

struct _GUI
{
  uint8 page;
  uint8 point;
  uint8 AI;
};


extern struct _GUI GUI;
#endif


