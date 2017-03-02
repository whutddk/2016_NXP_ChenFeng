#ifndef	_MPU6050_H_
#define _MPU6050_H_

#include "common.h"
//#include "OLED.h"
//#include "adc.h"

#include "uart.h"
#include "gpio.h"

//定义MPU6050内部地址
/****************************************/
#define  SELF_TEST_X    0x0D              //X轴自测，包括加速度计与陀螺仪，请注意寄存器位分布，各个轴分别为0~4位，FT为工厂修正值，自测是陀螺仪选择量程为+-250°/s;
#define  SELF_TEST_Y    0x0E              //Y轴自测，包括加速度计与陀螺仪，131为250°/s量程的分辨率，65536/500=131, 均为16位分辨率；
#define  SELF_TEST_Z    0x0F              //Z轴自测，包括加速度计与陀螺仪，
#define  SELF_TEST_A    0x10              //X轴自测，加速度计的每个轴的低字节
														//输出自测使能-自测不使能
														//自测的目的是测试陀螺仪和加速度计的相关组件（机械和电气）自测输出值的变化百分比是否在有效值之内，该值可以通过MotionApps软件获得
														//还可以通过FT的值进行测量，FT的值是由自测寄存器的值决定的，请参考数据手册

#define	SMPLRT_DIV		0x19					//采样分频；sample,采样；采样率，典型值：0x07(125Hz)。输出速率分频得到采样速率。
														//传感器寄存器输出，DMP，FIFO输出，运动检测都以采样速率为基础；输出速率当DLPF（数字低通滤波器）使能时为1kHz，禁止时为8KHz
														//每个轴都可以单独设置，sample=陀螺仪输出速率/(1+SMPLRT_DIV);

#define	CONFIG			0x1A					//不使能FSYNC(外部预采样同步信号)；DLPF_CFG[2~0],设置任意轴是否通过DLPF，典型值：0x06(5Hz)低通滤波器带宽5Hz，
														//对加速度和陀螺仪都有效，输出频率为1kHz，决定SMPLRT_DIV的频率基准

#define	GYRO_CONFIG		0x1B					//陀螺仪配置寄存器；陀螺仪自检及量程，可以单独使能任意轴自检[7~5]；FS_SEL[4~3],00+-250，01+—500，10+-1000，11+-2000
														//典型值：0x18(不自检，最大量程2000deg/s)
#define	ACCEL_CONFIG	0x1C					//加速度计配置寄存器，自检及量程，可以单独使能任意轴自检；DHPF数字高通滤波频率，典型值：0x0c(不自检，16G，5Hz)

#define  MOT_THR        0x1F 					//运动检测阀值加速度mg，超过阀值触发中断，中断寄存器可以检测出哪个轴超过阀值，和极性。

#define  FIFO_EN			0x23					//温度传感器FIFO使能，陀螺仪各个轴FIFO功能使能，所有数据寄存器的数据都可以缓存至FIFO，陀螺仪可以使能各自轴是否缓冲至FIFO，
														//加速度计数据只能选择是否三个轴同时缓存至FIFO；
#define  I2C_MST_CTRL   0x24					//控制该器件作为主IIC的配置，多个主IIC在一总线上时的总裁；可以同步三个传感器数据（dataready中断）的同步，确保中断在外部辅
														//助传感器数据写入外部数据寄存器之后触发,主器件IIC频率

#define  I2C_SLV0_ADDR	0x25					//该器件对其从器件的读写信号，和从器件地址（7位）
#define  I2C_SLV0_REG	0x26					//地址，指示内部寄存器的地址，把该寄存器的数据写入从器件，或者从器件写入该寄存器的
#define  I2C_SLV0_CTRL	0x27					//是否数据高低字节交换。。。其他请参考数据手册
#define  I2C_SLV1_ADDR	0x28					//该器件对其从器件的读写信号，和从器件地址（7位）
#define  I2C_SLV1_REG	0x29					//地址，指示内部寄存器的地址，把该寄存器的数据写入从器件，或者从器件写入该寄存器的
#define  I2C_SLV1_CTRL	0x2a					//是否数据高低字节交换。。。其他请参考数据手册
#define  I2C_SLV2_ADDR	0x2b					//该器件对其从器件的读写信号，和从器件地址（7位）
#define  I2C_SLV2_REG	0x2c					//地址，指示内部寄存器的地址，把该寄存器的数据写入从器件，或者从器件写入该寄存器的
#define  I2C_SLV2_CTRL	0x2d					//是否数据高低字节交换。。。其他请参考数据手册
#define  I2C_SLV3_ADDR	0x2e					//该器件对其从器件的读写信号，和从器件地址（7位）
#define  I2C_SLV3_REG	0x2f					//地址，指示内部寄存器的地址，把该寄存器的数据写入从器件，或者从器件写入该寄存器的
#define  I2C_SLV3_CTRL	0x30					//是否数据高低字节交换。。。其他请参考数据手册
#define  I2C_SLV4_ADDR	0x31					//该器件对其从器件的读写信号，和从器件地址（7位）
#define  I2C_SLV4_REG	0x32					//地址，指示内部寄存器的地址，把该寄存器的数据写入从器件，或者从器件写入该寄存器的
#define  I2C_SLV4_DO 	0x33
#define  I2C_SLV4_CTRL	0x34					//是否数据高低字节交换。。。其他请参考数据手册
#define  I2C_SLV4_DI 	0x35

