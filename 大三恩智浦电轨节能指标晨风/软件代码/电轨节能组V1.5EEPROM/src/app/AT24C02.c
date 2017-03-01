#include "include.h"

/****索引*****/
//0X00    00 OR FF      00为重新启动  FF为再启动
//0x01


uint8 EEPROM_BUFF[EEPROM_LENTH] ={0} ;


void EEPROM_init()
{
  
  I2C_start();
  
  I2CSDA = 1;
  
  I2CCLK = 1;
  I2Cdelay_us(2);      // 延时5us 
  I2CCLK = 0;
  I2Cdelay_us(2);
  
  I2CCLK = 1;
  I2Cdelay_us(2);      // 延时5us 
  I2CCLK = 0;
  I2Cdelay_us(2);
  
  I2CCLK = 1;
  I2Cdelay_us(2);      // 延时5us 
  I2CCLK = 0;
  I2Cdelay_us(2);
  
  I2CCLK = 1;
  I2Cdelay_us(2);      // 延时5us 
  I2CCLK = 0;
  I2Cdelay_us(2);
  
  I2CCLK = 1;
  I2Cdelay_us(2);      // 延时5us 
  I2CCLK = 0;
  I2Cdelay_us(2);
  
  I2CCLK = 1;
  I2Cdelay_us(2);      // 延时5us 
  I2CCLK = 0;
  I2Cdelay_us(2);
  
  I2CCLK = 1;
  I2Cdelay_us(2);
   I2CCLK = 0;
  I2Cdelay_us(2);
  
  I2CCLK = 1;
  I2Cdelay_us(2);      // 延时5us 
  I2CCLK = 0;
  I2Cdelay_us(2);      // 延时5us 
  
  I2CCLK = 1;
  I2Cdelay_us(2);      // 延时5us 
  I2CCLK = 0;
  I2Cdelay_us(2);
  
  I2C_start();
  I2C_stop();
}



void EEPROM_get()
{
  switch(read_key())
    {
      case(2):takeoff();break;
      
    default:go_on();break;
    }
}

/*******************************************************************************
* 函数名         : void At24c02Write(unsigned char addr,unsigned char dat)
* 函数功能		   : 往24c02的一个地址写入一个数据
* 输入           : 无
* 输出         	 : 无
*******************************************************************************/

void EEPROM_Write(uint8 addr,uint8 dat)
{
  I2C_start();
  I2CSendByte(0xa0);//发送写器件地址
  
  I2Ccheck_ACK();
  
  I2CSendByte(addr);//发送要写入内存地址
  
  I2Ccheck_ACK();
  
  I2CSendByte(dat);	//发送数据
  
  I2Ccheck_ACK();
  
  I2C_stop();
  
  EEPROM_BUFF[addr] = dat ;
  pit_delay_ms(PIT1,100);
}
/*******************************************************************************
* 函数名         : unsigned char At24c02Read(unsigned char addr)
* 函数功能		   : 读取24c02的一个地址的一个数据
* 输入           : 无
* 输出         	 : 无
*******************************************************************************/

uint8 EEPROM_Read(uint8 addr)
{
  uint8 num;
  
  I2C_start();
  I2CSendByte(0xa0); //发送写器件地址
  
  I2Ccheck_ACK();
  
  I2CSendByte(addr); //发送要读取的地址;
  
  I2Ccheck_ACK();
  
  I2C_start();
  I2CSendByte(0xa1); //发送读器件地址
  
  I2Ccheck_ACK();
  
  num = I2CreceiveByte(); //读取数据
  
  I2Cslave_NOACK();
  
  I2C_stop();
  pit_delay_ms(PIT1,100);
  return num;	
}

void EEPROM_CLEAR()
{
  uint8 i = 0;
  for ( i = 0; i < EEPROM_LENTH;i++ )
  {
    EEPROM_Write(i,0x00);
  }
}

void EEPROM_COPY()
{
  uint8 i = 0;
  for (i = 0;i < EEPROM_LENTH;i++ )
  {
    EEPROM_BUFF[i] = EEPROM_Read(i);
  }
}

void takeoff()//此次为人工启动
{
  EEPROM_CLEAR();
  
  //adc_offset();
  
  pit_delay_ms(PIT1,1000);
  
  EEPROM_Write(0x00,0xee);
  EEPROM_Write(0x01,0xee);
  EEPROM_Write(0x02,0xee);
  bz_set(ready);
}

void go_on()//此次为掉电启动
{
  EEPROM_COPY();
}


