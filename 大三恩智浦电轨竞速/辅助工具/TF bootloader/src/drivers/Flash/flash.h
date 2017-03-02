/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��flash.h
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


#ifndef _FLASH_H_
#define _FLASH_H_

//k60N512����512K�ĳ���Flash
//512K�ĳ���Flash��Ϊ256��������ÿ������2K��С
//K60X256����256K�ĳ���Flash
//512K�ĳ���Flash��Ϊ128��������ÿ������2K��С
//    sector��2K��Ϊ������С��λ
//    ���֣�32b��Ϊд����С��λ

#include "common.h"


__RAMFUN	void 	flash_init();																				//����ָ��flash����

__RAMFUN 	uint8 	flash_erase_sector	(uint16 sectorNo);														//����ָ��flash����
__RAMFUN 	uint8 	flash_write			(uint16 sectorNo, uint16 offset, uint32 data);							//д��flash����
__RAMFUN 	uint8 	flash_write_buf		(uint16 sectorNo, uint16 offset, uint16 cnt, uint8 buf[]);					//�ӻ�����д��flash����
__RAMFUN    uint8   Flash_read          (uint16 sectNo,uint16 offset,uint16 cnt,uint8*bBuf);
#define		flash_read(sectorNo,offset,type)		(*(type *)((uint32)(((sectorNo)<<11) + (offset))))			//��ȡ����
#endif //_FLASH_H_
