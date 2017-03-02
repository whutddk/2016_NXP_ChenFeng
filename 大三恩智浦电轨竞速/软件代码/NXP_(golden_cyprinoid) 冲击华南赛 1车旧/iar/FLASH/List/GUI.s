///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       08/Aug/2016  13:02:44
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\ITAC\GUI.c
//    Command line =  
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\app\ITAC\GUI.c" -D LPLD_K60 -lCN
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -lB
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\" -o
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\Obj\" --no_cse --no_unroll --no_inline
//        --no_code_motion --no_tbaa --no_clustering --no_scheduling --debug
//        --endian=little --cpu=Cortex-M4 -e --fpu=None --dlib_config
//        "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\BSP\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\ITAC\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\CTL\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\MAIN\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\app\SENSOR\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\CPU\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\HW\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\LPLD\DEV\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Ports\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\uCOS-II\Source\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\FatFs\option\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\common\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\driver\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\descriptor\" -I
//        "C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\..\..\..\lib\USB\class\" -On -I "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench 7.0\arm\CMSIS\Include\" -D
//        ARM_MATH_CM4
//    List file    =  
//        C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid)
//        冲击华南赛 1车\iar\FLASH\List\GUI.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

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
        PUBLIC kaihuan_Buff
        PUBLIC update_page1
        PUBLIC update_page2
        PUBLIC update_page3
        PUBLIC update_page4
        PUBLIC update_page5

// C:\百度云同步盘\比赛代码\LPLD_OSKinetis_V3\launch\NXP_(golden_cyprinoid) 冲击华南赛 1车\app\ITAC\GUI.c
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
//   34 float Dir_Buff[34]={    
Dir_Buff:
        DATA
        DC32 3EB851ECH, 0H, 3EC7AE14H, 3E99999AH, 3EAE147BH, 3DCCCCCDH
        DC32 3EB851ECH, 3E99999AH, 3EC7AE14H, 3F000000H, 3EAE147BH, 3DCCCCCDH
        DC32 3EB851ECH, 3F19999AH, 3EC7AE14H, 3F4CCCCDH, 3EAE147BH, 3DCCCCCDH
        DC32 3EBD70A4H, 3F99999AH, 3ED1EB85H, 3FB33333H, 3EAE147BH, 3DCCCCCDH
        DC32 3EC28F5CH, 40000000H, 3ED1EB85H, 40133333H, 3EAE147BH, 3E99999AH
        DC32 3EC28F5CH, 40266666H, 3ED1EB85H, 40333333H
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
//   45   0.1,      //KD_S
//   46   0.36,     //KP_M
//   47   0.3,      //KD_M
//   48   0.39,     //KP_B
//   49   0.5,      //KD_B
//   50   
//   51   
//   52   0.34,//425  尽量不选
//   53   0.1,
//   54   0.36,
//   55   0.6,
//   56   0.39,
//   57   0.8,
//   58   
//   59   0.34,//450
//   60   0.1,
//   61   0.37,
//   62   1.2,
//   63   0.41,
//   64   1.4,
//   65   
//   66   0.34,//475    ++
//   67   0.1,
//   68   0.38,
//   69   2,
//   70   0.41,
//   71   2.3,
//   72   
//   73   0.34,//500
//   74   0.3,
//   75   0.38,
//   76   2.6,
//   77   0.41,
//   78   2.8,
//   79 };
//   80 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   81 void GUI_work()
//   82 {
GUI_work:
        PUSH     {R3-R5,LR}
//   83   uint8 key_temp = 0;
        MOVS     R4,#+0
//   84   //大循环
//   85   
//   86   GUI.page = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//   87   GUI.point = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+1]
//   88   GUI.para.AI = 3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+4]
//   89   for (;;)
//   90   {
//   91     //刷新液晶
//   92     GUI_update();
??GUI_work_0:
        BL       GUI_update
//   93     //当不按键时，一直循环检测
//   94     while ( !key_temp )
??GUI_work_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??GUI_work_2
//   95     { 
//   96       key_temp = wait_key();
        BL       wait_key
        MOVS     R4,R0
        B.N      ??GUI_work_1
