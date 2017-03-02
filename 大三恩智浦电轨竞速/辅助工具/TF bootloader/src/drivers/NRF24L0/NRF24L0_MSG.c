#include "common.h"
#include "gpio.h"
#include "port.h"
#include "spi.h"
#include "ov7725.h"
#include "NRF24L0.h"
#include "NRF24L0_MSG.h"

/**************************** ���������뷢�� **********************************/
u32 last_var_num;           //�����յ��ı������,�����ϲ�������п���



/**************************** ���������뷢�� **********************************/

u32 rxbuflen = 0;           //���ڽ��շ����ؽ��յ��������ݡ���������һ�δ��ݽ�ȥ���Ǹ�����С��



static nrf_result_e  rx_com_img(u8 *sendbuf);
static nrf_result_e  rx_com_event_inform(u8 *sendbuf);

static nrf_result_e  tx_com_img(u8 *sendbuf);
static nrf_result_e  tx_com_event_inform(u8 *sendbuf);


typedef	nrf_result_e (* NRF_PFUNC)(u8 *);               //���庯��ָ�룬���ڱ���������Ƶ�

//��������ִ�к����ṹ��
typedef	struct
{
    NRF_PFUNC	img_func;                   //����ͼ��
    NRF_PFUNC	event_inform;                //�¼�֪ͨ
} com_func_t;



//Receive Command Vector Table
NRF_PFUNC rx_com_table[COM_MAX] =
{
    rx_com_img,	            //���԰���Ҫ����С��ģ���ͼ��
    rx_com_event_inform         //С��ģ����Ҫ���յ��԰��֪ͨ
};


//Transfer Command Vector Table
NRF_PFUNC tx_com_table[COM_MAX] =
{
    tx_com_img,            //С��ģ����Ҫ����ͼ�񵽲���ģ��
    tx_com_event_inform  //���԰���Ҫ����֪ͨ��С��ģ��
};

//�������ǰ�����ֽ���������ʶ�𣬺��������Ҫ���������
nrf_result_e NRF_MSG_send(crtl_e  com, u8 *sendbuf)
{
    nrf_result_e result;
    ASSERT(com < COM_MAX);          //����ܳ���������Ŀ

    //��ǰ����д�����ݻ�����
    sendbuf[0] = com;
    sendbuf[1] = ~com;

    //ִ�ж�Ӧ�ķ��ͺ���
    result = (tx_com_table[(u8)com] )(sendbuf);  //��Ӧ�ķ��ͺ���Ҫע��ǰ�������ֽڲ�����

    return result;
}

//���ͷ������Ӧ�ĺ���

//����ͼ��
nrf_result_e  tx_com_img(u8 *sendbuf)
{
    //��Ϊֱ�Ӱ�ͼ��ɼ������������ﲻ��Ҫ����ͼ�񣬽����������ݾͺ�

    //д��β��־
    sendbuf[CAMERA_SIZE + 2*COM_LEN -1] = (u8)~COM_IMG;       //��β��д�����������
    sendbuf[CAMERA_SIZE + 2*COM_LEN -0] = (u8)COM_IMG;

    NRF_ISR_Tx_Dat(sendbuf, CAMERA_SIZE + 2 * COM_LEN );    //�жϷ�ʽ��������

    return NRF_RESULT_NULL;
}

//���ͱ����ı�
nrf_result_e  tx_com_event_inform(u8 *sendbuf)
{
    //�����⺯����������Ϊ�Ѿ�������д�뵽buf�˵�

    //д���βУ��
    sendbuf[8 + 2*COM_LEN -1] =   (u8)~COM_EVENT_INFORM;
    sendbuf[8 + 2*COM_LEN -0] =   (u8)COM_EVENT_INFORM;

    NRF_ISR_Tx_Dat(sendbuf, 8 + 2 * COM_LEN );    //�жϷ�ʽ��������

    return NRF_RESULT_NULL;
}

