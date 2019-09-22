package com.dazhuang.smali_dynamic_debug;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private TextView et_text1;
    private Button bt_button1;

    @Override
//    默认创建的方法,启动activity_main
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

//        找到相关控件
        et_text1 = findViewById(R.id.text1);
        bt_button1 = findViewById(R.id.button1);

//        设置点击事件
        bt_button1.setOnClickListener(new bt_button1_change_text());
    }

    private class bt_button1_change_text implements View.OnClickListener {
        public void onClick(View v){
//            替换文字
            et_text1.setText(R.string.change_text);
        };
    };
}