//   97     }
//   98     //按键之后跳出，对按键值进行判定
//   99     
//  100     /*page，左右键*/
//  101     //左键，左翻页
//  102     if ( key_temp == 2 )
??GUI_work_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.W    ??GUI_work_3
//  103     {
//  104       if(GUI.page == 4)
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??GUI_work_4
//  105       {
//  106         //减参数
//  107         switch (GUI.point)
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??GUI_work_5
        BCC.W    ??GUI_work_3
        CMP      R0,#+3
        BEQ.N    ??GUI_work_6
        BCC.N    ??GUI_work_7
        CMP      R0,#+4
        BEQ.N    ??GUI_work_8
        B.N      ??GUI_work_3
//  108         {
//  109           case(1):
//  110             GUI.para.AI --;
??GUI_work_5:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+4]
//  111             if (  GUI.para.AI < 1 )
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??GUI_work_9
//  112             {
//  113               GUI.para.AI = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+4]
//  114             }
//  115             break;
??GUI_work_9:
        B.N      ??GUI_work_3
//  116             
//  117             case(2):
//  118               AIM_Buff[GUI.para.AI - 1] -= 25;
??GUI_work_7:
        LDR.W    R0,??DataTable6_6
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        ADDS     R0,R0,R1, LSL #+1
        LDR.W    R1,??DataTable6_6
        LDR.W    R2,??DataTable6_5
        LDRB     R2,[R2, #+4]
        ADDS     R1,R1,R2, LSL #+1
        LDRH     R1,[R1, #-2]
        SUBS     R1,R1,#+25
        STRH     R1,[R0, #-2]
//  119               break;
        B.N      ??GUI_work_3
//  120               
//  121               case(3):
//  122                 if(GUI.para.AI < 3)
??GUI_work_6:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        CMP      R0,#+3
        BGE.N    ??GUI_work_10
//  123                   Dir_Buff[GUI.para.AI * 2 - 2] -= 0.01;
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_8  ;; 0x47ae147b
        LDR.W    R3,??DataTable6_9  ;; 0xbf847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-8]
        B.N      ??GUI_work_11
//  124                 else
//  125                   Dir_Buff[GUI.para.AI * 6 - 11] -= 0.1;
??GUI_work_10:
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-44]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_10  ;; 0x9999999a
        LDR.W    R3,??DataTable6_11  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-44]
//  126                 break;
??GUI_work_11:
        B.N      ??GUI_work_3
//  127                 
//  128                 case(4):
//  129                   if(GUI.para.AI < 3)
??GUI_work_8:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        CMP      R0,#+3
        BGE.N    ??GUI_work_12
//  130                     Dir_Buff[GUI.para.AI * 2 - 2] -= 0.1;
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_10  ;; 0x9999999a
        LDR.W    R3,??DataTable6_11  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-8]
        B.N      ??GUI_work_13
//  131                   else
//  132                     Dir_Buff[GUI.para.AI * 6 - 9] -= 0.1;
??GUI_work_12:
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-36]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_10  ;; 0x9999999a
        LDR.W    R3,??DataTable6_11  ;; 0xbfb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-36]
//  133                   break;
??GUI_work_13:
        B.N      ??GUI_work_3
//  134                   
//  135         }
//  136       }
//  137       else
//  138       {
//  139         GUI.page --;
??GUI_work_4:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//  140         //最小1页
//  141         if ( GUI.page < 1 )
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GUI_work_14
//  142         {
//  143           GUI.page = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//  144         }
//  145         GUI.point = 1;
??GUI_work_14:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+1]
//  146       }
//  147     }
//  148     
//  149     //右键，右翻页
//  150     if ( key_temp == 3 )
??GUI_work_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.W    ??GUI_work_15
//  151     {
//  152       
//  153       if ( GUI.page == 5 )//发车
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.W    ??GUI_work_16
//  154       {
//  155         //退出人机交互函数，进入发车运行状态
//  156         break;
//  157       }
//  158       
//  159       if(GUI.page == 4)
??GUI_work_17:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.W    ??GUI_work_18
//  160       {
//  161         //加参数
//  162         switch (GUI.point)
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??GUI_work_19
        BCC.W    ??GUI_work_15
        CMP      R0,#+3
        BEQ.N    ??GUI_work_20
        BCC.N    ??GUI_work_21
        CMP      R0,#+4
        BEQ.N    ??GUI_work_22
        B.N      ??GUI_work_15
