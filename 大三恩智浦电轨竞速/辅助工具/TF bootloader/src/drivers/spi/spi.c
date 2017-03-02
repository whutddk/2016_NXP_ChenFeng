#include "common.h"
#include "spi.h"
#include "lptmr.h"

volatile struct SPI_MemMap *SPIN[3] = {SPI0_BASE_PTR, SPI1_BASE_PTR, SPI2_BASE_PTR}; //��������ָ�����鱣�� SPIx �ĵ�ַ


//=========================================================================
//�������ƣ�spi_init
//����������spin��SPIͨ���š�
//          Master:�Ƿ���������
//�������أ���
//���ܸ�Ҫ��SPI��ʼ����
//=========================================================================
void spi_init(SPIn spin, SPI_CFG master)
{

    //ʹ��SPIģ��ʱ�ӣ�����SPI���Ź���
    if(spin == 0)
    {
        SIM_SCGC6 |= SIM_SCGC6_DSPI0_MASK;
        //PORTA_PCR14 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK;//PCS0   //DSE=1:���ʱ����������
        PORTA_PCR15 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK;//SCK
        PORTA_PCR16 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK;//SOUT
        PORTA_PCR17 = 0 | PORT_PCR_MUX(0x2);//SIN
    }
    else if(spin == 1)
    {
        SIM_SCGC6 |= SIM_SCGC6_SPI1_MASK;
        PORTE_PCR1 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //SOUT
        PORTE_PCR2 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //SCK
        PORTE_PCR3 = 0 | PORT_PCR_MUX(0x2);                     //SIN
        PORTE_PCR4 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //PCS0
    }
    else
    {
        SIM_SCGC3 |= SIM_SCGC3_SPI2_MASK;
        PORTD_PCR13 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //SOUT
        PORTD_PCR12 = 0 | PORT_PCR_MUX(0x2) | PORT_PCR_DSE_MASK; //SCK
        PORTD_PCR14 = 0 | PORT_PCR_MUX(0x2)/* | PORT_PCR_DSE_MASK*/;                     //SIN
        //PORTD_PCR15 = 0 | PORT_PCR_MUX(0x2)/* | PORT_PCR_DSE_MASK*/; //PCS1
    }

    SPI_MCR_REG(SPIN[spin]) = 0
                              | SPI_MCR_CLR_TXF_MASK     //Clear the Tx FIFO counter.
                              | SPI_MCR_CLR_RXF_MASK     //Clear the Rx FIFO counter.
                              //| SPI_MCR_PCSIS_MASK
                              | SPI_MCR_HALT_MASK;


    //�������ӻ�ģʽ���ù���ģʽ��MCU�ṩ�������Ƶ����1/2��Ƶ�����ӻ�Ƶ����1/4��Ƶ
    if(master == MASTER)
    {
        SPI_MCR_REG(SPIN[spin]) =  (0
                                    |  SPI_MCR_MSTR_MASK //Master,����ģʽ
                                    // |   SPI_MCR_PCSIS(2) //PCS1
                                   );
        SPI_CTAR_REG(SPIN[spin], 0) = (0
                                       //| SPI_CTAR_DBR_MASK          //˫������ �������� DBR=1��CPHA=1��PBR=00����SCK Duty Cycle Ϊ 50/50
                                       //| SPI_CTAR_CPHA_MASK         //������SCK�����ظı䣨����������½��ر���׽�������ȡ���������0����֮��  w25x16�������ض�ȡ���ݣ�NRF24L01�������ض�ȡ����
                                       | SPI_CTAR_PBR(1)            //�����ʷ�Ƶ�� ��0~3 ��Ӧ�ķ�ƵֵPrescalerΪ 2��3��5��7

                                       | SPI_CTAR_PDT(0x00)         //��ʱ����Ϊ PDT*2+1 ������PDTΪ3������ʱ����Ϊ7��PDTΪ2bit
                                       | SPI_CTAR_BR(0)             //�����ʼ�����ֵ ,��BR<=3,��ƵScaler Ϊ 2*��BR+1�� ����BR>=3����ƵScaler Ϊ 2^BR  ��BRΪ4bit
                                       //SCK ������ = (fSYS/Prescaler) x [(1+DBR)/Scaler ]          fSYS Ϊ Bus clock
                                       //              100M  2          1    2   = 50M   ��������������
                                       //              100M   5          1    2   =20M

                                       //| SPI_CTAR_CPOL_MASK         //ʱ�Ӽ��ԣ�1��ʾ SCK ����Ծ״̬Ϊ�ߵ�ƽ,   NRF24L01 ����ԾΪ�͵�ƽ
                                       | SPI_CTAR_FMSZ(0x07)        //ÿ֡���� 7bit+1 ����8bit ��FMSZĬ�Ͼ���8��
                                       // | SPI_CTAR_LSBFE_MASK        //1Ϊ��λ��ǰ��
                                       //| SPI_CTAR_CSSCK(1)          //
                                       //|SPI_CTAR_PCSSCK(2)         //����Ƭѡ�ź���Ч��ʱ�ӵ�һ�����س��ֵ���ʱ��Ԥ��Ƶֵ��tcsc��ʱԤ��Ƶ 2*x+1��
                                      );
        //LSBFE Ϊ 0 ��������ǰ
    }
    else
    {
        //Ĭ�ϴӻ�ģʽ
        SPI_CTAR_SLAVE_REG(SPIN[spin], 0) = 0
                                            | SPI_CTAR_SLAVE_FMSZ(0x07)
                                            | SPI_CTAR_SLAVE_CPOL_MASK
                                            | SPI_CTAR_SLAVE_CPHA_MASK;
    }
    //DELAY_MS(100);
    /*************  ���־λ  ***************/
    SPI_SR_REG(SPIN[spin]) = (SPI_SR_EOQF_MASK     //End of Queue Flag�����Ͷ��п��ˣ��������
                              | SPI_SR_TFUF_MASK     //Transmit FIFO Underflow Flag������FIFO�����־λ��SPIΪ�ӻ�ģʽ��Tx FIFOΪ�գ����ⲿSPI����ģʽ�������䣬��־λ�ͻ���1��д1��0
                              | SPI_SR_TFFF_MASK     //Transmit FIFO Fill Flag������FIFO����־λ�� д1����DMA���������ִ���FIFO���˾ͻ���0�� 0��ʾTx FIFO����
                              | SPI_SR_RFOF_MASK     //Receive FIFO Overflow Flag������FIFO�����־λ��
                              | SPI_SR_RFDF_MASK);   //Receive FIFO Drain Flag������FIFO��ı�־λ��д1����DMA���������ִ���FIFO���˾ͻ���0��0��ʾRx FIFO��


    SPI_MCR_REG(SPIN[spin]) &= ~SPI_MCR_HALT_MASK;     //����SPI���䡣1Ϊ��ͣ��0Ϊ����

    DELAY_MS(1);
}


