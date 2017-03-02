#ifndef _NRF24L0_MSG_H_
#define	_NRF24L0_MSG_H_

#include "key_event.h"


#define COM_LEN     2   //com����ռ�õ��ֽ�



//��������COMִ�к������ؽ��
//COM�����Ҫִ�ж�Ӧ�ĺ���
//MSG��Ϣ�����ͷ�����֪ͨ������Ҫִ���κκ���
typedef	enum
{
    NRF_RESULT_FALSE = 0,					//�١�ʧ�ܡ��¼�û����
    NRF_RESULT_TRUE	= 1,					//�桢�ɹ����¼�������
    NRF_RESULT_QUIT,					//�˳�

    NRF_RESULT_NULL,                    //�������κδ���

    //��������
    NRF_RESULT_RX_NO,                   //û���յ�����
    NRF_RESULT_RX_VALID,            	//������Ч����
    NRF_RESULT_RX_NOVALID,              //���յ����ݣ�����Ч


    /*** EVENT �¼� ***/
    //	NRF_RESULT_EVENT_FALSE,				//û�¼������������¼���������
    //	NRF_RESULT_EVENT_FINIST,			//�¼��������
    //	NRF_RESULT_EVENT_CONTINUE,			//�¼��������䣨����¼������ˣ���Ҫ�������䣩

} nrf_result_e;

//����������Ϣ����
typedef	enum
{
    ////////////////// COM���� /////////////////////
    //��ҪУ����յ������Ƿ���ȷ
    //���͵����ݣ� XXX_COM ��~XXX_COM    �������������Ҫ���͵���Ϣ���ɶ�Ӧ��ִ�к������д���

    //ͼ�������
    COM_IMG,		    //����ͼ������:��������󣬾�ֱ�ӽ�ͼ������

    //�¼�����
    COM_EVENT_INFORM,	//�����¼���Ϣ֪ͨ������֪ͨ�Է��Ƿ����¼�����������֪ͨ�����ı��ˣ��ı��˵�ֵ�Ĵ�С��


    /*  ��Ҫ��ӹ��ܣ�������λ��  */


    COM_MAX		,		//������������Ŀ													********************************

} crtl_e;



#define   NRF_MSG_send_state()			NRF_ISR_Tx_State()		    //��ѯ����״̬
nrf_result_e    NRF_MSG_send(crtl_e     com, u8 *sendbuf);    		//�������ݣ����ͳ�����com��Ӧ�ĺ�������
nrf_result_e    NRF_MSG_receive(crtl_e  *com, u8 *rebuf);   		//��������,�����д���

extern u32 last_var_num;                                            //�����յ��ı������,�����ϲ�������п���
void save_var2buff(var_tab_e var_num, u8 *sendbuf);            //����Ҫ���͵ı���������д�뵽������








#endif	//_NRF24L0_MSG_H_