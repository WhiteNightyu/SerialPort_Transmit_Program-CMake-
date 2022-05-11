#include "serialport.h"
 
shared_ptr<serial_port> SerialPort::serialPort = nullptr;
char SerialPort::receiveData[] = {0};
 
 //串口初始化函数，将串口名与比特率存入类中,并打开串口
bool SerialPort::init(string port_name, uint baud_rate)
{
    portName = port_name;
    baudRate = baud_rate;
    return open();
}

 //调用io.run()与串口异步接受函数startAsyncRead(),因为必须调用一次io.run()才能使用串口，不需要用户调用
void SerialPort::runService()
{
    startAsyncRead();
    io.run();
}
 
 //串口打开程序，不需要用户调用
bool SerialPort::open()
{
    try
    {
        if(serialPort == nullptr)
            serialPort = shared_ptr<serial_port>(new serial_port(io));//分配地址
 
        //打开串口
        serialPort->open(portName,errorCode);
 
        //设置串口参数
        serialPort->set_option(serial_port::baud_rate(baudRate));//比特率
        serialPort->set_option(serial_port::flow_control());//流量控制
        serialPort->set_option(serial_port::parity());//奇偶校验
        serialPort->set_option(serial_port::stop_bits());//停止位
        serialPort->set_option(serial_port::character_size(8));//数据位
 
        return true;
 
    }
    catch (exception& err)
    {
        cout << "Exception Error: " << err.what() << endl;//串口打开失败时，输出错误原因
    }
 
    return false;
}
 
  //串口异步接受函数，只要接收到数据就会进入回调函数handleRead（）,与数据长短无关，若对于数据长短有要求，请了解async_read()函数
void SerialPort::startAsyncRead()
{
    serialPort->async_read_some(boost::asio::buffer(receiveData),
            boost::bind(handleRead,
            boost::asio::placeholders::error,
                        boost::asio::placeholders::bytes_transferred));
}
 
 //串口传输程序
void SerialPort::write(string &buf, boost::system::error_code &ec)
{
    serialPort->write_some(boost::asio::buffer(buf),ec);
}
 
 //串口回调函数,当串口接受到数据时，该函数会使用串口发送main.cpp中的Send变量
void SerialPort::handleRead(const boost::system::error_code &ec,size_t byte_read)
{
    cout.write(receiveData,byte_read);
    cout<<endl;
    extern string Send;

	//test code begin
	int x = rand() % 1000, y = rand() % 1000;	//模拟结合视觉识别的程序后，输出不同的数据
	Send[2] = x / 100+'0';
	Send[3] = (x / 10) % 10 + '0';
	Send[4] = x % 10 + '0';

	Send[8] = y / 100 + '0';
	Send[9] = (y / 10) % 10 + '0';
	Send[10] = y % 10 + '0';
	waitKey(34);		//模拟视觉开发板的处理能力是30帧的情况下，帧与帧间隔为33.33333ms，故stm32每隔34ms向视觉开发板请求一次数据，在实际使用中并无此函数
	// test code end        实际使用过程中请将该段代码注释掉或删除

    boost::system::error_code ecc;
    write(Send,ecc);
    startAsyncRead();
}
