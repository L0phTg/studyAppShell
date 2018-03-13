package com.example.l0phtg.dynamicloadapplication;

import android.content.res.AssetManager;
import android.os.Environment;
import android.renderscript.ScriptGroup;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.example.commoninterfacelibrary.ICommoninterface;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import dalvik.system.DexClassLoader;

// https://www.jianshu.com/p/45c0ca42ba48

public class MainActivity extends AppCompatActivity {

    Button button1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        button1 = (Button)findViewById(R.id.button1);


        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                loadJarClass();
            }
        });
    }

    String copyDex(String dexName) {
        AssetManager as = getAssets();
        String path = getFilesDir()+ File.separator + dexName;

        try {
            FileOutputStream out = new FileOutputStream(path);
            InputStream in = as.open(dexName);
            int count = in.available();
            while (count > 0) {
                byte[] buffer = new byte[count > 1024? 1024 : count];
                int len = in.read(buffer);
                out.write(buffer);
                count -= len;
            }
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return path;
    }

    private void loadJarClass() {
        //
        File dexOutputDir = getDir("dex1", 0);
//        String dexPath = Environment.getExternalStorageDirectory().toString() + File.separator + "interface_impl_dex.jar";
        String dexPath = copyDex("interface_impl_dex.jar");

        DexClassLoader loader = new DexClassLoader(dexPath, dexOutputDir.getAbsolutePath(),
                null, getClassLoader());

        try {
            Class clz = loader.loadClass("com.example.dynamiclibrary.DynamicImpl");
            ICommoninterface iCommoninterface = (ICommoninterface) clz.newInstance();
            Toast.makeText(this, iCommoninterface.getMessage(), Toast.LENGTH_LONG).show();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
