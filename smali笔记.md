# smali笔记
### apk的生成
Java虚拟机运行的是Java字节码，Dalvik虚拟机运行的是Dalvik字节码。传统的java程序经过编译，生成java字节码并保存在class文件中，java虚拟机通过解码class文件的内容来运行程序，而dalvik虚拟机运行的是dalvik字节码，所有dalvik字节码由java字节码转换而来，并被打包到一个DEX可执行文件当中，dalvik虚拟机通过解释DEX文件来执行这些字节码。
### apk内部构造
![apk经过压缩文件解压](image/1_apk_pwd.png)  
| 文件或目录 | 作用 |
| --------- | ---- |
|短文本|中等文本|稍微长一点的文本|
