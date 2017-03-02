
#ifndef     _DAC_H_
#define     _DAC_H_ 1u



typedef enum DACn       //DACģ��
{
    DAC0,
    DAC1
} DACn;

typedef enum VREF       //�ο���ѹ
{
    VREF_OUT ,          //�ڲ��ο���ѹ��1.2v
    VDDA                //3.3v
} VREF;


extern volatile struct DAC_MemMap *DACx[2];


/*     DACһ��ת���ĺ����б�       */
extern void dac_once_init   (DACn, VREF);               //DACһ��ת����ʼ��
extern void dac_once_convert(DACn, u16 val);            //DACһ��ת������
extern u16  dac_once_get    (DACn);                     //DACһ��ת�����ȡ��ǰת����������




/*     �ڲ�����       */
void VREF_init(void);                            //��ʼ���ڲ��ο���ѹ

#endif  //_DAC_H_

