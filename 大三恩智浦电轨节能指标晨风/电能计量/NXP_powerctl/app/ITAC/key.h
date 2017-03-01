#ifndef _KEY_H_
#define _KEY_H_


#define KEY_UP           PTE6_I   //1
#define KEY_LEFT         PTE7_I  //2
#define KEY_RIGHT        PTE10_I  //3
#define KEY_DOWN         PTE11_I    //4
#define KEY_CLICK        PTE12_I  //5

void key_init();
uint8 wait_key();


extern void check_keyboard();
extern void keyboard_init();
void deal_keyboard();

typedef enum
{
  _1 = 0x00,  _2 = 0x01,  _3 = 0x02,  _A = 0x03,
  
  _4 = 0x04,  _5 = 0x05,  _6 = 0x06,  _B = 0x07,
  
  _7 = 0x08,  _8 = 0x09,  _9 = 0x0a,  _C = 0x0b,
  
  _X = 0x0c,  _0 = 0x0d,  _J = 0x0e,  _D = 0x0f
   
}keyboardnote;

extern keyboardnote keyboard_ans ;

#endif 