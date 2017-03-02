#include "sound.h"

void sound_init()
{
    gpio_init(PORTC,0,GPO_HDS,0);
//	pit_init(PIT0,75000);
}

void  delay_fmq(uint32  ms)
{

    uint32  i, j;
    for(i = 0; i < ms; i++)
    {
        for(j = 700; j > 0; j--)
        {
            asm("nop");
        }
    }
}


void kaiji_fmq()			 //开机音
{
	uint8 a;
	for(a=60;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(60);
	 }
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(50);
	 }
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(20);
	 }
	gpio_set(PORTC,0,0);
}

void up_fmq()			 //开机音
{
	uint8 a;
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(4);
	 }
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(8);
	 }
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(4);
	 }
	gpio_set(PORTC,0,0);
}

void down_fmq()			 //开机音
{
	uint8 a;
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(20);
	 }
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(6);
	 }
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(15);
	 }
	gpio_set(PORTC,0,0);
}

void ok_fmq()			  //按键音
{
	uint8 a;
	for(a=100;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(20);
	 }
	for(a=80;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(30);
	 }

	gpio_set(PORTC,0,0);
}

void ok_hold_fmq()			  //按键音
{
	uint16 a;
	for(a=150;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(20);
	 }
	gpio_set(PORTC,0,0);
	delayms(10);
	for(a=150;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(20);
	 }
	gpio_set(PORTC,0,0);
	delayms(10);
	for(a=150;a>0;a--)
	 {
		gpio_turn(PORTC,0);
		delay_fmq(20);
	 }
	gpio_set(PORTC,0,0);
}