#ifndef __KEY_H__
#define __KEY_H__

#include "common.h"
#include "gpio.h"


//�����Ƕ��尴����ʱ�䣬��λΪ �� 10ms
#define KEY_DOWN_TIME   1
#define KEY_HOLD_TIME   100         //���253��������Ҫ�޸�keytime������


//�����˿ڵ�ö��
typedef enum
{
    KEY_UPP,
    KEY_DOWNN,
    KEY_L,
    KEY_R,
    KEY_OK,

    KEY_MAX,
} KEY_e;




//key״̬�궨��
typedef enum
{
    KEY_DOWN  =   0,         //��������ʱ��Ӧ��ƽ
    KEY_UP    =   1,         //��������ʱ��Ӧ��ƽ


    KEY_HOLD,

} KEY_STATUS_e;


typedef struct
{
    KEY_e           key;
    KEY_STATUS_e    status;
} KEY_MSG_t;

void    KEY_init(KEY_e key);                    // KEY��ʼ��    ����
void    KEY_ALL_init(void);                     //ȫ��Key��ʼ��
KEY_STATUS_e key_check(KEY_e key);              //���key״̬


//��ʱɨ�谴��
u8 get_key_msg(KEY_MSG_t *keymsg);                  //��ȡ������Ϣ������1��ʾ�а�����Ϣ��0Ϊ�ް�����Ϣ
void key_IRQHandler(void);                      //
KEY_STATUS_e key_check(KEY_e key);

#endif  //__KEY_H__