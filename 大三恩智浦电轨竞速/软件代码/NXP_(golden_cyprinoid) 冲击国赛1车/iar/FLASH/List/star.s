///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:19
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\ITAC\star.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\ITAC\star.c" -D LPLD_K60 -lCN
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -lB
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\" -o
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline --no_code_motion
//        --no_tbaa --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\BSP\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\ITAC\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\CTL\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\MAIN\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\app\SENSOR\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\CPU\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\common\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\HW\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\LPLD\DEV\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\FatFs\option\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\common\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\driver\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\descriptor\" -I
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\..\..\..\lib\USB\class\" -On -I D:\IAR\arm\CMSIS\Include\ -D
//        ARM_MATH_CM4
//    List file    =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\iar\FLASH\List\star.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN AIM_Buff
        EXTERN Dir_Buff
        EXTERN GUI
        EXTERN LPLD_Flash_SectorErase
        EXTERN LPLD_GPIO_Output_b
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN __aeabi_i2f
        EXTERN bz_set
        EXTERN ctl
        EXTERN debug_Enable
        EXTERN flag_bihuan
        EXTERN flag_stop
        EXTERN flash_write
        EXTERN kaihuan_Buff
        EXTERN sensor
        EXTERN timer_cnt
        EXTERN timer_debug
        EXTERN write_flash_flag

        PUBLIC portd_isr
        PUBLIC star

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\ITAC\star.c
//    1 #include "include.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 void star()
//    4 {
star:
        PUSH     {R4,LR}
//    5   uint8 Flash_Result=0;
        MOVS     R4,#+0
//    6   
//    7   if(write_flash_flag == 1)
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??star_0
//    8   {
//    9     DisableInterrupts;
        CPSID    I
//   10     
//   11     Flash_Result = LPLD_Flash_SectorErase(FLASH_TEST_ADDR);
        MOVS     R0,#+522240
        BL       LPLD_Flash_SectorErase
        MOVS     R4,R0
//   12     while(Flash_Result!=0)
??star_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??star_2
//   13     {
//   14       BZ_ON;
        MOVS     R2,#+1
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1_1  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
//   15       LPLD_LPTMR_DelayMs(500);
        MOV      R0,#+500
        BL       LPLD_LPTMR_DelayMs
//   16       Flash_Result=LPLD_Flash_SectorErase(FLASH_TEST_ADDR);  
        MOVS     R0,#+522240
        BL       LPLD_Flash_SectorErase
        MOVS     R4,R0
//   17       BZ_OFF;
        MOVS     R2,#+0
        MOVS     R1,#+10
        LDR.N    R0,??DataTable1_1  ;; 0x400ff100
        BL       LPLD_GPIO_Output_b
        B.N      ??star_1
