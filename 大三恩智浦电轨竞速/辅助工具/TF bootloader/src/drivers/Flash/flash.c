/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��flash.c
 * ����         ��flash��������
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
 * ��ע			�������ݴ�ѧ�����޸Ķ���
**********************************************************************************/


//����ͷ�ļ�
#include "flash.h"



//Flash����궨�壬�ڲ�ʹ��
#define   RD1BLK    0x00   // ������Flash
#define   RD1SEC    0x01   // ����������
#define   PGMCHK    0x02   // д����
#define   RDRSRC    0x03   // ��Ŀ������
#define   PGM4      0x06   // д�볤��
#define   ERSBLK    0x08   // ��������Flash
#define   ERSSCR    0x09   // ����Flash����
#define   PGMSEC    0x0B   // д������
#define   RD1ALL    0x40   // �����еĿ�
#define   RDONCE    0x41   // ֻ��һ��
#define   PGMONCE   0x43   // ֻдһ��
#define   ERSALL    0x44   // �������п�
#define   VFYKEY    0x45   // ��֤���ŷ���Կ��
#define   PGMPART   0x80   // д�����
#define   SETRAM    0x81   // �趨FlexRAM����


//=================�ڲ�����ʵ��=============================================

//==========================================================================
//�������ƣ�flash_cmd_launch
//�������أ�0-�ɹ� 1-ʧ��
//����˵������
//���ܸ�Ҫ������Flash����
//==========================================================================
__RAMFUN static uint32 flash_cmd_launch(void)
{

    FTFL_FSTAT = 	(0
                     |	FTFL_FSTAT_CCIF_MASK 		// ��������
                     |	FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
                     | 	FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
                  );

    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������

    // �������־
    if( FTFL_FSTAT & (FTFL_FSTAT_ACCERR_MASK | FTFL_FSTAT_FPVIOL_MASK | FTFL_FSTAT_MGSTAT0_MASK))
        return 1 ; 				//ִ���������

    return 0; 					//ִ������ɹ�
}

//===========================================================================

//=================�ⲿ�ӿں���==============================================
//==========================================================================
//�������ƣ�flash_init
//�������أ���
//����˵������
//���ܸ�Ҫ����ʼ��flashģ��
//==========================================================================
__RAMFUN void flash_init(void)
{
    // ���FlashԤ��ȡ������
    FMC_PFB0CR |= FMC_PFB0CR_S_B_INV_MASK;
    FMC_PFB1CR |= FMC_PFB0CR_S_B_INV_MASK;

    while(!(FTFL_FSTAT & FTFL_FSTAT_CCIF_MASK));	// �ȴ��������

    FTFL_FSTAT = 	(0
                     |	FTFL_FSTAT_ACCERR_MASK 		// ������ʴ����־λ
                     | 	FTFL_FSTAT_FPVIOL_MASK		// �Ƿ����ʱ�־λ
                  );
}

//==========================================================================
//�������ƣ�flash_erase_sector
//�������أ�����ִ��ִ��״̬��0=��������0=�쳣��
//����˵����sectorNo�������ţ�K60N512ʵ��ʹ��0~255��
//���ܸ�Ҫ������ָ��flash����
//==========================================================================
__RAMFUN uint8 flash_erase_sector(uint16 sectorNo)
{
    Dtype	addr;
    addr.DW = (uint32)(sectorNo << 11);	//ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024

    //dest.word    = (uint32)(sectorNo<<11);	//ÿ������2KB������������ַ=������*2K �������� <<11 ��ʾ *2*1024

    // ���ò�������
    FTFL_FCCOB0 = ERSSCR; // ������������

    // ����Ŀ���ַ
    FTFL_FCCOB1 = addr.B[2];
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];

    // ִ����������
    if(1 == flash_cmd_launch())    //��ִ��������ִ���
        return 1;     //�����������

    // ������sector0ʱ��������豸
    if(sectorNo == 0)
    {
        // д��4�ֽ�
        FTFL_FCCOB0 = PGM4;
        // ����Ŀ���ַ
        FTFL_FCCOB1 = 0x00;
        FTFL_FCCOB2 = 0x04;
        FTFL_FCCOB3 = 0x0C;
        // ����
        FTFL_FCCOB4 = 0xFF;
        FTFL_FCCOB5 = 0xFF;
        FTFL_FCCOB6 = 0xFF;
        FTFL_FCCOB7 = 0xFE;
        // ִ����������
        if(1 == flash_cmd_launch())  //��ִ��������ִ���
            return 2;   //�����������
    }

    return 0;  //�ɹ�����
}

