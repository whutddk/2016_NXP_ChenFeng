#ifndef _SPI_H_
#define _SPI_H_

//FIFO 4���ֽ�

extern volatile struct SPI_MemMap *SPIN[3];

//�������ӻ�ģʽ
typedef enum SPI_CFG
{
    MASTER,    //����ģʽ
    SLAVE      //����ģʽ
} SPI_CFG;

//����SPIģ���
typedef enum SPIn
{
    //   PCS0      SCK      SOUT      SIN    |   PCS1     PCS2    PCS3    PCS4    PCS5

    SPI0,//   PTA14     PTA15    PTA16     PTA17  |
    //   PTC4      PTC5     PTC6      PTC7   |   PTC3     PTC2    PTC1    PTC0    PTB23
    //   PTD0      PTD1     PTD2      PTD3   |   PTD4     PTD5    PTD6

    SPI1,//   PTE4      PTE2     PTE1      PTE3   |   PTE0     PTE5    PTE6
    //   PTB10     PTB11    PTB16     PTB17  |   PTB9

    SPI2 //   PTB20     PTB21    PTB22     PTB23  |
    //   PTD11     PTD12    PTD13     PTD14  |   PTD15
} SPIn;

void spi_init(SPIn, SPI_CFG);
void spi_send(SPIn, u8 data[], u32 len);
u32 spi_re_max(SPIn spin, u8 data[], u32 maxlen);
u32 spi_re(SPIn spin, u8 data[]);
void spi_WR(SPIn spin, u8 *data, u32 len);

//#define SPI_TXRX_WAIT(SPIn)   while(  ( SPI_SR_REG(SPIN[SPIn]) & SPI_SR_TXRXS_MASK ) != 0 );    //�ȴ�SPI �������
#define SPI_TX_WAIT(SPIn)     while(  ( SPI_SR_REG(SPIN[SPIn]) & SPI_SR_TXRXS_MASK ) == 1 )    //�ȴ����� ���
#define SPI_RX_WAIT(SPIn)     while(  ( SPI_SR_REG(SPIN[SPIn]) & SPI_SR_RFDF_MASK ) == 0 )    //�ȴ����� FIFOΪ�ǿ�
#define SPI_EOQF_WAIT(SPIn)   while(  (SPI_SR_REG(SPIN[SPIn]) & SPI_SR_EOQF_MASK ) == 0 )  //�ȴ��������


void spi_irq_EN(SPIn);
void spi_irq_DIS(SPIn);

#endif  // _SPI_H_