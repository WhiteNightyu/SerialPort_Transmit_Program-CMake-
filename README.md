# 串口通讯程序
    ！！！！！！投入实际使用需要删除或注释serialport.cpp文件中handleRead()函数中，//test code begin与// test code end之间的代码

  该程序使用boost库搭建了用于linux与stm32进行串口通讯的代码框架
  boost库中具有可以用于串口传输与接收的函数
  本程序将繁琐的串口初始化、传输和接收等操作，封装了一个SerialPort类，因此如果不想观看代码，也可快速投入使用
  此外，程序还配备了大量的注释，帮助想要学习的人快速理解


  程序目前功能为模拟stm32向视觉开发板发送信号，视觉开发板收到信号后，发送数据
  将串口线的TX与RX端相连，将串口端RX与TX相连，让程序发送的数据，充当stm32发送的请求数据的信号


  ！！！若投入实际使用，
  1, 只需要将电控需要的数据存储在全局变量“Send”中，
  2, 删除或注释serialport.cpp文件中handleRead（）函数中，//test code begin与// test code end之间的代码，即可进行数据传输


 该程序使用c++语言，使用了boost库，任何c++编译器均可用于编译
 若用visual studio，需要在包含目录中加入本地下载的boost库的路径
 若用camke，需要在CMakeLists.txt中连接boost库
 lnux安装boost库教程：https://www.zhangqiongjie.com/1596.html#:~:text=Ubuntu%2FLinux%E7%B3%BB%E7%BB%9F%E7%BC%96%E8%AF%91%E5%AE%89%E8%A3%85boost%E5%BA%93%201%20%E4%B8%8B%E8%BD%BDboost%E5%AE%89%E8%A3%85%E5%8C%85%E5%B9%B6%E8%A7%A3%E5%8E%8B%E7%BC%A9%202%20%E8%AE%BE%E7%BD%AE%E7%BC%96%E8%AF%91%E5%99%A8%E5%92%8C%E6%89%80%E9%80%89%E5%BA%93.Building%20Boost.,...%203%20%E7%BC%96%E8%AF%91boost%204%20%E5%AE%89%E8%A3%85boost%205%20boost%E4%BD%BF%E7%94%A8%E6%B5%8B%E8%AF%95

# 程序原理：
  对于传输与接收数据，本程序的原理与stm32中的程序中断类似，当串口接收到来自于stm32请求数据的信号后，立即中断视觉识别程序，调用串口回调函数进行数据发送，发送后视觉识别程序继续执行，等待下一次stm32板的请求信号