//==========================================================================
//�������ƣ�flash_write
//�������أ�����ִ��״̬��0=��������0=�쳣��
//����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
//         offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��
//         cnt��д���ֽ���Ŀ��0~2043��
//         buf��Դ���ݻ������׵�ַ
//���ܸ�Ҫ��flashд�����
//==========================================================================
__RAMFUN uint8 flash_write(uint16 sectorNo, uint16 offset, uint32 data)
{
    Dtype	addr;
    Dtype	Data;

    ASSERT(offset % 4 == 0);			//ƫ��������Ϊ4�ı���
    //�˴���ʾ���棬���ǰ�ȫ�ġ���
    ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
    //�˴���ʾ���棬���ǰ�ȫ�ġ���

    addr.DW = (uint32)((sectorNo << 11) + offset);		//�����ַ
    Data.DW	= data;

    FTFL_FCCOB0 = PGM4;				// ����д������

    FTFL_FCCOB1 = addr.B[2];		// ����Ŀ���ַ
    FTFL_FCCOB2 = addr.B[1];
    FTFL_FCCOB3 = addr.B[0];


    FTFL_FCCOB4 = Data.B[3];        // ����д������
    FTFL_FCCOB5 = Data.B[2];
    FTFL_FCCOB6 = Data.B[1];
    FTFL_FCCOB7 = Data.B[0];

    if(1 == flash_cmd_launch()) 	return 2;  //д���������

    return 0;  //�ɹ�ִ��
}


//==========================================================================
//�������ƣ�flash_write
//�������أ�����ִ��״̬��0=��������0=�쳣��
//����˵����sectorNo��Ŀ�������� ��K60N512ʵ��ʹ��0~255��
//         offset:д�������ڲ�ƫ�Ƶ�ַ��0~2043��
//         cnt��д���ֽ���Ŀ��0~2043��
//         buf��Դ���ݻ������׵�ַ
//���ܸ�Ҫ��flashд�����
//==========================================================================
__RAMFUN uint8 flash_write_buf(uint16 sectorNo, uint16 offset, uint16 cnt, uint8 buf[])
{
    uint32 size;

    Dtype	addr;

    ASSERT(offset % 4 == 0);			//ƫ��������Ϊ4�ı���
    //�˴���ʾ���棬���ǰ�ȫ�ġ���
    ASSERT(offset <= 0x800);		//������СΪ2K����ƫ�������벻���� 0x800
    //�˴���ʾ���棬���ǰ�ȫ�ġ���

    addr.DW = (uint32)((sectorNo << 11) + offset);		//�����ַ

    // ����д������
    FTFL_FCCOB0 = PGM4;

    for(size = 0; size < cnt; size += 4, addr.DW += 4, buf += 4)
    {

        FTFL_FCCOB1 = addr.B[2];						// ����Ŀ���ַ
        FTFL_FCCOB2 = addr.B[1];
        FTFL_FCCOB3 = addr.B[0];

        FTFL_FCCOB4 = buf[3];							// ��������
        FTFL_FCCOB5 = buf[2];
        FTFL_FCCOB6 = buf[1];
        FTFL_FCCOB7 = buf[0];

        if(1 == flash_cmd_launch())
            return 2;  									//д���������
    }

    return 0;  //�ɹ�ִ��
}

__RAMFUN uint8 Flash_read(uint16 sectNo,uint16 offset,uint16 cnt,uint8*bBuf)
{
    uint32 wAddr = 0;
    wAddr = sectNo<<11 + offset;
    while (cnt--)
        *bBuf++=*(uint8*)wAddr++;
   return TRUE;
}


//==========================================================================
