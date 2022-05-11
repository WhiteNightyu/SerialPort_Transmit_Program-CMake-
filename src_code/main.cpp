#include "serialport.h"
 
SerialPort serialPort;
string Send = "x:500,y:200";    //需要发送的数据
string port_name = "/dev/ttyUSB0";//端口名
int baud_rate = 115200;//比特率
//串口默认无流量控制，无奇偶校验，停止位为1，数据位为8
 
void independentThread();
 
int main()
{
    //模拟stm32向视觉开发板发送请求数据的信号，视觉开发板收到信号后，发送数据
    //将串口端RX与TX相连，让程序发送的数据，充当stm32发送的请求数据的信号
    thread t(independentThread);    //若不使用此方式，直接调用serialPort.init(）函数可能会打开串口失败
    t.detach();

    char c = '0';
    do      //模拟过程中，只需要将RX与TX断开，输入q即可退出程序
    {
        c = getchar();
        boost::system::error_code ec;
        serialPort.write(Send,ec);
 
    }while (c != 'q');
 
    return 0;
}

void independentThread()
{
    if(serialPort.init(port_name,baud_rate))
        serialPort.runService();
}