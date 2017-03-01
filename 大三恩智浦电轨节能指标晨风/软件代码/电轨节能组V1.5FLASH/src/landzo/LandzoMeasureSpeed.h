#ifndef _LANDZOmotor_H
#define _LANDZOmotor_H

#include "include.h"

#define   LIN_COUNT  65535

void MeasureSpeed_one_init(void);
void MeasureSpeed_double_init(void);
uint16_t MeasureSpeed_one_Count(void);
void MeasureSpeed_double_Count(uint16_t *Count);


#endif