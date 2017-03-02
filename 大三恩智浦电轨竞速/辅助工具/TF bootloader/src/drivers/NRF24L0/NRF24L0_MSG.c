#include "common.h"
#include "gpio.h"
#include "port.h"
#include "spi.h"
#include "ov7725.h"
#include "NRF24L0.h"
#include "NRF24L0_MSG.h"

/**************************** 变量接收与发送 **********************************/
u32 last_var_num;           //最后接收到的变量编号,方便上层软件进行控制



/**************************** 变量接收与发送 **********************************/

u32 rxbuflen = 0;           //用于接收方返回接收到多少数据。（包含第一次传递进去的那个包大小）



static nrf_result_e  rx_com_img(u8 *sendbuf);
static nrf_result_e  rx_com_event_inform(u8 *sendbuf);

static nrf_result_e  tx_com_img(u8 *sendbuf);
static nrf_result_e  tx_com_event_inform(u8 *sendbuf);


typedef	nrf_result_e (* NRF_PFUNC)(u8 *);               //定义函数指针，用于保存命令控制的

//控制命令执行函数结构体
typedef	struct
{
    NRF_PFUNC	img_func;                   //传输图像
    NRF_PFUNC	event_inform;                //事件通知
} com_func_t;



//Receive Command Vector Table
NRF_PFUNC rx_com_table[COM_MAX] =
{
    rx_com_img,	            //调试板需要接收小车模块的图像
    rx_com_event_inform         //小车模块需要接收调试板的通知
};


//Transfer Command Vector Table
NRF_PFUNC tx_com_table[COM_MAX] =
{
    tx_com_img,            //小车模块需要发送图像到测试模块
    tx_com_event_inform  //调试板需要发送通知给小车模块
};

//发送命令。前两个字节用在命令识别，后面就是需要传输的内容
nrf_result_e NRF_MSG_send(crtl_e  com, u8 *sendbuf)
{
    nrf_result_e result;
    ASSERT(com < COM_MAX);          //命令不能超过最大的数目

    //把前两个写进数据缓冲区
    sendbuf[0] = com;
    sendbuf[1] = ~com;

    //执行对应的发送函数
    result = (tx_com_table[(u8)com] )(sendbuf);  //对应的发送函数要注意前面两个字节不能用

    return result;
}

//发送方命令对应的函数

//发送图像
nrf_result_e  tx_com_img(u8 *sendbuf)
{
    //因为直接把图像采集缓冲区，这里不需要复制图像，仅仅发送数据就好

    //写结尾标志
    sendbuf[CAMERA_SIZE + 2*COM_LEN -1] = (u8)~COM_IMG;       //在尾部写入结束传输标记
    sendbuf[CAMERA_SIZE + 2*COM_LEN -0] = (u8)COM_IMG;

    NRF_ISR_Tx_Dat(sendbuf, CAMERA_SIZE + 2 * COM_LEN );    //中断方式发送数据

    return NRF_RESULT_NULL;
}

//发送变量改变
nrf_result_e  tx_com_event_inform(u8 *sendbuf)
{
    //调用这函数，我们认为已经把数据写入到buf了的

    //写入结尾校验
    sendbuf[8 + 2*COM_LEN -1] =   (u8)~COM_EVENT_INFORM;
    sendbuf[8 + 2*COM_LEN -0] =   (u8)COM_EVENT_INFORM;

    NRF_ISR_Tx_Dat(sendbuf, 8 + 2 * COM_LEN );    //中断方式发送数据

    return NRF_RESULT_NULL;
}

//查询是否有接收数据，并进行处理。sendbuf 为可供使用的缓冲区
nrf_result_e NRF_MSG_receive(crtl_e  *com, u8 *rebuf)
{
    nrf_result_e result;
    u8  status;	//用于判断接收/发送状态
    u8  flag = 0;   //但接收到数据有误，就标记为1
    u8  rxflag  = 0;//标记是否有接收到数据
    crtl_e  comtmp;

    status = NRF_MSG_send_state();		//获取发送状态
    if(status == TX_ISR_SEND)
    {
        //如果还在发送中，则不转入接收，直接返回没有接收到数据
        return NRF_RESULT_RX_NO;
    }

    do
    {
        flag = 0;
        status = NRF_ISR_Rx_Dat(rebuf); //中断接收数据
        if(status != RX_DR)
        {
            //没有接收到数据
            if(rxflag)
            {
                //有接收到数据，但接收数据无效
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
    while(flag == 0);          //当com无误的时候，才往下执行

    *com = comtmp;

    //执行对应的发送函数
    result = ((rx_com_table[comtmp]))(rebuf);  //对应的发送函数要注意前面两个字节不能用

    return result;
}

//接收图像
nrf_result_e rx_com_img(u8 *rebuf)
{
    //因为是识别对应的命令后才执行，需要把图像采集完整才退出
    //由于第一包已经接收到，才会调用此函数，我们需要继续采集剩余的图像

    u32 len = (CAMERA_SIZE + 2 * COM_LEN - 1) / MAX_ONCE_TX_NUM ;
    u8  status;	//用于判断接收/发送状态
    u8  *buftemp = rebuf;

    rxbuflen = CAMERA_SIZE + 2 * COM_LEN; //通知顶层接收到数据长度

    do
    {
        rebuf += MAX_ONCE_TX_NUM;         //移动到下一个包（传递进来的时候没扣掉那个包）

        //需要读取 len 个包保存在 rebuf + MAX_ONCE_TX_NUM 地址缓冲区后面
        do
        {
            status = NRF_ISR_Rx_Dat(rebuf); //中断接收数据
        }
        while(status != RX_DR);                 //等待接收到数据

        len--;
    }
    while(len);

    //校验尾部数据是否正确
    if(
        (buftemp[CAMERA_SIZE + 2*COM_LEN -1] ==   (u8)~COM_IMG)
        &&     (buftemp[CAMERA_SIZE + 2*COM_LEN -0] ==   (u8)COM_IMG)        )
    {
        return NRF_RESULT_RX_VALID;
    }

    return NRF_RESULT_RX_NOVALID;
}

//事件查询
nrf_result_e rx_com_event_inform(u8 *rebuf)
{
    //仅需要接收一个包就搞定事件通知，而这个包已经接收了，这里仅需要验证

    //校验尾部数据是否正确
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