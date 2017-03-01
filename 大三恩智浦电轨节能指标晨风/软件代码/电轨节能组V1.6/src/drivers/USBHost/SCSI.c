#include "SCSI.h"

static int scsi_cmd_inquiry(void);
static int scsi_cmd_read_capacity(void);
static int scsi_cmd_test_unit_ready(void);
static int scsi_cmd_request_sense(void);
static int scsi_cmd_read_10(uint_32 lba, uint_16 length, void *buffer);
static int scsi_cmd_read_12(uint_32 lba, uint_32 length, void *buffer);
static int scsi_cmd_write_10(uint_32 lba, uint_16 length, const uint_8 *buffer);
static int scsi_cmd_write_12(uint_32 lba, uint_32 length, const uint_8 *buffer);

static rw_func_t *transfer;
static lun_info_t lun;

int scsi_init(void)
{
    transfer = 0;
    lun.error_code = LERR_INVALID_DEVICE;
    lun.sector_size= 0;
    return(0);
}

int scsi_write(uint_32 lba, uint_32 length, const uint_8 *buffer)
{
    int r;
    if (length < 0xffff)
        r=scsi_cmd_write_10(lba, (uint_16)length, buffer);
    else
        r=scsi_cmd_write_12(lba, length, buffer);
    return(r);
}

int scsi_read(uint_32 lba, uint_32 length, uint_8 *buffer)
{
    int r;
    if (length < 0xffff)
        r=scsi_cmd_read_10(lba, (uint_16)length, buffer);
    else
        r=scsi_cmd_read_12(lba, length, buffer);
    return(r);
}


int scsi_reset_lun(void)
{   
    lun.error_code=LERR_NONE;
    lun.pdt=0;
    lun.no_of_sectors=0;
    lun.prod_id[0]='\0';
    lun.rev[0]='\0';
    lun.vendor[0]='\0';
    lun.sector_size=0;
    lun.sense_data=0;
    lun.sense_info=0;


    if (scsi_cmd_inquiry())
    {
        return(1);
    }

    scsi_cmd_test_unit_ready();

    if (scsi_cmd_read_capacity())
        return(1);
    return(0);
}


int scsi_open_device(rw_func_t *f)
{ 
    int r=0;
  
    CMX_ASSERT(f != 0);
  
    transfer=f;
    r=scsi_reset_lun();
    return(r);
}


int scsi_close_device()
{
    transfer=0;
    lun.error_code=LERR_INVALID_DEVICE;
    lun.sector_size=0;
    return(0);
}

int scsi_get_sectors_no()
{
    return lun.no_of_sectors;
}


int scsi_get_sectors_size()
{
    return lun.sector_size;
}

//-------------------------------------------------------------------------*
static void scsi_copy32(void *dest, void *source, uint_32 length)
{
	uint_32 temp = 0;
	uint_32 *tAdd = 0;
    while(length)
    {
        length--;
    	//((uint_32*)dest)[length]=((uint_32*)source)[length];
    	temp = ((uint_32*)source)[length];
    	tAdd = (uint_32*)dest + length;
    	*tAdd = temp;
    }
}

static int scsi_cmd_inquiry(void)
{
	uint_8 i = 0;
    int err;
        union {
        uint_8 cmd[6];
        uint_8 resp[36];
    } data;
  
    data.cmd[0]=SCSI_CMD_INQUIRY;
    data.cmd[1]=0 << 5;
    data.cmd[2]=0;     
    data.cmd[3]=0;    
    data.cmd[4]=36; 
    data.cmd[5]=0;    

    err=(*transfer)(6, &data.cmd[0], DIR_IN, 36, &data.resp[0]);

    if (err)
    {
        switch(err)
        {
            case ERR_IO_NONE:   
                break;
            case ERR_IO_CHECK: 
                break;
            case ERR_IO_REMOVED:
                lun.error_code=LERR_CRITICAL_ERROR;
                return(1);
            case ERR_IO_READ:
                lun.error_code=LERR_IOREAD_ERROR;
                return(1);
            case ERR_IO_WRITE:
                lun.error_code=LERR_IOWRITE_ERROR;
                return(1);
        }
    }
    
    lun.pdt=(char)(data.resp[0] & 0x1f);

	for(i = 0;i < 8;i++)
	{
		lun.vendor[i] = data.resp[8+i];
	}

	
	for(i = 0;i < 16;i++)
	{
		lun.prod_id[i] = data.resp[16+i];
	}

	
	for(i = 0;i < 4;i++)
	{
		lun.rev[i] = data.resp[32+i];
	}

	
	lun.no_of_sectors = 0;

    lun.error_code=LERR_NONE;
    return(0);
}


