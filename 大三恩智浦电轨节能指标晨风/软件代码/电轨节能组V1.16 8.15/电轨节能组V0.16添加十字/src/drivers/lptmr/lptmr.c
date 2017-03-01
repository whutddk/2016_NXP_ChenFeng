/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
* �ļ���       �� lptmr.c
* ����         ������ģ��ʵ��
*
* ʵ��ƽ̨     ��landzo���ӿ�����
* ��汾       ��
* Ƕ��ϵͳ     ��
*
* ����         ��landzo ������
* �Ա���       ��http://landzo.taobao.com/

**********************************************************************************/
#include "lptmr.h"


/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�lptmr_internal_ref_init
*  ����˵�����ڲ��ο�ʱ�ӳ�ʼ�� ���ÿ����ڲ��ο�ʱ�ӣ�1s�ж�һ��
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-9-18
*  ��    ע��
*************************************************************************/
void lptmr_internal_ref_init()
{
	uint32_t compare_value=1953;
	MCG_C1|=MCG_C1_IRCLKEN_MASK;      //ʹ���ڲ��ο�ʱ��
	MCG_C2|=MCG_C2_IRCS_MASK;		  //MCG_C[IRCS]=1,ʹ�ܿ����ڲ��ο�ʱ�ӣ�4MHz��
	MCG_SC |= MCG_SC_FCRDIV(0x00) ;
	MCG_C1|=MCG_C1_IREFSTEN_MASK;     //ֹͣģʽ��ʱ���ڲ�ʱ�ӱ���ʹ��
	SIM_SCGC5|=SIM_SCGC5_LPTMR_MASK;  //ʹ��LPTģ��ʱ��

	LPTMR0_PSR=LPTMR_PSR_PCS(0x00)|LPTMR_PSR_PRESCALE(0x09);//ʹ���ڲ�ʱ�ӣ�1024Ԥ��Ƶ
	LPTMR0_CMR=LPTMR_CMR_COMPARE(compare_value);            //���ñȽϼĴ���ֵ
	LPTMR0_CSR&=(~LPTMR_CSR_TEN_MASK);
	LPTMR0_CSR&=(~LPTMR_CSR_TFC_MASK);
	LPTMR0_CSR&=(~LPTMR_CSR_TMS_MASK);
	LPTMR0_CSR|=LPTMR_CSR_TEN_MASK;   //����LPTģ������
	LPTMR0_CSR|=LPTMR_CSR_TIE_MASK; //����LPT��ʱ���ж�
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�lptmr_count_init
*  ����˵����LPTMR���������ʼ��
*  ����˵����LPT0_ALTn   LPTMR��������ܽ�
*            count       LPTMR����Ƚ�ֵ
*            LPT_CFG     LPTMR���������ʽ�������ؼ������½��ؼ���
*  �������أ���
*  �޸�ʱ�䣺2014-9-18
*  ��    ע�� 
*  Sample usage:       lptmr_pulse_init(LPT0_ALT1,0xFFFF,LPT_Rising);     
* // LPTMR ���岶׽����׽0xFFFF�󴥷��ж�������Ҫ���жϲ�ִ���жϸ�λ�������������ز�׽ 
*************************************************************************/
void lptmr_count_init(LPT0_ALTn altn, uint16_t count, LPT_CFG cfg)
{

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;                        //ʹ��LPTģ��ʱ��

    //��������ܽ�
    if(altn == LPT0_ALT1)
    {
        port_init(PTA19, ALT6 );            //��PTA19��ʹ�� ALT6
    }
    else if(altn == LPT0_ALT2)
    {
        port_init(PTC5, ALT3 );             //��PTC5��ʹ�� ALT3
    }
    else                                    //�����ܷ����¼�
    {
        ASSERT((altn == LPT0_ALT1 ) || (altn == LPT0_ALT2 ));   //���ùܽ�����
    }

    // ��״̬�Ĵ���
    LPTMR0_CSR = 0x00 ;                                          //�ȹ���LPT��������������ʱ�ӷ�Ƶ,��ռ���ֵ��
    LPTMR0_PSR = 0x00 ;
    LPTMR0_CSR = 0x00 ;
    LPTMR0_CMR = 0X00 ; 
   
    // �����ۼӼ���ֵ
    LPTMR0_CMR  =   LPTMR_CMR_COMPARE(count);                   //���ñȽ�ֵ

    LPTMR0_PSR  =   (0
                     |LPTMR_PSR_PCS(0x00)
                     |LPTMR_PSR_PBYP_MASK
                     |LPTMR_PSR_PRESCALE(0x01)); 
    // �ܽ����á�ʹ���ж�
    
    LPTMR0_CSR  =  (0
                    | LPTMR_CSR_TPS(altn)       // ѡ������ܽ� ѡ��
                    | LPTMR_CSR_TMS_MASK        // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
                    | ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
                  //  | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
                    | LPTMR_CSR_TIE_MASK        //�ж�ʹ��
                    //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
                   );

    LPTMR0_CSR  |= LPTMR_CSR_TEN_MASK ; 
   // LPTMR0_CNR = 0X03 ; 
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�lptmr_pulse_get
*  ����˵������ȡLPTMR�������ֵ
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-9-18
*  ��    ע��  ��ȡLPTMR0_CNR���ݣ�������д�룬�ſɶ���ȡ
*  Sample usage:       uint16_t data = lptmr_pulse_get();  //��ȡ�������ֵ
*************************************************************************/
uint16_t lptmr_pulse_get(void)
{
    uint16_t  LPTCOUNT = 0  ;
    LPTMR0_CNR = 12 ;
    LPTCOUNT = LPTMR0_CNR ;
    lptmr_pulse_clean();
    return (uint16)LPTCOUNT;
}


/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�lptmr_pulse_clean
*  ����˵�������LPTMR�������
*  ����˵������
*  �������أ���
*  �޸�ʱ�䣺2014-9-18
*  ��    ע��  
*************************************************************************/
void lptmr_pulse_clean(void)
{
    LPTMR0_CSR  &= ~LPTMR_CSR_TEN_MASK;     //����LPT��ʱ��ͻ��Զ����������ֵ
    LPTMR0_CSR  |= LPTMR_CSR_TEN_MASK;
}

/*************************************************************************
*                             ������ӹ�����
*
*  �������ƣ�lptmr_delay_ms
*  ����˵����LPTMR��ʱ������ms��
*  ����˵����ms          LPTMR��ʱʱ��(0~65535)
*  �������أ���
*  �޸�ʱ�䣺2014-9-18
*  ��    ע��  
*  Sample usage:       lptmr_delay_ms(32);     // LPTMR ��ʱ32ms
*************************************************************************/
void lptmr_delay_ms(uint16_t ms)
{
    if(ms == 0)
    {
        return;
    }

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;    //ʹ��LPTģ��ʱ��

    LPTMR0_CSR = 0x00;                      //�ȹ���LPT���Զ����������ֵ

    LPTMR0_CMR = ms;                        //���ñȽ�ֵ������ʱʱ��

    //ѡ��ʱ��Դ
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(1)                  //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
                      | LPTMR_PSR_PBYP_MASK               //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
                      //| LPTMR_PSR_PRESCALE(1)           //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
                    );

    //ʹ�� LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
                    //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
                    | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
                    //| LPTMR_CSR_TIE_MASK      //�ж�ʹ��
                    //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
                   );

    while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)); //�ȴ��Ƚ�ֵ�����ֵ��ȣ���ʱ�䵽��

    LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;          //����Ƚϱ�־λ

    return;
}

