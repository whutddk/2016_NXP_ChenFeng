#include "common.h"
#include "gpio.h"
#include "port.h"
#include "spi.h"
#include "NRF24L0.h"

typedef enum
{
    NOT_INIT = 0,
    TX_MODE,
    RX_MODE,
} nrf_mode_e;


typedef enum
{
    QUEUE_EMPTY = 0,        //���п�ģʽ��ֻ�������
    QUEUE_NORMAL,           //����ģʽ��������������У������в��ղ���
    QUEUE_FULL,             //������ģʽ������������ӣ�����������
} nrf_rx_queueflag_e; //�жϽ���ʱ������״̬���λ

#define NRF_CE_HIGH()	    PTE28_OUT=1
#define NRF_CE_LOW()	    PTE28_OUT=0			  //CE�õ�
#define NRF_PCSN_LOW()      PTA14_OUT=0
#define NRF_PCSN_HIGH()     PTA14_OUT=1
#define NRF_Read_IRQ()	    PTE27_IN

static  u8      NRF_WriteReg(u8 reg, u8 dat);
static  u8      NRF_ReadReg(u8 reg);

static  u8      NRF_ReadBuf(u8 reg, u8 *pBuf, u8 len);
static  u8      NRF_WriteBuf(u8 reg , u8 *pBuf, u32 len);
static  u8      NRF_RW(u8 dat);
static  void    NRF_ISR_Tx_Handler(void);               //�����жϴ�����
static  void    NRF_ISR_Rx_Handler(void);
static  u8      NRF_Check(void);

volatile u8     nrf_mode = NOT_INIT;
volatile u8    *isr_addr   = NULL;
volatile u32    isr_L      = 0;    //L = len / MAX_ONCE_TX_NUM
volatile u8     isr_state  = 0;

volatile u8     front = 0, rear = 0; //����FIFO��ָ��
volatile u8     re_flag = QUEUE_EMPTY;

static  void    NRF_ISR_Tx_Dat_Once(void);



#define TX_ADR_WIDTH 	ADR_WIDTH  	//�����ַ���
#define TX_PLOAD_WIDTH  MAX_ONCE_TX_NUM   //��������ͨ����Ч���ݿ��0~32Byte 

#define RX_ADR_WIDTH    ADR_WIDTH
#define RX_PLOAD_WIDTH  MAX_ONCE_TX_NUM

u8 RX_BUF[RX_PLOAD_WIDTH];		//�������ݻ���
//u8 TX_BUF[TX_PLOAD_WIDTH];		//�������ݻ���

u8 RX_ISR_FIFO[RX_ISR_FIFO_PACKET][MAX_ONCE_TX_NUM];      //�жϽ��յ�FIFO

u8 TX_ADDRESS[5] = {0x34, 0x43, 0x10, 0x10, 0x01}; // ����һ����̬���͵�ַ
u8 RX_ADDRESS[5] = {0x34, 0x43, 0x10, 0x10, 0x01};



#define CHANAL 40	//Ƶ��ѡ�� 

// SPI(nRF24L01) commands ,	NRF��SPI����궨�壬���NRF����ʹ���ĵ�
#define NRF_READ_REG    0x00  // Define read command to register
#define NRF_WRITE_REG   0x20  // Define write command to register
#define RD_RX_PLOAD     0x61  // Define RX payload register address
#define WR_TX_PLOAD     0xA0  // Define TX payload register address
#define FLUSH_TX        0xE1  // Define flush TX register command
#define FLUSH_RX        0xE2  // Define flush RX register command
#define REUSE_TX_PL     0xE3  // Define reuse TX payload register command
#define NOP             0xFF  // Define No Operation, might be used to read status register

