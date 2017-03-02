#include "common.h"
#include "BL144002.h"
#include "ff.h"


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
int K60_write_bmp(unsigned char  *pixarr, Size_type size, char *filename)
{
    unsigned char header[54] =
    {
        0x42, 0x4d, 0, 0, 0, 0,
        0, 0, 0, 0, 54, 0,
        0, 0, 40, 0, 0, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 1, 0, 24, 0,
        0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0,
        0, 0, 0, 0, 0,
        0, 0, 0, 0, 0,
        0, 0, 0
    };
    FATFS bmpfs;    //文件系统
    FIL   bmpfsrc;  //文件
    int   bmpres;

    char offset[4] = {0, 0, 0, 0};
    u32 i, j, mybw;
    u8 tmp_rgb;
    long file_size;
    int Width = size.W;
    int Height = size.H;

    file_size = (long)Width * (long)Height * 3 + Height * (Width % 4) + 54;		//宽*高 +补充的字节 + 头部信息
    header[2] = (unsigned char)(file_size & 0x000000ff);
    header[3] = (file_size >> 8) & 0x000000ff;
    header[4] = (file_size >> 16) & 0x000000ff;
    header[5] = (file_size >> 24) & 0x000000ff;

    header[18] = Width & 0x000000ff;
    header[19] = (Width >> 8) & 0x000000ff;
    header[20] = (Width >> 16) & 0x000000ff;
    header[21] = (Width >> 24) & 0x000000ff;

    header[22] = Height & 0x000000ff;
    header[23] = (Height >> 8) & 0x000000ff;
    header[24] = (Height >> 16) & 0x000000ff;
    header[25] = (Height >> 24) & 0x000000ff;
    f_mount(0, &bmpfs);
    bmpres = f_open( &bmpfsrc , filename, FA_CREATE_NEW | FA_WRITE);

    if ( bmpres == FR_EXIST )                                              //如果文件已经存在
    {
        f_unlink(filename);	                                              //删除该文件
        bmpres = f_open( &bmpfsrc , filename, FA_CREATE_NEW | FA_WRITE);  //重新创建该文件
    }

    if ( bmpres == FR_OK )
    {
        bmpres = f_write(&bmpfsrc, header, sizeof(unsigned char) * 54, (UINT *)&mybw);
        //BMP_DEBUG_PRINTF("Image buffer pixcel value is :\r\n");
        for(i = 0; i < Height; i++)						//高
        {
            if(!(Width % 4))
            {
                for(j = 0; j < Width; j++)  	//宽
                {
                    tmp_rgb  = (pixarr[(i*Width+j)>>3] & (1 << (7 - ((i * Width + j) % 8)))) ? 0xff : 0 ; //取得改行该列所对应的位的值
                    //BMP_DEBUG_PRINTF("%X ", tmp_rgb);
                    bmpres = f_write(&bmpfsrc, &tmp_rgb, sizeof(unsigned char), (UINT *)&mybw);
                    bmpres = f_write(&bmpfsrc, &tmp_rgb, sizeof(unsigned char), (UINT *)&mybw);
                    bmpres = f_write(&bmpfsrc, &tmp_rgb, sizeof(unsigned char), (UINT *)&mybw);
                }
            }
            else
            {
                for(j = 0; j < Width; j++)
                {
                    tmp_rgb  = (pixarr[(i*Width+j)>>3] & (1 << (7 - ((i * Width + j) % 8)))) ? 0xff : 0 ; //取得改行该列所对应的位的值
                    //BMP_DEBUG_PRINTF("%x ", tmp_rgb);
                    bmpres = f_write(&bmpfsrc, &tmp_rgb, sizeof(unsigned char), (UINT *)&mybw);
                    bmpres = f_write(&bmpfsrc, &tmp_rgb, sizeof(unsigned char), (UINT *)&mybw);
                    bmpres = f_write(&bmpfsrc, &tmp_rgb, sizeof(unsigned char), (UINT *)&mybw);
                }
                bmpres = f_write(&bmpfsrc, offset, sizeof(unsigned char) * (Width % 4), (UINT *)&mybw);
            }
            //BMP_DEBUG_PRINTF(" line==%d\r\n",i);
        }

        f_close(&bmpfsrc);
        return 0;
    }

    else
    {
        return -1;
    }


}

int K60_Save_Pic(unsigned char  *pixarr, Size_type size, u32 Imag_num)
{
    char Name_buf[20];
    sprintf(Name_buf, "0:/Pic%d.bmp", Imag_num);
    return K60_write_bmp(pixarr, size, Name_buf);
}
