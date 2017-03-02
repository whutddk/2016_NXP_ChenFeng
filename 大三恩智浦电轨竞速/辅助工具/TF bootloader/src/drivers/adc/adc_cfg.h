/******************** (C) COPYRIGHT 2011 Ұ��Ƕ��ʽ���������� ********************
 * �ļ���       ��adc_cfg.c
 * ����         ��adc�ĺ궨������ͷ�ļ�
 *
 * ʵ��ƽ̨     ��Ұ��kinetis������
 * ��汾       ��
 * Ƕ��ϵͳ     ��
 *
 * ����         ��
 * �Ա���       ��http://firestm32.taobao.com
 * ����֧����̳ ��http://www.ourdev.cn/bbs/bbs_list.jsp?bbs_id=1008
**********************************************************************************/




#ifndef __ADC_CFG_H__
#define __ADC_CFG_H__ 1

#define ADC0_irq_no 57
#define ADC1_irq_no 58


// Bit shifting of bitfiled is already taken into account so
// bitfiled values are always represented as relative to their position.

/************************* #Defines ******************************************/



#define A                 0x0
#define B                 0x1


/////// NOTE: the following defines relate to the ADC register definitions
/////// and the content follows the reference manual, using the same symbols.


//// ADCSC1 (register)

// Conversion Complete (COCO) mask
#define COCO_COMPLETE     ADC_SC1_COCO_MASK
#define COCO_NOT          0x00

// ADC interrupts: enabled, or disabled.
// ADC �ж�: ʹ�ܻ��߽�ֹ
#define AIEN_ON           ADC_SC1_AIEN_MASK
#define AIEN_OFF          0x00

// Differential or Single ended ADC input
//��ֻ��ߵ���ADC����
#define DIFF_SINGLE       0x00
#define DIFF_DIFFERENTIAL ADC_SC1_DIFF_MASK

//// ADCCFG1

// Power setting of ADC
//ADC��Դ����
#define ADLPC_LOW         ADC_CFG1_ADLPC_MASK
#define ADLPC_NORMAL      0x00

// Clock divisor
//ʱ�ӷ�Ƶ
#define ADIV_1            0x00
#define ADIV_2            0x01
#define ADIV_4            0x02
#define ADIV_8            0x03

// Long samle time, or Short sample time
// ������ʱ����߶̲���ʱ��
#define ADLSMP_LONG       ADC_CFG1_ADLSMP_MASK
#define ADLSMP_SHORT      0x00

// How many bits for the conversion?  8, 12, 10, or 16 (single ended).
// ת������ 8, 12, 10, ���� 16 (����).
#define MODE_8            0x00
#define MODE_12           0x01
#define MODE_10           0x02
#define MODE_16           0x03

// ADC Input Clock Source choice? Bus clock, Bus clock/2, "altclk", or the
//                                ADC's own asynchronous clock for less noise
//ADC����ʱ��Դѡ�� ���ߣ�����/2����altclk������ADC�����첽ʱ���Լ�������
#define ADICLK_BUS        0x00
#define ADICLK_BUS_2      0x01
#define ADICLK_ALTCLK     0x02
#define ADICLK_ADACK      0x03

//// ADCCFG2


// ѡ��ͨ��A��ͨ��B
#define MUXSEL_ADCB       ADC_CFG2_MUXSEL_MASK
#define MUXSEL_ADCA       0x00

// Ansync clock output enable: enable, or disable the output of it
// �첽ʱ�����ʹ�ܣ�ʹ�ܣ����߽�ֹ���
#define ADACKEN_ENABLED   ADC_CFG2_ADACKEN_MASK
#define ADACKEN_DISABLED  0x00

// High speed or low speed conversion mode
// ���ٵ���ת��ʱ��
#define ADHSC_HISPEED     ADC_CFG2_ADHSC_MASK
#define ADHSC_NORMAL      0x00

// Long Sample Time selector: 20, 12, 6, or 2 extra clocks for a longer sample time
// ������ʱ��ѡ��20,12,6����2�������ʱ�Ӷ��ڳ�����ʱ��
#define ADLSTS_20          0x00
#define ADLSTS_12          0x01
#define ADLSTS_6           0x02
#define ADLSTS_2           0x03