static int scsi_cmd_read_capacity()
{
    uint_32 i= 0;
    struct {
        uint_8 cmd[10];
        uint_8 resp[8];
    } data;
    int err;

    lun.no_of_sectors=0;
    lun.sector_size=0;


    data.cmd[0]=SCSI_CMD_READ_CAPACITY;
    data.cmd[1]=0 << 5;
    data.cmd[2]=data.cmd[3]=data.cmd[4]=data.cmd[5]=0;
    data.cmd[6]=data.cmd[7]=0;
    data.cmd[8]=0;          
    data.cmd[9]=0;      
 
    while(1)
    {
        err=(*transfer)(10, &data.cmd[0], DIR_IN, 8, &data.resp[0]);
        if (err)
        {
            switch(err)
            {
                case ERR_IO_NONE:
                    break;
                case ERR_IO_CHECK:
                    if (scsi_cmd_request_sense()) 
                        return(1);      
                    for(i = 0;i < 100000;i++);
                    continue;
                case ERR_IO_REMOVED:
                    lun.error_code=LERR_CRITICAL_ERROR;
                    return(1);
                case ERR_IO_READ:
                    lun.error_code=LERR_IOREAD_ERROR;
                    return(1);
                case ERR_IO_WRITE:
                    lun.error_code=LERR_IOWRITE_ERROR;
                    return(1);
            }
        }
        break;
    }
    lun.no_of_sectors=RD_BE32(data.resp);
    lun.sector_size=(uint_32)(((uint_32)data.resp[4]) << 24 | ((uint_32)data.resp[5]) << 16
                             |((uint_32)data.resp[6]) << 8 |((uint_32)data.resp[7]) << 0);//RD_BE32(data.resp+4);
    return(0);
}


static int scsi_cmd_test_unit_ready()
{
    uint_8 cmd[6];    
    int err;


    cmd[0]=SCSI_CMD_TEST_UNIT_READY;
    cmd[1]=0<<5;
    cmd[2]=cmd[3]=cmd[4]=0; 
    cmd[5]=0;               
    
    err=(*transfer)(6, &cmd[0], DIR_NONE, 0, 0);
    if (err)
    {
        switch(err)
        {
            case ERR_IO_NONE:
                break;
            case ERR_IO_CHECK:    
                break;
            case ERR_IO_REMOVED:
                lun.error_code=LERR_CRITICAL_ERROR;
                return(1);
            case ERR_IO_READ:
                lun.error_code=LERR_IOREAD_ERROR;
                return(1);
            case ERR_IO_WRITE:
                lun.error_code=LERR_IOWRITE_ERROR;
                return(1);
        }
    }
    return(0);
}


static int scsi_cmd_request_sense()
{
    union {
        uint_8 cmd[6];
        uint_8 resp[18];
    } data;
    int err;


    data.cmd[0]=SCSI_CMD_REQUEST_SENSE;
    data.cmd[1]=0<<5;
    data.cmd[2]=data.cmd[3]=0; 
    data.cmd[4]=18;            
    data.cmd[5]=0;            

    err=(*transfer)(6, &data.cmd[0], DIR_IN, 18, &data.resp[0]);
    if (err)
    {
        switch(err)
        {
            case ERR_IO_NONE: 
                break;
            case ERR_IO_CHECK: 
            case ERR_IO_REMOVED:
                lun.error_code=LERR_CRITICAL_ERROR;
                return(1);
            case ERR_IO_READ:
                lun.error_code=LERR_IOREAD_ERROR;
                return(1);
            case ERR_IO_WRITE:
                lun.error_code=LERR_IOWRITE_ERROR;
                return(1);
        }
    }

    CMX_ASSERT(data.resp[0] == 0x70);

    if (data.resp[0] == 0x70)
    {
        lun.sense_key = data.resp[2];
        lun.sense_data = data.resp[12];
        lun.sense_qualifyer = data.resp[13];
        lun.sense_info = (uint_32)(((uint_32)data.resp[3]) << 24 | ((uint_32)data.resp[4]) << 16
                             |((uint_32)data.resp[5]) << 8 |((uint_32)data.resp[6]) << 0);//RD_BE32(&data.resp[3]);
    }
    else
    {
        CMX_ASSERT(0);   
    }
    return(0);
}