//  163         {
//  164           case(1):
//  165             GUI.para.AI ++;
??GUI_work_19:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+4]
//  166             if (  GUI.para.AI > 7 )
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        CMP      R0,#+8
        BLT.N    ??GUI_work_23
//  167             {
//  168               GUI.para.AI = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+4]
//  169             }
//  170             break;
??GUI_work_23:
        B.N      ??GUI_work_15
//  171             
//  172             case(2):
//  173               AIM_Buff[GUI.para.AI - 1] += 25;
??GUI_work_21:
        LDR.W    R0,??DataTable6_6
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        ADDS     R0,R0,R1, LSL #+1
        LDR.W    R1,??DataTable6_6
        LDR.W    R2,??DataTable6_5
        LDRB     R2,[R2, #+4]
        ADDS     R1,R1,R2, LSL #+1
        LDRH     R1,[R1, #-2]
        ADDS     R1,R1,#+25
        STRH     R1,[R0, #-2]
//  174               break;
        B.N      ??GUI_work_15
//  175               
//  176               case(3):
//  177                 if(GUI.para.AI < 3)
??GUI_work_20:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        CMP      R0,#+3
        BGE.N    ??GUI_work_24
//  178                   Dir_Buff[GUI.para.AI * 2 - 2] += 0.01;
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_8  ;; 0x47ae147b
        LDR.W    R3,??DataTable6_12  ;; 0x3f847ae1
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-8]
        B.N      ??GUI_work_25
//  179                 else
//  180                   Dir_Buff[GUI.para.AI * 6 - 11] += 0.1;
??GUI_work_24:
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-44]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_10  ;; 0x9999999a
        LDR.W    R3,??DataTable6_13  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-44]
//  181                 break;
??GUI_work_25:
        B.N      ??GUI_work_15
//  182                 
//  183                 case(4):
//  184                   if(GUI.para.AI < 3)
??GUI_work_22:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        CMP      R0,#+3
        BGE.N    ??GUI_work_26
//  185                     Dir_Buff[GUI.para.AI * 2 - 2] += 0.1;
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_10  ;; 0x9999999a
        LDR.W    R3,??DataTable6_13  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-8]
        B.N      ??GUI_work_27
//  186                   else
//  187                     Dir_Buff[GUI.para.AI * 6 - 9] += 0.1;
??GUI_work_26:
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R5,R0,R1, LSL #+2
        LDR.W    R0,??DataTable6_7
        LDR.W    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        MOVS     R2,#+6
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-36]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable6_10  ;; 0x9999999a
        LDR.W    R3,??DataTable6_13  ;; 0x3fb99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R5, #-36]
//  188                   break;
??GUI_work_27:
        B.N      ??GUI_work_15
//  189         }
//  190       }
//  191       else
//  192       {
//  193         
//  194         GUI.page ++;
??GUI_work_18:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//  195         
//  196         if ( GUI.page == 3 )   //标定后初始化定时器
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??GUI_work_28
//  197         {
//  198           PIT1_init();//控制系统时钟 //暂定10ms
        BL       PIT1_init
//  199           PIT0_init();//主系统时钟 //1MS 一次中断
        BL       PIT0_init
//  200           NVIC_init();
        BL       NVIC_init