// SPI(nRF24L01) registers(addresses) ��NRF24L01 ��ؼĴ�����ַ�ĺ궨��
#define CONFIG      0x00  // 'Config' register address
#define EN_AA       0x01  // 'Enable Auto Acknowledgment' register address
#define EN_RXADDR   0x02  // 'Enabled RX addresses' register address
#define SETUP_AW    0x03  // 'Setup address width' register address
#define SETUP_RETR  0x04  // 'Setup Auto. Retrans' register address
#define RF_CH       0x05  // 'RF channel' register address
#define RF_SETUP    0x06  // 'RF setup' register address
#define STATUS      0x07  // 'Status' register address
#define OBSERVE_TX  0x08  // 'Observe TX' register address
#define CD          0x09  // 'Carrier Detect' register address
#define RX_ADDR_P0  0x0A  // 'RX address pipe0' register address
#define RX_ADDR_P1  0x0B  // 'RX address pipe1' register address
#define RX_ADDR_P2  0x0C  // 'RX address pipe2' register address
#define RX_ADDR_P3  0x0D  // 'RX address pipe3' register address
#define RX_ADDR_P4  0x0E  // 'RX address pipe4' register address
#define RX_ADDR_P5  0x0F  // 'RX address pipe5' register address
#define TX_ADDR     0x10  // 'TX address' register address
#define RX_PW_P0    0x11  // 'RX payload width, pipe0' register address
#define RX_PW_P1    0x12  // 'RX payload width, pipe1' register address
#define RX_PW_P2    0x13  // 'RX payload width, pipe2' register address
#define RX_PW_P3    0x14  // 'RX payload width, pipe3' register address
#define RX_PW_P4    0x15  // 'RX payload width, pipe4' register address
#define RX_PW_P5    0x16  // 'RX payload width, pipe5' register address
#define FIFO_STATUS 0x17  // 'FIFO Status Register' register address


/*
 * ��������NRF_Init
 * ����  ��SPI�� I/O����
 * ����  ����
 * ���  ����
 * ����  ���ⲿ����
 */
void NRF_Init(void)
{
    //����NRF�ܽŸ���
    spi_init(NRF_SPI, MASTER);              //��ʼ��SPI,����ģʽ

    gpio_init(PORTE, 28, GPO, LOW);         //��ʼ��CE��Ĭ�Ͻ������ģʽ
    //gpio_init(PORTE,27, GPI,LOW);           //��ʼ��IRQ�ܽ�Ϊ����
    gpio_init(PORTA, 14, GPO, HIGH);        //��ʼ��PCSN�ܽ�Ϊ������͵�ƽѡ��

#if IS_USE_ISR
    //exti_init(PORTE,27, falling_up);        //��ʼ��IRQ�ܽ�Ϊ :�½��ش������ڲ�����
    port_init(PTE27, IRQ_FALLING | PULLUP );
    enable_irq(PORTE + 87);                 //ʹ��IRQ�ж�
#else
    gpio_init(PORTE, 27, GPI, LOW);         //��ʼ��IRQ�ܽ�Ϊ����
#endif

    //����NRF�Ĵ���
    NRF_CE_LOW();

    NRF_WriteReg(NRF_WRITE_REG + SETUP_AW, ADR_WIDTH - 2);  //���õ�ַ����Ϊ TX_ADR_WIDTH

    NRF_WriteReg(NRF_WRITE_REG + RF_CH, CHANAL);            //����RFͨ��ΪCHANAL

    NRF_WriteReg(NRF_WRITE_REG + RF_SETUP, 0x0f);           //����TX�������,0db����,2Mbps,���������濪��

    NRF_WriteReg(NRF_WRITE_REG + EN_AA, 0x01);              //ʹ��ͨ��0���Զ�Ӧ��

    NRF_WriteReg(NRF_WRITE_REG + EN_RXADDR, 0x01);          //ʹ��ͨ��0�Ľ��յ�ַ

    //RXģʽ����
    //NRF_WriteBuf(NRF_WRITE_REG+RX_ADDR_P0,RX_ADDRESS,RX_ADR_WIDTH);//дRX�ڵ��ַ

    NRF_WriteReg(NRF_WRITE_REG + RX_PW_P0, RX_PLOAD_WIDTH); //ѡ��ͨ��0����Ч���ݿ��

    //TXģʽ����
    //NRF_WriteBuf(NRF_WRITE_REG+TX_ADDR,TX_ADDRESS,TX_ADR_WIDTH);    //дTX�ڵ��ַ ,��ҪΪ��ʹ��ACK

    NRF_WriteReg(NRF_WRITE_REG + SETUP_RETR, 0x0F);         //�����Զ��ط����ʱ��:250us + 86us;����Զ��ط�����:15��

#if IS_AUTO_RX_MODE
    NRF_RX_Mode();          //Ĭ�Ͻ������ģʽ
#endif
    NRF_CE_HIGH();

    while(NRF_Check() == 0);                            //�������ģ���Ƿ���룺����������˵��û��⵽����ģ��

}


