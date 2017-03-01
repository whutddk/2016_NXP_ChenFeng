#ifndef _CTL_H_
#define _CTL_H_

struct _ctl 
{
  uint8 flag_on; //ÉÏµç
  
  uint8 flag_start;//ÆğÅÜ
  uint32 current;
  uint32 current_offset;
  
  int32 current_sum;
  int32 POWER;
  
};

void relay_ON();
void relay_OFF();
void meterage();
void order();
void RC_init();
void calculate();
void show();
void check_sw();


extern struct _ctl ctl;

extern uint8 send_cnt ;
extern uint16 timer_cnt ;
extern vuint16 temp ; 
#endif

