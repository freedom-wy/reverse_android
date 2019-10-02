# reverse_android 从安卓开发到逆向
## frida_hook_note frida笔记
### hook构造方法
原方法：
```java
package com.dazhuang.check_username;

public class init_block_admin {
    private String block_message;
//    无参构造法
    public init_block_admin() {
    };

//    有参构造法
    public init_block_admin(String message){
        this.block_message = message;
    };

//    普通方法
    public String return_message(){
        return this.block_message;
    };

}
```
```javascript
Java.perform(function(){
        // 定位到相关类
        var tv_class = Java.use("com.dazhuang.check_username.init_block_admin");
        tv_class.$init.overload("java.lang.String").implementation = function(x){
            console.log("开始Hook");
            console.log("原始值:"+x);
            throw Exception.$new("exception信息为");
            return this.$init("被Hook!")
        };
    });
```
打印堆栈方法：
```javascript
Java.perform(function () {
    var threadef = Java.use('java.lang.Thread');
    var threadinstance = threadef.$new();

    function Where(stack){
        for(var i = 0; i < stack.length; ++i){
            send(stack[i].toString());
        }
    }
    //定位到相关类
    var tv_class = Java.use("com.dazhuang.check_username.init_block_admin");
    tv_class.$init.overload("java.lang.String").implementation = function(x){
        console.log("开始Hook");
        console.log("原始值:"+x);
        //调用输出堆栈方法
        var stack = threadinstance.currentThread().getStackTrace();
        send("Full call stack:" + Where(stack));
        return this.$init("被Hook!")
    }
});
```
***
#### 微信公众号
不定期分享一些python爬虫,逆向破解相关文章,欢迎大家关注.  
![微信公众号](gongzhonghao.jpg)
***
BUG：dazhuang_python@sina.com