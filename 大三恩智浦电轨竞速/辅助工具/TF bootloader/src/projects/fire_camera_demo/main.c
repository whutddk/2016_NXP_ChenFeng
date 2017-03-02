#include "common.h"
#include "include.h"

#include "ff.h"



#define FLASH_APP_ADDR		0x7800UL  	//应用程序起始地址(存放在FLASH)
#define BUFF_SIZE   512
#define APP_PY	15

#define BASE_ADDR		((uint32_t)0x0000000UL)   // FLASH起始地址

u8 buff1[BUFF_SIZE];

typedef  void (*pFunction)(void);

typedef  void (*fun)(void);			//定义一个函数类型的参数.
fun AppStart;





static void Fn_GoToUserApplication(u32 app_start_addr)
{
  pFunction jump_to_application;
  u32 jump_addr;
  jump_addr = *(u32*)(app_start_addr + 4);  
  
  if((app_start_addr != 0xfffffffful) && (jump_addr > 0x7800 ))
  {
    
    jump_to_application = (pFunction)jump_addr;
    __set_MSP(*(u32*)app_start_addr); //栈地址
    jump_to_application();
  }
}



u8 stringcopy(char *buff_to,char *buff_from)
{
  u8 i=0;
  for(i=0;i<13;i++)
    buff_to[i] = buff_from[i];
  return 1;
}


char buff_filename[15][20];	
unsigned long filesize[15];	
u16 i_name=0;
s16 xuan=0;

void ReadSDFile(void)
{
  FATFS fs;                  // Work area (file system object) for logical drive
  FRESULT res;
  //	UINT br;					  //读取出的字节数，用于判断是否到达文件尾
  //	FIL fsrc;          		 // file objects
  FILINFO finfo;			 //文件信息
  DIR dirs;
  //u16 i=0;
  int result1;
  
  i_name=0;
  //disk_initialize(0);
  //f_mount(0, &fs);
  res=f_mount(0, &fs);   //打开
  
  if( res == FR_DISK_ERR)
  {
    LCD_P8x16Str(12,3,"  NO SDcade  ");
    time_delay_ms(2000);
    LCD_P8x16Str(0,3,"                ");//初始清屏
    Fn_GoToUserApplication(FLASH_APP_ADDR);
  }
  if(f_opendir(&dirs,"") == FR_OK) 	          //打开根目录
  {
    while (f_readdir(&dirs, &finfo) == FR_OK)    	//依次读取文件名
    {			
      if ( finfo.fattrib & AM_ARC )        // 判断是否为存档型文档
      {			
        if( !finfo.fname[0] )	 // 文件名为空即到达了目录的末尾，退出
          break;			
        //printf(  " \r\n 文件名为: %s \r\n",finfo.fname );	
        result1 = strstr( finfo.fname, ".BIN" );	// 判断是否为bin文件 		
        if(result1!=NULL)
        {
          stringcopy(buff_filename[i_name], (char*)finfo.fname);//把bin的文件名拷贝到buff_filename数组
          filesize[i_name]=finfo.fsize;////把bin的文件大小保存到filesize数组
          i_name++;
        }
      }
    }
  }
  f_mount(0,NULL);
  
  if ( i_name >0 )//发现bin文件
  {
    LCD_P8x16Str(12,3,"Find firmware");
    time_delay_ms(2000);
  }
  else
  {
    LCD_P8x16Str(12,3," No firmware ");
    time_delay_ms(2000);
    Fn_GoToUserApplication(FLASH_APP_ADDR);//没有bin文件就直接跳转到应用程序
  }
}


