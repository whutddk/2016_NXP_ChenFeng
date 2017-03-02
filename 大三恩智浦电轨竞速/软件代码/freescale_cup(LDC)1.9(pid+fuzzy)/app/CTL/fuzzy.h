#ifndef _FUZZY_H_
#define _FUZZY_H_

#define E_NB 0
#define E_NM 1
#define E_NS 2
#define E_Z 3
#define E_PS 4
#define E_PM 5
#define E_PB 6

#define EC_NB 0
#define EC_NS 1
#define EC_Z 2
#define EC_PS 3
#define EC_PB 4

#define U_NB 0 
#define U_NM 1
#define U_NS 2
#define U_Z 3
#define U_PS 4
#define U_PM 5
#define U_PB 6


extern uint8 rule_list[7][5];
extern int8 E1_memf[7][3];
extern int8 E2_memf[7][3];
extern int16 U_memf[7][3];
#endif