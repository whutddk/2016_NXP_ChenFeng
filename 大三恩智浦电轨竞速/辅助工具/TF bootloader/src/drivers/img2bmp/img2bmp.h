#ifndef _IMG2BMP_H_
#define _IMG2BMP_H_

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
int K60_write_bmp(unsigned char  *pixarr, Size_type size, char *filename);

int K60_Save_Pic(unsigned char  *pixarr, Size_type size, u32 Imag_num);

#endif	//_IMG2BMP_H_