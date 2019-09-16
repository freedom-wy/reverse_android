package com.dazhuang.project;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //定位到布局文件中的activity_main.xml
        setContentView(R.layout.activity_main);
    }
}