////ADCSC2

// Read-only status bit indicating conversion status
// ֻ��״̬λֻ��ת��״̬
#define ADACT_ACTIVE       ADC_SC2_ADACT_MASK
#define ADACT_INACTIVE     0x00

// Trigger for starting conversion: Hardware trigger, or software trigger.
// For using PDB, the Hardware trigger option is selected.
// ������ʼת��:Ӳ���������������
#define ADTRG_HW           ADC_SC2_ADTRG_MASK
#define ADTRG_SW           0x00

// ADC Compare Function Enable: Disabled, or Enabled.
//ADC�ȽϹ���ʹ�ܣ���ֹ����ʹ��
#define ACFE_DISABLED      0x00
#define ACFE_ENABLED       ADC_SC2_ACFE_MASK

// Compare Function Greater Than Enable: Greater, or Less.
// �ȽϹ��ܴ��ڱȽ�ʹ�ܣ����ڻ���С��
#define ACFGT_GREATER      ADC_SC2_ACFGT_MASK
#define ACFGT_LESS         0x00

// Compare Function Range Enable: Enabled or Disabled.
// �ȽϹ��ܷ�Χʹ�ܣ�ʹ�ܻ��߽�ֹ
#define ACREN_ENABLED      ADC_SC2_ACREN_MASK
#define ACREN_DISABLED     0x00

// DMA enable: enabled or disabled.
// DMAʹ�ܣ�ʹ�ܻ��߽�ֹ
#define DMAEN_ENABLED      ADC_SC2_DMAEN_MASK
#define DMAEN_DISABLED     0x00

// Voltage Reference selection for the ADC conversions
// (***not*** the PGA which uses VREFO only).
// VREFH and VREFL (0) , or VREFO (1).

//ADCת���ĵ�ѹ�ο�ѡ��
#define REFSEL_EXT         0x00
#define REFSEL_ALT         0x01
#define REFSEL_RES         0x02     /* reserved */
#define REFSEL_RES_EXT     0x03     /* reserved but defaults to Vref */

////ADCSC3

// Calibration begin or off
// У׼��ʼ���߹ر�
#define CAL_BEGIN          ADC_SC3_CAL_MASK
#define CAL_OFF            0x00

// Status indicating Calibration failed, or normal success
// ָʾУ׼ʧ�ܳɹ���״̬
#define CALF_FAIL          ADC_SC3_CALF_MASK
#define CALF_NORMAL        0x00

// ADC to continously convert, or do a sinle conversion
// ADC����ת������һ��ת��
#define ADCO_CONTINUOUS    ADC_SC3_ADCO_MASK
#define ADCO_SINGLE        0x00

// Averaging enabled in the ADC, or not.
// ƽ������ʹ�ܻ��߽�ֹ
#define AVGE_ENABLED       ADC_SC3_AVGE_MASK
#define AVGE_DISABLED      0x00

// How many to average prior to "interrupting" the MCU?  4, 8, 16, or 32
// MCU�����ж�ǰ��ƽ������4,8,16������32
#define AVGS_4             0x00
#define AVGS_8             0x01
#define AVGS_16            0x02
#define AVGS_32            0x03

///////////////////////////////PGA���֣����ݴ�ѧ��û�е�/////////////////////////////////////
////PGA

// PGA enabled or not?
#define PGAEN_ENABLED      ADC_PGA_PGAEN_MASK
#define PGAEN_DISABLED     0x00

// Chopper stabilization of the amplifier, or not.
#define PGACHP_CHOP        ADC_PGA_PGACHP_MASK
#define PGACHP_NOCHOP      0x00

// PGA in low power mode, or normal mode.
#define PGALP_LOW          ADC_PGA_PGALP_MASK
#define PGALP_NORMAL       0x00

// Gain of PGA.  Selectable from 1 to 64.

#define PGAG_1             0x00
#define PGAG_2             0x01
#define PGAG_4             0x02
#define PGAG_8             0x03
#define PGAG_16            0x04
#define PGAG_32            0x05
#define PGAG_64            0x06

/////////// The above values fit into the structure below to select ADC/PGA
/////////// configuration desired:

