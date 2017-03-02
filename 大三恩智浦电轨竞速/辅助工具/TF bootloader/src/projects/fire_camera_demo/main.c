#include "common.h"
#include "include.h"

#include "ff.h"



#define FLASH_APP_ADDR		0x7800UL  	//Ӧ�ó�����ʼ��ַ(�����FLASH)
#define BUFF_SIZE   512
#define APP_PY	15

#define BASE_ADDR		((uint32_t)0x0000000UL)   // FLASH��ʼ��ַ

u8 buff1[BUFF_SIZE];

typedef  void (*pFunction)(void);

typedef  void (*fun)(void);			//����һ���������͵Ĳ���.
fun AppStart;





static void Fn_GoToUserApplication(u32 app_start_addr)
{
  pFunction jump_to_application;
  u32 jump_addr;
  jump_addr = *(u32*)(app_start_addr + 4);  
  
  if((app_start_addr != 0xfffffffful) && (jump_addr > 0x7800 ))
  {
    
    jump_to_application = (pFunction)jump_addr;
    __set_MSP(*(u32*)app_start_addr); //ջ��ַ
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
  //	UINT br;					  //��ȡ�����ֽ����������ж��Ƿ񵽴��ļ�β
  //	FIL fsrc;          		 // file objects
  FILINFO finfo;			 //�ļ���Ϣ
  DIR dirs;
  //u16 i=0;
  int result1;
  
  i_name=0;
  //disk_initialize(0);
  //f_mount(0, &fs);
  res=f_mount(0, &fs);   //��
  
  if( res == FR_DISK_ERR)
  {
    LCD_P8x16Str(12,3,"  NO SDcade  ");
    time_delay_ms(2000);
    LCD_P8x16Str(0,3,"                ");//��ʼ����
    Fn_GoToUserApplication(FLASH_APP_ADDR);
  }
  if(f_opendir(&dirs,"") == FR_OK) 	          //�򿪸�Ŀ¼
  {
    while (f_readdir(&dirs, &finfo) == FR_OK)    	//���ζ�ȡ�ļ���
    {			
      if ( finfo.fattrib & AM_ARC )        // �ж��Ƿ�Ϊ�浵���ĵ�
      {			
        if( !finfo.fname[0] )	 // �ļ���Ϊ�ռ�������Ŀ¼��ĩβ���˳�
          break;			
        //printf(  " \r\n �ļ���Ϊ: %s \r\n",finfo.fname );	
        result1 = strstr( finfo.fname, ".BIN" );	// �ж��Ƿ�Ϊbin�ļ� 		
        if(result1!=NULL)
        {
          stringcopy(buff_filename[i_name], (char*)finfo.fname);//��bin���ļ���������buff_filename����
          filesize[i_name]=finfo.fsize;////��bin���ļ���С���浽filesize����
          i_name++;
        }
      }
    }
  }
  f_mount(0,NULL);
  
  if ( i_name >0 )//����bin�ļ�
  {
    LCD_P8x16Str(12,3,"Find firmware");
    time_delay_ms(2000);
  }
  else
  {
    LCD_P8x16Str(12,3," No firmware ");
    time_delay_ms(2000);
    Fn_GoToUserApplication(FLASH_APP_ADDR);//û��bin�ļ���ֱ����ת��Ӧ�ó���
  }
}


void SD_UPdata(void)
{
  FIL fdst;  //�ļ�
  FATFS fs;  //�ļ�ϵͳ
  FRESULT res;
  u32 a=0,b=0;
  UINT br;
  u16 pag=0;
  u16 ByteOffest;
  
  
  
  f_mount(0, &fs);	//SD��ϵͳ��ʼ��
  
  res = f_open(&fdst,(char const*)buff_filename[xuan], FA_OPEN_EXISTING  | FA_READ);  //�򿪵�xuan��bin�ļ�   xuan�Ǹո�ȷ���õ�
  
  
  
  
  a = fdst.fsize / 250;  //�ļ���С/250.....250��ʾ��������ƽ���ֳ�250��
  a &= 0xfffffffe;	   
  b = 0;	
  
  LCD_P8x16Str(12,0,"System Updata");	
  while(1)//��bin�ļ����ݴ�TF����ȡ��Ȼ��д��flash������д��ɹ����������ѭ��
  {
    while(flash_erase_sector(APP_PY+pag)!=0);//������APP_PY+pagҳ   1ҳ��2048���ֽڡ���
    
    
    //�����2048�ֽڷֳ�4��д��flash������Ϊ����fatfs�ļ�ϵͳÿ�ζ�ȡ2048���ֽڻ����������Էֳ�4����ȥ��
    
    
    
    res = f_read(&fdst, buff1, BUFF_SIZE, &br);//��ȡbin��BUFF_SIZE(512)�ֽڸ��Ƶ�buff1����
    if (res || br == 0) break;//��bin�ļ�����ȫ����ȡ��Ϻ�����ѭ��
    for(ByteOffest = 0; ByteOffest < 512; ByteOffest += 4)
    {
      while(flash_write(APP_PY+pag,ByteOffest,*(u32*)(buff1 + ByteOffest))!=0);//��buff1����������д��flash
      b+=4;
      if(b>=fdst.fsize)
        b=fdst.fsize;
      if(b % a == 0)
      {
        Dis_Numbfb(4,6,(u8)((b/a)/2.5));//��ʾ����������
        Display_Bar(13,7,b/a);//��ʾ������	
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
    
    pag++;//д��1ҳ�� pag++
    
  }
  
  f_close(&fdst);                         //�ر��ļ�
  f_mount(0, 0);
  time_delay_ms(1000);	
}


//SystemControl_BASE_PTR->VTOR=0x05000UL;//Ϊ�����Bootlaoder���򣬸����ж���������ʼ��ַ
void main(void)
{
  DisableInterrupts;        //�����ж�
  KEY_ALL_init();           //������ʼ��
  flash_init();
  OLED_Init();              //OLED��ʾ����ʼ��
  gpio_init(PORTE,3,GPO,1);
  EnableInterrupts;         //�����ж�
  while(1)
  {
    
    
    if(key_check(KEY_OK) == KEY_DOWN)//��������KEY_DOWN����bootloader
    {
      
      ReadSDFile();//��ȡTF��������bin�ļ�����������Ϣ
      LCD_Fill(0);
      LCD_P8x16Str(0,0,"Num :");
      //LCD_P8x16Str(0,3,"Name:");
      LCD_P8x16Str(0,6,"Size:");		
      LCD_P8x16Str(96,6,"Byte");
      LCD_P8x16Str(0,3,(uint8*)buff_filename[xuan]);//��ʾ��һ��bin�ļ�������
      Dis_Num(6,5,filesize[xuan],6);//��ʾ��һ��bin�ļ��Ĵ�С
      Dis_Num(0,6,xuan+1,1);//��ʾ��ǰ�ǵڼ���bin�ļ�
      
      while(1)
      {
        if(key_check(KEY_DOWNN) == KEY_DOWN)
        {
          xuan--;
          if(xuan==-1)
            xuan=i_name-1;
          LCD_P8x16Str(0,3,"                ");//��ʼ����
          LCD_P8x16Str(0,3,(uint8*)buff_filename[xuan]);//��ʾ��xuan��bin�ļ�������
          Dis_Num(6,5,filesize[xuan],6);//��ʾ��xuanbin�ļ��Ĵ�С
          Dis_Num(0,6,xuan+1,1);//��ʾ��ǰ�ǵ�xuan��bin�ļ�
        }
        
        if(key_check(KEY_UPP) == KEY_DOWN)
        {
          xuan++;
          if(xuan==i_name)
            xuan=0;
          LCD_P8x16Str(0,3,"                ");//��ʼ����
          LCD_P8x16Str(0,3,(uint8*)buff_filename[xuan]);
          Dis_Num(6,5,filesize[xuan],6);
          Dis_Num(0,6,xuan+1,1);
        }
        
        
        if(key_check(KEY_OK) == KEY_DOWN)//ѡ���bin�ļ���   ����while1
          break;
      }
      LCD_Fill(0);//����Ļ
      SD_UPdata();//��ʼ���³���
    }
    else
    {
      Fn_GoToUserApplication(FLASH_APP_ADDR);//��ת��Ӧ�ó���
    }
  }
}
