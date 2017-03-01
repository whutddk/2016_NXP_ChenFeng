

#ifndef _SCSI_H_
#define _SCSI_H_
    #include "USBHost.h"
    #include "cortex_m0p.h"

    #ifdef NDEBUG
    #define CMX_ASSERT(c) (void)0
    #else
    #define CMX_ASSERT(c)\
    do {\
      if(!(c))\
      {\
        int a=1;\
        while(a)\
          ;\
      }\
    }while(0)
    #endif

    #define RD_BE32(X) (uint_32)(((uint_32)X[0]) << 24 | ((uint_32)X[1]) << 16 |((uint_32)X[2]) << 8 |((uint_32)X[3]) << 0)
    #define WR_BE32(x,y) x[0] = (uint_8)((0xFF000000 & y)>>24);x[1] = (uint_8)((0x00FF0000 & y)>>16);x[2] = (uint_8)((0x0000FF00 & y)>>8);x[3] = (uint_8)((0x000000FF & y)>>0);
    #define WR_BE16(x,y) x[0] = (uint_8)((0xFF00 & y)>>8);x[1] = (uint_8)((0x00FF & y)>>0);

    #define RETRY_WAIT_MS  10

    #define SCSI_PDT_DA       0x0    
    #define SCSI_PDT_CD       0x5    
    #define SCSI_PDT_OM       0x7    
    #define SCSI_PDT_SDA      0x0e   

    
    #define SCSI_CMD_INQUIRY            0x12u
    #define SCSI_CMD_REQUEST_SENSE      0x03u
    #define SCSI_CMD_SEND_DIAGNOSTIC    0x1du
    #define SCSI_CMD_TEST_UNIT_READY    0x00u

    
    #define SCSI_CMD_FORMAT_UNIT        0x04u
    #define SCSI_CMD_READ_10            0x28u
    #define SCSI_CMD_READ_12            0xa8u
    #define SCSI_CMD_READ_CAPACITY      0x25u
    #define SCSI_CMD_RELEASE            0x17u
    #define SCSI_CMD_RESERVE            0x16u
    #define SCSI_CMD_WRITE_10           0x2au
    #define SCSI_CMD_WRITE_12           0xaau
    #define SCSI_CMD_START_STOP         0x1bu
    #define SCSI_CMD_TOCPMAATIP         0x43u
    
    #define SCSI_SK_NO_SENSE          0x00  
    #define SCSI_SK_RECOVERED_ERROR   0x01  
    #define SCSI_SK_NOT_READY         0x02  
    #define SCSI_SK_MEDIUM_ERROR      0x03  
    #define SCSI_SK_HARDWARE_ERROR    0x04  
    #define SCSI_SK_ILLEGAL_REQUEST   0x05  
    #define SCSI_SK_UNIT_ATTENTION    0x06  
    #define SCSI_SK_ABORTED_COMMAND   
    #define SCSI_SK_DATA_PROTECT            


    #define LERR_NONE            0x0u   
    #define LERR_INVALID_DEVICE  0x1u   
    #define LERR_CRITICAL_ERROR  0x2u   
    #define LERR_IOWRITE_ERROR   0x3u   
    #define LERR_IOREAD_ERROR    0x4u   

    #define ERR_IO_NONE     0
    #define ERR_IO_CHECK    1
    #define ERR_IO_REMOVED  2
    #define ERR_IO_READ     3
    #define ERR_IO_WRITE    4


    #define DIR_NONE 2
    #define DIR_IN   1
    #define DIR_OUT  0


    typedef struct {
        char pdt;
        char vendor[8];
        char prod_id[16];
        char rev[4];
        uint_32 no_of_sectors;
        uint_32 sector_size;
        int error_code;
        uint_8 sense_key;
        uint_8 sense_data;
        uint_8 sense_qualifyer;
        uint_32 sense_info;
    } lun_info_t;

    typedef int rw_func_t(uint_8 cmd_length, void *cmd, uint_8 dir, uint_32 buf_length, const uint_8 *buf);

    extern int scsi_init(void);
    extern int scsi_open_device(rw_func_t *f);
    extern int scsi_close_device(void);
    extern int scsi_read(uint_32 lba, uint_32 length, uint_8 *buffer);
    extern int scsi_read_sector(uint_32 lba, uint_8 *buffer);
    extern int scsi_write(uint_32 lba, uint_32 length, const uint_8 *buffer);
    extern int scsi_write_sector(uint_32 lba, const uint_8 *buffer);
    extern int scsi_reset_lun(void);
    extern int scsi_get_sectors_no(void);
    extern int scsi_get_sectors_size(void);
    extern int scsi_get_device_string(uint_8 *buffer, uint_8 len);
#endif
