# smali笔记
## 20190921
### apk的生成
Java虚拟机运行的是Java字节码，Dalvik虚拟机运行的是Dalvik字节码。传统的java程序经过编译，生成java字节码并保存在class文件中，java虚拟机通过解码class文件的内容来运行程序，而dalvik虚拟机运行的是dalvik字节码，所有dalvik字节码由java字节码转换而来，并被打包到一个DEX可执行文件当中，dalvik虚拟机通过解释DEX文件来执行这些字节码。
### apk内部构造
![apk经过压缩文件解压](image/1_apk_pwd.png)  
META-INF  描述apk包信息的目录，主要存放了签名信息，配置信息，service注册信息  
res       存放apk资源文件的目录，比如图片，图标，字符串，样式，颜色等信息  
assets    同样是存放apk资源的目录，和res有差异，不重要  
resources.arsc  资源索引，包含不同语言环境中res目录下所有资源的类型，名称与ID所对应的信息  
lib   存放so文件，越来越多的应用由C/C++编写核心代码，以SO文件的形式供上层JAVA代码调用，以保证安全，这个目录是逆向的重点目录  
AndroidManifest.xml   清单文件，包含了APP大量的配置信息，包名，应用权限等。打开后乱码，因为清单文件在apk打包过程中被编译成了二进制格式文件  
classes.dex   android程序通过dex格式的可执行文件运行在dalvik虚拟机上，和windows下的exe类似，我们可以通过反编译dex获取apk伪代码  
### 从apk逆向到smali工具
1、android killer  
2、android逆向助手(只能在MAC系统上使用)  
### java和smali互转工具
1、J2S2J  java和smali互转  
![java和smali互转](image/java2smali.png)  
文中涉及到的软件下载:  
```text
链接：https://pan.baidu.com/s/1mHOl9y-LXnETUg3oDAKNvA 
提取码：3ygd
```
参考文章:
```text
《android软件安全权威指南》  
[BUFF | Smali介绍与学习](https://mp.weixin.qq.com/s/JN6tl85N3tGx5XW4Wu7Y9Q)
```
***