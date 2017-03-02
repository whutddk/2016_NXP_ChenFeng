///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.30.3.8024/W32 for ARM       16/Aug/2016  11:11:09
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\ITAC\GUI.c
//    Command line =  
//        "E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid)
//        1.9\app\ITAC\GUI.c" -D LPLD_K60 -lCN
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
//        1.9\iar\FLASH\List\GUI.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_Flash_Init
        EXTERN LPLD_LPTMR_DelayMs
        EXTERN NVIC_init
        EXTERN OLED_CLS
        EXTERN OLED_P14x16Str
        EXTERN OLED_P8x16Str
        EXTERN OLED_PrintFloat
        EXTERN OLED_PrintInt16
        EXTERN PIT0_init
        EXTERN PIT1_init
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN debug_Enable
        EXTERN dec_sec
        EXTERN flag_bihuan
        EXTERN line
        EXTERN sensor
        EXTERN sensor_isr
        EXTERN sw
        EXTERN wait_key

        PUBLIC AIM_Buff
        PUBLIC Dir_Buff
        PUBLIC GUI
        PUBLIC GUI_update
        PUBLIC GUI_work
        PUBLIC ReadFlash
        PUBLIC kaihuan_Buff
        PUBLIC update_page1
        PUBLIC update_page2
        PUBLIC update_page3
        PUBLIC update_page4
        PUBLIC update_page5
        PUBLIC write_flash_flag

// E:\飞思卡尔\新工程\LPLD_OSKinetis_V3\project\NXP_(golden_cyprinoid) 1.9\app\ITAC\GUI.c
//    1 //DDK
//    2 //2016 3 14
//    3 
//    4 //   1车
//    5 
//    6 #include "include.h"
//    7 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//    8 struct _GUI GUI;
GUI:
        DS8 8
//    9 
//   10 /*人机交互开始工作
//   11 在break之前，一直是大循环
//   12 */
//   13 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   14 int16 AIM_Buff[7]=
AIM_Buff:
        DATA
        DC16 300, 375, 400, 425, 450, 475, 500
        DC8 0, 0
//   15 {
//   16   
//   17   300,      //Step_Speed----1
//   18   375,
//   19   400,
//   20   425,
//   21   450,
//   22   475,
//   23   500,
//   24 };
//   25 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   26 int16 kaihuan_Buff[3]=
kaihuan_Buff:
        DATA
        DC16 3000, 3500, 4000
        DC8 0, 0
//   27 {
//   28   3000,
//   29   3500,
//   30   4000,
//   31 };
//   32 
//   33 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//   34 float Dir_Buff[44]={
Dir_Buff:
        DATA
        DC32 3EB851ECH, 0H, 3EC7AE14H, 3E99999AH, 3EAE147BH, 3E99999AH
        DC32 3EB851ECH, 3F000000H, 3EBD70A4H, 3F333333H, 3EC7AE14H, 3F666666H
        DC32 3EAE147BH, 3F19999AH, 3EB851ECH, 3F333333H, 3EC28F5CH, 3F4CCCCDH
        DC32 3ECCCCCDH, 3F800000H, 3EAE147BH, 3F666666H, 3EBD70A4H, 3F800000H
        DC32 3EC7AE14H, 3F8CCCCDH, 3ED1EB85H, 3FB33333H, 3EB33333H, 3F99999AH
        DC32 3EC28F5CH, 3FA66666H, 3ECCCCCDH, 3FD9999AH, 3ED1EB85H, 3FF33333H
        DC32 3EB851ECH, 3FD9999AH, 3EC28F5CH, 3FF33333H, 3ECCCCCDH, 40066666H
        DC32 3ED70A3DH, 40133333H
//   35   
//   36   0.36,     //300
//   37   0,      
//   38   
//   39   
//   40   0.39,
//   41   0.3,
//   42   
//   43   
//   44   0.34,      //KP_S ——400
//   45   0.3,      //KD_S
//   46   0.36,     //KP_M1
//   47   0.5,      //KD_M1
//   48   0.37,     //KP_M2
//   49   0.7,      //KD_M2
//   50   0.39,      //KD_B
//   51   0.9,        //KD_B
//   52   
//   53   
//   54   
//   55   0.34,//425  
//   56   0.6,
//   57   0.36,
//   58   0.7,
//   59   0.38,
//   60   0.8,
//   61   0.4,
//   62   1,
//   63   
//   64   0.34,//450
//   65   0.9,
//   66   0.37,
//   67   1,
//   68   0.39,
//   69   1.1,
//   70   0.41,
//   71   1.4,
//   72   
//   73   
//   74   0.35,//475    
//   75   1.2,
//   76   0.38,
//   77   1.3,
//   78   0.4,
//   79   1.7,//1.6
//   80   0.41,
//   81   1.9,//1.8
//   82   
//   83   
//   84   0.36,//500
//   85   1.7,
//   86   0.38,
//   87   1.9,
//   88   0.4,
//   89   2.1,
//   90   0.42,
//   91   2.3,
//   92 };
//   93 
//   94 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   95 boolean write_flash_flag;
write_flash_flag:
        DS8 1
