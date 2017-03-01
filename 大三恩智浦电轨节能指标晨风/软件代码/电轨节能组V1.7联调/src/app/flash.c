#include "include.h"


//The devices covered in this document contain 1 program flash block consisting of 
//1 KB sectors. 

void Flash_Init(void)
{
  /* checking access error */
  if (FTFA_FSTAT & FTFA_FSTAT_ACCERR_MASK)
  {
    /* clear error flag */
    FTFA_FSTAT |= FTFA_FSTAT_ACCERR_MASK;
  }
  /* checking protection error */
  else if (FTFA_FSTAT & FTFA_FSTAT_FPVIOL_MASK)
  {
    /* clear error flag */
    FTFA_FSTAT |= FTFA_FSTAT_FPVIOL_MASK;
  }
  else if (FTFA_FSTAT & FTFA_FSTAT_RDCOLERR_MASK)
  {
    /* clear error flag */
    FTFA_FSTAT |= FTFA_FSTAT_RDCOLERR_MASK;
  } /* EndIf */
  
} 

uint8 Command_Lanuch( void )
{
    uint8 Return = Flash_OK;
    // turn off interrupt
    DisableInterrupts;
     /* Launch command */
    FTFA_FSTAT |= FTFA_FSTAT_CCIF_MASK;    
  
    /* wait for command completion */
    while (!(FTFA_FSTAT & FTFA_FSTAT_CCIF_MASK)) {};
    /* checking access error */
    if (FTFA_FSTAT & FTFA_FSTAT_ACCERR_MASK)
    {
        /* clear error flag */
        FTFA_FSTAT |= FTFA_FSTAT_ACCERR_MASK;

        /* update return value*/
        Return |= Flash_FACCERR;
    }
    /* checking protection error */
    else if (FTFA_FSTAT & FTFA_FSTAT_FPVIOL_MASK)
    {
        /* clear error flag */
        FTFA_FSTAT |= FTFA_FSTAT_FPVIOL_MASK;

        /* update return value*/
        Return |= Flash_FPVIOL;
    }
    else if (FTFA_FSTAT & FTFA_FSTAT_RDCOLERR_MASK)
    {
        /* clear error flag */
        FTFA_FSTAT |= FTFA_FSTAT_RDCOLERR_MASK;

       /* update return value*/
       Return |= Flash_RDCOLERR;
    }
    /* checking MGSTAT0 non-correctable error */
    else if (FTFA_FSTAT & FTFA_FSTAT_MGSTAT0_MASK)
    {
        Return |= Flash_MGSTAT0;
    } /* EndIf */
    // enable interrupt
    EnableInterrupts;
    return Return;
}


uint8 Flash_SectorErase(uint32 FlashPtr)
{
    /* Allocate space on stack to run flash command out of SRAM */
    /* wait till CCIF is set*/
    while (!(FTFA_FSTAT & FTFA_FSTAT_CCIF_MASK)){};
    /* Write command to FCCOB registers */
                  
    FTFA_FCCOB0 = FlashCmd_SectorErase;
    FTFA_FCCOB1 = (uint8)(FlashPtr >> 16);
    FTFA_FCCOB2 = (uint8)((FlashPtr >> 8) & 0xFF);
    FTFA_FCCOB3 = (uint8)(FlashPtr & 0xFF);
    /* function return */
    return  Command_Lanuch();
}

uint8 Flash_ByteProgram(uint32 FlashStartAdd,uint32 *DataSrcPtr,uint32 NumberOfBytes)
{
    uint8  cReturn = Flash_OK;
    /* Allocate space on stack to run flash command out of SRAM */
    uint32 size_buffer;
    if (NumberOfBytes == 0)
    {
        return Flash_CONTENTERR;
    }
    else
    {
        size_buffer = (NumberOfBytes - 1)/4 + 1;
    } /* EndIf */
    /* wait for command completion */
    while (!(FTFA_FSTAT & FTFA_FSTAT_CCIF_MASK)) {};
    while( size_buffer && (cReturn == Flash_OK) )
    {
        /* Write command to FCCOB registers */
        FTFA_FCCOB0 = FlashCmd_ProgramLongWord;
        FTFA_FCCOB1 = (uint8)(FlashStartAdd >> 16);
        FTFA_FCCOB2 = (uint8)((FlashStartAdd >> 8) & 0xFF);
        FTFA_FCCOB3 = (uint8)(FlashStartAdd & 0xFF);
        FTFA_FCCOB4 = (uint8)(*((uint8*)DataSrcPtr+3));
        FTFA_FCCOB5 = (uint8)(*((uint8*)DataSrcPtr+2));
        FTFA_FCCOB6 = (uint8)(*((uint8*)DataSrcPtr+1));
        FTFA_FCCOB7 = (uint8)(*((uint8*)DataSrcPtr+0));
        
        cReturn = Command_Lanuch();
        /* decrement byte count */
         size_buffer --;
         (uint32 *)DataSrcPtr++;
         FlashStartAdd +=4;
    } /* EndWhile */
    /* function return */
    return  cReturn;
} 

uint8 Flash_read(uint32 FlashStartAdd,uint32*bBuf,uint16 cnt)
{
    while (cnt--)
   {
     (void)memcpy((uint8 *)bBuf, (uint8 *)FlashStartAdd, cnt);
   }
   return TRUE;
}
