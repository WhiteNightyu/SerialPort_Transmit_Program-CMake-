#ifndef SERIALPORT_H
#define SERIALPORT_H
 
#include <boost/asio.hpp>
#include <boost/bind.hpp>
#include <boost/array.hpp>
#include <memory>
#include <thread>
#include <iostream>
#include <opencv2/opencv.hpp>
 
using namespace std;
using namespace boost::asio;
using namespace cv;
 
class SerialPort
{
public:
 //串口初始化函数，在执行过程中会打开串口
    bool init(string port_name, uint baud_rate);

    //调用io.run()与串口异步接受函数startAsyncRead(),因为必须调用一次io.run()才能使用串口,不需要用户调用
    void runService();

    //串口打开程序，不需要用户调用
    bool open();

    //串口传输程序
    static void write(string &buf, boost::system::error_code &ec);
    //串口异步接受函数，只要接收到数据就会进入回调函数handleRead（）,与数据长短无关，若对于数据长短有要求，请了解async_read()函数
    static void startAsyncRead();
    //串口回调函数,当串口接受到数据时，该函数会使用串口发送main.cpp中的Send变量
    static void handleRead(const boost::system::error_code &ec,size_t byte_read);
private:
    boost::system::error_code errorCode;
    io_service io;
    static shared_ptr<serial_port> serialPort;
    string portName;
    uint baudRate;
    static char receiveData[1024];//用于存储接收到的数据
};
 
#endif // SERIALPORT_H
