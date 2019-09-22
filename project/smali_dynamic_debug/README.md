# reverse_android 从安卓开发到逆向
## smali_dynamic_debug smali动态调试，插桩，debug
### 准备工具
```text
android killer，android studio，夜神模拟器，adb
```
### 实现步骤
#### 1、开发相关app，实现点击按钮后改变文本  
改变前  
![](image/1.png)  
改变后  
![](image/3.png)  
#### 2、使用android killer逆向apk为smali  
#### 3、使用adb工具启动app  
```text
adb shell am start -D -n com.dazhuang.smali_dynamic_debug/.MainActivity
```
![](image/2.png)  
#### 4、拷贝smali代码到smali_dynamic_debug项目下  
#### 5、在smali代码中打断点  
![](image/4.png)  
#### 6、开启android studio的调试模式  
![](image/5.png)  
#### 7、点击改变文字按钮，开始调试  
![](image/6.png)  
***
#### 微信公众号
不定期分享一些python爬虫,逆向破解相关文章,欢迎大家关注.  
![微信公众号](image/gongzhonghao.jpg)
***
BUG：dazhuang_python@sina.com