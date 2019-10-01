package com.dazhuang.check_username;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private EditText username_et,password_et;
    private TextView message_tv;
    private Button btn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        password_et = findViewById(R.id.password);
        username_et = findViewById(R.id.username);
        message_tv = findViewById(R.id.message);
        btn = findViewById(R.id.btn);


        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                if (username_et.getText().toString().equals("admin")) {
                    message_tv.setText("禁止使用admin登录");
                    return;
                }else if(username_et.getText().length() == 0 || password_et.getText().length()==0){
                    message_tv.setText("未输入任何字符");
                    return;
                }else{
                    String sending_to_server = username_et.getText().toString() + ":" + password_et.getText().toString();
//                    在服务端验证用户名密码，我们通过TextView来实现
                    message_tv.setText("设置的用户名和密码为:"+sending_to_server);
                };
            }
        });

    }
}