//  201         }
//  202         
//  203         //最多6页，不够再加
//  204         if ( GUI.page > 5 )
??GUI_work_28:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BLT.N    ??GUI_work_29
//  205         {
//  206           GUI.page = 5;
        MOVS     R0,#+5
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//  207         }
//  208         GUI.point = 1;
??GUI_work_29:
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+1]
//  209       }
//  210     }
//  211     
//  212     //上键 目前只能在第二/4页操作
//  213     if ( key_temp == 1 && (GUI.page == 2 ||GUI.page == 4 ))
??GUI_work_15:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??GUI_work_30
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??GUI_work_31
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??GUI_work_30
//  214     {
//  215       
//  216       GUI.point --;
??GUI_work_31:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+1]
//  217       if ( GUI.point < 1 )
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??GUI_work_30
//  218       {
//  219         GUI.point = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+1]
//  220       }
//  221     }
//  222     
//  223     //下键，目前只能在第三/4页操作
//  224     if ( key_temp == 4 && (GUI.page == 2 || GUI.page == 4 || GUI.page == 5))
??GUI_work_30:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??GUI_work_32
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??GUI_work_33
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BEQ.N    ??GUI_work_33
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE.N    ??GUI_work_32
//  225     {
//  226       if ( GUI.page == 5 )//发车
??GUI_work_33:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.N    ??GUI_work_16
//  227       {
//  228         //退出人机交互函数，进入发车运行状态
//  229         break;
//  230       }
//  231       
//  232       GUI.point ++ ;
??GUI_work_34:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+1]
//  233       if ( GUI.point > 4 )
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+5
        BLT.N    ??GUI_work_32
//  234       {
//  235         GUI.point = 4;
        MOVS     R0,#+4
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+1]
//  236       }
//  237     }
//  238     
//  239     //确认键，根据需要写条件
//  240     if ( key_temp == 5 )
??GUI_work_32:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+5
        BNE.N    ??GUI_work_35
//  241     {
//  242       //在第二页
//  243       if ( GUI.page == 2)
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??GUI_work_36
//  244       {
//  245         switch (GUI.point)
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??GUI_work_37
        BCC.N    ??GUI_work_36
        CMP      R0,#+3
        BEQ.N    ??GUI_work_38
        BCC.N    ??GUI_work_39
        CMP      R0,#+4
        BEQ.N    ??GUI_work_40
        B.N      ??GUI_work_36
//  246         {
//  247           case(1): 
//  248             sensor_isr();
??GUI_work_37:
        BL       sensor_isr
//  249             break; //调用传感器校准函数
        B.N      ??GUI_work_36
//  250             
//  251             case(2):
//  252               debug_Enable = !debug_Enable;
??GUI_work_39:
        LDR.W    R0,??DataTable6_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??GUI_work_41
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
        B.N      ??GUI_work_42
??GUI_work_41:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable6_14
        STRB     R0,[R1, #+0]
//  253               break;
??GUI_work_42:
        B.N      ??GUI_work_36
//  254               
//  255               case(3):
//  256                 dec_sec += 3;
??GUI_work_38:
        LDR.W    R0,??DataTable6_15
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+3
        LDR.W    R1,??DataTable6_15
        STRB     R0,[R1, #+0]
//  257                 if(dec_sec > 12)
        LDR.W    R0,??DataTable6_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+13
        BLT.N    ??GUI_work_43
//  258                 {
//  259                   dec_sec = 3;
        MOVS     R0,#+3
        LDR.W    R1,??DataTable6_15
        STRB     R0,[R1, #+0]
//  260                 }
//  261                 break;
??GUI_work_43:
        B.N      ??GUI_work_36
//  262                 
//  263                 case(4):
//  264                   GUI.para.endline_time += 3;
??GUI_work_40:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+3]
        ADDS     R0,R0,#+3
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+3]
//  265                   if(GUI.para.endline_time > 40)
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+3]
        CMP      R0,#+41
        BLT.N    ??GUI_work_44
//  266                   {
//  267                     GUI.para.endline_time = 10;
        MOVS     R0,#+10
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+3]
//  268                   }
//  269                   break;
//  270                   
//  271         }
//  272       }
//  273       //在开始比赛界面
//  274       if ( GUI.page == 5 )
??GUI_work_44:
??GUI_work_36:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BEQ.N    ??GUI_work_16
//  275       {
//  276         //退出人机交互函数，进入发车运行状态
//  277         break;
//  278       }
//  279       
//  280       //第四页，，翻页
//  281       if(GUI.page == 4)
??GUI_work_45:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+4
        BNE.N    ??GUI_work_35
