/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��NRF24L0.h
 * ����         ��NRF24L0������
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��Ұ��Ƕ��ʽ����������
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/
#ifndef _NRF24L0_H_
#define _NRF24L0_H_     1

#include "spi.h"



typedef enum
{
    TX_ISR_NULL,    //û����
    TX_ISR_SEND,    //������
    TX_ISR_SUCCEED, //���ͳɹ�
    TX_ISR_FAIL,    //����ʧ��
} tx_isr_state_e;

#define NRF_CFG     SPI_CFG
#define NRF_SPI     SPI0

//�������û����õ�ѡ��

#define MAX_ONCE_TX_NUM     32      //һ�δ�������֧�ֵ��ֽ�����0~32��
#define ADR_WIDTH           5       //�����ַ���ȣ�3~5��
#define IS_CRC16            1       //1��ʾʹ�� CRC16��0��ʾ ʹ��CRC8 (0~1)
#define IS_AUTO_RX_MODE     1       //1��ʾ������ɴ�С�󣬻��Զ��������ģʽ�����͵�ʱ����Զ����뷢��ģʽ����
//0��ʾ����Ҫ�Զ��������ģʽ

//�жϽ��պͷ��͵�����
#define IS_USE_ISR          1      //�Ƿ�ʹ��ISR�жϷ��ͺͽ��ա�0����ʹ�ã�1��ʹ��
#define RX_ISR_FIFO_PACKET  (20)    //�жϽ��յĻ������ɽ��հ�����Ŀ�����Ĵ�С�� MAX_ONCE_TX_NUM ��������һ��ͼ��Ĵ�СΪ80*60/8 = 18.75*32
//#define TX_ISR_NUM          10      //�жϷ��͵Ļ�������ͬʱ�ж��ٸ���������.�������򲻴���


//���õ��������


#define MAX_RT              0x10    //�ﵽ����ط������жϱ�־λ
#define TX_DS		        0x20    //��������жϱ�־λ	  // 
#define RX_DR		        0x40    //���յ������жϱ�־λ


//#define NRF_PACKET_SIZE     (  1  +  ADR_WIDTH  +  9  +  MAX_ONCE_TX_NUM  + IS_CRC16  )




//�жϷ��Ͳ���
extern  u8 RX_ISR_FIFO[RX_ISR_FIFO_PACKET][MAX_ONCE_TX_NUM];






extern  void NRF_Init(void);
//extern  u8 NRF_Check(void);
extern  u8 NRF_Tx_Dat(u8 *txbuf, u32 len);              //len ������ MAX_ONCE_TX_NUM ��������ʣ�²���32λ�ģ�������Ч
extern  u8 NRF_Rx_Dat(u8 *rxbuf);                       //ÿ�ζ�ȡ MAX_ONCE_TX_NUM ���ֽڣ����ؽ��ս�����ɹ�����ʧ�ܣ�




extern  void    NRF_Handler(void);
extern  void    NRF_ISR_Tx_Dat(u8 *txbuf, u32 len);     //�жϷ�ʽ��������
extern  u8      NRF_ISR_Tx_State(void);                 //��ѯ����״̬

extern  u8      NRF_ISR_Rx_Dat(u8 *rxbuf);              //ÿ�ζ�ȡ MAX_ONCE_TX_NUM ���ֽڣ����ؽ��ս�����ɹ�����ʧ�ܣ��ɹ��ˣ����в��ϼ���Ƿ������ݽ��յ���




//���ͺͽ��յ�ʱ�򣬻��Զ����ö�Ӧ��ģʽ��
//ͨ������²���Ҫ�����ֶ�����
extern  void NRF_RX_Mode(void);
extern  void NRF_TX_Mode(void);

#endif      //_NRF24L0_H_