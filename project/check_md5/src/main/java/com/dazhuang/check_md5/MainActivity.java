package com.dazhuang.check_md5;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MainActivity extends AppCompatActivity {
    private EditText edit_userName,edit_password;
    private EditText edit_sn;
    private Button btn_register;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        edit_userName = findViewById(R.id.username);
        edit_sn = findViewById(R.id.invitation);
        edit_password = findViewById(R.id.password);
        btn_register = findViewById(R.id.submit);

//        匿名类
        btn_register.setOnClickListener(new OnClickListener() {

            public void onClick(View v) {
//                注册失败
                if (!checkSN(edit_userName.getText().toString().trim(),edit_sn.getText().toString().trim(),edit_password.getText().toString().trim())){
                    Toast.makeText(MainActivity.this,
                            R.string.unsuccessed, Toast.LENGTH_SHORT).show();
                } else {
//                    注册成功
                    Toast.makeText(MainActivity.this,
                            R.string.successed, Toast.LENGTH_SHORT).show();
                }
            }
        });
    }

//    校验
    public static Boolean checkSN(String str,String SN,String password) {
        if (str == null || str.length() == 0) {
            return false;
        }

        if (password == null || password.length() == 0) {
            return false;
        }

        if (SN == null || SN.length() == 0) {
            return false;
        }

//        md5
        StringBuffer hexString = new StringBuffer();
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes());
            byte[] hash = md.digest();
            for (int i = 0; i < hash.length; i++) {
                if ((0xff & hash[i]) < 0x10) {
                    hexString.append("0" + Integer.toHexString((0xFF & hash[i])));
                } else {
                    hexString.append(Integer.toHexString(0xFF & hash[i]));
                }
            }
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return false;
        }
        if (hexString.toString().equals(SN)){
            return true;
        }else{
            return false;
        }
    }
}