/*!
 *  @brief      LPTMR��ʱ������ms��
 *  @param      ms          LPTMR��ʱʱ��(0~65535)
 *  @since      v5.0
 *  Sample usage:
                    lptmr_timing_ms(32);                                // LPTMR ��ʱ 32ms
                    set_vector_handler(LPTimer_VECTORn,lptmr_hander);   // �����жϸ�λ�������ж���������
                    enable_irq(LPTimer_IRQn);                           // ʹ��LPTMR�ж�
 */
void lptmr_timing_ms(uint16_t ms)
{
    if(ms == 0)
    {
        return;
    }

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;    //ʹ��LPTģ��ʱ��

    LPTMR0_CSR = 0x00;                      //�ȹ���LPT���Զ����������ֵ

    LPTMR0_CMR = ms;                        //���ñȽ�ֵ������ʱʱ��

    //ѡ��ʱ��Դ
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(1)                  //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
                      | LPTMR_PSR_PBYP_MASK               //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
                      //| LPTMR_PSR_PRESCALE(1)           //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
                    );

    //ʹ�� LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
                    //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
                    | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
                    | LPTMR_CSR_TIE_MASK        //�ж�ʹ��
                    //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
                   );

    return;
}

/*!
 *  @brief      LPTMR��ʱ������us��
 *  @param      ms          LPTMR��ʱʱ��(0~41942)
 *  @since      v5.0
 *  Sample usage:       lptmr_delay_us(32);     // LPTMR ��ʱ32us
 */