//   96 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   97 void GUI_work()
//   98 {
GUI_work:
        PUSH     {R3-R5,LR}
//   99   uint8 key_temp = 0;
        MOVS     R4,#+0
//  100   //大循环
//  101   
//  102   
//  103   GUI.page = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  104   GUI.point = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
//  105   GUI.para.AI = 3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+6]
//  106   for (;;)
//  107   {
//  108     //刷新液晶
//  109     GUI_update();
??GUI_work_0:
        BL       GUI_update
//  110     //当不按键时，一直循环检测
//  111     while ( !key_temp )
??GUI_work_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??GUI_work_2
//  112     { 
//  113       key_temp = wait_key();
        BL       wait_key
        MOVS     R4,R0
        B.N      ??GUI_work_1
//  114     }
//  115     //按键之后跳出，对按键值进行判定
//  116     
//  117     /*page，左右键*/
//  118     //左键，左翻页
//  119     if ( key_temp == 2 )
??GUI_work_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.W    ??GUI_work_3
//  120     {
//  121       if(GUI.page == 2 && GUI.point == 4)
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??GUI_work_4
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+4
        BNE.N    ??GUI_work_4
//  122       {
//  123         GUI.para.endline_time -= 3;
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+4]
        SUBS     R0,R0,#+3
        LDR.W    R1,??DataTable7_2
        STRH     R0,[R1, #+4]
//  124         if(GUI.para.endline_time < 13)
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+4]
        CMP      R0,#+13
        BGE.N    ??GUI_work_5
//  125         {
//  126           GUI.para.endline_time = 13;
        MOVS     R0,#+13
        LDR.W    R1,??DataTable7_2
        STRH     R0,[R1, #+4]
//  127         }
//  128         write_flash_flag = 1;
??GUI_work_5:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
        B.N      ??GUI_work_3
//  129       }
//  130       
//  131       else if(GUI.page == 4)
??GUI_work_4:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??GUI_work_6
//  132       {
//  133         //减参数
//  134         switch (GUI.point)
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??GUI_work_7
        BCC.W    ??GUI_work_3
        CMP      R0,#+3
        BEQ.N    ??GUI_work_8
        BCC.N    ??GUI_work_9
        CMP      R0,#+4
        BEQ.N    ??GUI_work_10
        B.N      ??GUI_work_3
//  135         {
//  136           case(1):
//  137             GUI.para.AI --;
??GUI_work_7:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+6]
//  138             if (  GUI.para.AI < 1 )
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+0
        BNE.N    ??GUI_work_11
//  139             {
//  140               GUI.para.AI = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+6]
//  141             }
//  142             break;
??GUI_work_11:
        B.N      ??GUI_work_3
//  143             
//  144             case(2):
//  145               AIM_Buff[GUI.para.AI - 1] -= 25;
??GUI_work_9:
        LDR.W    R0,??DataTable7_4
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        ADDS     R0,R0,R1, LSL #+1
        LDR.W    R1,??DataTable7_4
        LDR.W    R2,??DataTable7_2
        LDRB     R2,[R2, #+6]
        ADDS     R1,R1,R2, LSL #+1
        LDRH     R1,[R1, #-2]
        SUBS     R1,R1,#+25
        STRH     R1,[R0, #-2]
//  146               break;
        B.N      ??GUI_work_3
//  147               
//  148               case(3):
//  149                 if(GUI.para.AI < 3)
??GUI_work_8:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+3
        BGE.N    ??GUI_work_12
//  150                   Dir_Buff[GUI.para.AI * 2 - 2] -= 0.01;
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable7_6  ;; 0x47ae147b
        LDR.W    R3,??DataTable7_7  ;; 0xbf847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-8]
        B.N      ??GUI_work_13
//  151                 else
//  152                   Dir_Buff[GUI.para.AI * 6 - 11] -= 0.1;
??GUI_work_12:
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-44]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable7_8  ;; 0x9999999a
        LDR.W    R3,??DataTable7_9  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-44]
//  153                 break;
??GUI_work_13:
        B.N      ??GUI_work_3
//  154                 
//  155                 case(4):
//  156                   if(GUI.para.AI < 3)
??GUI_work_10:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+3
        BGE.N    ??GUI_work_14
//  157                     Dir_Buff[GUI.para.AI * 2 - 2] -= 0.1;
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable7_8  ;; 0x9999999a
        LDR.W    R3,??DataTable7_9  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-8]
        B.N      ??GUI_work_15
//  158                   else
//  159                     Dir_Buff[GUI.para.AI * 6 - 9] -= 0.1;
??GUI_work_14:
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-36]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable7_8  ;; 0x9999999a
        LDR.W    R3,??DataTable7_9  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-36]