/*
 * ��������NRF_WriteReg
 * ����  ��������NRF�ض��ļĴ���д������
 * ����  ��reg:NRF������+�Ĵ�����ַ��
 		   dat:��Ҫ��Ĵ���д�������
 * ���  ��NRF��status�Ĵ�����״̬
 * ����  ���ڲ�����
 */
u8 NRF_WriteReg(u8 reg, u8 dat)
{
    u8 status;
    NRF_CE_LOW();

    /*�õ�CSN��ʹ��SPI����*/
    NRF_PCSN_LOW();

    /*��������Ĵ����� */
    status = NRF_RW(reg);

    /*��Ĵ���д������*/
    NRF_RW(dat);

    /*CSN���ߣ����*/
    NRF_PCSN_HIGH();

    /*����״̬�Ĵ�����ֵ*/
    return(status);
}


/*
 * ��������NRF_ReadReg
 * ����  �����ڴ�NRF�ض��ļĴ�����������
 * ����  ��reg:NRF������+�Ĵ�����ַ��
 * ���  ���Ĵ����е�����
 * ����  ���ڲ�����
 */
u8 NRF_ReadReg(u8 reg)
{
    u8 reg_val;

    NRF_CE_LOW();

    /*�õ�CSN��ʹ��SPI����*/
    NRF_PCSN_LOW();

    /*���ͼĴ�����*/
    NRF_RW(reg);

    /*��ȡ�Ĵ�����ֵ */
    reg_val = NRF_RW(NOP);

    /*CSN���ߣ����*/
    NRF_PCSN_HIGH();

    return reg_val;
}

/*
 * ��������NRF_WriteBuf
 * ����  ��������NRF�ļĴ�����д��һ������
 * ����  ��reg:NRF������+�Ĵ�����ַ��
 		   pBuf���洢�˽�Ҫд��д�Ĵ������ݵ����飬�ⲿ����
		   bytes: pBuf�����ݳ���
 * ���  ��NRF��status�Ĵ�����״̬
 * ����  ���ⲿ����
 */
u8 NRF_WriteBuf(u8 reg , u8 *pBuf, u32 len)
{
    u8 status;

    /*�õ�CSN��ʹ��SPI����*/
    NRF_PCSN_LOW();

    /*���ͼĴ�����*/
    status = NRF_RW(reg);     //continue,������ȡ��Ƭѡ

    /*�򻺳���д������*/
    spi_send(NRF_SPI, pBuf, len);

    /*CSN���ߣ����*/
    NRF_PCSN_HIGH();
    return (status);	//����NRF24L01��״̬
}


/*
 * ��������NRF_ReadBuf
 * ����  �����ڴ�NRF�ļĴ����ж���һ������
 * ����  ��reg:NRF������+�Ĵ�����ַ��
 		   pBuf�����ڴ洢���������ļĴ������ݵ����飬�ⲿ����
		   bytes: pBuf�����ݳ���
 * ���  ��NRF��status�Ĵ�����״̬
 * ����  ���ⲿ����
 */