//  282       {
//  283         GUI.page ++;
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+0]
//  284         GUI.point = 1;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable6_5
        STRB     R0,[R1, #+1]
//  285       }
//  286       
//  287     }
//  288     key_temp = 0;
??GUI_work_35:
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??GUI_work_0
//  289   }
//  290 }
??GUI_work_16:
        POP      {R0,R4,R5,PC}    ;; return
//  291 
//  292 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  293 void GUI_update()
//  294 {
GUI_update:
        PUSH     {R7,LR}
//  295   OLED_CLS();
        BL       OLED_CLS
//  296   switch (GUI.page)
        LDR.W    R0,??DataTable6_5
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
//  297   {
//  298     //显示的页面
//  299     case(1):update_page1();break;
??GUI_update_0:
        BL       update_page1
        B.N      ??GUI_update_6
//  300     case(2):update_page2();break;
??GUI_update_3:
        BL       update_page2
        B.N      ??GUI_update_6
//  301     case(3):update_page3();break;
??GUI_update_2:
        BL       update_page3
        B.N      ??GUI_update_6
//  302     case(4):update_page4();break;
??GUI_update_5:
        BL       update_page4
        B.N      ??GUI_update_6
//  303     case(5):update_page5();break;
??GUI_update_4:
        BL       update_page5
        B.N      ??GUI_update_6
//  304     
//  305   default:break;
//  306   }
//  307 }
??GUI_update_1:
??GUI_update_6:
        POP      {R0,PC}          ;; return
//  308 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  309 void update_page1()
//  310 {
update_page1:
        PUSH     {R7,LR}
//  311   //Draw_BMP(0,0,66,7,mushroom);
//  312   OLED_P14x16Str( 20,0 ,"武汉理工大学" );
        LDR.W    R2,??DataTable6_16
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       OLED_P14x16Str
//  313   OLED_P14x16Str( 40,4 ,"晨风队" );
        LDR.W    R2,??DataTable6_17
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_P14x16Str
//  314 }
        POP      {R0,PC}          ;; return
//  315 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  316 void update_page2()
//  317 {
update_page2:
        PUSH     {R7,LR}
//  318   
//  319   
//  320   //被point选中的会空几格
//  321   if ( GUI.point != 1 )
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??update_page2_0
//  322   {
//  323     OLED_P8x16Str( 0,0 ,"SENSOR_CHECK" );
        LDR.W    R2,??DataTable6_18
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page2_1
//  324   }
//  325   else 
//  326   {
//  327     OLED_P8x16Str( 15,0 ,"SENSOR_CHECK" );
??update_page2_0:
        LDR.W    R2,??DataTable6_18
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       OLED_P8x16Str
//  328   }
//  329   
//  330   if ( debug_Enable == 0 )  //选择定时调试
??update_page2_1:
        LDR.W    R0,??DataTable6_14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??update_page2_2
//  331   {
//  332     OLED_P8x16Str( 0,2 ,"TEST OFF" );
        LDR.W    R2,??DataTable6_19
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page2_3
//  333   }
//  334   else 
//  335   {
//  336     OLED_P8x16Str( 0,2 ,"TEST ON" );
??update_page2_2:
        LDR.W    R2,??DataTable6_20
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  337   }
//  338   
//  339   if ( GUI.point != 3 ) //设置定时时间
??update_page2_3:
        LDR.W    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+3
        BEQ.N    ??update_page2_4
//  340   {
//  341     OLED_P8x16Str( 0,4 ,"DEBUG_T" );
        LDR.W    R2,??DataTable6_21
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page2_5
//  342   }
//  343   else
//  344   {
//  345     OLED_P8x16Str( 15,4 ,"DEBUG_T" );
??update_page2_4:
        LDR.W    R2,??DataTable6_21
        MOVS     R1,#+4
        MOVS     R0,#+15
        BL       OLED_P8x16Str
//  346   }
//  347   
//  348   if ( dec_sec == 3 )
??update_page2_5:
        LDR.W    R0,??DataTable6_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+3
        BNE.N    ??update_page2_6