//  160                   break;
??GUI_work_15:
        B.N      ??GUI_work_3
//  161                   
//  162         }
//  163       }
//  164       else
//  165       {
//  166         GUI.page --;
??GUI_work_6:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  167         //最小1页
//  168         if ( GUI.page < 1 )
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GUI_work_16
//  169         {
//  170           GUI.page = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  171         }
//  172         GUI.point = 1;
??GUI_work_16:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
//  173       }
//  174     }
//  175     
//  176     //右键，右翻页
//  177     if ( key_temp == 3 )
??GUI_work_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.W    ??GUI_work_17
//  178     {
//  179       
//  180       if(GUI.page == 2 && GUI.point == 4)
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??GUI_work_18
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+4
        BNE.N    ??GUI_work_18
//  181       {
//  182         GUI.para.endline_time += 3;
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+4]
        ADDS     R0,R0,#+3
        LDR.W    R1,??DataTable7_2
        STRH     R0,[R1, #+4]
//  183         if(GUI.para.endline_time > 41)
        LDR.W    R0,??DataTable7_2
        LDRH     R0,[R0, #+4]
        CMP      R0,#+42
        BLT.N    ??GUI_work_19
//  184         {
//  185           GUI.para.endline_time = 41;
        MOVS     R0,#+41
        LDR.W    R1,??DataTable7_2
        STRH     R0,[R1, #+4]
//  186         }
//  187         write_flash_flag = 1;
??GUI_work_19:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
        B.N      ??GUI_work_17
//  188         
//  189       }
//  190       
//  191       else if ( GUI.page == 5 )//发车
??GUI_work_18:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.W    ??GUI_work_20
//  192       {
//  193         //退出人机交互函数，进入发车运行状态
//  194         break;
//  195       }
//  196       
//  197       else if(GUI.page == 4)
??GUI_work_21:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??GUI_work_22
//  198       {
//  199         //加参数
//  200         switch (GUI.point)
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??GUI_work_23
        BCC.W    ??GUI_work_17
        CMP      R0,#+3
        BEQ.N    ??GUI_work_24
        BCC.N    ??GUI_work_25
        CMP      R0,#+4
        BEQ.N    ??GUI_work_26
        B.N      ??GUI_work_17
//  201         {
//  202           case(1):
//  203             GUI.para.AI ++;
??GUI_work_23:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+6]
//  204             if (  GUI.para.AI > 7 )
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+8
        BLT.N    ??GUI_work_27
//  205             {
//  206               GUI.para.AI = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+6]
//  207             }
//  208             break;
??GUI_work_27:
        B.N      ??GUI_work_17
//  209             
//  210             case(2):
//  211               AIM_Buff[GUI.para.AI - 1] += 25;
??GUI_work_25:
        LDR.W    R0,??DataTable7_4
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        ADDS     R0,R0,R1, LSL #+1
        LDR.W    R1,??DataTable7_4
        LDR.W    R2,??DataTable7_2
        LDRB     R2,[R2, #+6]
        ADDS     R1,R1,R2, LSL #+1
        LDRH     R1,[R1, #-2]
        ADDS     R1,R1,#+25
        STRH     R1,[R0, #-2]
//  212               break;
        B.N      ??GUI_work_17
//  213               
//  214               case(3):
//  215                 if(GUI.para.AI < 3)
??GUI_work_24:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+3
        BGE.N    ??GUI_work_28
//  216                   Dir_Buff[GUI.para.AI * 2 - 2] += 0.01;
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable7_6  ;; 0x47ae147b
        LDR.W    R3,??DataTable7_10  ;; 0x3f847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-8]
        B.N      ??GUI_work_29
//  217                 else
//  218                   Dir_Buff[GUI.para.AI * 6 - 11] += 0.1;
??GUI_work_28:
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-44]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable7_8  ;; 0x9999999a
        LDR.W    R3,??DataTable7_11  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-44]
//  219                 break;
??GUI_work_29:
        B.N      ??GUI_work_17
//  220                 
//  221                 case(4):
//  222                   if(GUI.para.AI < 3)
??GUI_work_26:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+3
        BGE.N    ??GUI_work_30
//  223                     Dir_Buff[GUI.para.AI * 2 - 2] += 0.1;
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable7_8  ;; 0x9999999a
        LDR.W    R3,??DataTable7_11  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-8]
        B.N      ??GUI_work_31
//  224                   else
//  225                     Dir_Buff[GUI.para.AI * 6 - 9] += 0.1;
??GUI_work_30:
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable7_5
        LDR.W    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-36]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable7_8  ;; 0x9999999a
        LDR.W    R3,??DataTable7_11  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-36]
//  226                   break;
??GUI_work_31:
        B.N      ??GUI_work_17
