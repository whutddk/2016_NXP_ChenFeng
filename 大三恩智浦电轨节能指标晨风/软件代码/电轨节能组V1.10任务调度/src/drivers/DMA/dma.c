/******************** (C) COPYRIGHT 2011 ������ӹ����� ********************
* �ļ���       �� adc.c
* ����         ������ģ��ʵ��
*
* ʵ��ƽ̨     ��landzo���ӿ�����
* ��汾       ��
* Ƕ��ϵͳ     ��
*
* ����         ��landzo ������
* �Ա���       ��http://landzo.taobao.com/

**********************************************************************************/
#include "common.h"
#include "port.h"
#include "gpio.h"
#include "dma.h"


/*!
 *  @brief      DMA��ʼ������ȡ�˿����ݵ��ڴ�
 *  @param      DMA_CHn         ͨ���ţ�DMA_CH0 ~ DMA_CH15��
 *  @param      SADDR           Դ��ַ( (void * )&PTx_Bn_IN �� (void * )&PTx_Wn_IN   )
 *  @param      DADDR           Ŀ�ĵ�ַ
 *  @param      PTxn            �����˿�
 *  @param      DMA_BYTEn       ÿ��DMA�����ֽ���
 *  @param      count           һ����ѭ�������ֽ���
 *  @param      cfg             DMA�������ã���DMA_cfg��ѡ��
 *  @since      v5.0
 *  @note       DMA PTXn����ԴĬ�������ش������䣬�����޸ģ����ʼ������� port_init ����DMA ������ʽ
                ��ʼ������Ҫ���� DMA_EN ��ʵ��
 *  Sample usage:   uint8_t buff[10];
                    dma_portx2buff_init(DMA_CH0, PTB_B0_IN, buff, PTA7, DMA_BYTE1, 10, DADDR_RECOVER);
                    //DMA��ʼ����Դ��ַ��PTB_B0_IN��Ŀ�ĵ�ַ��buff,PTA7����(Ĭ��������)��ÿ�δ���1�ֽڣ������� 10�� �����������ָ���ַ

                    port_init(PTA7,ALT1 | DMA_FALLING);             //Ĭ�ϴ���Դ�������أ��˴���Ϊ �½��ش���

                    DMA_EN(DMA_CH0);                //��Ҫʹ�� DMA ����ܴ�������
 */