void lptmr_delay_us(uint16_t us)
{
    ASSERT( ( (us * EXTAL_IN_MHz + 16) /  32 )  <= 0xFFFF );    //���ԣ�ȷ���Ĵ��������
    //us * ����Ƶ��  /32 <= 0xFFFF
    //���� 32 ��������ļ��������� ��Ƶ
    //���� 16��Ϊ�� ��������

    if(us == 0)
    {
        return;
    }
#if defined(MK60DZ10)
    OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
#elif (defined(MK60F15) || defined(MCU_MKL25Z4))
    OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
#endif

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;                        //ʹ��LPTģ��ʱ��

    LPTMR0_CSR = 0x00;                                          //�ȹ���LPT���Զ����������ֵ

    LPTMR0_CMR = (us * EXTAL_IN_MHz + 16) / 32;                 //���ñȽ�ֵ������ʱʱ��

    //ѡ��ʱ��Դ
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(3)          //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
                      //| LPTMR_PSR_PBYP_MASK     //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
                      | LPTMR_PSR_PRESCALE(4)     //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
                    );

    //ʹ�� LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
                    //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
                    | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
                    //| LPTMR_CSR_TIE_MASK      //�ж�ʹ��
                    //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
                   );

    while (!(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)); //�ȴ��Ƚ�ֵ�����ֵ��ȣ���ʱ�䵽��

    LPTMR0_CSR &= ~LPTMR_CSR_TEN_MASK;          //����Ƚϱ�־λ

    return;
}



/*!
 *  @brief      LPTMR��ʱ������us��
 *  @param      ms          LPTMR��ʱʱ��(0~41942)
 *  @since      v5.0
 *  Sample usage:
                    lptmr_timing_us(32);     // LPTMR ��ʱ32us
                    set_vector_handler(LPTimer_VECTORn,lptmr_hander);   // �����жϸ�λ�������ж���������
                    enable_irq(LPTimer_IRQn);                           // ʹ��LPTMR�ж�
 */
void lptmr_timing_us(uint16_t us)
{
    ASSERT( ( (us * EXTAL_IN_MHz + 16) /  32 )  <= 0xFFFF );    //���ԣ�ȷ���Ĵ��������
    //us * ����Ƶ��  /32 <= 0xFFFF
    //���� 32 ��������ļ��������� ��Ƶ
    //���� 16��Ϊ�� ��������

    if(us == 0)
    {
        return;
    }

#if defined(MK60DZ10)
    OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
#elif (defined(MK60F15) || defined(MCU_MKL25Z4))
    OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
#endif

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;                        //ʹ��LPTģ��ʱ��

    LPTMR0_CSR = 0x00;                                          //�ȹ���LPT���Զ����������ֵ

    LPTMR0_CMR = (us * EXTAL_IN_MHz + 16) / 32;                 //���ñȽ�ֵ������ʱʱ��

    //ѡ��ʱ��Դ
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(3)          //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
                      //| LPTMR_PSR_PBYP_MASK     //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
                      | LPTMR_PSR_PRESCALE(4)     //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
                    );

    //ʹ�� LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
                    //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
                    | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
                    | LPTMR_CSR_TIE_MASK      //�ж�ʹ��
                    //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
                   );

    return;
}



/*!
 *  @brief      LPTMR��ʱ������ms,��ʱʱ�����Ϊ65534ms��
 *  @since      v5.0
 *  Sample usage:
                    void my_delay(uint32_t time)
                    {
                        volatile uint32_t i = time;
                        while(i--);

                    }


                    lptmr_time_start_ms();

                    my_delay(600000);
                    i = lptmr_time_get_ms();
                    if(i == ~0)
                    {
                        printf("\n��ʱʱ�䳬ʱ");
                    }
                    else
                    {
                        printf("\n��ʱʱ��Ϊ��%dms",i);
                    }
 */
void lptmr_time_start_ms(void)
{
    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;    //ʹ��LPTģ��ʱ��

    LPTMR0_CSR = 0x00;                      //�ȹ���LPT���Զ����������ֵ

    LPTMR0_CMR =  ~0;                        //���ñȽ�ֵ������ʱʱ��

    //ѡ��ʱ��Դ
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(1)                  //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
                      | LPTMR_PSR_PBYP_MASK               //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
                      //| LPTMR_PSR_PRESCALE(1)           //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
                    );

    //ʹ�� LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
                    //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
                    | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
                    //| LPTMR_CSR_TIE_MASK      //�ж�ʹ��
                    //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
                   );
    return;
}




/*!
 *  @brief      ��ȡLPTMR��ʱʱ�䣨ms��
*   @return     ��ʱʱ�䣨����ֵΪ ~0 ��ʾ��ʱ��ʱ������ֵ�� 0~ 65534ms ������ ��
 *  @since      v5.0
 *  Sample usage:   �ο� lptmr_time_start_ms �ĵ�������
 */
