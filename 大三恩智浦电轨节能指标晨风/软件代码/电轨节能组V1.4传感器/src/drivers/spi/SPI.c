#include "SPI.h"


//==============================================================================
//�������ƣ�SPI_init��
//����˵����SPI��ʼ����ͨ�Ų�����BaudRate = BusClock /16.����BusClock��ϵͳʱ�ӡ�
//����������SPI_mode��SPIģʽ��
//       ��SPI_No��Ҫ��ʼ����SPI�ںš�	 
//�������أ�0:��ʼ��ʧ�ܣ�1����ʼ���ɹ���
//==============================================================================

uint_8 SPI_init(uint_8 SPI_No,uint_8 SPI_mode)
{
	SPI_MemMapPtr baseadd=SPI_baseadd(SPI_No);
		if(SPI_No==0)		//�԰�portA��14~17����ѡ��ΪSPI0���ܡ�
		{
			SIM_SCGC4|=SIM_SCGC4_SPI0_MASK;			//��SPI0ģ��ʱ�ӡ�
			PORTA_PCR14=(0|PORT_PCR_MUX(0x02));		//ѡ��PTA14��SS����
			PORTA_PCR15=(0|PORT_PCR_MUX(0x02));		//ѡ��PTA15��SCK����
			PORTA_PCR16=(0|PORT_PCR_MUX(0x02));		//ѡ��PTA16��MOSI����
			PORTA_PCR17=(0|PORT_PCR_MUX(0x02));		//ѡ��PTA17��MIOS����
			
			SPI0_C1 = 0|SPI_C1_SPE_MASK
			    		|SPI_C1_MSTR_MASK
			    		|SPI_C1_SSOE_MASK;		//��SPI0��C1�Ĵ�������Ϊ����ģʽ���ӻ�ѡ���Զ�ģʽ��
			    									//ʹ��SPI0ģ�顣
			SPI0_C2 = 0|SPI_C2_MODFEN_MASK;		//��SPI0��C1��SSOE��ϣ��Ѵӻ�ѡ������Ϊ�Զ�ģʽ��
			SPI0_BR = 0x00U;					//���ò����ʡ�
		}
		else if(SPI_No==1)		//�԰�portE��1~4����ѡ��ΪSPI1���ܡ�
		{
			SIM_SCGC4|=SIM_SCGC4_SPI1_MASK;			//��SPI1ģ��ʱ�ӡ�
			PORTE_PCR1=(0|PORT_PCR_MUX(0x02));		//ѡ��PTE1��MOSI����
			PORTE_PCR2=(0|PORT_PCR_MUX(0x02));		//ѡ��PTE2��SCK����
			PORTE_PCR3=(0|PORT_PCR_MUX(0x02));		//ѡ��PTE3��MISO����
			PORTE_PCR4=(0|PORT_PCR_MUX(0x02));		//ѡ��PTE4��MOSI����
			
			 SPI1_C1 = 0|SPI_C1_SPE_MASK
			    		|SPI_C1_SPIE_MASK;	   //��SPI1��C1�Ĵ�����������
			 enable_irq (11);				       //����SPI1�жϡ�
			 SPI1_C2 = 0x00U;		          
			 SPI1_BR = 0x00U;		 		      //������SPI0��ͬ�Ĳ����ʡ�
			
		}
		else return(0);
		return(1);
		
}

//==============================================================================
//�������ƣ�SPI_sendonebyte.
//����˵����SPI����һ�ֽ����ݡ�
//����������SPI_No�����ںš�
//       ��ch����Ҫ���͵�һ�ֽ����ݡ�
//�������أ�0������ʧ�ܣ�1�����ͳɹ���
//==============================================================================
uint_8 SPI_sendonebyte(uint_8 SPI_No,uint_8 ch)
{
	uint_32 i;
	SPI_MemMapPtr baseadd=SPI_baseadd(SPI_No);
	while(!SPI_S_REG(baseadd)&SPI_S_SPTEF_MASK);
	SPI_D_REG(baseadd)=ch;
	for(i=0;i<0xFFF0;i++)		//��һ��ʱ���ڷ��Ͳ�����ɣ�����Ϊ����ʧ�ܡ�
	{
		if(SPI_S_REG(baseadd)&SPI_S_SPTEF_MASK)
		{
			return(1);
		}
	}
	return(0);
}

//==============================================================================
//�������ƣ�SPI_sendstring.
//����˵����SPI�������ݡ�
//����������SPI_No�����ںš�
//       ��*p:�������ݵ��׵�ַ��
//�������أ��ޡ�
//==============================================================================
void SPI_sendstring(uint_8 SPI_No,uint_8 *p)
{
	SPI_MemMapPtr baseadd=SPI_baseadd(SPI_No);
	uint_32 k;
	for(k=0;p[k]!='\0';k++)
	{
		while(!SPI_S_REG(baseadd)&SPI_S_SPTEF_MASK);
			SPI_D_REG(baseadd)=p[k];
	}
}

//==============================================================================
//�������ƣ�SPI_reonebyte.
//����˵����SPI����һ���ֽڵ�����
//����������SPI_No��SPI�ںš�
//�������أ����յ������ݡ�
//==============================================================================
uint_8 SPI_reonebyte(uint_8 SPI_No)
{
	SPI_MemMapPtr baseadd=SPI_baseadd(SPI_No);
	while(!(SPI_S_REG(baseadd)& SPI_S_SPRF_MASK));	//���SPI1�Ƿ��յ������ݡ�
	return SPI_D_REG(baseadd);				
}

//==============================================================================
//�������ƣ�SPI_receiveN.
//����˵����SPI�������ݡ���n=1ʱ�����ǽ���һ���ֽڵ����ݡ���
//����������SPI_No��SPI�ںš�
//		 : n:Ҫ���յ��ֽڸ�����
//       ��data[]:���յ������ݡ�
// �������أ�1�����ճɹ�,���������ʧ�ܡ�
//==============================================================================
uint_8 SPI_receiveN(uint_8 SPI_No,uint_32 n,uint_8 data[])
{
	SPI_MemMapPtr baseadd=SPI_baseadd(SPI_No);
	uint_32 m=0;
	while(m<n)
	{
		if(SPI_S_REG(baseadd)&SPI_S_SPRF_MASK)
		{
			data[m]=SPI_D_REG(baseadd);
			m++;
		}
	}
	return(1);
}

//==============================================================================
//�������ƣ�SPI_re_enable_int.
//����˵������SPI�����жϡ�
//����������SPI_No��SPI�ںš�
//�������أ��ޡ�
//==============================================================================
void SPI_re_enable_int(uint_8 SPI_No)
{
    enable_irq (SPI_No+10);
}