//  349     OLED_P8x16Str( 90,4 ,"3" );
        ADR.N    R2,??DataTable4  ;; "3"
        MOVS     R1,#+4
        MOVS     R0,#+90
        BL       OLED_P8x16Str
        B.N      ??update_page2_7
//  350   else if( dec_sec == 6 )
??update_page2_6:
        LDR.W    R0,??DataTable6_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+6
        BNE.N    ??update_page2_8
//  351     OLED_P8x16Str( 90,4 ,"6" );
        ADR.N    R2,??DataTable4_1  ;; "6"
        MOVS     R1,#+4
        MOVS     R0,#+90
        BL       OLED_P8x16Str
        B.N      ??update_page2_7
//  352   else if( dec_sec == 9 )
??update_page2_8:
        LDR.N    R0,??DataTable6_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+9
        BNE.N    ??update_page2_9
//  353     OLED_P8x16Str( 90,4 ,"9" );
        ADR.N    R2,??DataTable5  ;; "9"
        MOVS     R1,#+4
        MOVS     R0,#+90
        BL       OLED_P8x16Str
        B.N      ??update_page2_7
//  354   else if( dec_sec == 12 )
??update_page2_9:
        LDR.N    R0,??DataTable6_15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+12
        BNE.N    ??update_page2_7
//  355     OLED_P8x16Str( 90,4 ,"12" );
        ADR.N    R2,??DataTable5_1  ;; 0x31, 0x32, 0x00, 0x00
        MOVS     R1,#+4
        MOVS     R0,#+90
        BL       OLED_P8x16Str
//  356   
//  357   
//  358   if ( GUI.point != 4 )
??update_page2_7:
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+4
        BEQ.N    ??update_page2_10
//  359   {
//  360     OLED_P8x16Str( 0,6 ,"ENDLINE_T" );
        LDR.N    R2,??DataTable6_22
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page2_11
//  361   }
//  362   else
//  363   {
//  364     OLED_P8x16Str( 10,6 ,"ENDLINE_T" );
??update_page2_10:
        LDR.N    R2,??DataTable6_22
        MOVS     R1,#+6
        MOVS     R0,#+10
        BL       OLED_P8x16Str
