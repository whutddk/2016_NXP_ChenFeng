#ifndef _CCD_H_
#define _CCD_H_

#include "include.h"

//#define TRUE        1
#define SI_SetVal()   PTE4_OUT = 1
#define SI_ClrVal()   PTE4_OUT = 0
#define CLK_ClrVal()  PTE5_OUT = 0
#define CLK_SetVal()  PTE5_OUT = 1


void StartIntegration(void) ;   
void ImageCapture(uint8_t * ImageData) ;
void SendHex(uint8_t hex) ;
void SamplingDelay(void) ;
void CCD_init(void) ;
void CalculateIntegrationTime(void) ;
uint8_t PixelAverage(uint8_t len, uint8_t *data) ;
void SendImageData(uint8_t * ImageData) ;
 void CCDOledPrint(void) ;


#endif /* _CCD_H_*/