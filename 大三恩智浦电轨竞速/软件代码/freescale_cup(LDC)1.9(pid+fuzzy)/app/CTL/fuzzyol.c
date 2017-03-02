#include "include.h"
#if FUZZY

uint8 rule_list[7][5] = 
{ //EC_NB	EC_NS   EC_Z	EC_PS	EC_PB 
  {U_PB,	U_PB,	U_PB,	U_PM,	U_PS},	/* E_NB */				
  {U_PB,	U_PB,	U_PM,	U_PS,	U_Z },/* E_NM */
  {U_PM,	U_PM,	U_Z,	U_Z,	U_NS},/* E_NS */
  {U_PM,	U_PS,	U_Z,	U_NS,	U_NM},/* E_Z  */
  {U_PS,	U_Z,	U_Z,	U_NM,	U_NM},/* E_PS */
  {U_Z,	        U_NS,	U_NM,	U_NB,	U_NB},/* E_PM */
  {U_NS,	U_NM,	U_NB,	U_NB,	U_NB}/* E_PB */
};

//int8 memf_buff[57];

int8 E1_memf[7][3] = 
{
  {-110,-100,-60},//E_NB
  {-80,-60,-40},//E_NM
  {-40,-20,0},//E_NS
  {-20,0,20},//E_Z
  {0,20,40},//E_PS
  {40,60,80},//E_PM
  {60,100,110}//E_PB
};

int8 E2_memf[7][3]=
{
  {-110,-100,-40},//EC_NB
  {-60,-40,0},//EC_NS
  {-40,0,40},//EC_Z
  {0,40,60},//EC_PS
  {40,100,110},//EC_PB
  {0,0,0},
  {0,0,0}
  
};

int16 U_memf[7][3] = 
{
  {-110,-100,   -80},//U_NB
  {-90,	-60,    -30},//U_NM
  {-60,	-30,    0},//U_NS
  {-30,	0,      30},//U_Z
  {0,   30,     60},//U_PS
  {30,	60,	90},//U_PM
  {80,	100,	110},//U_PB
};

  double result[7]= {0,0};
  double e_temp = 0;
  double ec_temp = 0;
  double u_temp = 0;
  double u2_temp = 0;
  int16 output = 0;

int16 fuzzy_online(double E_DATA,double EC_DATA)
{
  uint8 i,j;
  
  if ( E_DATA <= E1_memf[0][1] )
  {
    E_DATA = E1_memf[0][1];
    
  }
  
    if ( E_DATA >= E1_memf[6][1] )
  {
    E_DATA = E1_memf[6][1];
  }
  
  if ( EC_DATA <= E2_memf[0][1])
  {
    EC_DATA = E2_memf[0][1];
  }
  
  if ( EC_DATA >= E2_memf[4][1])
  {
    EC_DATA = E2_memf[4][1];
  }
  
  result[0] = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;

  e_temp = 0;
  ec_temp = 0;
  u_temp = 0;
  u2_temp = 0;
  output = 0;
  
  
  for ( i = 0 ;i < 7; i++ ) //E
  {
    for ( j = 0;j < 5; j++ ) //EC
    {
      if ( E_DATA > E1_memf[i][0] && E_DATA < E1_memf[i][2] 
          && EC_DATA > E2_memf[j][0] && EC_DATA < E2_memf[j][2] )
      {
        if ( E_DATA <= E1_memf[i][1] )
        {
          e_temp = (1./(E1_memf[i][1]-E1_memf[i][0])) * (E_DATA - E1_memf[i][0]);
        }
        else
        {
          e_temp = (1./(E1_memf[i][1]-E1_memf[i][2])) * (E_DATA - E1_memf[i][1])+1;
        }
        
        if ( EC_DATA < E2_memf[j][1] )
        {
          ec_temp = 1.0/(E2_memf[j][1]-E2_memf[j][0]) * (EC_DATA - E2_memf[j][0]); 
        }
        else
        {
          ec_temp = (1./(E2_memf[j][1]-E2_memf[j][2]))* (EC_DATA - E2_memf[j][1])+1;
        }
        
        //遍历规则表
        result[rule_list[i][j]] += e_temp * ec_temp;
      }
    }	
  }
  //反模糊
  
  //0
  u_temp += result[0]*1*  ( ( (U_memf[0+1][0] -U_memf[0][2] )/ 2 + U_memf[0][2] ) - U_memf[0][0]) * U_memf[0][1];
  u2_temp += result[0]* ( ( (U_memf[0+1][0] - U_memf[0][2] )/ 2 + U_memf[0][2] ) - U_memf[0][0]);
  //1-5
  for(i=1;i<6;i++)
  {
    u_temp += result[i]*1*( ( (U_memf[i+1][0] -U_memf[i][2] )/ 2 + U_memf[i][2] ) 
                           - (( U_memf[i][0] - U_memf[i-1][2])/2+ U_memf[i-1][2]) ) * U_memf[i][1];
    u2_temp += result[i]*1*( ( (U_memf[i+1][0] -U_memf[i][2] )/ 2 + U_memf[i][2] ) 
                            - (( U_memf[i][0] - U_memf[i-1][2])/2+ U_memf[i-1][2]) );
  }
  //6
  u_temp += result[6]*1* (  U_memf[6][2]  - ((U_memf[6][0] - U_memf[5][2])/2 + U_memf[5][2]) ) * U_memf[6][1];
  u2_temp +=  result[6]*1* (  U_memf[6][2]  - ((U_memf[6][0] - U_memf[5][2])/2 + U_memf[5][2]) );
  output = (int16)(u_temp / u2_temp);
  return (output);
}

#endif