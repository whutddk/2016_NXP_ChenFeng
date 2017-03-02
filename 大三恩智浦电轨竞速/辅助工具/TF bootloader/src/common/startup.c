/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��startup.c
 * ����         ��kinetis���������룬���ж���������ʼ�����ݡ���__ramfunc�������Ӻ������Ƶ�RAM��
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 *
 * ����         ����˼������˾
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/

#include "common.h"

#if (defined(IAR))
#pragma section = ".data"
#pragma section = ".data_init"
#pragma section = ".bss"
#pragma section = "CodeRelocate"
#pragma section = "CodeRelocateRam"
#endif

/********************************************************************/
//�����ж���������ʼ�����ݡ���__ramfunc�������Ӻ������Ƶ�RAM��(��flash�����ĺ�����������)
void
common_startup(void)
{

#if (defined(CW))
    extern char __START_BSS[];
    extern char __END_BSS[];
    extern uint32 __DATA_ROM[];
    extern uint32 __DATA_RAM[];
    extern char __DATA_END[];
#endif

    /* Declare a counter we'll use in all of the copy loops */
    uint32 n;

    /* Declare pointers for various data sections. These pointers
     * are initialized using values pulled in from the linker file
     */
    uint8 *data_ram, * data_rom, * data_rom_end;
    uint8 *bss_start, * bss_end;


    /* ����������ĵ�ַ ��  ������Linker�ļ�����ICF�ļ� ���� */
    extern uint32 __VECTOR_TABLE[];
    extern uint32 __VECTOR_RAM[];

    /* ����Ƿ���Ҫ �����ж�������  */
    if (__VECTOR_RAM != __VECTOR_TABLE)
    {
        for (n = 0; n < 0x410; n++)
            __VECTOR_RAM[n] = __VECTOR_TABLE[n];
    }

    /* �� �ж��������ַ ����ָ�� RAM ��� �ж������� */
    write_vtor((uint32)__VECTOR_RAM);



    /*��ȡ��ʼ�����ݵ�ַ*/
#if (defined(CW))
    data_ram = (uint8 *)__DATA_RAM;
    data_rom = (uint8 *)__DATA_ROM;
    data_rom_end  = (uint8 *)__DATA_END; /* This is actually a RAM address in CodeWarrior */
    n = data_rom_end - data_ram;
#elif (defined(IAR))
    data_ram = __section_begin(".data");
    data_rom = __section_begin(".data_init");
    data_rom_end = __section_end(".data_init");
    n = data_rom_end - data_rom;
#endif

    /* ���Ƴ�ʼ������ */
    while (n--)
        *data_ram++ = *data_rom++;


    /* ��ȡ .bss �εĵ�ַ (��ʼ������Ϊ0) */
#if (defined(CW))
    bss_start = (uint8 *)__START_BSS;
    bss_end = (uint8 *)__END_BSS;
#elif (defined(IAR))
    bss_start = __section_begin(".bss");
    bss_end = __section_end(".bss");
#endif


    /* �����ʼ��Ϊ0�����ݶ� */
    n = bss_end - bss_start;
    while(n--)
        *bss_start++ = 0;

    /* ����__ramfunc�������Ӻ������Ƶ�RAM��	 */
#if (defined(IAR))
    uint8 *code_relocate_ram  = __section_begin("CodeRelocateRam");
    uint8 *code_relocate      = __section_begin("CodeRelocate");
    uint8 *code_relocate_end  = __section_end("CodeRelocate");

    /* Copy functions from ROM to RAM */
    n = code_relocate_end - code_relocate;
    while (n--)
        *code_relocate_ram++ = *code_relocate++;
#endif
}
/********************************************************************/