u8 NRF_ReadBuf(u8 reg, u8 *pBuf, u8 len)
{
    u8 status, byte_cnt;
    // u8 time=0xff;
    NRF_CE_LOW();

    /*�õ�CSN��ʹ��SPI����*/
    NRF_PCSN_LOW();

    for(byte_cnt = 0 ; byte_cnt < len; byte_cnt++)
    {
        pBuf[byte_cnt] = NOP;
    }

    /*���ͼĴ�����*/
    status = NRF_RW(reg);

    /*��ȡ����������*/
    spi_WR(NRF_SPI, pBuf, len);

    /*CSN���ߣ����*/
    NRF_PCSN_HIGH();

    return status;		//���ؼĴ���״ֵ̬
}


/*
 * ��������NRF_RW
 * ����  ��������NRF��/дһ�ֽ�����
 * ����  ��д�������
 * ���  ����ȡ�õ�����
 * ����  ���ڲ�����
 */
u8 NRF_RW(u8 dat)
{
    spi_WR(NRF_SPI, &dat, 1);
    return  dat;
}

/*
 * ��������NRF_Check
 * ����  ����Ҫ����NRF��MCU�Ƿ���������
 * ����  ����
 * ���  ��SUCCESS/ERROR ��������/����ʧ��
 * ����  ���ⲿ����
 */
u8 NRF_Check(void)
{
#define NRF_CHECH_DATA  0xC2
    u8 buf[5] = {NRF_CHECH_DATA, NRF_CHECH_DATA, NRF_CHECH_DATA, NRF_CHECH_DATA, NRF_CHECH_DATA};
    u8 buf1[5];
    u8 i;

    /*д��5���ֽڵĵ�ַ.  */
    NRF_WriteBuf(NRF_WRITE_REG + TX_ADDR, buf, 5);

    /*����д��ĵ�ַ */
    NRF_ReadBuf(TX_ADDR, buf1, 5);

    /*�Ƚ�*/
    for(i = 0; i < 5; i++)
    {
        if(buf1[i] != NRF_CHECH_DATA)
        {
            return 0 ;        //MCU��NRF����������
        }
    }
    return 1 ;             //MCU��NRF�ɹ�����
}

//����һ�Σ������Ϊ 32�ֽ�
static u8 NRF_TX_Dat_Once(u8 *txbuf)
{
    u8 state;

    /*ceΪ�ͣ��������ģʽ1*/
    NRF_CE_LOW();

    /*д���ݵ�TX BUF ��� 32���ֽ�*/
    NRF_WriteBuf(WR_TX_PLOAD, txbuf, MAX_ONCE_TX_NUM);

    /*CEΪ�ߣ�txbuf�ǿգ��������ݰ� */
    NRF_CE_HIGH();

    /*�ȴ���������ж� */
    while(NRF_Read_IRQ() != 0);

    /*��ȡ״̬�Ĵ�����ֵ */
    state = NRF_ReadReg(STATUS);

    /*���TX_DS��MAX_RT�жϱ�־*/
    NRF_WriteReg(NRF_WRITE_REG + STATUS, state);

    NRF_WriteReg(FLUSH_TX, NOP);   //���TX FIFO�Ĵ���

    /*�ж��ж�����*/
    return state;
}

