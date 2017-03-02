#include "common.h"
#include "gpio.h"
#include "exti.h"
#include "dma.h"
#include "SCCB.h"
#include "OV7725.h"
#include "OV7725_REG.h"

#define OV7725_Delay_ms(time)  DELAY_MS(time)

volatile u8	IMG_BUFF[60][320][2];

void Ov7725_exti_Init()
{
    //DMAͨ��0��ʼ����PTB0�����ش���DMA���䣬Դ��ַΪPTD_BYTE0_IN��Ŀ�ĵ�ַΪ��BUFF ��ÿ�δ���1Byte������320�κ�ֹͣ���䣬����Ŀ�ĵ�ַ����
    DMA_PORTx2BUFF_Init(CAMERA_DMA_CH, (void *)&PTB_BYTE0_IN, (void *)IMG_BUFF, PTB8, DMA_BYTE1, 320 * 2 - 2, DMA_rising_down_keepon);

    DMA_DIS(DMA_CH0);		//�ȹر� DMA
    DMA_IRQ_DIS(DMA_CH0);	//����Ҫʹ��DMA�ж�,�����ж�������DMA����

    exti_init(PORTA, 29, rising_down);	//���жϣ��ڲ������������ش����ж�
    exti_init(PORTA, 28, rising_down);	//���жϣ��ڲ������������ش����ж�
}


/*OV7725��ʼ�����ñ�*/
Register_Info Sensor_Config[] =
{
    {CLKRC,		0x0B}, /*clock config*/
    {COM7,		0x46}, /*QVGA RGB565 */
    {HSTART, 	0x3f},
    {HSIZE, 	0x50},
    {VSTRT, 	0x03},
    {VSIZE, 	0x78},
    {HREF, 		0x00},
    {HOutSize, 	0x50},
    {VOutSize, 	0x78},
    {EXHCH, 	0x00},

    /*DSP control*/
    {TGT_B,		0x7f},
    {FixGain,	0x09},
    {AWB_Ctrl0,	0xe0},
    {DSP_Ctrl1,	0xff},
    {DSP_Ctrl2,	0x20},
    {DSP_Ctrl3,	0x00},
    {DSP_Ctrl4,	0x00},

    /*AGC AEC AWB*/
    {COM8,		0xf0},
    {COM4,		0x01},	  /*Pll AEC CONFIG*/
    {COM6,		0xc5},
    {COM9,		0x21},	 /*AGC---����������Ϊ0x21 */
    {BDBase,	0xFF},
    {BDMStep,	0x01},
    {AEW,		0x34},
    {AEB,		0x3c},
    {VPT,		0xa1},
    {EXHCL,		0x00},
    {AWBCtrl3,	0xaa},
    {COM8,		0xff},
    {AWBCtrl1,	0x5d},

    {EDGE1,		0x0a},
    {DNSOff,	0x01},
    {EDGE2,		0x01},
    {EDGE3,		0x01},

    {MTX1,		0x5f},
    {MTX2,		0x53},
    {MTX3,		0x11},
    {MTX4,		0x1a},
    {MTX5,		0x3d},
    {MTX6,		0x5a},
    {MTX_Ctrl,	0x1e},

    {UVADJ0,	0x81},
    {SDE,		0x06},

    /*Contrast config*/
    {CNST,		0x25},

    /*Brightness config*/
    {BRIGHT,	0x00},
    {SIGN, 		0x06},

    /*Saturation config*/
    {USAT,		0x65},
    {VSAT,		0x65},

    /*GAMMA config*/
    {GAM1,		0x0c},
    {GAM2,		0x16},
    {GAM3,		0x2a},
    {GAM4,		0x4e},
    {GAM5,		0x61},
    {GAM6,		0x6f},
    {GAM7,		0x7b},
    {GAM8,		0x86},
    {GAM9,		0x8e},
    {GAM10,		0x97},
    {GAM11,		0xa4},
    {GAM12,		0xaf},
    {GAM13,		0xc5},
    {GAM14,		0xd7},
    {GAM15,		0xe8},
    {SLOP,		0x20},

    {HUECOS,	0x80},
    {HUESIN,	0x80},
    {DSPAuto,	0xff},
    {DM_LNL,	0x00},
    {BDBase,	0x99},
    {BDMStep,	0x03},
    {LC_RADI,	0x00},
    {LC_COEF,	0x13},
    {LC_XC,		0x08},
    {LC_COEFB,	0x14},
    {LC_COEFR,	0x17},
    {LC_CTR,	0x05},

    /*Horizontal mirror image*/
    {COM3,		0xd0},
    /*night mode auto frame rate control*/
    {COM5,		0x65},	/*��ҹ�ӻ����£��Զ�����֡�ʣ���֤���նȻ�������*/
    //	{COM5,		0x31},	/*ҹ�ӻ���֡�ʲ���*/

    //{SCAL1,		0x40}


};
u8 OV7725_REG_NUM = sizeof(Sensor_Config) / sizeof(Sensor_Config[0]); /*�ṹ�������Ա��Ŀ*/




/************************************************
 * ��������Ov7725_Init
 * ����  ��Sensor��ʼ��
 * ����  ����
 * ���  ������1�ɹ�������0ʧ��
 * ע��  ����
 ************************************************/
u8 Ov7725_Init(void)
{
    u16 i = 0;
    u8 Sensor_IDCode = 0;
    SCCB_GPIO_init();

    DEBUG_OUT("\r\n>>>>>>Kinetis OV7725  Demo<<<<<<\r\n");
    DEBUG_OUT("OV7725 Register Config Start!");
    OV7725_Delay_ms(50);
    while( 0 == SCCB_WriteByte ( 0x12, 0x80 ) ) /*��λsensor */
    {
        i++;
        if(i == 20)
        {
            DEBUG_OUT("����:SCCBд���ݴ���");
            //OV7725_Delay_ms(50);
            return 0 ;
        }

    }
    OV7725_Delay_ms(50);
    if( 0 == SCCB_ReadByte( &Sensor_IDCode, 1, 0x0b ) )	 /* ��ȡsensor ID��*/
    {
        DEBUG_OUT("����:��ȡIDʧ��");
        return 0;
    }
    DEBUG_OUT("Get ID success��SENSOR ID is 0x%x", Sensor_IDCode);
    DEBUG_OUT("Config Register Number is %d ", OV7725_REG_NUM);
    if(Sensor_IDCode == OV7725_ID)
    {
        for( i = 0 ; i < OV7725_REG_NUM ; i++ )
        {
            if( 0 == SCCB_WriteByte(Sensor_Config[i].Address, Sensor_Config[i].Value) )
            {
                DEBUG_OUT("����:д�Ĵ���0x%xʧ��", Sensor_Config[i].Address);
                return 0;
            }
        }
    }
    else
    {
        return 0;
    }
    DEBUG_OUT("OV7725 Register Config Success!");
    return 1;
}