//  227         }
//  228       }
//  229       else
//  230       {
//  231         
//  232         GUI.page ++;
??GUI_work_22:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  233         
//  234         if ( GUI.page == 3 )   //标定后初始化定时器
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??GUI_work_32
//  235         {
//  236           PIT1_init();//控制系统时钟 //暂定10ms
        BL       PIT1_init
//  237           PIT0_init();//主系统时钟 //1MS 一次中断
        BL       PIT0_init
//  238           NVIC_init();
        BL       NVIC_init
//  239         }
//  240         
//  241         //最多6页，不够再加
//  242         if ( GUI.page > 5 )
??GUI_work_32:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BLT.N    ??GUI_work_33
//  243         {
//  244           GUI.page = 5;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  245         }
//  246         GUI.point = 1;
??GUI_work_33:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
//  247       }
//  248     }
//  249     
//  250     //上键 目前只能在第二/4页操作
//  251     if ( key_temp == 1 && (GUI.page == 2 ||GUI.page == 4 ))
??GUI_work_17:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??GUI_work_34
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??GUI_work_35
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??GUI_work_34
//  252     {
//  253       
//  254       GUI.point --;
??GUI_work_35:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
//  255       if ( GUI.point < 1 )
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??GUI_work_34
//  256       {
//  257         GUI.point = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
//  258       }
//  259     }
//  260     
//  261     //下键，目前只能在第三/4页操作
//  262     if ( key_temp == 4 && (GUI.page == 2 || GUI.page == 4 || GUI.page == 5))
??GUI_work_34:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??GUI_work_36
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??GUI_work_37
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BEQ.N    ??GUI_work_37
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??GUI_work_36
//  263     {
//  264       if ( GUI.page == 5 )//发车
??GUI_work_37:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.N    ??GUI_work_20
//  265       {
//  266         //退出人机交互函数，进入发车运行状态
//  267         break;
//  268       }
//  269       
//  270       GUI.point ++ ;
??GUI_work_38:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
//  271       if ( GUI.point > 4 )
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+5
        BLT.N    ??GUI_work_36
//  272       {
//  273         GUI.point = 4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
//  274       }
//  275     }
//  276     
//  277     //确认键，根据需要写条件
//  278     if ( key_temp == 5 )
??GUI_work_36:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BNE.N    ??GUI_work_39
//  279     {
//  280       //在第二页
//  281       if ( GUI.page == 2)
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??GUI_work_40
//  282       {
//  283         switch (GUI.point)
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??GUI_work_41
        BCC.N    ??GUI_work_40
        CMP      R0,#+3
        BEQ.N    ??GUI_work_42
        BCC.N    ??GUI_work_43
        B.N      ??GUI_work_40
//  284         {
//  285           case(1): 
//  286             sensor_isr();
??GUI_work_41:
        BL       sensor_isr
