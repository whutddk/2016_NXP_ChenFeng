#include "common.h"
#include "BL144002.h"
#include "ff.h"


/*	����:K60_write_bmp3
*	  ����:��binaryͼ�����鱣��Ϊ24λ���ɫbmp��ʽͼƬ
*   ����: pixarr--������������ַ  xize--����ͼƬ�Ŀ��  Height--����ͼƬ�ĸ߶�  filename--����ͼƬ������
*   ���: 0 ---�ɹ�  -1 ---ʧ��
*   ע��:
*   ������unsigned short int rgb_buffer2[18*17*2];
*					rgb_buffer2�����ʼ��
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
    FATFS bmpfs;    //�ļ�ϵͳ
    FIL   bmpfsrc;  //�ļ�
    int   bmpres;

    char offset[4] = {0, 0, 0, 0};
    u32 i, j, mybw;
    u8 tmp_rgb;
    long file_size;
    int Width = size.W;
    int Height = size.H;

    file_size = (long)Width * (long)Height * 3 + Height * (Width % 4) + 54;		//��*�� +������ֽ� + ͷ����Ϣ
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

    if ( bmpres == FR_EXIST )                                              //����ļ��Ѿ�����
    {
        f_unlink(filename);	                                              //ɾ�����ļ�
        bmpres = f_open( &bmpfsrc , filename, FA_CREATE_NEW | FA_WRITE);  //���´������ļ�
    }

    if ( bmpres == FR_OK )
    {
        bmpres = f_write(&bmpfsrc, header, sizeof(unsigned char) * 54, (UINT *)&mybw);
        //BMP_DEBUG_PRINTF("Image buffer pixcel value is :\r\n");
        for(i = 0; i < Height; i++)						//��
        {
            if(!(Width % 4))
            {
                for(j = 0; j < Width; j++)  	//��
                {
                    tmp_rgb  = (pixarr[(i*Width+j)>>3] & (1 << (7 - ((i * Width + j) % 8)))) ? 0xff : 0 ; //ȡ�ø��и�������Ӧ��λ��ֵ
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
                    tmp_rgb  = (pixarr[(i*Width+j)>>3] & (1 << (7 - ((i * Width + j) % 8)))) ? 0xff : 0 ; //ȡ�ø��и�������Ӧ��λ��ֵ
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
