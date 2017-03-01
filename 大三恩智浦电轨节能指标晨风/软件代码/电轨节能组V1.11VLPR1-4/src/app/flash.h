#ifndef _FLASH_H_
#define _FLASH_H_


#define Flash_OK                    0x00
#define Flash_FACCERR               0x01
#define Flash_FPVIOL                0x02
#define Flash_MGSTAT0               0x04
#define Flash_RDCOLERR              0x08
#define Flash_NOT_ERASED            0x10
#define Flash_CONTENTERR            0x11

/* flash commands */
#define FlashCmd_ProgramLongWord    0x06
#define FlashCmd_SectorErase        0x09


void Flash_Init(void);
uint8 Command_Lanuch(void);
uint8 Flash_SectorErase(uint32 FlashPtr);
uint8 Flash_ByteProgram(uint32 FlashStartAdd,uint32 *DataSrcPtr,uint32 NumberOfBytes);
uint8 Flash_read(uint32 FlashStartAdd,uint32*bBuf,uint16 cnt);

#endif