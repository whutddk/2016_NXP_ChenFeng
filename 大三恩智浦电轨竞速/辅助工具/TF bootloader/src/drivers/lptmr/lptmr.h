/*
 * File:        lptmr.h
 * Purpose:     Provide common low power timer functions
 *
 * Notes:
 */

#ifndef __LPTMR_H__
#define __LPTMR_H__

/********************************************************************/


typedef enum LPT0_ALTn
{
    //ֻ��1��2�ܽţ���û��0��3�ܽ�
    LPT0_ALT1 = 1,      // PTA19
    LPT0_ALT2 = 2       // PTC5
} LPT0_ALTn;

typedef enum LPT_CFG
{
    LPT_Rising  = 0,    //�����ش���
    LPT_Falling = 1     //�½��ش���
} LPT_CFG;

/*          ������ʱ         */

void time_delay_ms(uint32 ms);      //��ʱ


/*       �����������        */
#define  lptmr_counter_clean()      LPTMR_CSR_REG(LPTMR0_BASE_PTR)  &= ~LPTMR_CSR_TEN_MASK;\
                                    LPTMR_CSR_REG(LPTMR0_BASE_PTR)  |=LPTMR_CSR_TEN_MASK            //������������0

void lptmr_counter_init(LPT0_ALTn, u16 count, u8 PrescaleValue, LPT_CFG);                           //��������ʼ������





/********************************************************************/

#endif /* __LPTMR_H__ */
