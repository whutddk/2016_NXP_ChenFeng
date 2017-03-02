#ifndef _IMG2BMP_H_
#define _IMG2BMP_H_

/*	函数:K60_write_bmp3
*	  功能:将binary图像数组保存为24位真彩色bmp格式图片
*   输入: pixarr--像素数据流地址  xize--保存图片的宽度  Height--保存图片的高度  filename--保存图片的名称
*   输出: 0 ---成功  -1 ---失败
*   注意:
*   举例：unsigned short int rgb_buffer2[18*17*2];
*					rgb_buffer2数组初始化
*			  	K60_write_bmp((unsigned char *)rgb_buffer2, 18, 17, "0:/fire.bmp");
*
*/
int K60_write_bmp(unsigned char  *pixarr, Size_type size, char *filename);

int K60_Save_Pic(unsigned char  *pixarr, Size_type size, u32 Imag_num);

#endif	//_IMG2BMP_H_