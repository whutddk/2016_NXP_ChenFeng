
#include "common.h"
#include "sysinit.h"

extern void main(void);




//���Ź�WDOG(COP)�궨��
#define WDOG_DISABLE() {SIM_COPC = 0x00u;}  //���ÿ��Ź�
//COPʹ��LPOʱ�ӣ�COP��2^10��LPOʱ�����ں���ʱ
#define WDOG_ENABLE() {SIM_COPC |= SIM_COPC_COPT_MASK;} //ʹ�ܿ��Ź�


// ϵͳ�ϵ���������
 void start(void)
{
	 WDOG_DISABLE();       //���ÿ��Ź�
        //WDOG_ENABLE();        ʹ�ܿ��Ź�
        common_startup();
        sys_init() ;            //cpu��Ƶ����
	main();                 //����������
	while(1);               //����ѭ����������������ѭ��������ִ�в�������䣩
}

//-------------------------------------------------------------------------------



