//==========================================================================
//�ļ����ƣ�RTC.c
//���ܸ�Ҫ��KL25 RTC�ײ���������Դ�ļ�
//��Ȩ���У����ݴ�ѧ��˼����Ƕ��ʽ����(sumcu.suda.edu.cn)
//�汾���£�2013-3-23  V2.0  ����
//==========================================================================
#include "include.h"
#include "rtc.h"

//===============================================================
//�������ƣ�hw_rtc_init
//����������SecendTimes:��ʱ����Ĵ����ĳ�ʼֵ
//�������أ���
//���ܸ�Ҫ��RTC������ʼ��
//===============================================================
void rtc_init(uint_32 seconds, uint_32 alarm)
{
	  //ʱ��RTCģ��ʱ��
	  SIM_SCGC6 |= SIM_SCGC6_RTC_MASK;
	  //�����λ
	  disable_irq(RTC_alarm_irq_no);
	  disable_irq(RTC_second_irq_no);

	  RTC_CR  = RTC_CR_SWR_MASK;
	  RTC_CR  &= ~RTC_CR_SWR_MASK;

	  if (RTC_SR & RTC_SR_TIF_MASK)
	  {
	      RTC_TSR = 0x00000000;
	  }
	  RTC_TCR = RTC_TCR_CIR(0) | RTC_TCR_TCR(0);
	  //ʹ�ܼ�����
	  if (seconds >0)
	  {
	    enable_irq(RTC_second_irq_no);
	    //ѡ����LPO��ΪRTCʱ��Դ
	    SIM_SOPT1 |= SIM_SOPT1_OSC32KSEL(3);
	    RTC_IER |= RTC_IER_TSIE_MASK;
	    RTC_SR |= RTC_SR_TCE_MASK;
	    RTC_TSR = seconds;
	  }
	  else
	  {
	    RTC_IER &= ~RTC_IER_TSIE_MASK;
	  }
	  if (alarm >0)
	  {
	    RTC_IER |= RTC_IER_TAIE_MASK;
	    RTC_SR |= RTC_SR_TCE_MASK;
	    RTC_TAR = alarm;
	    enable_irq(RTC_alarm_irq_no);
	    //ѡ����LPO��ΪRTCʱ��Դ
	    SIM_SOPT1 |= SIM_SOPT1_OSC32KSEL(3);  //ѡ��LPO 1khz��Ϊʱ������
	  }
	  else
	  {
	    RTC_IER &= ~RTC_IER_TAIE_MASK;
	  }
}