static int scsi_cmd_read_10(uint_32 lba, uint_16 length, void *buffer)
{
    uint_8 cmd[10];
    uint_32 i;
    int err;


    cmd[0]=SCSI_CMD_READ_10;
    cmd[1]=0<<5;

    cmd[2] = (uint_8)((0xFF000000 & lba)>>24);
    cmd[3] = (uint_8)((0x00FF0000 & lba)>>16);
    cmd[4] = (uint_8)((0x0000FF00 & lba)>>8);
    cmd[5] = (uint_8)((0x000000FF & lba)>>0);
    cmd[6]=0;     

    cmd[7] = (uint_8)((0xFF00 & length)>>8);
    cmd[8] = (uint_8)((0x00FF & length)>>0);
    cmd[9]=0;        
    
    while(1)
    {
        err=(*transfer)(10, cmd, DIR_IN, length * lun.sector_size, buffer);
        if (err)
        {
            switch(err)
            {
                case ERR_IO_NONE:     
                    break;
                case ERR_IO_CHECK: 
                    scsi_cmd_request_sense();
                    for(i = 0;i < 100000;i++);
                    continue;
                case ERR_IO_REMOVED:
                    lun.error_code=LERR_CRITICAL_ERROR;
                    return(1);
                case ERR_IO_READ:
                    lun.error_code=LERR_IOREAD_ERROR;
                    return(1);
                case ERR_IO_WRITE:
                    lun.error_code=LERR_IOWRITE_ERROR;
                    return(1);
            }
        }
        break;
    }
    return(0);
}

static int scsi_cmd_read_12(uint_32 lba, uint_32 length, void *buffer)
{
    uint_8 cmd[12];
    uint_32 i;
    int err;


    cmd[0]=SCSI_CMD_READ_12;
    cmd[1]=0<<5;

    cmd[2] = (uint_8)((0xFF000000 & lba)>>24);
    cmd[3] = (uint_8)((0x00FF0000 & lba)>>16);
    cmd[4] = (uint_8)((0x0000FF00 & lba)>>8);
    cmd[5] = (uint_8)((0x000000FF & lba)>>0);

    cmd[6] = (uint_8)((0xFF000000 & length)>>24);
    cmd[7] = (uint_8)((0x00FF0000 & length)>>16);
    cmd[8] = (uint_8)((0x0000FF00 & length)>>8);
    cmd[9] = (uint_8)((0x000000FF & length)>>0);
    cmd[10]=0;    
    cmd[11]=0;       
    while(1)
    {
        err=(*transfer)(12, cmd, DIR_IN, length * lun.sector_size, buffer);  
        if (err)
        {
            switch(err)
            {
                case ERR_IO_NONE: 
                    break;
                case ERR_IO_CHECK: 
                    scsi_cmd_request_sense();

                    for(i = 0;i < 100000;i++);
                    continue;
                case ERR_IO_REMOVED: 
                    lun.error_code=LERR_CRITICAL_ERROR;
                    return(1);
                case ERR_IO_READ:
                    lun.error_code=LERR_IOREAD_ERROR;
                    return(1);
                case ERR_IO_WRITE:
                    lun.error_code=LERR_IOWRITE_ERROR;
                    return(1);
            }
        }
        break;
    }
    return(0);
}