void flash()
{
  ucTemp = FTFA_ERSSCR(0x10000);
  
  ucTemp = FTFA_RD1SEC(0x10000, 0x100, FTFA_NORMAL_READ_LEVEL); 
  ucTemp = FTFA_RD1SEC(0x10000, 0x100, FTFA_USER_MARGIN_LEVEL); 
  ucTemp = FTFA_RD1SEC(0x10000, 0x100, FTFA_FACTORY_MARGIN_LEVEL);  
  ucTemp = FTFA_PGM4(0x10000, 0x11223344); 
  ucTemp = FTFA_PGMCHK(0x10000, 0x11223344, FTFA_USER_MARGIN_LEVEL);   
  
  ucTemp = FTFA_RDRSRC(0x0,FTFA_VERSION_ID_RSRC,ulDataStore);
  ucTemp = FTFA_RDRSRC(0x4,FTFA_VERSION_ID_RSRC,&ulDataStore[1]);
  ucTemp = FTFA_RDRSRC(0x0,FTFA_IFR_RSRC,&ulDataStore[2]);
  ucTemp = FTFA_RDRSRC(0x4,FTFA_IFR_RSRC,&ulDataStore[3]); 
  ucTemp = FTFA_RDRSRC(0x8,FTFA_IFR_RSRC,&ulDataStore[4]); 
  
}

/*********************************************************************************************************
** Function name:           FTFA_RDRSRC
** Descriptions:            Provided for the user to read data from special-purpose
**                          memory resources located within the Flash module.
**                          defines the starting address and the number of 128 bits to be verified.
** input parameters:        add:Flash adr must be 64 bit aligned
**                          resource_select_code:
**                                      - FTFA_IFR_RSRC    
**                                      - FTFA_VERSION_ID_RSRC  
**                          data:
** output parameters:       none
** Returned value:          none
** Created by:              Li Xiang
** Created Date:            2012-12-14
**--------------------------------------------------------------------------------------------------------
** Modified by:
** Modified date:
*********************************************************************************************************/
uint8 FTFA_RDRSRC(uint32 addr, uint8 resource_select_code, uint32 *data) 
{
    uint8 cmd_ary[12];
    uint32 ret_val;
    uint32 data0;
     
    /*
     *  initialize return variables.
     */
    *data = 0;
          
    /*
     *  Don't forget to do this -> 
     */
    addr = ftfa_convert_addr_to_ccob_addr(addr); 
    /*
     *  if youare using a pflash/FLEXNVM part.
     */
     
    cmd_ary[0] = FTFA_RDRSRC_CMD;
    cmd_ary[1] = bits_23_16(addr);
    cmd_ary[2] = bits_15_8(addr);
    cmd_ary[3] = bits_7_0(addr);

    cmd_ary[8] = resource_select_code;
     
    ret_val = ftfa_run_ccob_cmd(cmd_ary, 9);        

    if (ret_val == 0)
    {
        /*
         *  Read the data out of the CCOB's
         */
        data0 = (FTFA_FCCOB4 << 24) + (FTFA_FCCOB5 << 16) + (FTFA_FCCOB6 << 8) + FTFA_FCCOB7;

        *data = data0;
    }
        
    /*
     *  returns 0 for pass or fstat error bits for fail.
     */
    return ret_val;
}

/*********************************************************************************************************
** Function name:           FTFA_PGMCHK
** Descriptions:            Tests a previously programmed program flash or data flash longword to see 
**                          if it reads correctly at the specified margin level. 
**                          defines the starting address and the number of 128 bits to be verified.
** input parameters:        add:Flash adr must be 128 bit aligned
**                          expected_data:
**                          read_1_margin_choice:
**                                      - FTFA_NORMAL_READ_LEVEL    
**	                                    - FTFA_USER_MARGIN_LEVEL    
**	                                    - FTFA_FACTORY_MARGIN_LEVEL 
** output parameters:       none
** Returned value:          none
** Created by:              Li Xiang
** Created Date:            2012-12-14
**--------------------------------------------------------------------------------------------------------
** Modified by:
** Modified date:
*********************************************************************************************************/

uint8 FTFA_PGMCHK(uint32 addr, uint32 expected_data, uint8 read_1_margin_choice) 
{
    uint8 cmd_ary[12];
    uint8 ret_val;

    /*
     *  on't forget to do this -> 
     */
    addr = ftfa_convert_addr_to_ccob_addr(addr);
    /*
     *  if you are using a pflash/FLEXNVM part.     
     */

    cmd_ary[0] = FTFA_PGMCHK_CMD;
    cmd_ary[1] = bits_23_16(addr);
    cmd_ary[2] = bits_15_8(addr);
    cmd_ary[3] = bits_7_0(addr);

    cmd_ary[4] = read_1_margin_choice;

    cmd_ary[8]   = bits_31_24(expected_data);
    cmd_ary[9]   = bits_23_16(expected_data);
    cmd_ary[0xa] = bits_15_8(expected_data);
    cmd_ary[0xb] = bits_7_0(expected_data);
     
    ret_val = ftfa_run_ccob_cmd(cmd_ary, 12);        

    /*
     *  returns 0 for pass or fstat error bits for fail.
     */
    return ret_val;
}