//ADת�������ýṹ��
typedef struct adc_cfg
{
    uint8_t  CONFIG1;         // ADC configuration register 1     ���üĴ���1
    uint8_t  CONFIG2;         // Configuration register 2         ���üĴ���2
    uint16_t COMPARE1;        // Compare value registers 1        �Ƚ�ֵ�Ĵ���1
    uint16_t COMPARE2;        // Compare value registers 2        �Ƚ�ֵ�Ĵ���2
    uint8_t  STATUS2;         // Status and control register 2    ״̬���ƼĴ���2
    uint8_t  STATUS3;         // Status and control register 3
    uint8_t  STATUS1A;        // ADC status and control registers 1 Aͨ��
    uint8_t  STATUS1B;        // ADC status and control registers 1 Bͨ��
    uint32_t PGA;             // ADC PGA register
} *tADC_ConfigPtr, tADC_Config ;


#define CAL_BLK_NUMREC 18

typedef struct adc_cal
{

    uint16_t  OFS;
    uint16_t  PG;
    uint16_t  MG;
    uint8_t   CLPD;
    uint8_t   CLPS;
    uint16_t  CLP4;
    uint16_t  CLP3;
    uint8_t   CLP2;
    uint8_t   CLP1;
    uint8_t   CLP0;
    uint8_t   dummy;
    uint8_t   CLMD;
    uint8_t   CLMS;
    uint16_t  CLM4;
    uint16_t  CLM3;
    uint8_t   CLM2;
    uint8_t   CLM1;
    uint8_t   CLM0;
} tADC_Cal_Blk ;




///////////////////////////����Ϊ���ݴ�ѧ��ӵ�////////////////////////////////////
#define ADC1_CHANA    26


#define ADC0_DLYA     0x2000                                // ADC0 ����A�ӳ�
#define ADC0_DLYB     0x4000                                // ADC0 ����B�ӳ�
#define ADC1_DLYA     0x6000                                // ADC1 ����A�ӳ�
#define ADC1_DLYB     0x7fff                                // ADC1 ����B�ӳ�


#define ADC0A_DONE   0x01
#define ADC0B_DONE   0x02
#define ADC1A_DONE   0x04
#define ADC1B_DONE   0x08

/////////////////////////����Ϊ���ݴ�ѧ��ӵ�////////////////////////////////

/*       ADC��DAC PGA ͨ���궨��        */
#define DP0       DAD0 			//	ADC0				ADC1
#define DP1       DAD1 			//	ADC0				ADC1
#define DP        DAD2 			//	PGA0				PGA1
#define DP3       DAD3 			//	ADC0				ADC1
#define SE4a      AD4a 			//					ADC1
#define SE5a      AD5a 			//					ADC1
#define SE6a      AD6a 			//					ADC1
#define SE7a      AD7a 			//					ADC1
#define SE4b      AD4b 			//	ADC0				ADC1
#define SE5b      AD5b 			//	ADC0				ADC1
#define SE6b      AD6b 			//	ADC0				ADC1
#define SE7b      AD7b 			//	ADC0				ADC1
#define SE8       AD8  			//	ADC0  				ADC1
#define SE9       AD9  			//	ADC0  				ADC1
#define SE10      AD10 			//	ADC0 				ADC1
#define SE11      AD11 			//	ADC0 				ADC1
#define SE12      AD12 			//	ADC0 				ADC1
#define SE13      AD13 			//	ADC0 				ADC1
#define SE14      AD14 			//	ADC0 				ADC1
#define SE15      AD15 			//	ADC0 				ADC1
#define SE16      AD16 			//	ADC0				ADC1
#define SE17      AD17 			//	ADC0				ADC1
#define SE18      AD18 			//	ADC0
#define DM0       AD19 			//	ADC0				ADC1
#define DM1       AD20 			//	ADC0				ADC1 			
#define OUT       AD23 			//	DAC0				DAC1
#define Temperaturensor  AD26 		//  �ڲ��¶ȴ�����                 �ڲ��¶ȴ�����
#define Bandgap   AD27 			//  ��϶��ѹ�ο�                    ��϶��ѹ�ο�
#define Module_disabled    AD31         //   ����ģ��



#endif /* __ADC_CFG_H__ */
