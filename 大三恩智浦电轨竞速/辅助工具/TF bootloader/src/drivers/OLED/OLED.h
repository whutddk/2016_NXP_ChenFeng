#ifndef	_OLED_H_
#define _OLED_H_
#include "gpio.h"

#define CLK     2
#define MOSI    1
#define CS1     6
#define CS2     5

#define OLED_GPIO_CLK   PORTE
#define OLED_GPIO_MOSI  PORTE
#define OLED_GPIO_CS1   PORTE
#define OLED_GPIO_CS2   PORTE

#define CS1LOW()    gpio_set(OLED_GPIO_CS1,  CS1 , 0);
#define CS1HIGH()   gpio_set(OLED_GPIO_CS1,  CS1 , 1);
#define CS2LOW()    gpio_set(OLED_GPIO_CS2,  CS2 , 0);
#define CS2HIGH()   gpio_set(OLED_GPIO_CS2,  CS2 , 1);
#define CLKLOW()    gpio_set(OLED_GPIO_CLK,  CLK , 0);
#define CLKHIGH()   gpio_set(OLED_GPIO_CLK,  CLK , 1);
#define MOSILOW()   gpio_set(OLED_GPIO_MOSI, MOSI ,0);
#define MOSIHIGH()  gpio_set(OLED_GPIO_MOSI, MOSI ,1);



#define DIF(x,y)     (y>x?y-x:x-y)

#define ROWSIZE   8
#define COLSIZE    128


#define byte uint8
#define word uint16
#define GPIO_PIN_MASK      0x1Fu    //0x1f=31,限制位数为0--31有效
#define GPIO_PIN(x)        (((1)<<(x & GPIO_PIN_MASK)))  //把当前位置1
// extern byte beyond96x64[512];
// extern byte beyond64x64[512];
 void OLED_Init(void);

 void LCD_CLS(void);
 void LCD_P6x8Str(byte x,byte y,byte ch[]);
 void LCD_P8x16Str(byte x,byte y,byte ch[]);
 void LCD_P14x16Str(byte x,byte y,byte ch[]);
 void LCD_Print(byte x, byte y, byte ch[]);
 void LCD_PutPixel(byte x,byte y);
 void LCD_Rectangle(byte x1,byte y1,byte x2,byte y2,byte gif);
 void Draw_LQLogo(void);
 void Draw_LibLogo(void);
 void Draw_Image(void);
 void Draw_BMP(byte x0,byte y0,byte x1,byte y1,byte bmp[]);
 void LCD_Fill(byte dat);
void Dis_Num(byte y, byte x, u32 num,byte N);

void Dis_Numbfb(byte y, byte x, u8 num);
void Draw_Power(uint16 TSC,uint8 qie);
 void Draw_XH();
 void Draw_WZ(int16 WEI2);
 void Dis_err(byte y, byte x, int16 num);
 void Dis_LOGO();
void Display_Bar(unsigned char x,unsigned char y,unsigned char num);

void OLED_clearbuffer(void);
void OLED_upbuffer(void);
void DrawLine(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1, unsigned char color);
void SetPixelbuffer(unsigned char x, unsigned char y, unsigned char color);

#endif