/*
* ��������NRF_Tx_Dat
* ����  ��������NRF�ķ��ͻ�������д������
* ����  ��txBuf���洢�˽�Ҫ���͵����ݵ����飬�ⲿ����
* ���  �����ͽ�����ɹ�����TXDS,ʧ�ܷ���MAXRT��ERROR
* ����  ���ⲿ����
*/
u8 NRF_Tx_Dat(u8 *txbuf, u32 len)
{
    u8 state;
    u32 L;

    if( nrf_mode != TX_MODE)
    {
        NRF_TX_Mode();
    }

    L = (len + MAX_ONCE_TX_NUM - 1) / MAX_ONCE_TX_NUM ; //��λȡ��

    while(L--)
    {
        state = NRF_TX_Dat_Once(txbuf);
        if( !(state & TX_DS))             //������Ͳ��ɹ��������
        {
            break;          //����whileѭ��
        }
        txbuf += MAX_ONCE_TX_NUM;       //����ָ���λ��
    }

#if IS_AUTO_RX_MODE     //�Զ��������ģʽ
    NRF_RX_Mode();
#endif

    return state;
}

/*
* ��������NRF_Tx_Dat
* ����  ��������NRF�ķ��ͻ�������д������
* ����  ��txBuf���洢�˽�Ҫ���͵����ݵ����飬�ⲿ����
* ���  �����ͽ�����ɹ�����TXDS,ʧ�ܷ���MAXRT��ERROR
* ����  ���ⲿ����
*/
void NRF_ISR_Tx_Dat(u8 *txbuf, u32 len)
{
    u32 L = (len + MAX_ONCE_TX_NUM - 1) / MAX_ONCE_TX_NUM;

    if( nrf_mode != TX_MODE)
    {
        NRF_TX_Mode();
    }

    while(isr_L != 0);          //�ȴ�isr_L Ϊ 0 ���� �������

    isr_addr    = txbuf;
    isr_L       = L;

    NRF_ISR_Tx_Dat_Once();      //����һ�η��ͣ��˺�ķ������ж�������
}


//���жϷ���������
void NRF_ISR_Tx_Handler(void)
{
    if(isr_addr == NULL)
    {
        return;         //��Ч
    }

    //��ⷢ�ͽ��
    isr_state = NRF_ReadReg(STATUS);                    /*��ȡ״̬�Ĵ�����ֵ */

    NRF_WriteReg(NRF_WRITE_REG + STATUS, isr_state); 	 /*���TX_DS��MAX_RT�жϱ�־*/

    NRF_WriteReg(FLUSH_TX, NOP);                        //���TX FIFO�Ĵ���

    if( (!(isr_state & TX_DS) ) || (isr_L == 0) )       //������Ͳ��ɹ�,�����Ѿ�������ɣ������
    {
        isr_addr = NULL;                                //ͨ���ж� isr_addr ��֪���Ƿ�����ϡ�
        isr_L    = 0;                                   //isr_L�Ͳ�һ����
        return;                                         //ͨ�� isr_state �ж�״̬
    }

    //��û������ɣ��ͼ�������
    isr_addr += MAX_ONCE_TX_NUM;       //ָ����һ����ַ

    NRF_ISR_Tx_Dat_Once();
}

void nrf_cpy( u8 *dst, u8 *src, u32 count)
{
    u32 n = (count + 7 ) / 8 ;
    switch (count % 8 )
    {
    case 0 :
        do
        {
            * dst ++ = * src ++ ;
        case 7 :
            * dst ++ = * src ++ ;
        case 6 :
            * dst ++ = * src ++ ;
        case 5 :
            * dst ++ = * src ++ ;
        case 4 :
            * dst ++ = * src ++ ;
        case 3 :
            * dst ++ = * src ++ ;
        case 2 :
            * dst ++ = * src ++ ;
        case 1 :
            * dst ++ = * src ++ ;
        }
        while ( -- n >    0 );
    }
}

//�жϷ��ͺ�������������һ�Σ��͵ȴ��жϷ���
void NRF_ISR_Tx_Dat_Once(void)
{
    if(isr_L > 0)
    {
        /*ceΪ�ͣ��������ģʽ1*/
        NRF_CE_LOW();

        /*д���ݵ�TX BUF ��� 32���ֽ�*/
        NRF_WriteBuf(WR_TX_PLOAD, (u8 *)isr_addr, MAX_ONCE_TX_NUM);

        /*CEΪ�ߣ�txbuf�ǿգ��������ݰ� */
        NRF_CE_HIGH();

        isr_L--;
    }
}