//  287             write_flash_flag = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_3
        STRB     R0,[R1, #+0]
//  288             break; //调用传感器校准函数
        B.N      ??GUI_work_40
//  289             
//  290             case(2):
//  291               debug_Enable = !debug_Enable;
??GUI_work_43:
        LDR.W    R0,??DataTable7_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GUI_work_44
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_12
        STRB     R0,[R1, #+0]
        B.N      ??GUI_work_45
??GUI_work_44:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable7_12
        STRB     R0,[R1, #+0]
//  292               break;
??GUI_work_45:
        B.N      ??GUI_work_40
//  293               
//  294               case(3):
//  295                 dec_sec += 3;
??GUI_work_42:
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+3
        LDR.W    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
//  296                 if(dec_sec > 12)
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+13
        BLT.N    ??GUI_work_46
//  297                 {
//  298                   dec_sec = 3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable7_13
        STRB     R0,[R1, #+0]
//  299                 }
//  300                 break;
//  301                 
//  302                 
//  303         }
//  304       }
//  305       //在开始比赛界面
//  306       if ( GUI.page == 5 )
??GUI_work_46:
??GUI_work_40:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.N    ??GUI_work_20
//  307       {
//  308         //退出人机交互函数，进入发车运行状态
//  309         break;
//  310       }
//  311       
//  312       //第四页，，翻页
//  313       if(GUI.page == 4)
??GUI_work_47:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??GUI_work_39
//  314       {
//  315         GUI.page ++;
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+0]
//  316         GUI.point = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable7_2
        STRB     R0,[R1, #+1]
//  317       }
//  318       
//  319     }
//  320     key_temp = 0;
??GUI_work_39:
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??GUI_work_0
//  321   }
//  322 }
??GUI_work_20:
        POP      {R0,R4,R5,PC}    ;; return
//  323 
//  324 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  325 void GUI_update()
//  326 {
GUI_update:
        PUSH     {R7,LR}
//  327   OLED_CLS();
        BL       OLED_CLS
//  328   switch (GUI.page)
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??GUI_update_0
        BCC.N    ??GUI_update_1
        CMP      R0,#+3
        BEQ.N    ??GUI_update_2
        BCC.N    ??GUI_update_3
        CMP      R0,#+5
        BEQ.N    ??GUI_update_4
        BCC.N    ??GUI_update_5
        B.N      ??GUI_update_1
//  329   {
//  330     //显示的页面
//  331     case(1):update_page1();break;
??GUI_update_0:
        BL       update_page1
        B.N      ??GUI_update_6
//  332     case(2):update_page2();break;
??GUI_update_3:
        BL       update_page2
        B.N      ??GUI_update_6
//  333     case(3):update_page3();break;
??GUI_update_2:
        BL       update_page3
        B.N      ??GUI_update_6
//  334     case(4):update_page4();break;
??GUI_update_5:
        BL       update_page4
        B.N      ??GUI_update_6
//  335     case(5):update_page5();break;
??GUI_update_4:
        BL       update_page5
        B.N      ??GUI_update_6
//  336     
//  337   default:break;
//  338   }
//  339 }
??GUI_update_1:
??GUI_update_6:
        POP      {R0,PC}          ;; return
//  340 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  341 void update_page1()
//  342 {
update_page1:
        PUSH     {R7,LR}
//  343   //Draw_BMP(0,0,66,7,mushroom);
//  344   OLED_P14x16Str( 20,0 ,"武汉理工大学" );
        LDR.W    R2,??DataTable7_14
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       OLED_P14x16Str
//  345   OLED_P14x16Str( 40,4 ,"晨风队" );
        LDR.W    R2,??DataTable7_15
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_P14x16Str
//  346 }
        POP      {R0,PC}          ;; return
//  347 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  348 void update_page2()
//  349 {
update_page2:
        PUSH     {R7,LR}
//  350   
//  351   
//  352   //被point选中的会空几格
//  353   if ( GUI.point != 1 )
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??update_page2_0
//  354   {
//  355     OLED_P8x16Str( 0,0 ,"SENSOR_CHECK" );
        LDR.W    R2,??DataTable7_16
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page2_1
//  356   }
//  357   else 
//  358   {
//  359     OLED_P8x16Str( 15,0 ,"SENSOR_CHECK" );
??update_page2_0:
        LDR.W    R2,??DataTable7_16
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       OLED_P8x16Str
//  360   }
//  361   
//  362   if ( debug_Enable == 0 )  //选择定时调试
??update_page2_1:
        LDR.W    R0,??DataTable7_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??update_page2_2
//  363   {
//  364     OLED_P8x16Str( 0,2 ,"TEST OFF" );
        LDR.W    R2,??DataTable7_17
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page2_3
//  365   }
//  366   else 
//  367   {
//  368     OLED_P8x16Str( 0,2 ,"TEST ON" );
??update_page2_2:
        LDR.W    R2,??DataTable7_18
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  369   }
//  370   
//  371   if ( GUI.point != 3 ) //设置定时时间
??update_page2_3:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+3
        BEQ.N    ??update_page2_4
//  372   {
//  373     OLED_P8x16Str( 0,4 ,"DEBUG_T" );
        LDR.W    R2,??DataTable7_19
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page2_5
//  374   }
//  375   else
//  376   {
//  377     OLED_P8x16Str( 15,4 ,"DEBUG_T" );
??update_page2_4:
        LDR.W    R2,??DataTable7_19
        MOVS     R1,#+4
        MOVS     R0,#+15
        BL       OLED_P8x16Str
//  378   }
//  379   
//  380   if ( dec_sec == 3 )
??update_page2_5:
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??update_page2_6
//  381     OLED_P8x16Str( 90,4 ,"3" );
        ADR.N    R2,??DataTable4  ;; "3"
        MOVS     R1,#+4
        MOVS     R0,#+90
        BL       OLED_P8x16Str
        B.N      ??update_page2_7
//  382   else if( dec_sec == 6 )
??update_page2_6:
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BNE.N    ??update_page2_8
//  383     OLED_P8x16Str( 90,4 ,"6" );
        ADR.N    R2,??DataTable4_1  ;; "6"
        MOVS     R1,#+4
        MOVS     R0,#+90
        BL       OLED_P8x16Str
        B.N      ??update_page2_7
//  384   else if( dec_sec == 9 )
??update_page2_8:
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??update_page2_9
//  385     OLED_P8x16Str( 90,4 ,"9" );
        ADR.N    R2,??DataTable5  ;; "9"
        MOVS     R1,#+4
        MOVS     R0,#+90
        BL       OLED_P8x16Str
        B.N      ??update_page2_7
//  386   else if( dec_sec == 12 )
??update_page2_9:
        LDR.W    R0,??DataTable7_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+12
        BNE.N    ??update_page2_7
//  387     OLED_P8x16Str( 90,4 ,"12" );
        ADR.N    R2,??DataTable5_1  ;; 0x31, 0x32, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+90
        BL       OLED_P8x16Str
//  388   
//  389   
//  390   if ( GUI.point != 4 )
??update_page2_7:
        LDR.W    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+4
        BEQ.N    ??update_page2_10
//  391   {
//  392     OLED_P8x16Str( 0,6 ,"ENDLINE_T" );
        LDR.W    R2,??DataTable7_20
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page2_11
//  393   }
//  394   else
//  395   {
//  396     OLED_P8x16Str( 10,6 ,"ENDLINE_T" );
??update_page2_10:
        LDR.W    R2,??DataTable7_20
        MOVS     R1,#+6
        MOVS     R0,#+10
        BL       OLED_P8x16Str
//  397   }
//  398   
//  399   
//  400   OLED_PrintInt16( 70,6 ,GUI.para.endline_time );
??update_page2_11:
        LDR.N    R0,??DataTable7_2
        LDRSH    R2,[R0, #+4]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+6
        MOVS     R0,#+70
        BL       OLED_PrintInt16
//  401   
//  402   
//  403   
//  404   
//  405   
//  406 }
        POP      {R0,PC}          ;; return
//  407 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  408 void update_page3()
//  409 {
update_page3:
        PUSH     {R7,LR}
//  410   //显示1参数，将需要显示的变量代入即可
//  411   OLED_P8x16Str( 0,0,"POS" );
        ADR.N    R2,??DataTable5_2  ;; "POS"
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  412   OLED_PrintInt16(40, 0, line.pos);
        LDR.W    R0,??DataTable7_21
        LDRSH    R2,[R0, #+10]
        MOVS     R1,#+0
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  413   OLED_P8x16Str( 0,2,"M-L" );
        ADR.N    R2,??DataTable6  ;; "M-L"
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  414   OLED_PrintInt16(50, 2, sensor.error[0]);
        LDR.W    R0,??DataTable7_22
        LDRSH    R2,[R0, #+68]
        MOVS     R1,#+2
        MOVS     R0,#+50
        BL       OLED_PrintInt16
//  415   OLED_P8x16Str( 0,4,"M-R" );
        ADR.N    R2,??DataTable6_1  ;; "M-R"
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  416   OLED_PrintInt16(50, 4, sensor.error[1]);
        LDR.N    R0,??DataTable7_22
        LDRSH    R2,[R0, #+70]
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       OLED_PrintInt16
//  417   OLED_P8x16Str( 0,6,"R-L" );
        ADR.N    R2,??DataTable6_2  ;; "R-L"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  418   OLED_PrintInt16(50, 6, sensor.error[2]);
        LDR.N    R0,??DataTable7_22
        LDRSH    R2,[R0, #+72]
        MOVS     R1,#+6
        MOVS     R0,#+50
        BL       OLED_PrintInt16
//  419 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC8      "3",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC8      "6",0x0,0x0
//  420 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  421 void update_page4()
//  422 {
update_page4:
        PUSH     {R7,LR}
//  423   //选择档位
//  424   if ( GUI.point != 1 )
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??update_page4_0
//  425   {
//  426     OLED_P8x16Str( 0,0 ,"gear" );
        LDR.N    R2,??DataTable7_23
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page4_1
//  427   }
//  428   else 
//  429   {
//  430     OLED_P8x16Str( 15,0 ,"gear" );
??update_page4_0:
        LDR.N    R2,??DataTable7_23
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       OLED_P8x16Str
//  431   }
//  432   
//  433   OLED_P8x16Str( 60,0 ,"AI:" );
??update_page4_1:
        ADR.N    R2,??DataTable6_3  ;; "AI:"
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       OLED_P8x16Str
//  434   OLED_PrintInt16( 74,0 ,GUI.para.AI );
        LDR.N    R0,??DataTable7_2
        LDRB     R2,[R0, #+6]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+0
        MOVS     R0,#+74
        BL       OLED_PrintInt16
//  435   OLED_P8x16Str( 0,2,"AIM" );
        ADR.N    R2,??DataTable6_4  ;; "AIM"
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  436   
//  437   if(1 == flag_bihuan)
        LDR.N    R0,??DataTable7_24
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??update_page4_2
//  438   {
//  439     OLED_PrintInt16(40, 2,AIM_Buff[GUI.para.AI-1]);//速度
        LDR.N    R0,??DataTable7_4
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        ADDS     R0,R0,R1, LSL #+1
        LDRSH    R2,[R0, #-2]
        MOVS     R1,#+2
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  440     if ( GUI.para.AI < 3 )
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+3
        BGE.N    ??update_page4_3
//  441     { 
//  442       OLED_P8x16Str( 0,4,"K" );
        ADR.N    R2,??DataTable7  ;; "K"
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  443       OLED_P8x16Str( 0,6,"D" );
        ADR.N    R2,??DataTable7_1  ;; "D"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  444       
//  445       OLED_PrintFloat(40, 4,Dir_Buff[GUI.para.AI * 2 - 2]);//参数
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_PrintFloat
//  446       OLED_PrintFloat(40, 6,Dir_Buff[GUI.para.AI * 2 - 1]);
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-4]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+6
        MOVS     R0,#+40
        BL       OLED_PrintFloat
        B.N      ??update_page4_4
//  447     }
//  448     else
//  449     {
//  450       OLED_PrintFloat(0, 4,Dir_Buff[GUI.para.AI * 6 - 14]);
??update_page4_3:
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-56]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_PrintFloat
//  451       OLED_PrintFloat(40,4,Dir_Buff[GUI.para.AI * 6 - 12]);
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-48]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_PrintFloat
//  452       OLED_PrintFloat(80,4,Dir_Buff[GUI.para.AI * 6 - 10]);
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-40]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+4
        MOVS     R0,#+80
        BL       OLED_PrintFloat
//  453       
//  454       OLED_PrintFloat(0, 6,Dir_Buff[GUI.para.AI * 6 - 13]);
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-52]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_PrintFloat
//  455       OLED_PrintFloat(40,6,Dir_Buff[GUI.para.AI * 6 - 11]);
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-44]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+6
        MOVS     R0,#+40
        BL       OLED_PrintFloat
//  456       OLED_PrintFloat(80,6,Dir_Buff[GUI.para.AI * 6 - 9]);
        LDR.N    R0,??DataTable7_5
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-36]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+6
        MOVS     R0,#+80
        BL       OLED_PrintFloat
        B.N      ??update_page4_4
//  457       
//  458     }
//  459   }
//  460   else
//  461   {
//  462     if ( GUI.para.AI == 0 )
??update_page4_2:
        LDR.N    R0,??DataTable7_2
        LDRB     R0,[R0, #+6]
        CMP      R0,#+0
        BNE.N    ??update_page4_5
//  463     {
//  464       OLED_PrintInt16(40, 2,0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  465       OLED_PrintInt16(40, 4,0);
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  466       OLED_PrintInt16(40, 6,0);
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+40
        BL       OLED_PrintInt16
        B.N      ??update_page4_4
//  467     }
//  468     
//  469     else 
//  470     {
//  471       OLED_PrintInt16(40, 2,kaihuan_Buff[GUI.para.AI-1]);
??update_page4_5:
        LDR.N    R0,??DataTable7_25
        LDR.N    R1,??DataTable7_2
        LDRB     R1,[R1, #+6]
        ADDS     R0,R0,R1, LSL #+1
        LDRSH    R2,[R0, #-2]
        MOVS     R1,#+2
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  472       OLED_PrintFloat(40, 4,0);       //开环buff未建立
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_PrintFloat
//  473       OLED_PrintFloat(40, 6,0);
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R1,#+6
        MOVS     R0,#+40
        BL       OLED_PrintFloat
//  474     }
//  475     
//  476   }
//  477 }
??update_page4_4:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC8      "9",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC8      0x31, 0x32, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC8      "POS"
//  478 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  479 void update_page5()
//  480 {
update_page5:
        PUSH     {R7,LR}
//  481   switch (sw)
        LDR.N    R0,??DataTable7_26
        LDRB     R0,[R0, #+0]
        CMP      R0,#+7
        BEQ.N    ??update_page5_0
        CMP      R0,#+11
        BEQ.N    ??update_page5_1
        CMP      R0,#+13
        BEQ.N    ??update_page5_2
        CMP      R0,#+14
        BEQ.N    ??update_page5_3
        CMP      R0,#+15
        BNE.N    ??update_page5_4
//  482   {
//  483     case(0x0F):
//  484       OLED_P8x16Str(2,0,"COMPETITION");
??update_page5_5:
        LDR.N    R2,??DataTable7_27
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       OLED_P8x16Str
//  485       break;
        B.N      ??update_page5_4
//  486       case(0x0D):
//  487         OLED_P8x16Str(6,0,"NO STOP");
??update_page5_2:
        LDR.N    R2,??DataTable7_28
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  488         break;
        B.N      ??update_page5_4
//  489         case(0x07):
//  490           OLED_P8x16Str(6,0,"RAMP OFF");
??update_page5_0:
        LDR.N    R2,??DataTable7_29
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  491           break;
        B.N      ??update_page5_4
//  492           case(0x0B):
//  493             OLED_P8x16Str(6,0,"speed_up OFF");
??update_page5_1:
        LDR.N    R2,??DataTable7_30
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  494             break;
        B.N      ??update_page5_4
//  495             case(0x0E):
//  496               OLED_P8x16Str(6,0,"KAIHUAN");
??update_page5_3:
        LDR.N    R2,??DataTable7_31
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  497               break;
//  498               
//  499   }
//  500   
//  501   OLED_P8x16Str(6,4,"START!!!!!");
??update_page5_4:
        LDR.N    R2,??DataTable7_32
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  502 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC8      "M-L"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC8      "M-R"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC8      "R-L"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC8      "AI:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC8      "AIM"
//  503 
//  504 
//  505 
//  506 //============从Flash读数据=========================//

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  507 void ReadFlash()
//  508 {
ReadFlash:
        PUSH     {R4,LR}
//  509   int16 Date_Effective_Flag=0;
        MOVS     R4,#+0
//  510   LPLD_Flash_Init();
        BL       LPLD_Flash_Init
//  511   LPLD_LPTMR_DelayMs(50);
        MOVS     R0,#+50
        BL       LPLD_LPTMR_DelayMs
//  512   
//  513   Date_Effective_Flag=flash_read(FLASH_TEST_SECTOR,0,int16);
        MOVS     R0,#+522240
        LDRSH    R0,[R0, #+0]
        MOVS     R4,R0
//  514   if(-1!=Date_Effective_Flag)
        SXTH     R4,R4            ;; SignExt  R4,R4,#+16,#+16
        CMN      R4,#+1
        BEQ.N    ??ReadFlash_0
//  515   {
//  516     GUI.para.endline_time = flash_read(FLASH_TEST_SECTOR,0,int16);
        MOVS     R0,#+522240
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable7_2
        STRH     R0,[R1, #+4]
//  517     sensor.max[0]=flash_read(FLASH_TEST_SECTOR,20,int16);
        LDR.N    R0,??DataTable7_33  ;; 0x7f814
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable7_22
        STRH     R0,[R1, #+76]
//  518     sensor.max[1]=flash_read(FLASH_TEST_SECTOR,40,int16);
        LDR.N    R0,??DataTable7_34  ;; 0x7f828
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable7_22
        STRH     R0,[R1, #+78]
//  519     sensor.max[2]=flash_read(FLASH_TEST_SECTOR,60,int16);
        LDR.N    R0,??DataTable7_35  ;; 0x7f83c
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable7_22
        STRH     R0,[R1, #+80]
//  520     sensor.min[0]=flash_read(FLASH_TEST_SECTOR,80,int16);
        LDR.N    R0,??DataTable7_36  ;; 0x7f850
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable7_22
        STRH     R0,[R1, #+82]
//  521     sensor.min[1]=flash_read(FLASH_TEST_SECTOR,100,int16);
        LDR.N    R0,??DataTable7_37  ;; 0x7f864
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable7_22
        STRH     R0,[R1, #+84]
//  522     sensor.min[2]=flash_read(FLASH_TEST_SECTOR,120,int16);
        LDR.N    R0,??DataTable7_38  ;; 0x7f878
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??DataTable7_22
        STRH     R0,[R1, #+86]
//  523   }
//  524 }
??ReadFlash_0:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC8      "K",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC8      "D",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     GUI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     write_flash_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     AIM_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     Dir_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_7:
        DC32     0xbf847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_8:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_9:
        DC32     0xbfb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_10:
        DC32     0x3f847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_11:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_12:
        DC32     debug_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_13:
        DC32     dec_sec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_14:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_15:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_16:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_17:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_18:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_19:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_20:
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_21:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_22:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_23:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_24:
        DC32     flag_bihuan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_25:
        DC32     kaihuan_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_26:
        DC32     sw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_27:
        DC32     ?_20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_28:
        DC32     ?_21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_29:
        DC32     ?_22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_30:
        DC32     ?_23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_31:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_32:
        DC32     ?_25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_33:
        DC32     0x7f814

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_34:
        DC32     0x7f828

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_35:
        DC32     0x7f83c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_36:
        DC32     0x7f850

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_37:
        DC32     0x7f864

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_38:
        DC32     0x7f878

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_0:
        DATA
        DC8 "\316\344\272\272\300\355\271\244\264\363\321\247"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 "\263\277\267\347\266\323"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC8 "SENSOR_CHECK"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "TEST OFF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "TEST ON"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_5:
        DATA
        DC8 "DEBUG_T"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "3"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "6"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "9"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "12"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_10:
        DATA
        DC8 "ENDLINE_T"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "POS"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "M-L"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "M-R"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "R-L"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_15:
        DATA
        DC8 "gear"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "AI:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "AIM"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "K"

        SECTION `.rodata`:CONST:REORDER:NOROOT(1)
        DATA
        DC8 "D"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_20:
        DATA
        DC8 "COMPETITION"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_21:
        DATA
        DC8 "NO STOP"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_22:
        DATA
        DC8 "RAMP OFF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_23:
        DATA
        DC8 "speed_up OFF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_24:
        DATA
        DC8 "KAIHUAN"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_25:
        DATA
        DC8 "START!!!!!"
        DC8 0

        END
// 
//     9 bytes in section .bss
//   200 bytes in section .data
//   194 bytes in section .rodata
// 2 702 bytes in section .text
// 
// 2 702 bytes of CODE  memory
//   194 bytes of CONST memory
//   209 bytes of DATA  memory
//
//Errors: none
//Warnings: none
