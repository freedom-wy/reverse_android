# reverse_android 从安卓开发到逆向
## smali_dynamic_debug smali动态调试，插桩，debug
### 准备工具
```text
android killer，android studio，夜神模拟器，adb
```
### 实现步骤
1、开发相关app，实现点击按钮后改变文本  
![](image/1.png)  
![](image/3.png)  
2、使用android killer逆向apk为smali  
3、使用adb工具启动app  
```text
adb shell am start -D -n com.dazhuang.smali_dynamic_debug/.MainActivity
```
![](image/2.png)
***
BUG：dazhuang_python@sina.com