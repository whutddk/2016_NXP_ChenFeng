#ifndef _KEY_H_
#define _KEY_H_


#define KEY_UP           PTB17_I   //1
#define KEY_LEFT         PTB23_I  //2
#define KEY_RIGHT        PTB21_I  //3
#define KEY_DOWN         PTB22_I    //4
#define KEY_CLICK        PTB20_I  //5


extern uint8 sw ;
void key_init();
uint8 wait_key();
void read_sw();

#endif 