void SD_UPdata(void)
{
  FIL fdst;  //文件
  FATFS fs;  //文件系统
  FRESULT res;
  u32 a=0,b=0;
  UINT br;
  u16 pag=0;
  u16 ByteOffest;
  
  
  
  f_mount(0, &fs);	//SD卡系统初始化
  
  res = f_open(&fdst,(char const*)buff_filename[xuan], FA_OPEN_EXISTING  | FA_READ);  //打开第xuan个bin文件   xuan是刚刚确定好的
  
  
  
  
  a = fdst.fsize / 250;  //文件大小/250.....250表示将进度条平均分成250份
  a &= 0xfffffffe;	   
  b = 0;	
  
  LCD_P8x16Str(12,0,"System Updata");	
  while(1)//把bin文件内容从TF卡读取，然后写入flash。。当写入成功后会跳出此循环
  {
    while(flash_erase_sector(APP_PY+pag)!=0);//擦除第APP_PY+pag页   1页有2048个字节。。
    
    
    //下面把2048字节分成4分写入flash。。因为我这fatfs文件系统每次读取2048个字节会死机，所以分成4份来去读
    
    
    
    res = f_read(&fdst, buff1, BUFF_SIZE, &br);//读取bin的BUFF_SIZE(512)字节复制到buff1数组
    if (res || br == 0) break;//当bin文件内容全部读取完毕后跳出循环
    for(ByteOffest = 0; ByteOffest < 512; ByteOffest += 4)
    {
      while(flash_write(APP_PY+pag,ByteOffest,*(u32*)(buff1 + ByteOffest))!=0);//把buff1数组内容逐渐写到flash
      b+=4;
      if(b>=fdst.fsize)
        b=fdst.fsize;
      if(b % a == 0)
      {
        Dis_Numbfb(4,6,(u8)((b/a)/2.5));//显示进度条数字
        Display_Bar(13,7,b/a);//显示进度条	
      }
    }
    
    res = f_read(&fdst, buff1, BUFF_SIZE, &br);
    if (res || br == 0) break;
    for(ByteOffest = 0; ByteOffest < 512; ByteOffest += 4)
    {
      while(flash_write(APP_PY+pag,512+ByteOffest,*(u32*)(buff1 + ByteOffest))!=0);	
      b+=4;
      if(b>=fdst.fsize)
        b=fdst.fsize;
      if(b % a == 0)
      {
        Dis_Numbfb(4,6,(u8)((b/a)/2.5));
        Display_Bar(13,7,b/a);	
      }
    }
    
    res = f_read(&fdst, buff1, BUFF_SIZE, &br);
    if (res || br == 0) break;
    for(ByteOffest = 0; ByteOffest < 512; ByteOffest += 4)
    {
      while(flash_write(APP_PY+pag,1024+ByteOffest,*(u32*)(buff1 + ByteOffest))!=0);	
      b+=4;
      if(b>=fdst.fsize)
        b=fdst.fsize;
      if(b % a == 0)
      {
        Dis_Numbfb(4,6,(u8)((b/a)/2.5));
        Display_Bar(13,7,b/a);	
      }
    }
    
    res = f_read(&fdst, buff1, BUFF_SIZE, &br);
    if (res || br == 0) break;
    for(ByteOffest = 0; ByteOffest < 512; ByteOffest += 4)
    {
      while(flash_write(APP_PY+pag,1536+ByteOffest,*(u32*)(buff1 + ByteOffest))!=0);	
      b+=4;
      if(b>=fdst.fsize)
        b=fdst.fsize;
      if(b % a == 0)
      {
        Dis_Numbfb(4,6,(u8)((b/a)/2.5));
        Display_Bar(13,7,b/a);	
      }
    }
    
    pag++;//写入1页后 pag++
    
  }
  
  f_close(&fdst);                         //关闭文件
  f_mount(0, 0);
  time_delay_ms(1000);	
}


//SystemControl_BASE_PTR->VTOR=0x05000UL;//为了配合Bootlaoder程序，更改中断向量表起始地址
void main(void)
{
  DisableInterrupts;        //关总中断
  KEY_ALL_init();           //按键初始化
  flash_init();
  OLED_Init();              //OLED显示屏初始化
  gpio_init(PORTE,3,GPO,1);
  EnableInterrupts;         //开总中断
  while(1)
  {
    
    
    if(key_check(KEY_OK) == KEY_DOWN)//开机按下KEY_DOWN进入bootloader
    {
      
      ReadSDFile();//读取TF卡，加载bin文件数量及其信息
      LCD_Fill(0);
      LCD_P8x16Str(0,0,"Num :");
      //LCD_P8x16Str(0,3,"Name:");
      LCD_P8x16Str(0,6,"Size:");		
      LCD_P8x16Str(96,6,"Byte");
      LCD_P8x16Str(0,3,(uint8*)buff_filename[xuan]);//显示第一个bin文件的名字
      Dis_Num(6,5,filesize[xuan],6);//显示第一个bin文件的大小
      Dis_Num(0,6,xuan+1,1);//显示当前是第几个bin文件
      
      while(1)
      {
        if(key_check(KEY_DOWNN) == KEY_DOWN)
        {
          xuan--;
          if(xuan==-1)
            xuan=i_name-1;
          LCD_P8x16Str(0,3,"                ");//初始清屏
          LCD_P8x16Str(0,3,(uint8*)buff_filename[xuan]);//显示第xuan个bin文件的名字
          Dis_Num(6,5,filesize[xuan],6);//显示第xuanbin文件的大小
          Dis_Num(0,6,xuan+1,1);//显示当前是第xuan个bin文件
        }
        
        if(key_check(KEY_UPP) == KEY_DOWN)
        {
          xuan++;
          if(xuan==i_name)
            xuan=0;
          LCD_P8x16Str(0,3,"                ");//初始清屏
          LCD_P8x16Str(0,3,(uint8*)buff_filename[xuan]);
          Dis_Num(6,5,filesize[xuan],6);
          Dis_Num(0,6,xuan+1,1);
        }
        
        
        if(key_check(KEY_OK) == KEY_DOWN)//选择好bin文件后   跳出while1
          break;
      }
      LCD_Fill(0);//清屏幕
      SD_UPdata();//开始更新程序
    }
    else
    {
      Fn_GoToUserApplication(FLASH_APP_ADDR);//跳转到应用程序
    }
  }
}
