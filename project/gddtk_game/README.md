# reverse_android 从安卓开发到逆向
## 逆向破解简单安卓手游，无限生命
### 破解要求
在商店中0费用购买任何道具。  
### 破解方法
1、将apk拖入androidkiller反编译  
2、在工程搜索中搜索 \u652f\u4ed8\u5931\u8d25 (支付失败)  
3、找到OppPay$2$1.smali
4、将onFailure中的代码替换为onSuccess中的代码  
5、点击androidkiller中android标签中的编译重新打包破解后的apk  
6、验证  
***
apk及破解工具下载  
```text
链接：https://pan.baidu.com/s/1mHOl9y-LXnETUg3oDAKNvA 
提取码：3ygd 
```  
原OppPay$2$1.smali的onFailure方法  
```java
.method public onFailure(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 112
    const/16 v0, 0x3ec

    if-eq v0, p2, :cond_1

    .line 113
    const-string v0, "lx"

    const-string v1, "onFailure--->\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v0, v0, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$mPayCallback:Lcom/turbochilli/rollingsky/pay/PayCallback;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v0, v0, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$mPayCallback:Lcom/turbochilli/rollingsky/pay/PayCallback;

    iget-object v1, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v1, v1, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$iProduct:Lcom/turbochilli/rollingsky/pay/IProduct;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/turbochilli/rollingsky/pay/PayCallback;->onPayCancel(Lcom/turbochilli/rollingsky/pay/IProduct;I[Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v0, "lx"

    const-string v1, "onFailure--->\u652f\u4ed8\u53d6\u6d88"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v0, v0, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$mPayCallback:Lcom/turbochilli/rollingsky/pay/PayCallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v0, v0, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$mPayCallback:Lcom/turbochilli/rollingsky/pay/PayCallback;

    iget-object v1, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v1, v1, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$iProduct:Lcom/turbochilli/rollingsky/pay/IProduct;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v3, v2}, Lcom/turbochilli/rollingsky/pay/PayCallback;->onPayCancel(Lcom/turbochilli/rollingsky/pay/IProduct;I[Ljava/lang/String;)V

    goto :goto_0
.end method
```  
修改后OppPay$2$1.smali的onFailure方法  
```java
.method public onFailure(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 101
    const-string v0, "lx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess--->\u652f\u4ed8\u6210\u529f---resultMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v0, v0, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$mPayCallback:Lcom/turbochilli/rollingsky/pay/PayCallback;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/turbochilli/rollingsky/c;->a()Lcom/turbochilli/rollingsky/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/turbochilli/rollingsky/c;->h()Lcom/turbochilli/rollingsky/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v1, v1, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/turbochilli/rollingsky/c$b;->b(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v0, v0, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$mPayCallback:Lcom/turbochilli/rollingsky/pay/PayCallback;

    iget-object v1, p0, Lcom/turbochilli/rollingsky/pay/OppPay$2$1;->this$1:Lcom/turbochilli/rollingsky/pay/OppPay$2;

    iget-object v1, v1, Lcom/turbochilli/rollingsky/pay/OppPay$2;->val$iProduct:Lcom/turbochilli/rollingsky/pay/IProduct;

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2}, Lcom/turbochilli/rollingsky/pay/PayCallback;->onSendOrderInfo(Lcom/turbochilli/rollingsky/pay/IProduct;I)V

    .line 107
    :cond_0
    return-void
.end method
```  
#### 微信公众号
不定期分享一些python爬虫,逆向破解相关文章,欢迎大家关注.  
![微信公众号](gongzhonghao.jpg)
***
BUG：dazhuang_python@sina.com