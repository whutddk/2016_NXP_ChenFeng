/*
 * File:		nokia.h
 * Purpose:		Serial Input/Output routines
 *
 */

#ifndef _LANDZOKEY_H
#define _LANDZOKEY_H

#include "include.h"
/********************************************************************/

void Key_Init(void) ;
void Key_print(uint16_t Angle ,uint16_t Gryo);
void Key_Scan(uint16_t angle_value ,uint16_t gyro_value) ;
    

/********************************************************************/

#endif