static int scsi_cmd_write_10(uint_32 lba, uint_16 length, const uint_8 *buffer)
{
    uint_8 cmd[10];
    uint_32 i;
    int err;


    cmd[0]=SCSI_CMD_WRITE_10;
    cmd[1]=0 <<5;

    cmd[2] = (uint_8)((0xFF000000 & lba)>>24);
    cmd[3] = (uint_8)((0x00FF0000 & lba)>>16);
    cmd[4] = (uint_8)((0x0000FF00 & lba)>>8);
    cmd[5] = (uint_8)((0x000000FF & lba)>>0);
    cmd[6]=0;    

    cmd[7] = (uint_8)((0xFF00 & length)>>8);
    cmd[8] = (uint_8)((0x00FF & length)>>0);
    
    cmd[9]=0; 

    while(1)
    {
        err=(*transfer)(10, cmd, DIR_OUT, length * lun.sector_size, buffer);
        if (err)
        {
            switch(err)
            {
                case ERR_IO_NONE:   
                    break;
                case ERR_IO_CHECK: 
                    scsi_cmd_request_sense();
                
                    for(i = 0;i < 100000;i++);
                    continue;
                case ERR_IO_REMOVED: 
                    lun.error_code=LERR_CRITICAL_ERROR;
                    return(1);
                case ERR_IO_READ:
                    lun.error_code=LERR_IOREAD_ERROR;
                    return(1);
                case ERR_IO_WRITE:
                    lun.error_code=LERR_IOWRITE_ERROR;
                    return(1);
            }
        }
        break;
    }
    return(0);
}


static int scsi_cmd_write_12(uint_32 lba, uint_32 length, const uint_8 *buffer)
{
    uint_8 cmd[12];
    uint_32 i;
    int err;


    cmd[0]=SCSI_CMD_WRITE_12;
    cmd[1]=0<<5;

    cmd[2] = (uint_8)((0xFF000000 & lba)>>24);
    cmd[3] = (uint_8)((0x00FF0000 & lba)>>16);
    cmd[4] = (uint_8)((0x0000FF00 & lba)>>8);
    cmd[5] = (uint_8)((0x000000FF & lba)>>0);

    cmd[6] = (uint_8)((0xFF000000 & length)>>24);
    cmd[7] = (uint_8)((0x00FF0000 & length)>>16);
    cmd[8] = (uint_8)((0x0000FF00 & length)>>8);
    cmd[9] = (uint_8)((0x000000FF & length)>>0);
    cmd[10]=0;     
    cmd[11]=0;      

    while(1)
    {
        err=(*transfer)(12, cmd, DIR_OUT, length * lun.sector_size, buffer);
        if (err)
        {
            switch(err)
            {
                case ERR_IO_NONE:   
                    break;
                case ERR_IO_CHECK: 
                    scsi_cmd_request_sense();

                    for(i = 0;i < 100000;i++);
                    continue;
                case ERR_IO_REMOVED:
                    lun.error_code=LERR_CRITICAL_ERROR;
                    return(1);
                case ERR_IO_READ:
                    lun.error_code=LERR_IOREAD_ERROR;
                    return(1);
                case ERR_IO_WRITE:
                    lun.error_code=LERR_IOWRITE_ERROR;
                    return(1);
            }
        }
        break;
    }
    return(0);
}

int scsi_read_sector(uint_32 lba, uint_8 *buffer)
{
	int r = 0;
    r = scsi_read(lba,1,buffer);
    return r;
}

int scsi_write_sector(uint_32 lba, const uint_8 *buffer)
{
	int r = 0;
    r = scsi_write(lba,1,buffer);
    return r;
}

int scsi_get_device_string(uint_8 *buffer, uint_8 len)
{
	int i = 0;
	
	if(len < 32)
	{
		return 1;
	}

	for(i = 0;i < 8;i++)
	{
		buffer[i] = lun.vendor[i];
	}
	buffer[i] = ' ';

	for(i = 0;i < 16;i++)
	{
		buffer[9 + i] = lun.prod_id[i];
	}

	buffer[25] = ' ';
	buffer[26] = 'V';
	for(i = 0;i < 4;i++)
	{
		buffer[27 + i] = lun.rev[i];
	}
	buffer[31] = 0;

	return 0;
}

