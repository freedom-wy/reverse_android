# reverse_android 从安卓开发到逆向
## app逆向神器Frida。
### 什么是Frida：
Frida是一款基于python + js的Hook框架，适用于android，ios等平台，由于是基于脚本的交互，因此相比xposed和substrace cydia更加便捷。Frida的官网为：http://www.frida.re/  
frida环境的搭建主要分为两个部分，一部分是运行在系统上的交互工具frida，另一部分是运行在Android机器上的注入工具frida-server。  
如果你也想了解Xposed框架的使用，请移步[《安卓从开发到逆向（五）小白也看得懂的Xposed框架入门》](https://mp.weixin.qq.com/s/xfWPGl4ulyEcPfAN1AfWkg)  
本文将介绍Frida框架的安装和使用Frida对Demo APP的逆向破解。
### 准备工具：
```text
真实手机设备，frida==12.7.5，frida-tools==5.1.0，frida-server-12.7.5-android-arm64.xz，JEB2.2.5，石头剪刀布.apk
```
### 工具下载地址：
```text
链接：https://pan.baidu.com/s/1mHOl9y-LXnETUg3oDAKNvA
提取码：3ygd
```

Frida的环境搭建需要两个部分，分别为Frida和Frida-server。
### 安装Frida：
安装Frida非常的简单，只需要你的操作系统中有Python开发环境，使用Pip工具即可安装。
```text
pip install frida-tools
```
安装frida-tools，连带着会安装frida的python包。  
由于操作系统等环境的不同，可能会卡在frida包的安装过程中，此时需要使用frida的源码包进行安装。在Pypi站点中下载frida-12.7.5-py3.7-win-amd64.egg，使用easy_install进行安装即可。  
接下来安装Frida-server，注意Frida-server是需要安装在手机上的，因此强烈要求大家有一台用于测试使用的真实手机，建议不要使用安卓模拟器。  
Frida-server可以在github上下载：  
```text
https://github.com/frida/frida/releases
```
下载前，需要查看当前手机架构信息，在adb shell中使用如下命令进行查看
```text
C:\Users\Administrator>adb shell #进入手机底层安卓操作系统
shell@X3:/ $ su                  #切换到root权限
root@X3:/ # cat /proc/cpuinfo    #查看架构信息
Processor       : AArch64 Processor rev 2 (aarch64)  #架构为AMD64
processor       : 0
model name      : AArch64 Processor rev 2 (aarch64)
BogoMIPS        : 26.00
Features        : fp asimd aes pmull sha1 sha2 crc32
fp asimd aes pmull sha1 sha2 crc32
CPU implementer : 0x41
CPU architecture: AArch64
CPU variant     : 0x0
CPU part        : 0xd03
CPU revision    : 2

Hardware        : MT6795T
```
我这款老旧的乐视手机架构信息为AMD64，因此下载Frida-server amd64平台的安装文件即可。  
下载完成后，将文件解压，将文件frida-server-12.7.5-android-arm64使用如下命令push到系统中。
```text
adb push frida-server-12.7.5-android-arm64 /data/local/tmp/   #push文件
adb shell       #进入手机操作系统
su              #切换到root权限
cd /data/local/tmp/   #进入相关目录
chmod 777 frida-server-12.7.5-android-arm64  #给文件赋权限，777为最高权限
./frida-server-12.7.5-android-arm64  #启动frida-server
```
使用如下命令转发android TCP端口到本地：
```text
adb forward tcp:27042 tcp:27042
adb forward tcp:27043 tcp:27043
```
如上命令操作完成后，可以在PC端，cmd命令行下使用如下命令，查看当前Frida-server是否安装成功。如果出现android手机的进程列表说明搭建成功
```text
frida-ps -R
```
接下来对官网提供的石头剪刀布demo APP进行逆向破解。  
demo app下载地址：
```text
https://github.com/ctfs/write-ups-2015/tree/master/seccon-quals-ctf-2015/binary/reverse-engineering-android-apk-1
```
破解该app，首先将石头剪刀布.apk拖入JEB进行反编译，定位到MainActivity的onCreate方法。我们可以看到其声明了按钮控件和设置了点击事件。
```java
public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        this.P = (Button) findViewById(R.id.button);
        this.S = (Button) findViewById(R.id.button3);
        this.r = (Button) findViewById(R.id.buttonR);
        this.P.setOnClickListener(this);
        this.r.setOnClickListener(this);
        this.S.setOnClickListener(this);
        this.flag = 0;
    }

```
继续查看button的onclick方法，可以看出程序的石头剪子布是通过随机数组出的，其判断输赢的方法在this.showMessageTask中。
```java
public void onClick(View v) {
        if (this.flag != 1) {
            this.flag = 1;
            ((TextView) findViewById(R.id.textView3)).setText("");
            TextView tv = (TextView) findViewById(R.id.textView);
            TextView tv2 = (TextView) findViewById(R.id.textView2);
            this.m = 0;
            this.n = new Random().nextInt(3);
            tv2.setText(new String[]{"CPU: Paper", "CPU: Rock", "CPU: Scissors"}[this.n]);
            if (v == this.P) {
                tv.setText("YOU: Paper");
                this.m = 0;
            }
            if (v == this.r) {
                tv.setText("YOU: Rock");
                this.m = 1;
            }
            if (v == this.S) {
                tv.setText("YOU: Scissors");
                this.m = 2;
            }
            this.handler.postDelayed(this.showMessageTask, 1000);
        }
    }
```
分析showMessageTask后，我们可以看到如果赢了，mainActivity.cnt会+1，但是一旦输了mainActivity.cnt就会置0，而取胜的条件是最终赢了1000次后，才会有相应的结果输出。
分析一下，怎么样才能快速的赢1000次。
```java
if(1000 == MainActivity.this.cnt) {  // 赢1000次
    ((TextView)v0).setText("SECCON{" + String.valueOf((MainActivity.this.cnt + MainActivity.this.calc()) * 107) + "}");  // (1000+calc的int返回值)*107
}
```
我们可以直接将MainActivity.this.cnt的值构造成1000，这样就可以执行下面的语句操作拿到最终结果了。
为了将MainActivity.this.cnt值构造为1000，我们需要Hook代码，让电脑无论出什么，都是我们赢，我们需要更改其逻辑。
即让电脑永远出0，我们永远出2，这样，我们就可以一直赢了。
Hook代码如下：
```javascript
Java.perform(function () {
    //定位到相关类
    var MainActivity = Java.use('com.example.seccon2015.rock_paper_scissors.MainActivity');
    //Hook相关方法
    MainActivity.onClick.implementation = function (v) {
        send("开始Hook");
        this.onClick(v);
        this.n.value = 0;
        this.m.value = 2;
        this.cnt.value = 999;
        send("Hook成功!")
    }
});
```
执行代码为：
```python
import frida,sys

jscode = '''
Java.perform(function () {
    var MainActivity = Java.use('com.example.seccon2015.rock_paper_scissors.MainActivity');
    MainActivity.onClick.implementation = function (v) {
        send("开始Hook");
        this.onClick(v);
        this.n.value = 0;
        this.m.value = 2;
        this.cnt.value = 999;
        send("Hook成功!")
    }
});
'''

def on_message(message, data):
    if message['type'] == 'send':
        print("[*] {0}".format(message['payload']))
    else:
        print(message)

process = frida.get_usb_device().attach("com.example.seccon2015.rock_paper_scissors")
script = process.create_script(jscode)
script.on("message",on_message)
script.load()
sys.stdin.read()
```
**必须要保证Frida-server是启动的**  
**必须要保证已启动app**
在执行完Python代码后，我们再来点击按钮，此时，无论出什么，都是我们获胜并取得最终结果了。
***
#### 微信公众号
不定期分享一些python爬虫,逆向破解相关文章,欢迎大家关注.  
![微信公众号](gongzhonghao.jpg)
***
BUG：dazhuang_python@sina.com