//   18     }
//   19     
//   20     flash_write(FLASH_TEST_SECTOR,0,GUI.para.endline_time);
??star_2:
        LDR.N    R0,??DataTable1_2
        LDRSH    R2,[R0, #+4]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+0
        MOVS     R0,#+255
        BL       flash_write
//   21     
//   22     flash_write(FLASH_TEST_SECTOR,20,sensor.max[0]);
        LDR.N    R0,??DataTable1_3
        LDRSH    R2,[R0, #+76]
        MOVS     R1,#+20
        MOVS     R0,#+255
        BL       flash_write
//   23     flash_write(FLASH_TEST_SECTOR,40,sensor.max[1]);
        LDR.N    R0,??DataTable1_3
        LDRSH    R2,[R0, #+78]
        MOVS     R1,#+40
        MOVS     R0,#+255
        BL       flash_write
//   24     flash_write(FLASH_TEST_SECTOR,60,sensor.max[2]);
        LDR.N    R0,??DataTable1_3
        LDRSH    R2,[R0, #+80]
        MOVS     R1,#+60
        MOVS     R0,#+255
        BL       flash_write
//   25     flash_write(FLASH_TEST_SECTOR,80,sensor.min[0]);
        LDR.N    R0,??DataTable1_3
        LDRSH    R2,[R0, #+82]
        MOVS     R1,#+80
        MOVS     R0,#+255
        BL       flash_write
//   26     flash_write(FLASH_TEST_SECTOR,100,sensor.min[1]);
        LDR.N    R0,??DataTable1_3
        LDRSH    R2,[R0, #+84]
        MOVS     R1,#+100
        MOVS     R0,#+255
        BL       flash_write
//   27     flash_write(FLASH_TEST_SECTOR,120,sensor.min[2]);
        LDR.N    R0,??DataTable1_3
        LDRSH    R2,[R0, #+86]
        MOVS     R1,#+120
        MOVS     R0,#+255
        BL       flash_write
//   28     
//   29     EnableInterrupts;
        CPSIE    I
//   30     
//   31   }
//   32   
//   33   
//   34   
//   35   
//   36   if(1 == flag_bihuan)     //闭环参数
??star_0:
        LDR.N    R0,??DataTable1_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??star_3
//   37   {
//   38     if(GUI.para.AI > 0 && GUI.para.AI < 3)
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+0
        BEQ.N    ??star_4
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+3
        BGE.N    ??star_4
//   39     {
//   40       ctl.motto.v = AIM_Buff[GUI.para.AI-1];
        LDR.N    R0,??DataTable1_5
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        ADDS     R0,R0,R1, LSL #+1
        LDRH     R0,[R0, #-2]
        LDR.N    R1,??DataTable1_6
        STRH     R0,[R1, #+104]
//   41       ctl.S3010.Kp_S = Dir_Buff[GUI.para.AI*2-2];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+20]
//   42       ctl.S3010.Kd_S = Dir_Buff[GUI.para.AI*2-1];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-4]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+36]
        B.N      ??star_5
//   43       
//   44     }
//   45     else if(GUI.para.AI >= 3)       //高速转向参数分段
??star_4:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+3
        BLT.W    ??star_5
//   46     {
//   47       ctl.motto.v = AIM_Buff[GUI.para.AI-1];
        LDR.N    R0,??DataTable1_5
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        ADDS     R0,R0,R1, LSL #+1
        LDRH     R0,[R0, #-2]
        LDR.N    R1,??DataTable1_6
        STRH     R0,[R1, #+104]
//   48       ctl.S3010.Kp_S = Dir_Buff[GUI.para.AI*8-20];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+3
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-80]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+20]
//   49       ctl.S3010.Kd_S = Dir_Buff[GUI.para.AI*8-19];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+3
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-76]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+36]
//   50       
//   51       ctl.S3010.Kp_M1 = Dir_Buff[GUI.para.AI*8-18];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+3
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-72]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+24]
//   52       ctl.S3010.Kd_M1 = Dir_Buff[GUI.para.AI*8-17];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+3
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-68]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+40]
//   53           
//   54       ctl.S3010.Kp_M2 = Dir_Buff[GUI.para.AI*8-16];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+3
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-64]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+28]
//   55       ctl.S3010.Kd_M2 = Dir_Buff[GUI.para.AI*8-15];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+3
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-60]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+44]
//   56 
//   57       
//   58       ctl.S3010.Kp_B = Dir_Buff[GUI.para.AI*8-14];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+3
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-56]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+32]
//   59       ctl.S3010.Kd_B = Dir_Buff[GUI.para.AI*8-13];
        LDR.N    R0,??DataTable1_7
        LDR.N    R1,??DataTable1_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+3
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-52]
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+48]
        B.N      ??star_5
//   60       
//   61     }
//   62     
//   63     else  // AI = 0
//   64     {
//   65       
//   66     }
//   67   }
//   68   
//   69   else                      //开环参数
//   70   {
//   71     switch(GUI.para.AI)
??star_3:
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+1
        BEQ.N    ??star_6
        BCC.N    ??star_5
        CMP      R0,#+3
        BEQ.N    ??star_7
        BCC.N    ??star_8
        B.N      ??star_5
//   72     {
//   73       case(1):
//   74         ctl.motto.out = kaihuan_Buff[0];
??star_6:
        LDR.N    R0,??DataTable1_8
        LDRSH    R0,[R0, #+0]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+160]
//   75         ctl.S3010.Kp_S = 0.39;
        LDR.N    R0,??DataTable1_9  ;; 0x3ec7ae14
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+20]
//   76         ctl.S3010.Kd_S = 0.5;
        MOVS     R0,#+1056964608
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+36]
//   77         break;
        B.N      ??star_5