//��ѯ�Ƿ��н������ݣ������д���sendbuf Ϊ�ɹ�ʹ�õĻ�����
nrf_result_e NRF_MSG_receive(crtl_e  *com, u8 *rebuf)
{
    nrf_result_e result;
    u8  status;	//�����жϽ���/����״̬
    u8  flag = 0;   //�����յ��������󣬾ͱ��Ϊ1
    u8  rxflag  = 0;//����Ƿ��н��յ�����
    crtl_e  comtmp;

    status = NRF_MSG_send_state();		//��ȡ����״̬
    if(status == TX_ISR_SEND)
    {
        //������ڷ����У���ת����գ�ֱ�ӷ���û�н��յ�����
        return NRF_RESULT_RX_NO;
    }

    do
    {
        flag = 0;
        status = NRF_ISR_Rx_Dat(rebuf); //�жϽ�������
        if(status != RX_DR)
        {
            //û�н��յ�����
            if(rxflag)
            {
                //�н��յ����ݣ�������������Ч
                return NRF_RESULT_RX_NOVALID;
            }
            else
            {
                return NRF_RESULT_RX_NO;
            }
        }
        rxflag = 1;
        comtmp = (crtl_e)rebuf[0];
        if((comtmp < COM_MAX) && (rebuf[1] ==  (u8)~comtmp) )
        {
            flag = 1;
        }
    }
    while(flag == 0);          //��com�����ʱ�򣬲�����ִ��

    *com = comtmp;

    //ִ�ж�Ӧ�ķ��ͺ���
    result = ((rx_com_table[comtmp]))(rebuf);  //��Ӧ�ķ��ͺ���Ҫע��ǰ�������ֽڲ�����

    return result;
}

//����ͼ��
nrf_result_e rx_com_img(u8 *rebuf)
{
    //��Ϊ��ʶ���Ӧ��������ִ�У���Ҫ��ͼ��ɼ��������˳�
    //���ڵ�һ���Ѿ����յ����Ż���ô˺�����������Ҫ�����ɼ�ʣ���ͼ��

    u32 len = (CAMERA_SIZE + 2 * COM_LEN - 1) / MAX_ONCE_TX_NUM ;
    u8  status;	//�����жϽ���/����״̬
    u8  *buftemp = rebuf;

    rxbuflen = CAMERA_SIZE + 2 * COM_LEN; //֪ͨ������յ����ݳ���

    do
    {
        rebuf += MAX_ONCE_TX_NUM;         //�ƶ�����һ���������ݽ�����ʱ��û�۵��Ǹ�����

        //��Ҫ��ȡ len ���������� rebuf + MAX_ONCE_TX_NUM ��ַ����������
        do
        {
            status = NRF_ISR_Rx_Dat(rebuf); //�жϽ�������
        }
        while(status != RX_DR);                 //�ȴ����յ�����

        len--;
    }
    while(len);

    //У��β�������Ƿ���ȷ
    if(
        (buftemp[CAMERA_SIZE + 2*COM_LEN -1] ==   (u8)~COM_IMG)
        &&     (buftemp[CAMERA_SIZE + 2*COM_LEN -0] ==   (u8)COM_IMG)        )
    {
        return NRF_RESULT_RX_VALID;
    }

    return NRF_RESULT_RX_NOVALID;
}

//�¼���ѯ
nrf_result_e rx_com_event_inform(u8 *rebuf)
{
    //����Ҫ����һ�����͸㶨�¼�֪ͨ����������Ѿ������ˣ��������Ҫ��֤

    //У��β�������Ƿ���ȷ
    if(
        (rebuf[8 + 2*COM_LEN -1] ==   (u8)~COM_EVENT_INFORM)
        &&     (rebuf[8 + 2*COM_LEN -0] ==   (u8)COM_EVENT_INFORM)        )
    {
        last_var_num = *((u32 *)&rebuf[3]);
        if(last_var_num < VAR_MAX)
        {
            save_var((var_tab_e)last_var_num, *((u32 *)&rebuf[7]));

        }
        else
        {
            return NRF_RESULT_RX_NOVALID;
        }

        return NRF_RESULT_RX_VALID;
    }

    return NRF_RESULT_RX_NOVALID;
}


void save_var2buff(var_tab_e var_num, u8 *sendbuf)
{
    u32 temp;
    get_var(var_num, &temp);
    *((u32 *)&sendbuf[3]) = (u32)var_num;
    *((u32 *)&sendbuf[7]) = temp;
}