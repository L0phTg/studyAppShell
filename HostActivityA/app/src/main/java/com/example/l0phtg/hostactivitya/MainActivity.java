package com.example.l0phtg.hostactivitya;

import android.app.Activity;
import android.content.Intent;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Environment;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;

import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Map;

import javax.security.auth.login.LoginException;

import dalvik.system.DexClassLoader;

public class MainActivity extends Activity {

    String TAG = "hostActivity";

    private Button btn1;
    private Button btn2;
    private Resources resources;
    protected AssetManager assetManager;
    DexClassLoader loader;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btn1 = (Button)findViewById(R.id.btn1);
        btn2 = (Button)findViewById(R.id.btn2);


        final String dexPath = Environment.getExternalStorageDirectory().toString() + File.separator + "PluginActivityA.apk";

        String filesDir = this.getCacheDir().getAbsolutePath();
        final String libPath  = filesDir + File.separator + "PluginActivityA.apk";

        btn1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                File dexOutputDir = getDir("dex1", 0);
                Log.i(TAG, "libPath: " + libPath);
                Log.i(TAG, "dexOutputPath: " + dexOutputDir.getAbsolutePath());

                loader = new DexClassLoader(libPath, dexOutputDir.getAbsolutePath(), null, getClassLoader());

                Class<?> activity = null;
                Class<?> layout   = null;

                try {
                    activity = loader.loadClass("com.example.l0phtg.pluginactivitya.MainActivity2");
                    layout   = loader.loadClass("com.example.l0phtg.pluginactivitya.R$layout");
                } catch (ClassNotFoundException e) {
                    Log.i(TAG, "ClassNotFoundException");
                }

                replaceClassLoader(loader);
                loadRes(libPath);

                try {
                    Field field = layout.getField("activity_main");
                    Integer obj = (Integer)field.get(null);

                    View view = LayoutInflater.from(MainActivity.this).inflate(resources.getLayout(obj), null);

                    Method method = activity.getDeclaredMethod("setLayout", View.class);
                    method.setAccessible(true);
                    method.invoke(activity, view);
                } catch (Exception e) {
                    e.printStackTrace();
                }


                Log.i(TAG, "load class finish, wait start client activity");

                Intent intent = new Intent(MainActivity.this, activity);

                Log.i(TAG, "test");

                MainActivity.this.startActivity(intent);

            }
        });

        btn2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }
        });

    }

    private void replaceClassLoader(DexClassLoader loader){
        try {
            Class clazz_Ath = Class.forName("android.app.ActivityThread");
            Class clazz_LApk = Class.forName("android.app.LoadedApk");

            Object currentActivityThread = clazz_Ath.getMethod("currentActivityThread").invoke(null);
            Field field1 = clazz_Ath.getDeclaredField("mPackages");
            field1.setAccessible(true);
            Map mPackages = (Map)field1.get(currentActivityThread);

            String packageName = MainActivity.this.getPackageName();
            WeakReference ref = (WeakReference) mPackages.get(packageName);
            Field field2 = clazz_LApk.getDeclaredField("mClassLoader");
            field2.setAccessible(true);
            field2.set(ref.get(), loader);
        } catch (Exception e){
            System.out.println("-------------------------------------" + "click");
            e.printStackTrace();
        }
    }

    public void loadRes(String path) {
        try {
            assetManager = AssetManager.class.newInstance();
            Method addAssetPath = AssetManager.class.getMethod("addAssetPath", String.class);
            addAssetPath.invoke(assetManager, path);
        } catch (Exception e) {

        }
        resources = new Resources(assetManager, super.getResources().getDisplayMetrics(), super.getResources().getConfiguration());
    }

    @Override
    public Resources getResources() {
        return resources == null ? super.getResources() : resources;
    }

    @Override
    public AssetManager getAssets() {
        return assetManager == null ? super.getAssets() : assetManager;
    }

}