//   78         
//   79         case(2):
//   80           ctl.motto.out = kaihuan_Buff[1];
??star_8:
        LDR.N    R0,??DataTable1_8
        LDRSH    R0,[R0, #+2]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+160]
//   81           ctl.S3010.Kp_S = 0.4;
        LDR.N    R0,??DataTable1_10  ;; 0x3ecccccd
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+20]
//   82           ctl.S3010.Kd_S = 1.2;
        LDR.N    R0,??DataTable1_11  ;; 0x3f99999a
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+36]
//   83           break;
        B.N      ??star_5
//   84           
//   85           case(3):
//   86             ctl.motto.out = kaihuan_Buff[2];
??star_7:
        LDR.N    R0,??DataTable1_8
        LDRSH    R0,[R0, #+4]
        BL       __aeabi_i2f
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+160]
//   87             ctl.S3010.Kp_S = 0.41;
        LDR.N    R0,??DataTable1_12  ;; 0x3ed1eb85
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+20]
//   88             ctl.S3010.Kd_S = 1.5;
        MOVS     R0,#+1069547520
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+36]
//   89             break;
//   90             
//   91             
//   92     default: ;
//   93     }
//   94   }
//   95   
//   96   
//   97   LPLD_LPTMR_DelayMs(1500);
??star_5:
        MOVW     R0,#+1500
        BL       LPLD_LPTMR_DelayMs
//   98   bz_set(ready);//初始化完毕，蜂鸣器提示
        MOVS     R0,#+0
        BL       bz_set
//   99   
//  100   if(1 == debug_Enable)
        LDR.N    R0,??DataTable1_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??star_9
//  101   {
//  102     timer_debug();
        BL       timer_debug
//  103   }
//  104   
//  105   flag_stop = 0;
??star_9:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_14
        STRB     R0,[R1, #+0]
//  106   
//  107 }
        POP      {R4,PC}          ;; return
//  108 
//  109 
//  110 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  111 void portd_isr()
//  112 {
portd_isr:
        PUSH     {R3-R5,LR}
//  113   uint16 i,j;
//  114     i = GUI.para.endline_time * 1000;
        LDR.N    R0,??DataTable1_2
        LDRH     R0,[R0, #+4]
        MOV      R1,#+1000
        SMULBB   R0,R0,R1
        MOVS     R4,R0
//  115     LPLD_GPIO_ClearIntFlag(PORTD);
        MOVS     R0,#-1
        LDR.N    R1,??DataTable1_15  ;; 0x4004c0a0
        STR      R0,[R1, #+0]
//  116     
//  117     j = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  118     j = PTD1_I + PTD5_I + PTD6_I + PTD15_I;
        LDR.N    R0,??DataTable1_16  ;; 0x43fe1a04
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_17  ;; 0x43fe1a14
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable1_18  ;; 0x43fe1a18
        LDR      R2,[R2, #+0]
        ADDS     R0,R1,R0
        ADDS     R0,R2,R0
        LDR.N    R1,??DataTable1_19  ;; 0x43fe1a3c
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        MOVS     R5,R0
//  119     
//  120     if( j < 3)
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+3
        BGE.N    ??portd_isr_0
//  121     {
//  122       if(1 == GUI.para.endline &&  timer_cnt > i)  //一个可调的值
        LDR.N    R0,??DataTable1_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+1
        BNE.N    ??portd_isr_1
        LDR.N    R0,??DataTable1_20
        LDRH     R0,[R0, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BCS.N    ??portd_isr_1
//  123       {
//  124         flag_bihuan = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_4
        STRB     R0,[R1, #+0]
//  125         ctl.motto.out = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+160]
//  126         timer_cnt = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_20
        STRH     R0,[R1, #+0]
//  127       }
//  128       bz_set(datarec);
??portd_isr_1:
        MOVS     R0,#+1
        BL       bz_set
//  129     }
//  130 }
??portd_isr_0:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     write_flash_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x400ff100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     GUI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     flag_bihuan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     AIM_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     ctl

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     Dir_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     kaihuan_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     0x3ec7ae14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     0x3ecccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     0x3f99999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     0x3ed1eb85

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     debug_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     flag_stop

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0x4004c0a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     0x43fe1a04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     0x43fe1a14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     0x43fe1a18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     0x43fe1a3c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     timer_cnt

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 784 bytes in section .text
// 
// 784 bytes of CODE memory
//
//Errors: none
//Warnings: 1