void dma_portx2buff_init(DMA_CHn CHn, void *SADDR, void *DADDR, PTxn ptxn, DMA_BYTEn byten, uint32_t count)
{
    uint8_t n, tmp;
    uint8_t BYTEs = (byten == DMA_BYTE1 ? 1 : (byten == DMA_BYTE2 ? 2 : (byten == DMA_BYTE4 ? 4 : 0 ) ) ); //���㴫���ֽ���
    uint8_t ptx0;
    uint32_t temp32 ;
    

    //���ԣ���⴫�ݽ��������Ƿ���ȷ
    ASSERT(                                             //�ö��Լ�� Դ��ַ��ÿ�δ����ֽ����Ƿ���ȷ
        (   (byten == DMA_BYTE1)                    //����һ���ֽ�
            && ( (SADDR >= &PTA_B0_IN) && (SADDR <= ( &PTE_B3_IN )))
        )

        || (   (byten == DMA_BYTE2)                   //���������ֽ�(ע�⣬���ܿ�˿�)
               && ( (SADDR >= &PTA_B0_IN)
                    && (SADDR <= ( &PTE_W1_IN ))
                    && (((uint32)SADDR & 0x03) != 0x03) )         //��֤����˿�
           )

        || (   (byten == DMA_BYTE4)                   //�����ĸ��ֽ�
               && ((SADDR >= &PTA_B0_IN) && (SADDR <= ( &PTE_B0_IN )))
               && (((uint32)SADDR & 0x03) == 0x00)           //��֤����˿�
           )
    );

    ASSERT(count < 0x8000); //���ԣ����ֻ֧��0x7FFF

    //DMA �Ĵ��� ����

    /* ����ʱ�� */
    SIM_SCGC6 |= SIM_SCGC6_DMAMUX_MASK;                     //��DMA��·������ʱ��
    SIM_SCGC7 |= SIM_SCGC7_DMA_MASK;                        //��DMAģ��ʱ��



                                       
    DMAMUX0_CHCFG(CHn)=0x00;
    DMA_DSR_BCR(CHn)|=DMA_DSR_BCR_DONE_MASK;

    /* ���� DMA ͨ�� �� ������ƿ� TCD ( Transfer Control Descriptor ) */
    DMA_SAR(CHn) =    (uint32)SADDR;                      // ����  Դ��ַ
    DMA_DSR_BCR(CHn) =(0
                     | DMA_DSR_BCR_BCR(count)              //������Ŀ
                     );
    DMA_DAR(CHn) =    (uint32)DADDR;                      // ����Ŀ�ĵ�ַ
    DMA_DCR(CHn) =    (0
                       | DMA_DCR_SSIZE(byten)
                       | DMA_DCR_DSIZE(byten)
                       //| DMA_DCR_SINC_MASK                  //�����Դ��ַ����(����λ��)
                       | DMA_DCR_DINC_MASK                  //�����Ŀ�ĵ�ַ����(����λ��)
                       | DMA_DCR_CS_MASK                  // 0Ϊ��ͣ�ô��䣬ֱ��BCRΪ0��1Ϊһ��������һ��
                       //| DMA_DCR_START_MASK               //�����������
                       | DMA_DCR_ERQ_MASK                   //Ӳ���������䣨������START��ѡһ��
                       | DMA_DCR_D_REQ_MASK                 //������ɺ�Ӳ���Զ���ERQ
                       | DMA_DCR_EADREQ_MASK
                       );



    /* ���� DMA ����Դ */

    DMAMUX_CHCFG_REG(DMAMUX0_BASE_PTR, CHn) = (0
           // | DMAMUX_CHCFG_ENBL_MASK                        /* Enable routing of DMA request */
            //| DMAMUX_CHCFG_TRIG_MASK                        /* Trigger Mode: Periodic   PIT���ڴ�������ģʽ   ͨ��1��ӦPIT1������ʹ��PIT1����������Ӧ��PIT��ʱ���� */
            |DMAMUX_CHCFG_SOURCE(DMA_PORTA)
              //| DMAMUX_CHCFG_SOURCE( PTX(ptxn) + DMA_PORTA) /* ͨ����������Դ:     */
                                             );

    //���ô���Դ��Ĭ���� �����ش�����
    temp32 =  ALT1 | DMA_FALLING;                                          
    gpio_init(ptxn, GPI, 0);               //����Ϊ����
    port_init(ptxn, temp32);


    /*  ��������Դ   */
    //SADDR ʵ���Ͼ��� GPIO�� ����Ĵ��� PDIR �ĵ�ַ
    //GPIOA��GPIOB��GPIOC��GPIOD��GPIOE �ĵ�ַ �ֱ��� 0x400FF000u ��0x400FF040u ��0x400FF080u�� 0x400FF0C0u��0x400FF100u
    //sizeof(GPIO_MemMap) = 0x18
    //ÿ��GPIO��ַ &0x1C0 �󣬵õ� 0x000 , 0x040 , 0x080 ,0x0C0 ,0x100
    //�� /0x40 ��õ� 0 �� 1 �� 2�� 3��4 ���պþ��� PTA��PTB��PTC ��PTD ��PTD ��PTE
    ptx0 = ((((uint32)SADDR) & 0x1C0) / 0x40 ) * 32;

    //ÿ��GPIO ��Ӧ�ļĴ�����ַ�� &0x 3F ��õ���ֵ������ͬ�ġ�
    //PTA_B0_IN �� GPIOA �� ����Ĵ��� PDIR �� ��ַ
    // (SADDR & 0x3f - PTA_B0_IN & 0x3f) ��Ч�� (SADDR - PTA_B0_IN) & 0x3f
    //������Ҫ�ɼ���λ Ϊ 0~7��8~15��16~23��24~31 ���� ����ʽ�Ӷ�Ӧ��ֵ Ϊ 0��1��2��3
    //�պ���  0~7��8~15��16~23��24~31 λ�ĵ�ַƫ�ƣ��� * 8 �ͱ�� 0��8��16��24

    n = (uint8)(((uint32)SADDR - ((uint32)(&PTA_BYTE0_IN))) & 0x3f) * 8;       //��С�����ź�

    ptx0 += n;
    tmp = ptx0 + (BYTEs * 8 ) - 1;                                          //�������ź�
    while(ptx0 <= tmp)
    {
        //������� GPIO ��ʼ��Ϊ����
        gpio_init((PTxn )ptx0, GPI, 0);               //����Ϊ����
        port_init((PTxn )ptx0 , ALT1 | PULLDOWN );    //����ԴӦ��������Ĭ�϶�ȡ������0

        ptx0 ++;
    }

    DMA_DIS(CHn);                                    //��ֹͨ��CHn Ӳ������
    //DMA_IRQ_CLEAN(CHn);
    /* �����ж� */
    //DMA_EN(CHn);                                    //ʹ��ͨ��CHn Ӳ������
    //DMA_IRQ_EN(CHn);                                //����DMAͨ������
}
