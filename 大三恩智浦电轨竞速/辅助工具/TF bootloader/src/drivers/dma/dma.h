#ifndef _DMA_H_
#define _DMA_H_


typedef enum DMA_sources
{
    /*        ����ͨ��            */
    Channel_Disabled    = 0,

    /*        UART            */
    DMA_UART0_Rx            = 2,
    DMA_UART0_Tx            = 3,
    DMA_UART1_Rx            = 4,
    DMA_UART1_Tx            = 5,
    DMA_UART2_Rx            = 6,
    DMA_UART2_Tx            = 7,
    DMA_UART3_Rx            = 8,
    DMA_UART3_Tx            = 9,
    DMA_UART4_Rx            = 10,
    DMA_UART4_Tx            = 11,
    DMA_UART5_Rx            = 12,
    DMA_UART5_Tx            = 13,

    /*        I2S            */
    DMA_I2S0_Rx             = 14,
    DMA_I2S0_Tx             = 15,

    /*        SPI            */
    DMA_SPI0_Rx             = 16,
    DMA_SPI0_Tx             = 17,
    DMA_SPI1_Rx             = 18,
    DMA_SPI1_Tx             = 19,

    /*        I2C            */
    DMA_I2C0                = 22,
    DMA_I2C1                = 23,

    /*        FTM            */
    DMA_FTM0_CH0            = 24,
    DMA_FTM0_CH1            = 25,
    DMA_FTM0_CH2            = 26,
    DMA_FTM0_CH3            = 27,
    DMA_FTM0_CH4            = 28,
    DMA_FTM0_CH5            = 29,
    DMA_FTM0_CH6            = 30,
    DMA_FTM0_CH7            = 31,

    DMA_FTM1_CH0            = 32,
    DMA_FTM1_CH1            = 33,

    DMA_FTM2_CH0            = 34,
    DMA_FTM2_CH1            = 35,

    DMA_FTM3_CH0            = 36,
    DMA_FTM3_CH1            = 37,
    DMA_FTM3_CH2            = 38,

    DMA_FTM1_CH3            = 39,       //��ô���� FTM1 �أ�datasheet��������

    /*     ADC/DAC/CMP/CMT    */
    DMA_ADC0                = 40,
    DMA_ADC1                = 41,
    DMA_CMP0                = 42,
    DMA_CMP1                = 43,
    DMA_CMP2                = 44,
    DMA_DAC0                = 45,
    DMA_DAC1                = 46,
    DMA_CMT                 = 47,

    DMA_PDB                 = 48,


    DMA_Port_A              = 49,
    DMA_Port_B              = 50,
    DMA_Port_C              = 51,
    DMA_Port_D              = 52,
    DMA_Port_E              = 53,


    DMA_FTM3_CH4            = 54,
    DMA_FTM3_CH5            = 55,
    DMA_FTM3_CH6            = 56,
    DMA_FTM3_CH7            = 57,

    DMA_Always_EN1          = 58,
    DMA_Always_EN2          = 59,
    DMA_Always_EN3          = 60,
    DMA_Always_EN4          = 61,
    DMA_Always_EN5          = 62,
    DMA_Always_EN6          = 63,
} DMA_sources;



typedef enum
{
    KEEPON = 1,                                //Ŀ�ĵ�ַ���ֲ���

} DMA_cfg;

typedef enum DMA_BYTEn      //DMAÿ�δ����ֽ���
{
    DMA_BYTE1 = 0,
    DMA_BYTE2 = 1,
    DMA_BYTE4 = 2,
    DMA_BYTE16 = 4
} DMA_BYTEn;


typedef enum DMA_CHn
{
    DMA_CH0,
    DMA_CH1,
    DMA_CH2,
    DMA_CH3,
    DMA_CH4,
    DMA_CH5,
    DMA_CH6,
    DMA_CH7,
    DMA_CH8,
    DMA_CH9,
    DMA_CH10,
    DMA_CH11,
    DMA_CH12,
    DMA_CH13,
    DMA_CH14,
    DMA_CH15
} DMA_CHn;

/*

extern unsigned int DMA_GetChannelStatus(void);
*/


#define  DMA_IRQ_EN(DMA_CHn)    enable_irq((DMA_CHn) + 0)                         //����DMAͨ������
#define  DMA_IRQ_DIS(DMA_CHn)   disable_irq((DMA_CHn) + 0)                        //��ֹDMAͨ������
#define  DMA_IRQ_CLEAN(DMA_CHn) DMA_INT|=(DMA_INT_INT0_MASK<<DMA_CHn)             //���ͨ�������жϱ�־λ

#define  DMA_EN(DMA_CHn)        DMA_ERQ |= (DMA_ERQ_ERQ0_MASK<<(DMA_CHn))         //ʹ��ͨ��Ӳ��DMA����
#define  DMA_DIS(DMA_CHn)       DMA_ERQ &=~(DMA_ERQ_ERQ0_MASK<<(DMA_CHn))         //��ֹͨ��Ӳ��DMA����

//#define  DMA_CHn_DIS(DMA_CHn)   DMAMUX_CHCFG_REG(DMAMUX_BASE_PTR,DMA_CHn) &= DMAMUX_CHCFG_SOURCE(Channel_Disabled)  //����ͨ��



/****************************************************************
ע�⣺
    DMA_PORTx2BUFF_Init ��  DMA_count_Init ��ʼ���󣬶���Ҫ���� port_init ���ùܽ�����

    DMA_PORTx2BUFF_Init ����Ҫ���� DMA_IRQ_EN ʹ���ж� �� DMA_EN ʹ��DMAģ��

*****************************************************************/



//��ʼ��DMA��ʹ��PORT�˿�����ͨ��DMA���䵽BUFF������
extern void DMA_PORTx2BUFF_Init(DMA_CHn, void *SADDR, void *DADDR, PTxn, DMA_BYTEn, u32 count, u32 cfg);


extern void DMA_count_Init(DMA_CHn CHn, PTxn ptxn, u32 count, u32 cfg);
extern u32  DMA_count_get(DMA_CHn CHn);
extern void DMA_count_reset(DMA_CHn CHn);

#endif  //_DMA_H_