///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       11/Mar/2016  11:02:54
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\fuzzyol.c
//    Command line =  
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\fuzzyol.c"
//        -D LPLD_K60 -D USE_K60DZ10 -lCN
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\"
//        -lB
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\"
//        -o
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\Obj\"
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=None --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\INC\c\DLib_Config_Normal.h" -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\MAIN\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\BSP\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\CTL\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\sensor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\app\ITAC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\CPU\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\HW\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\DEV\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\LPLD\FUNC\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\uCOS-II\Ports\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\uCOS-II\Source\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\FatFs\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\FatFs\option\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\common\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\driver\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\descriptor\"
//        -I
//        "D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\..\..\..\lib\USB\class\"
//        -On -I "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.0\arm\CMSIS\Include\" -D ARM_MATH_CM4
//    List file    =  
//        D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\iar\FLASH\List\fuzzyol.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1



        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// D:\LPLDV3.1\LPLD_OSKinetis_V3\project\freescale_cup(LDC)1.9(pid+fuzzy)\app\CTL\fuzzyol.c
//    1 #include "include.h"
//    2 #if FUZZY
//    3 
//    4 uint8 rule_list[7][5] = 
//    5 { //EC_NB	EC_NS   EC_Z	EC_PS	EC_PB 
//    6   {U_PB,	U_PB,	U_PB,	U_PM,	U_PS},	/* E_NB */				
//    7   {U_PB,	U_PB,	U_PM,	U_PS,	U_Z },/* E_NM */
//    8   {U_PM,	U_PM,	U_Z,	U_Z,	U_NS},/* E_NS */
//    9   {U_PM,	U_PS,	U_Z,	U_NS,	U_NM},/* E_Z  */
//   10   {U_PS,	U_Z,	U_Z,	U_NM,	U_NM},/* E_PS */
//   11   {U_Z,	        U_NS,	U_NM,	U_NB,	U_NB},/* E_PM */
//   12   {U_NS,	U_NM,	U_NB,	U_NB,	U_NB}/* E_PB */
//   13 };
//   14 
//   15 //int8 memf_buff[57];
//   16 
//   17 int8 E1_memf[7][3] = 
//   18 {
//   19   {-110,-100,-60},//E_NB
//   20   {-80,-60,-40},//E_NM
//   21   {-40,-20,0},//E_NS
//   22   {-20,0,20},//E_Z
//   23   {0,20,40},//E_PS
//   24   {40,60,80},//E_PM
//   25   {60,100,110}//E_PB
//   26 };
//   27 
//   28 int8 E2_memf[7][3]=
//   29 {
//   30   {-110,-100,-40},//EC_NB
//   31   {-60,-40,0},//EC_NS
//   32   {-40,0,40},//EC_Z
//   33   {0,40,60},//EC_PS
//   34   {40,100,110},//EC_PB
//   35   {0,0,0},
//   36   {0,0,0}
//   37   
//   38 };
//   39 
//   40 int16 U_memf[7][3] = 
//   41 {
//   42   {-110,-100,   -80},//U_NB
//   43   {-90,	-60,    -30},//U_NM
//   44   {-60,	-30,    0},//U_NS
//   45   {-30,	0,      30},//U_Z
//   46   {0,   30,     60},//U_PS
//   47   {30,	60,	90},//U_PM
//   48   {80,	100,	110},//U_PB
//   49 };
//   50 
//   51   double result[7]= {0,0};
//   52   double e_temp = 0;
//   53   double ec_temp = 0;
//   54   double u_temp = 0;
//   55   double u2_temp = 0;
//   56   int16 output = 0;
//   57 
//   58 int16 fuzzy_online(double E_DATA,double EC_DATA)
//   59 {
//   60   uint8 i,j;
//   61   
//   62   if ( E_DATA <= E1_memf[0][1] )
//   63   {
//   64     E_DATA = E1_memf[0][1];
//   65     
//   66   }
//   67   
//   68     if ( E_DATA >= E1_memf[6][1] )
//   69   {
//   70     E_DATA = E1_memf[6][1];
//   71   }
//   72   
//   73   if ( EC_DATA <= E2_memf[0][1])
//   74   {
//   75     EC_DATA = E2_memf[0][1];
//   76   }
//   77   
//   78   if ( EC_DATA >= E2_memf[4][1])
//   79   {
//   80     EC_DATA = E2_memf[4][1];
//   81   }
//   82   
//   83   result[0] = 0;
//   84   result[1] = 0;
//   85   result[2] = 0;
//   86   result[3] = 0;
//   87   result[4] = 0;
//   88   result[5] = 0;
//   89   result[6] = 0;
//   90 
//   91   e_temp = 0;
//   92   ec_temp = 0;
//   93   u_temp = 0;
//   94   u2_temp = 0;
//   95   output = 0;
//   96   
//   97   
//   98   for ( i = 0 ;i < 7; i++ ) //E
//   99   {
//  100     for ( j = 0;j < 5; j++ ) //EC
//  101     {
//  102       if ( E_DATA > E1_memf[i][0] && E_DATA < E1_memf[i][2] 
//  103           && EC_DATA > E2_memf[j][0] && EC_DATA < E2_memf[j][2] )
//  104       {
//  105         if ( E_DATA <= E1_memf[i][1] )
//  106         {
//  107           e_temp = (1./(E1_memf[i][1]-E1_memf[i][0])) * (E_DATA - E1_memf[i][0]);
//  108         }
//  109         else
//  110         {
//  111           e_temp = (1./(E1_memf[i][1]-E1_memf[i][2])) * (E_DATA - E1_memf[i][1])+1;
//  112         }
//  113         
//  114         if ( EC_DATA < E2_memf[j][1] )
//  115         {
//  116           ec_temp = 1.0/(E2_memf[j][1]-E2_memf[j][0]) * (EC_DATA - E2_memf[j][0]); 
//  117         }
//  118         else
//  119         {
//  120           ec_temp = (1./(E2_memf[j][1]-E2_memf[j][2]))* (EC_DATA - E2_memf[j][1])+1;
//  121         }
//  122         
//  123         //遍历规则表
//  124         result[rule_list[i][j]] += e_temp * ec_temp;
//  125       }
//  126     }	
//  127   }
//  128   //反模糊
//  129   
//  130   //0
//  131   u_temp += result[0]*1*  ( ( (U_memf[0+1][0] -U_memf[0][2] )/ 2 + U_memf[0][2] ) - U_memf[0][0]) * U_memf[0][1];
//  132   u2_temp += result[0]* ( ( (U_memf[0+1][0] - U_memf[0][2] )/ 2 + U_memf[0][2] ) - U_memf[0][0]);
//  133   //1-5
//  134   for(i=1;i<6;i++)
//  135   {
//  136     u_temp += result[i]*1*( ( (U_memf[i+1][0] -U_memf[i][2] )/ 2 + U_memf[i][2] ) 
//  137                            - (( U_memf[i][0] - U_memf[i-1][2])/2+ U_memf[i-1][2]) ) * U_memf[i][1];
//  138     u2_temp += result[i]*1*( ( (U_memf[i+1][0] -U_memf[i][2] )/ 2 + U_memf[i][2] ) 
//  139                             - (( U_memf[i][0] - U_memf[i-1][2])/2+ U_memf[i-1][2]) );
//  140   }
//  141   //6
//  142   u_temp += result[6]*1* (  U_memf[6][2]  - ((U_memf[6][0] - U_memf[5][2])/2 + U_memf[5][2]) ) * U_memf[6][1];
//  143   u2_temp +=  result[6]*1* (  U_memf[6][2]  - ((U_memf[6][0] - U_memf[5][2])/2 + U_memf[5][2]) );
//  144   output = (int16)(u_temp / u2_temp);
//  145   return (output);
//  146 }
//  147 
//  148 #endif
// 
//
// 
//
//
//Errors: none
//Warnings: none