//=========================================================================
//�������ƣ�spi_send
//����������spin��SPIͨ���š�
//          data[]����Ҫ���͵����ݡ�
//          len�����ݳ��ȡ�
//�������أ���
//���ܸ�Ҫ��SPI�������ݡ�
//=========================================================================
void spi_send(SPIn spin, u8 data[], u32 len)
{
    u32 i = 0;
    u8 temp;
    SPI_TX_WAIT(spin);

    do
    {
        /*************  ���־λ  ***************/
        SPI_SR_REG(SPIN[spin]) = (SPI_SR_EOQF_MASK
                                  | SPI_SR_TFUF_MASK
                                  | SPI_SR_TFFF_MASK
                                  | SPI_SR_RFOF_MASK
                                  | SPI_SR_RFDF_MASK
                                 );

        /************** ��FIFO������ **************/
        SPI_MCR_REG(SPIN[spin])    |=  (SPI_MCR_CLR_TXF_MASK     //Clear TX FIFO.д1�� Tx FIFO counter
                                        | SPI_MCR_CLR_RXF_MASK    //Clear RX FIFO. д1�� the Rx FIFO counter.
                                       );
        //SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
    }
    while( (SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //��� Rx FIFO �ǿգ�����FIFO.

    /***************** ����len-1������ *******************/                                                ;
    for(i = 0; i < (len - 1); i++)
    {
        //DELAY_MS(1);
        SPI_PUSHR_REG(SPIN[spin]) = 0
                                    | SPI_PUSHR_CONT_MASK   //Continuous Peripheral Chip Select Enable��1Ϊ �����ڼ䱣��PCSn�ź� ����������������
                                    | SPI_PUSHR_CTAS(0)
                                    | SPI_PUSHR_TXDATA(data[i]);    //Ҫ���������

        while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDFΪ1��Rx FIFO is not empty.
        temp = (u8)SPI_POPR_REG(SPIN[spin]);    //��ȡһ�ν��յ�����
        SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
    }

    /***************** �������һ������ *******************/
    SPI_PUSHR_REG(SPIN[spin]) = 0
                                | SPI_PUSHR_CTAS(0)
                                | SPI_PUSHR_EOQ_MASK         //End Of Queue��1Ϊ ����SPI��������
                                | SPI_PUSHR_TXDATA(data[i]);

    SPI_EOQF_WAIT(spin);    //Ҫ��ʱ��RX FIFO�Ķ����������Ȼ��������޵ȴ�

    while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDFΪ1��Rx FIFO is not empty.
    temp = (u8)SPI_POPR_REG(SPIN[spin]);    //��ȡһ�ν��յ�����
    //SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;


}

//=========================================================================
//�������ƣ�spi_send
//����������spin��SPIͨ���š�
//          data[]����Ҫ���͵����ݡ�
//          len�����ݳ��ȡ�
//�������أ���
//���ܸ�Ҫ��SPI�������ݡ�
//=========================================================================
void spi_WR(SPIn spin, u8 *data, u32 len)
{
    u32 i = 0;

    SPI_TX_WAIT(spin);

    do
    {
        /*************  ���־λ  ***************/
        SPI_SR_REG(SPIN[spin]) = (SPI_SR_EOQF_MASK
                                  | SPI_SR_TFUF_MASK
                                  | SPI_SR_TFFF_MASK
                                  | SPI_SR_RFOF_MASK
                                  | SPI_SR_RFDF_MASK
                                 );

        /************** ��FIFO������ **************/
        SPI_MCR_REG(SPIN[spin])    |=  (SPI_MCR_CLR_TXF_MASK     //Clear TX FIFO.д1�� Tx FIFO counter
                                        | SPI_MCR_CLR_RXF_MASK    //Clear RX FIFO. д1�� the Rx FIFO counter.
                                       );
    }
    while( (SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //��� Rx FIFO �ǿգ�����FIFO.


    /***************** ����len-1������ *******************/
    for(i = 0; i < (len - 1); i++)
    {
        SPI_PUSHR_REG(SPIN[spin]) = 0
                                    | SPI_PUSHR_CONT_MASK   //Continuous Peripheral Chip Select Enable��1Ϊ �����ڼ䱣��PCSn�ź� ����������������
                                    | SPI_PUSHR_CTAS(0)
                                    | SPI_PUSHR_TXDATA(data[i]);    //Ҫ���������

        while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDFΪ1��Rx FIFO is not empty.
        data[i] = (u8)SPI_POPR_REG(SPIN[spin]);    //������յ�������
        SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
    }

    /***************** �������һ������ *******************/
    SPI_PUSHR_REG(SPIN[spin]) = 0
                                | SPI_PUSHR_CTAS(0)
                                | SPI_PUSHR_EOQ_MASK         //End Of Queue��1Ϊ ����SPI��������
                                | SPI_PUSHR_TXDATA(data[i]);

    while( !(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK));    //RFDFΪ1��Rx FIFO is not empty.
    data[i] = (u8)SPI_POPR_REG(SPIN[spin]);    //������յ�������

    SPI_EOQF_WAIT(spin);        //Ҫ��ʱ��RX FIFO�Ķ����������Ȼ��������޵ȴ�
}

//=========================================================================
//�������ƣ�spi_re
//����������spin��SPIͨ���š�
//          data[]����Ҫ���յ����ݡ�
//�������أ����ؽ��յ��ֽڵĳ���
//���ܸ�Ҫ��SPI�������ݡ�
//=========================================================================
u32 spi_re_max(SPIn spin, u8 data[], u32 maxlen)
{
    u32   n = 0;

    while(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK)    //RFDFΪ1��Rx FIFO is not empty.
    {
        data[n++] = (u8)SPI_POPR_REG(SPIN[spin]);    //������յ�������
        SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
        if(n >= maxlen)
        {
            break;
        }
    }
#if 1
    /*************  ���־λ  ***************/
    SPI_SR_REG(SPIN[spin]) = (  SPI_SR_EOQF_MASK
                                | SPI_SR_TFUF_MASK
                                | SPI_SR_TFFF_MASK
                                | SPI_SR_RFOF_MASK
                                | SPI_SR_RFDF_MASK
                             );

    /************** ��FIFO������ **************/
    SPI_MCR_REG(SPIN[spin])  |=  (SPI_MCR_CLR_TXF_MASK     //Clear the Tx FIFO counter.
                                  | SPI_MCR_CLR_RXF_MASK    //Clear the Rx FIFO counter.
                                 );
#endif
    return n; //nΪ0����û���յ�����
}

//=========================================================================
//�������ƣ�spi_re
//����������spin��SPIͨ���š�
//          data[]����Ҫ���յ����ݡ�
//�������أ����ؽ��յ��ֽڵĳ���
//���ܸ�Ҫ��SPI�������ݡ�
//=========================================================================
u32 spi_re(SPIn spin, u8 data[])
{
    u32   n = 0;

    while(SPI_SR_REG(SPIN[spin]) & SPI_SR_RFDF_MASK)    //RFDFΪ1��Rx FIFO is not empty.
    {
        data[n++] = (u8)SPI_POPR_REG(SPIN[spin]);    //������յ�������
        SPI_SR_REG(SPIN[spin]) |= SPI_SR_RFDF_MASK;
    }

    /*************  ���־λ  ***************/
    SPI_SR_REG(SPIN[spin]) = (SPI_SR_EOQF_MASK
                              | SPI_SR_TFUF_MASK
                              | SPI_SR_TFFF_MASK
                              | SPI_SR_RFOF_MASK
                              | SPI_SR_RFDF_MASK
                             );

    /************** ��FIFO������ **************/
    SPI_MCR_REG(SPIN[spin])  |=  (SPI_MCR_CLR_TXF_MASK     //Clear the Tx FIFO counter.
                                  | SPI_MCR_CLR_RXF_MASK    //Clear the Rx FIFO counter.
                                 );

    return n; //nΪ0����û���յ�����
}


/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�spi_irq_EN
*  ����˵������SPI�ж�
*  ����˵����SPIn       ģ��ţ�SPI0~SPI2��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void spi_irq_EN(SPIn spin)
{
    SPI_RSER_REG(SPIN[spin]) |= SPI_RSER_RFDF_RE_MASK;    //����SPI�����ж�
    enable_irq(spin + 26);			              //���������ŵ�IRQ�ж�
}

/*************************************************************************
*                             Ұ��Ƕ��ʽ����������
*
*  �������ƣ�spi_irq_DIS
*  ����˵���������ڽ����ж�
*  ����˵����UARTn       ģ��ţ�UART0~UART5��
*  �������أ���
*  �޸�ʱ�䣺2012-1-20
*  ��    ע��
*************************************************************************/
void spi_irq_DIS(SPIn spin)
{
    SPI_RSER_REG(SPIN[spin]) &= ~SPI_RSER_RFDF_RE_MASK;   //�ر�SPI�����ж�
    disable_irq(spin + 26);			              //���������ŵ�IRQ�ж�
}