/*********************************************************************************************************
** Function name:           FTFA_PGM4
** Descriptions:            Programs eight previously-erased bytes in the program
**                          flash memory or in the flexNVM flash memory using an embedded algorithm.
** input parameters:        add:Flash adr must be 128 bit aligned
**                          data:
** output parameters:       none
** Returned value:          none
** Created by:              Li Xiang
** Created Date:            2012-12-14
**--------------------------------------------------------------------------------------------------------
** Modified by:
** Modified date:
*********************************************************************************************************/
uint8 FTFA_PGM4(uint32 addr, uint32 data) 
{
    uint8 cmd_ary[12];
    uint8 ret_val;

    /*
     *  Don't forget to do this -> 
     */
    addr = ftfa_convert_addr_to_ccob_addr(addr);
    /*
     *  if you are using a pflash/FLEXNVM part.     
     */
    cmd_ary[0] = FTFA_PGM4_CMD;
    cmd_ary[1] = bits_23_16(addr);
    cmd_ary[2] = bits_15_8(addr);
    cmd_ary[3] = bits_7_0(addr);
                                      
    cmd_ary[4] = bits_31_24(data);     
    cmd_ary[5] = bits_23_16(data);     
    cmd_ary[6] = bits_15_8(data);      
    cmd_ary[7] = bits_7_0(data);       

    cmd_ary[8]   = 0;     
    cmd_ary[9]   = 0;     
    cmd_ary[0xa] = 0;      
    cmd_ary[0xb] = 0;       

    ret_val = ftfa_run_ccob_cmd(cmd_ary, 12);

    /*
     *  returns 0 for pass or fstat error bits for fail.
     */
    return ret_val;
}

/*********************************************************************************************************
** Function name:           FTFA_ERSSCR
** Descriptions:            Erase Flash Sector.  Erases all 4K byte addresses in a flash sector.
** input parameters:        add:Flash adr must be 128 bit aligned
**                          data:
** output parameters:       none
** Returned value:          none
** Created by:              Li Xiang
** Created Date:            2012-12-14
**--------------------------------------------------------------------------------------------------------
** Modified by:
** Modified date:
*********************************************************************************************************/
uint8 FTFA_ERSSCR( uint32 addr) 
{
   uint8 cmd_ary[12];
   uint8 ret_val;
     
   /*
    *  Don't forget to do this -> 
    */
    addr = ftfa_convert_addr_to_ccob_addr(addr);
   /*
    *  if youare using a pflash/FLEXNVM part.
    */
   cmd_ary[0] = FTFA_ERSSCR_CMD;
   cmd_ary[1] = bits_23_16(addr);
   cmd_ary[2] = bits_15_8(addr);
   cmd_ary[3] = bits_7_0(addr);

   ret_val = ftfa_run_ccob_cmd(cmd_ary, 4);

   /*
    *  returns 0 for pass or fstat error bits for fail.
    */
   return ret_val;     
}

/*********************************************************************************************************
** Function name:           FTFA_RD1SEC
** Descriptions:            Read 1s Section.   checks if a section of program flash or data flash memory
**                          is erased to the specified read margin level. The Read 1s Section command 
**                          defines the starting address and the number of 128 bits to be verified.
** input parameters:        add:Flash adr must be 128 bit aligned
**                          num_of_128_bits_to_be_verified:
**                          read_1_margin_choice:
**                                      - FTFA_NORMAL_READ_LEVEL    
**	                                    - FTFA_USER_MARGIN_LEVEL    
**	                                    - FTFA_FACTORY_MARGIN_LEVEL 
** output parameters:       none
** Returned value:          none
** Created by:              Li Xiang
** Created Date:            2012-12-14
**--------------------------------------------------------------------------------------------------------
** Modified by:
** Modified date:
*********************************************************************************************************/
uint8 FTFA_RD1SEC(uint32 addr, uint16 num_of_128_bits_to_be_verified, uint8 read_1_margin_choice) 
{
    uint8 cmd_ary[12];
    uint8 ret_val;
     
    /*
     *  Don't forget to do this -> 
     */
    addr = ftfa_convert_addr_to_ccob_addr(addr);
    /*
     *  if you are using a pflash/FLEXNVM part.
     */
     
    cmd_ary[0] = FTFA_RD1SEC_CMD;
    cmd_ary[1] = bits_23_16(addr);
    cmd_ary[2] = bits_15_8(addr);
    cmd_ary[3] = bits_7_0(addr);
     
    cmd_ary[4] = bits_15_8(num_of_128_bits_to_be_verified);
    cmd_ary[5] = bits_7_0(num_of_128_bits_to_be_verified);
     
    cmd_ary[6] = read_1_margin_choice;

    ret_val = ftfa_run_ccob_cmd(cmd_ary, 7);        

    /*
     *  returns 0 for pass or fstat error bits for fail.
     */
    return ret_val;
}
