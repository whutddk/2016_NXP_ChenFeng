#ifndef _LandzoPredator_H_
#define _LandzoPredator_H_



#define BFSDA      PTE12_OUT
#define BFCLK      PTE10_OUT
#define BFSDAI     PTE12_IN
#define BFDDRA     DDRE12 


#define IICEorr    (0)
#define IICOK      (1)

#define  DATALINE   60         //��������
#define  DATACOUNT  140        //��������




void BFdelay_1us(uint8_t us) ;
void BFDly_ms(uint8_t ms) ;
void iic_start(void) ;
void iic_stop(void) ;
void slave_ACK(void) ;
void slave_NOACK(void) ;
uint8_t check_ACK(void);
void IICSendByte(uint8_t ch) ;
uint8_t IICreceiveByte(void) ;
uint8_t writeNbyte(uint8_t slave_add, uint8_t *slave_data,uint16_t n) ;
uint8_t receiveNbyte(uint8_t slave_add,uint8_t *rece_data, uint16_t n) ;
uint8_t LandzoIICEEROM_INIT(void) ;
void LandzoCamera_init (void) ;
void PredatorOledPrint(uint16_t ADdataCount,uint16_t LineCount,\
                       uint16_t PredatorFAV,uint8 *dataAD );




#endif /* _Landzo_H_*/