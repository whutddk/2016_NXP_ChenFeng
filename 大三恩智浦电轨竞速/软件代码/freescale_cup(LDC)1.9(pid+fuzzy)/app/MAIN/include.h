#ifndef _INCLUDE_H_
#define _INCLUDE_H_

#ifndef ON
#define ON 1
#endif

#ifndef OFF 
#define OFF 0
#endif

#define FUZZY OFF

#define PID ON
//´®¿ÚÑ¡Ôñ
#define USE_UART5 OFF

#include "common.h"

#include "BSP.H"
#include "ITAC.h"
#include "sensor.h"
#include "ctl.h"
#include "i2c.h"
#include "LDC1614.h"
#include "fuzzy.h"
#include "PID.h"



#endif