u8 NRF_ISR_Tx_State(void)
{
    if( nrf_mode != TX_MODE)
    {
        return TX_ISR_NULL;     //���Ƿ���ģʽ��û����
    }

    if( isr_addr == NULL)
    {
        if(isr_state & TX_DS)
        {
            return TX_ISR_SUCCEED;  //���ͳɹ�
        }

        if(isr_state != 0)
        {
            return TX_ISR_FAIL; //����ʧ��
        }

        return TX_ISR_NULL;     //û����
    }
    else
    {
        return TX_ISR_SEND;     //������
    }
}

void NRF_Handler(void)
{
    if( nrf_mode == TX_MODE)
    {
        NRF_ISR_Tx_Handler();
    }
    else if( nrf_mode == RX_MODE )
    {
        NRF_ISR_Rx_Handler();
    }
}

/*
* ��������NRF_Rx_Dat
* ����  �����ڴ�NRF�Ľ��ջ������ж�������
* ����  ��rxBuf�����ڽ��ո����ݵ����飬�ⲿ����
* ���  �����ս����
* ����  ���ⲿ����
*/
u8 NRF_Rx_Dat(u8 *rxbuf)
{
    u8 state;

    if( nrf_mode != RX_MODE)
    {
        NRF_RX_Mode();
    }

    NRF_CE_HIGH();	 //�������״̬
    /*�ȴ������ж�*/
    while(NRF_Read_IRQ() != 0);

    NRF_CE_LOW();  	 //�������״̬
    /*��ȡstatus�Ĵ�����ֵ  */
    state = NRF_ReadReg(STATUS);

    /* ����жϱ�־*/
    NRF_WriteReg(NRF_WRITE_REG + STATUS, state);

    /*�ж��Ƿ���յ�����*/
    if(state & RX_DR)                                 //���յ�����
    {
        NRF_ReadBuf(RD_RX_PLOAD, rxbuf, RX_PLOAD_WIDTH); //��ȡ����
        NRF_WriteReg(FLUSH_RX, NOP);                    //���RX FIFO�Ĵ���
        return RX_DR;
    }
    else
    {
        return ERROR;                    //û�յ��κ�����
    }
}

//���жϷ���������
void NRF_ISR_Rx_Handler(void)
{
    u8 state;

    NRF_CE_LOW();  	 //�������״̬

    /*��ȡstatus�Ĵ�����ֵ  */
    state = NRF_ReadReg(STATUS);

    /* ����жϱ�־*/
    NRF_WriteReg(NRF_WRITE_REG + STATUS, state);

    if(re_flag == QUEUE_FULL)       //���˾�ֱ����FIFO���˳�
    {
        NRF_WriteReg(FLUSH_RX, NOP);                    //���RX FIFO�Ĵ���
        NRF_CE_HIGH();  	 //�������ģʽ
        return;       //���ն������ˣ������д���
    }

    //��û�������������

    /*�ж��Ƿ���յ�����*/
    if(state & RX_DR)                                 //���յ�����
    {
        NRF_ReadBuf(RD_RX_PLOAD, (u8 *)&(RX_ISR_FIFO[rear]), RX_PLOAD_WIDTH); //��ȡ����
        NRF_WriteReg(FLUSH_RX, NOP);                    //���RX FIFO�Ĵ���

        rear++;

        if(rear >= RX_ISR_FIFO_PACKET)
        {
            rear = 0;                       //��ͷ��ʼ
        }

        if(rear == front)                   //׷��ƨ���ˣ�����
        {
            re_flag = QUEUE_FULL;
        }
        else
        {
            re_flag = QUEUE_NORMAL;
        }
    }
    else
    {
        //û�յ��κ�����
    }

    NRF_CE_HIGH();  	 //�������ģʽ

}

