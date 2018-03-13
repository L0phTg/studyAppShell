package com.example.l0phtg.hostdl;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

import java.io.File;
import java.lang.reflect.Method;

import dalvik.system.DexClassLoader;

/**
 * Created by l0phtg on 18-3-13.
 */

public class ProxyActivity extends Activity {

    final String TAG = "ProxyActivity";

    private DexClassLoader loader;
    private Activity activity;
    private Class<?> clazz = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        String dexPath = getCacheDir().getAbsolutePath() + File.separator + "PluginActivityB.apk";
        File   dexOutputDir = getDir("app1", 0);
        loader = new DexClassLoader(dexPath, dexOutputDir.getAbsolutePath(), null, getClassLoader());

        try {
            clazz = loader.loadClass("com.example.l0phtg.clientdl.MainActivity");
        } catch (ClassNotFoundException e) {
            Log.i(TAG, "Class Not Found");
        }

        try {
            Method setProxy = clazz.getDeclaredMethod("setProxy", Activity.class);
            setProxy.setAccessible(true);

            activity = (Activity)clazz.newInstance();
            setProxy.invoke(activity, this);

            Method onCreate = clazz.getDeclaredMethod("onCreate", Bundle.class);
            onCreate.setAccessible(true);
            onCreate.invoke(activity, savedInstanceState);


        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    @Override
    protected void onStart() {
        super.onStart();

        Method onStart = null;
        try {
            onStart = clazz.getDeclaredMethod("onStart");
            onStart.setAccessible(true);
            onStart.invoke(activity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        Method onDestroy = null;
        try {
            onDestroy = clazz.getDeclaredMethod("onDestroy");
            onDestroy.setAccessible(true);
            onDestroy.invoke(activity);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
