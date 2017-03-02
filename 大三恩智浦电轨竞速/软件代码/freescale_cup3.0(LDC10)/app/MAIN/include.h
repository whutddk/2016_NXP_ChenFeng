#ifndef _INCLUDE_H_
#define _INCLUDE_H_

#ifndef ON
#define ON 1
#endif

#ifndef OFF 
#define OFF 0
//串口选择
#define USE_UART5 ON
//模糊选择
#define FUZZY


#include "common.h"

#include "BSP.H"
#include "ITAC.h"
#include "sensor.h"
#include "ctl.h"
#include "SPI.h"
#include "DEV_LDC1000.h"
#include "DEV_LDC1051.h"


#endif

#endif