#define  I2_MST_STATUS	0x36					//IIC状态寄存器，只读；从器件0~4中断。。。

#define  INT_PIN_CFG    0x37              //INT引脚中断电平，0高有效，1为低电平有效；上拉与推挽，边缘触发（50us的脉冲）或者电平触发（直到中断清除）；只有读该寄存器是否清中断。。。
#define  INT_ENABLE     0x38              //运动检测使能，FIFO溢出是否产生中断，DATA_ready中断使能。。。(更新所有数据寄存器后产生)
#define  INT_STATUS     0x3A              //对应上面的中断源，只读

														
														//传感器以配置的采样速率更新数据寄存器的值
#define	ACCEL_XOUT_H	0x3B					//加速度数据寄存器六个字节
#define	ACCEL_XOUT_L	0x3C					//以采样速率写入数据寄存器
#define	ACCEL_YOUT_H	0x3D					//16位二进制补码形式存储
#define	ACCEL_YOUT_L	0x3E
#define	ACCEL_ZOUT_H	0x3F
#define	ACCEL_ZOUT_L	0x40

#define	TEMP_OUT_H		0x41				   //温度传感器数据寄存器，以采样速率写入数据，和以上数据寄存器，外部传感器数据寄存器
#define	TEMP_OUT_L		0x42				   //组成两种寄存器：内部寄存器，用户可读寄存器，总线接口空闲时，以上数据寄存器数据更新到可读寄存器，
														//在采用突发读取寄存器的数值时，实际上读的是可读寄存器的值，以保证读的数据是同一采用时刻的高低字节的
														//数据，以免高低数据字节不对应

#define	GYRO_XOUT_H		0x43					//陀螺仪数据寄存器的六个字节；
#define	GYRO_XOUT_L		0x44	
#define	GYRO_YOUT_H		0x45
#define	GYRO_YOUT_L		0x46
#define	GYRO_ZOUT_H		0x47
#define	GYRO_ZOUT_L		0x48
														//寄存器0x49~0x60为外部从传感器0~3的数据寄存器，只读
#define  I2C_SLV0_DO    0x63     			//保存写入从器件0的数据
#define  I2C_SLV1_DO    0x64     			//保存写入从器件1的数据
#define  I2C_SLV2_DO    0x65     			//保存写入从器件2的数据
#define  I2C_SLV3_DO    0x66     			//保存写入从器件3的数据

#define  I2C_MST_DELAY_CTRL  0x67         //外部传感器数据屏蔽。。。
#define  SIGNAL_PATH_RESET   0x68         //陀螺仪，加速度，温度传感器复位
#define  MOT_DETECT_CTRL     0x69			//加速度计上电延时时间
#define  USER_CTRL           0x7a			//FIFO使能，IIC主使能，IIC接口选择，FIFO复位，IIC主复位，复位器件寄存器

#define	PWR_MGMT_1		0x6B					//电源管理1，时钟源，装置复位，温度传感器使能0，典型值：0x00(正常启用)
#define	PWR_MGMT_2		0x6C	  				//电源管理2，各个轴是否处于待机模式
#define  FIFO_COUNT_H   0x72					//FIFO指针高字节，只读，先访问高字节，后低字节
#define  FIFO_COUNT_L   0x73					//FIFO指针低字节，只读
#define  FIFO_R_W       0x74					//读写FIFO缓冲寄存器
#define	WHO_AM_I			0x75					//IIC地址寄存器(默认数值0x68，只读)；器件ID
#define	SlaveAddress	0xD0					//IIC写入时的地址字节数据，+1为读取
/**************************************/
//零点漂移与补偿//
#define  ACC_Y_offset  -45
#define  ACC_Z_offset	470
#define  GRY_X_offset	39.1
//溢出处理//
#define  ACC_MAX  32767
#define  GRY_MAX  32767

void InitMPU6050();
void READ_MPU6050(void);
void count_angel();
uint8 Single_ReadIIC(uint8 SlaveID,uint8 REG_Address);
void Read_Acc();
void count_Acc_angel();
void Balance_filter();

#endif