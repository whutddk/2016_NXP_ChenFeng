#include  "LandzoElectromagnetism.h"


/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：Electromagnetism_init
*  功能说明：电磁传感器初始化程序
*  参数说明：
*  函数返回：无
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
void Electromagnetism_init(void)
{
  adc_init(ADC0, SE16); //传感器AD初始化
  adc_init(ADC1, SE16); //传感器AD初始化  
}

/*************************************************************************
*                           蓝宙电子工作室
*
*  函数名称：Electromagnetism_init
*  功能说明：电磁传感器初始化程序
*  参数说明： *leftad  返回ad采样值
*             *rightad  
*  函数返回：
*  修改时间：2014-9-12
*  备    注：
*************************************************************************/
void Electromagnetism_AD(uint8_t *leftad , uint8_t *rightad)
{
  *leftad =ad_ave(ADC0, AD16, ADC_8bit, 5);   //左传感器采集信号采集5次均值滤波
  *rightad =ad_ave(ADC1, AD16, ADC_8bit, 5);   //右传感器采集信号采集5次均值滤波
}