uint32_t lptmr_time_get_ms(void)
{
    uint32_t data=0;

    if(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)     //�Ѿ������
    {

        data |= ~0;                          //���� 0xffffffff ��ʾ����
    }
    else
    {
#if (defined(MK60F15) || defined(MCU_MKL25Z4))
        LPTMR0_CNR = 0;
#endif
        data = LPTMR0_CNR;                  //���ؼ�ʱʱ��(��ֵ���Ϊ 0xffff)
    }

    return data;
}

/*!
 *  @brief      �ر� LPTMR��ʱ
 *  @since      v5.0
 */
void lptmr_time_close()
{
    LPTMR0_CSR = 0x00;                                          //�ȹ���LPT���Զ����������ֵ�����������
}

void lptmr_time_start_us(void)
{

#if defined(MK60DZ10)
    OSC_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
#elif (defined(MK60F15) || defined(MCU_MKL25Z4))
    OSC0_CR |= OSC_CR_ERCLKEN_MASK;                              //ʹ�� OSCERCLK
#endif

    SIM_SCGC5 |= SIM_SCGC5_LPTMR_MASK;                        //ʹ��LPTģ��ʱ��

    LPTMR0_CSR = 0x00;                                          //�ȹ���LPT���Զ����������ֵ

    LPTMR0_CMR |= ~0;                                            //���ñȽ�ֵΪ���ֵ

    //ѡ��ʱ��Դ
    LPTMR0_PSR  =   ( 0
                      | LPTMR_PSR_PCS(3)          //ѡ��ʱ��Դ�� 0 Ϊ MCGIRCLK ��1Ϊ LPO��1KHz�� ��2Ϊ ERCLK32K ��3Ϊ OSCERCLK
                      //| LPTMR_PSR_PBYP_MASK     //��· Ԥ��Ƶ/�����˲��� ,������ Ԥ��Ƶ/�����˲���(ע���˱�ʾʹ��Ԥ��Ƶ/�����˲���)
                      | LPTMR_PSR_PRESCALE(4)     //Ԥ��Ƶֵ = 2^(n+1) ,n = 0~ 0xF
                    );

    //ʹ�� LPT
    LPTMR0_CSR  =  (0
                    //| LPTMR_CSR_TPS(1)        // ѡ������ܽ� ѡ��
                    //| LPTMR_CSR_TMS_MASK      // ѡ��������� (ע���˱�ʾʱ�����ģʽ)
                    //| ( cfg == LPT_Falling ?  LPTMR_CSR_TPP_MASK :   0  )  //���������������ʽѡ��0Ϊ�ߵ�ƽ��Ч�������ؼ�1
                    | LPTMR_CSR_TEN_MASK        //ʹ��LPT(ע���˱�ʾ����)
                    //| LPTMR_CSR_TIE_MASK      //�ж�ʹ��
                    //| LPTMR_CSR_TFC_MASK      //0:����ֵ���ڱȽ�ֵ�͸�λ��1�������λ��ע�ͱ�ʾ0��
                   );

    return;
}

/*!
 *  @brief      ��ȡLPTMR��ʱʱ�䣨us��
*   @return     ��ʱʱ�䣨����ֵΪ ~0 ��ʾ��ʱ��ʱ������ֵ�� 0~ 41942us ������ ��
 *  @since      v5.0
 *  Sample usage:   �ο� lptmr_time_start_us �ĵ�������
 */
uint32_t lptmr_time_get_us(void)
{
    uint32_t data=0;

    if(LPTMR0_CSR & LPTMR_CSR_TCF_MASK)     //�Ѿ������
    {

        data |= ~0;                          //���� 0xffffffff ��ʾ����
    }
    else
    {
#if (defined(MK60F15) || defined(MCU_MKL25Z4))
        LPTMR0_CNR = 0;
#endif
        data = (LPTMR0_CNR * 32) / EXTAL_IN_MHz; //���е�λ����
    }

    return data;
}



//============================================================================
//�������ƣ�enable_lptmr_int
//�������أ���
//����˵������
//���ܸ�Ҫ������LPT��ʱ���ж�
//============================================================================
void enable_lptmr_int()
{
	//LPTMR0_CSR|=LPTMR_CSR_TIE_MASK; //����LPT��ʱ���ж�
	enable_irq(LPTMRLPTMR_irq);	    //�����ŵ�IRQ�ж�
}

//============================================================================
//�������ƣ�disable_lptmr_int
//�������أ���
//����˵������
//���ܸ�Ҫ���ر�LPT��ʱ���ж�
//============================================================================
void disable_lptmr_int()
{
	//LPTMR0_CSR &=~LPTMR_CSR_TIE_MASK;   //��ֹLPT��ʱ���ж�
	disable_irq(LPTMRLPTMR_irq);	    //�����ŵ�IRQ�ж�
}