//  365   }
//  366   
//  367   
//  368   OLED_PrintInt16( 70,6 ,GUI.para.endline_time );
??update_page2_11:
        LDR.N    R0,??DataTable6_5
        LDRB     R2,[R0, #+3]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+6
        MOVS     R0,#+70
        BL       OLED_PrintInt16
//  369   
//  370   
//  371   
//  372   
//  373   
//  374 }
        POP      {R0,PC}          ;; return
//  375 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  376 void update_page3()
//  377 {
update_page3:
        PUSH     {R7,LR}
//  378   //显示1参数，将需要显示的变量代入即可
//  379   OLED_P8x16Str( 0,0,"POS" );
        ADR.N    R2,??DataTable5_2  ;; "POS"
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  380   OLED_PrintInt16(40, 0, line.pos);
        LDR.N    R0,??DataTable6_23
        LDRSH    R2,[R0, #+10]
        MOVS     R1,#+0
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  381   OLED_P8x16Str( 0,2,"M-L" );
        ADR.N    R2,??DataTable5_3  ;; "M-L"
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  382   OLED_PrintInt16(50, 2, sensor.error[0]);
        LDR.N    R0,??DataTable6_24
        LDRSH    R2,[R0, #+68]
        MOVS     R1,#+2
        MOVS     R0,#+50
        BL       OLED_PrintInt16
//  383   OLED_P8x16Str( 0,4,"M-R" );
        ADR.N    R2,??DataTable5_4  ;; "M-R"
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  384   OLED_PrintInt16(50, 4, sensor.error[1]);
        LDR.N    R0,??DataTable6_24
        LDRSH    R2,[R0, #+70]
        MOVS     R1,#+4
        MOVS     R0,#+50
        BL       OLED_PrintInt16
//  385   OLED_P8x16Str( 0,6,"R-L" );
        ADR.N    R2,??DataTable6  ;; "R-L"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  386   OLED_PrintInt16(50, 6, sensor.error[2]);
        LDR.N    R0,??DataTable6_24
        LDRSH    R2,[R0, #+72]
        MOVS     R1,#+6
        MOVS     R0,#+50
        BL       OLED_PrintInt16
//  387 }
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
//  388 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  389 void update_page4()
//  390 {
update_page4:
        PUSH     {R7,LR}
//  391   //选择档位
//  392   if ( GUI.point != 1 )
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??update_page4_0
//  393   {
//  394     OLED_P8x16Str( 0,0 ,"gear" );
        LDR.N    R2,??DataTable6_25
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       OLED_P8x16Str
        B.N      ??update_page4_1
//  395   }
//  396   else 
//  397   {
//  398     OLED_P8x16Str( 15,0 ,"gear" );
??update_page4_0:
        LDR.N    R2,??DataTable6_25
        MOVS     R1,#+0
        MOVS     R0,#+15
        BL       OLED_P8x16Str
//  399   }
//  400   
//  401   OLED_P8x16Str( 60,0 ,"AI:" );
??update_page4_1:
        ADR.N    R2,??DataTable6_1  ;; "AI:"
        MOVS     R1,#+0
        MOVS     R0,#+60
        BL       OLED_P8x16Str
//  402   OLED_PrintInt16( 74,0 ,GUI.para.AI );
        LDR.N    R0,??DataTable6_5
        LDRB     R2,[R0, #+4]
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        MOVS     R1,#+0
        MOVS     R0,#+74
        BL       OLED_PrintInt16
//  403   OLED_P8x16Str( 0,2,"AIM" );
        ADR.N    R2,??DataTable6_2  ;; "AIM"
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  404   
//  405   if(1 == flag_bihuan)
        LDR.N    R0,??DataTable6_26
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??update_page4_2
//  406   {
//  407     OLED_PrintInt16(40, 2,AIM_Buff[GUI.para.AI-1]);//速度
        LDR.N    R0,??DataTable6_6
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        ADDS     R0,R0,R1, LSL #+1
        LDRSH    R2,[R0, #-2]
        MOVS     R1,#+2
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  408     if ( GUI.para.AI < 3 )
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        CMP      R0,#+3
        BGE.N    ??update_page4_3
//  409     { 
//  410       OLED_P8x16Str( 0,4,"K" );
        ADR.N    R2,??DataTable6_3  ;; "K"
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  411       OLED_P8x16Str( 0,6,"D" );
        ADR.N    R2,??DataTable6_4  ;; "D"
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       OLED_P8x16Str
//  412       
//  413       OLED_PrintFloat(40, 4,Dir_Buff[GUI.para.AI * 2 - 2]);//参数
        LDR.N    R0,??DataTable6_7
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        LSLS     R1,R1,#+1
        ADDS     R0,R0,R1, LSL #+2
        LDR      R0,[R0, #-8]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_PrintFloat
//  414       OLED_PrintFloat(40, 6,Dir_Buff[GUI.para.AI * 2 - 1]);
        LDR.N    R0,??DataTable6_7
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
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
//  415     }
//  416     else
//  417     {
//  418       OLED_PrintFloat(0, 4,Dir_Buff[GUI.para.AI * 6 - 14]);
??update_page4_3:
        LDR.N    R0,??DataTable6_7
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
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
//  419       OLED_PrintFloat(40,4,Dir_Buff[GUI.para.AI * 6 - 12]);
        LDR.N    R0,??DataTable6_7
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
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
//  420       OLED_PrintFloat(80,4,Dir_Buff[GUI.para.AI * 6 - 10]);
        LDR.N    R0,??DataTable6_7
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
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
//  421       
//  422       OLED_PrintFloat(0, 6,Dir_Buff[GUI.para.AI * 6 - 13]);
        LDR.N    R0,??DataTable6_7
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
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
//  423       OLED_PrintFloat(40,6,Dir_Buff[GUI.para.AI * 6 - 11]);
        LDR.N    R0,??DataTable6_7
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
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
//  424       OLED_PrintFloat(80,6,Dir_Buff[GUI.para.AI * 6 - 9]);
        LDR.N    R0,??DataTable6_7
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
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
//  425       
//  426     }
//  427   }
//  428   else
//  429   {
//  430     if ( GUI.para.AI == 0 )
??update_page4_2:
        LDR.N    R0,??DataTable6_5
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??update_page4_5
//  431     {
//  432       OLED_PrintInt16(40, 2,0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  433       OLED_PrintInt16(40, 4,0);
        MOVS     R2,#+0
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  434       OLED_PrintInt16(40, 6,0);
        MOVS     R2,#+0
        MOVS     R1,#+6
        MOVS     R0,#+40
        BL       OLED_PrintInt16
        B.N      ??update_page4_4
//  435     }
//  436     
//  437     else 
//  438     {
//  439       OLED_PrintInt16(40, 2,kaihuan_Buff[GUI.para.AI-1]);
??update_page4_5:
        LDR.N    R0,??DataTable6_27
        LDR.N    R1,??DataTable6_5
        LDRB     R1,[R1, #+4]
        ADDS     R0,R0,R1, LSL #+1
        LDRSH    R2,[R0, #-2]
        MOVS     R1,#+2
        MOVS     R0,#+40
        BL       OLED_PrintInt16
//  440       OLED_PrintFloat(40, 4,0);       //开环buff未建立
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R1,#+4
        MOVS     R0,#+40
        BL       OLED_PrintFloat
//  441       OLED_PrintFloat(40, 6,0);
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R1,#+6
        MOVS     R0,#+40
        BL       OLED_PrintFloat
//  442     }
//  443     
//  444   }
//  445 }
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

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC8      "M-L"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC8      "M-R"
//  446 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  447 void update_page5()
//  448 {
update_page5:
        PUSH     {R7,LR}
//  449   switch (sw)
        LDR.N    R0,??DataTable6_28
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
//  450   {
//  451     case(0x0F):
//  452       OLED_P8x16Str(2,0,"COMPETITION");
??update_page5_5:
        LDR.N    R2,??DataTable6_29
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       OLED_P8x16Str
//  453       break;
        B.N      ??update_page5_4
//  454       case(0x0D):
//  455         OLED_P8x16Str(6,0,"NO STOP");
??update_page5_2:
        LDR.N    R2,??DataTable6_30
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  456         break;
        B.N      ??update_page5_4
//  457         case(0x07):
//  458           OLED_P8x16Str(6,0,"RAMP OFF");
??update_page5_0:
        LDR.N    R2,??DataTable6_31
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  459           break;
        B.N      ??update_page5_4
//  460           case(0x0B):
//  461             OLED_P8x16Str(6,0,"speed_up OFF");
??update_page5_1:
        LDR.N    R2,??DataTable6_32
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  462             break;
        B.N      ??update_page5_4
//  463             case(0x0E):
//  464               OLED_P8x16Str(6,0,"KAIHUAN");
??update_page5_3:
        LDR.N    R2,??DataTable6_33
        MOVS     R1,#+0
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  465               break;
//  466               
//  467   }
//  468   
//  469   OLED_P8x16Str(6,4,"START!!!!!");
??update_page5_4:
        LDR.N    R2,??DataTable6_34
        MOVS     R1,#+4
        MOVS     R0,#+6
        BL       OLED_P8x16Str
//  470 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC8      "R-L"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC8      "AI:"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC8      "AIM"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC8      "K",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC8      "D",0x0,0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     GUI

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     AIM_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     Dir_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0xbf847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     0xbfb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     0x3f847ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     0x3fb99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     debug_Enable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     dec_sec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_23:
        DC32     line

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_24:
        DC32     sensor

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_25:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_26:
        DC32     flag_bihuan

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_27:
        DC32     kaihuan_Buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_28:
        DC32     sw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_29:
        DC32     ?_20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_30:
        DC32     ?_21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_31:
        DC32     ?_22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_32:
        DC32     ?_23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_33:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_34:
        DC32     ?_25

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
//     8 bytes in section .bss
//   160 bytes in section .data
//   194 bytes in section .rodata
// 2 460 bytes in section .text
// 
// 2 460 bytes of CODE  memory
//   194 bytes of CONST memory
//   168 bytes of DATA  memory
//
//Errors: none
//Warnings: none
