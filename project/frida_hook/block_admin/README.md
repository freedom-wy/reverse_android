# reverse_android 从安卓开发到逆向
## 绕过APP用户名判断逻辑

Frida可以把数据从安卓app里传递到python所在的主机上，在主机上进行修改，再传递回安卓app里面去。
通过一个小Demo来实现这一功能。Demo界面很简单，输入用户名密码，该Demo会判断输入的用户名是否为admin，如果是，则返回错误，进而登录。如果不是，则会把用户名和密码传递到服务器上进行验证。  
我们要实现，即使用户名不是admin，我们要在python端将其修改为admin，并连同密码一同发送到服务器端进行验证。从而绕过Demo App中对admin用户名的限制。
JS Hook代码为：
```javascript
Java.perform(function(){
        /*
        Js脚本提供了向主控端发送数据的接口—send和从主控端接收数据的接口—recv
        而在主控端是通过python脚本的回调来接收数据
        */
        // 定位到相关类
        var tv_class = Java.use("android.widget.TextView");
        //重载setText方法,关键字overload
        tv_class.setText.overload("java.lang.CharSequence").implementation = function(x){
            console.log("开始Hook");
            //使用send方法将获取到的值传递到Python端
            send(x.toString());
            var string_to_recv;
            //从python端接收值
            recv(function(received_json_object){
                string_to_recv = received_json_object['my_data'];
            }).wait();
            // 调用重载方法执行发送到服务端验证
            return this.setText.overload("java.lang.CharSequence").call(this,string_to_recv)
        };
    });
```
python端执行代码为：
```python
import sys
import frida

def my_message_handler(message, payload):
    if message["type"] == "send":
        # 获取JS Hook代码传递过来的数据
        username,password = message["payload"].split(":")[1:]
        print("收到的用户名密码为:",username,password)
        # 篡改数据，将原用户名更改为admin
        value = "admin:"+str(password)
        print("发送回去的用户名密码为:",value)
        script.post({"my_data": value})  # 将JSON对象发送回去

# 获取连接中的USB设备实例,并附加一个进程，进程用包名来获取
process = frida.get_usb_device().attach("com.dazhuang.check_username")
#读取JS Hook脚本
with open("check_admin.js",encoding="utf-8") as f:
    jscode = f.read()
# 获取script实例
script = process.create_script(jscode)
# 添加一个消息回调，第一个参数是信号名，固定为message，第二个为回调函数
script.on("message",my_message_handler)
# 加载脚本
script.load()
sys.stdin.read()
```
接下来执行三个步骤：
1、启动frida-server
2、启动demo app
3、执行hook代码
执行Hook代码后，我们在Demo APP中输入用户名为aaa，密码为bbb，但是在TextView区域中，我们却看到验证的用户名为admin，密码为bbb。
***
Frida知识点补充
原文详见：
```text
《是时候来了解frida的用法了--Hook Java代码篇》 https://www.52pojie.cn/thread-931872-1-1.html
```
载入类：
Java.use用于声明一个Java类或用于获取到一个类，在用一个Java类之前首先需要声明。
```javascript
var StringClass=Java.use("java.lang.String");
```
修改函数的实现：
修改一个函数的实现是逆向调试中最重要的一环，修改一个函数的实现后，如果这个参数被调用，我们的Hook代码里的函数也会被调用，从而实现了通过JS代码Hook原java方法。
Hook带参数的构造方法：
修改参数为byte[]类型的构造方法
```javascript
ClassName.$init.overload('[B').implementation = function(param){
    //do something;
};
```
调用构造方法：
```javascript
ClassName.$init.overload('[B').implementation=function(param){
    //do something
    this.$init(value);
    //do something
}
```
Hook一般方法：
```javascript
ClassName.func.overload('[B').implementation=function(param){
    //do something
    return this.func(vale)
}
```
***
#### 微信公众号
不定期分享一些python爬虫,逆向破解相关文章,欢迎大家关注.  
![微信公众号](gongzhonghao.jpg)
***
BUG：dazhuang_python@sina.com