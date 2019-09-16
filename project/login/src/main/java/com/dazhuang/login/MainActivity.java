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
