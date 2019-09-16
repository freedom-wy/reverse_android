# reverse_android 从安卓开发到逆向
## login 登录demo
### 破解要求
即使用户名密码输入错误，也显示登录成功。
### 破解方法

### MainActivity.java
```java
package com.dazhuang.login;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private EditText edit_loginname,edit_password;
    private Button login;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

//        获取用户名密码
        edit_loginname = (EditText) findViewById(R.id.login_name);
        edit_password = (EditText) findViewById(R.id.login_password);
//        获取到按钮控件
        login = (Button) findViewById(R.id.submit);

//        给按钮设置点击事件,调用内部类
        login.setOnClickListener(new login_button());

    }

//    设置一个内部类
    private class login_button implements View.OnClickListener{
//        实现接口的方法
        public void onClick(View v){
//            获取文本框中的内容
            String username = edit_loginname.getText().toString().trim();
            String password = edit_password.getText().toString().trim();
//            判断用户名密码是否符合要求，通过吐司反馈
            if (username.equals("admin") && password.equals("admin888")){
                Toast.makeText(getApplicationContext(),"登录成功",Toast.LENGTH_SHORT).show();
            }else{
                Toast.makeText(getApplicationContext(),"登录失败",Toast.LENGTH_SHORT).show();
            };
        };
    }


}
```
### activity_main.xml
```xml
<?xml version="1.0" encoding="utf-8"?>
<!--<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"-->
<!--修改为线性布局管理器-->
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context=".MainActivity">

    <!--添加两个文本框-->
    <EditText
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:paddingBottom="20dp"
        android:inputType="text"
        android:id="@+id/login_name"
        android:hint="@string/login_name"/>

    <EditText
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:paddingBottom="20dp"
        android:inputType="textPassword"
        android:id="@+id/login_password"
        android:hint="@string/login_password"/>
    <!--添加一个登录按钮-->
    <Button
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@string/submit"
        android:id="@+id/submit"
        android:textSize="15sp" />

</LinearLayout>
```
### strings.xml
```xml
<resources>
    <string name="app_name">login</string>
    <string name="login_name">请输入账号:</string>
    <string name="login_password">请输入密码:</string>
    <string name="submit">登录</string>
</resources>
```