void    NRF_ISR_Rx_rst()
{
    front = 0;
    rear = 0;
    re_flag = QUEUE_EMPTY;
}

u8  NRF_ISR_Rx_Dat(u8 *rxbuf)
{

    if( nrf_mode != RX_MODE)
    {
        NRF_RX_Mode();
    }
    else
    {
        NRF_CE_HIGH();	 //�������״̬
    }

    if(re_flag == QUEUE_EMPTY)   //�գ�ֱ�ӷ���0
    {
        return 0;
    }

    //��������
    nrf_cpy(rxbuf, (u8 *)&(RX_ISR_FIFO[front]), MAX_ONCE_TX_NUM);

    NRF_CE_LOW();  	 //�������״̬

    front++;                //���ڷǿգ����Կ���ֱ�ӳ�����

    if(front >= RX_ISR_FIFO_PACKET)
    {
        front = 0;          //��ͷ��ʼ
    }

    if(front == rear)       //׷��ƨ���ˣ����ն��п�
    {
        re_flag = QUEUE_EMPTY;
        //        front=0;            //��ͷ��ʼ(����ʡ��)
        //        rear=0;
    }

    NRF_CE_HIGH();  	 //�������ģʽ

    return RX_DR;

}

/*
 * ��������NRF_RX_Mode
 * ����  �����ò��������ģʽ
 * ����  ����
 * ���  ����
 * ����  ���ⲿ����
 */
void NRF_RX_Mode(void)
{
    NRF_CE_LOW();

    NRF_WriteReg(NRF_WRITE_REG + EN_AA, 0x01);          //ʹ��ͨ��0���Զ�Ӧ��

    NRF_WriteReg(NRF_WRITE_REG + EN_RXADDR, 0x01);      //ʹ��ͨ��0�Ľ��յ�ַ

    NRF_WriteBuf(NRF_WRITE_REG + RX_ADDR_P0, RX_ADDRESS, RX_ADR_WIDTH); //дRX�ڵ��ַ


    NRF_WriteReg(NRF_WRITE_REG + CONFIG, 0x0B | (IS_CRC16 << 2));       //���û�������ģʽ�Ĳ���;PWR_UP,EN_CRC,16BIT_CRC,����ģʽ

#if 1
    /* ����жϱ�־*/
    NRF_WriteReg(NRF_WRITE_REG + STATUS, 0xff);

    NRF_WriteReg(FLUSH_RX, NOP);                    //���RX FIFO�Ĵ���
#endif

    /*CE���ߣ��������ģʽ*/
    NRF_CE_HIGH();

    nrf_mode = RX_MODE;
}

/*
 * ��������NRF_TX_Mode
 * ����  �����÷���ģʽ
 * ����  ����
 * ���  ����
 * ����  ���ⲿ����
 */
void NRF_TX_Mode(void)
{
    u32 i;

    NRF_CE_LOW();

    NRF_WriteBuf(NRF_WRITE_REG + TX_ADDR, TX_ADDRESS, TX_ADR_WIDTH); //дTX�ڵ��ַ

    NRF_WriteBuf(NRF_WRITE_REG + RX_ADDR_P0, RX_ADDRESS, RX_ADR_WIDTH); //����RX�ڵ��ַ ,��ҪΪ��ʹ��ACK

    NRF_WriteReg(NRF_WRITE_REG + CONFIG, 0x0A | (IS_CRC16 << 2)); //���û�������ģʽ�Ĳ���;PWR_UP,EN_CRC,16BIT_CRC,����ģʽ,���������ж�

    /*CE���ߣ����뷢��ģʽ*/
    NRF_CE_HIGH();

    i = 0xffff;
    while(i--);         //CEҪ����һ��ʱ��Ž��뷢��ģʽ
    //DELAY_MS(1);

    nrf_mode = TX_MODE;
}
