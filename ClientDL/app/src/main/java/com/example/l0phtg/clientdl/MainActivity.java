package com.example.l0phtg.clientdl;

import android.app.Activity;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.FrameMetrics;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {

    private Activity proxyActivity;

    public void setProxy(Activity proxyActivity) {
        this.proxyActivity = proxyActivity;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
//        setContentView(R.layout.activity_main);
        TextView tv = new TextView(proxyActivity);
        tv.setText("plugin Activity");
        proxyActivity.setContentView(tv, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
    }


    @Override
    protected void onStart() {
        Toast.makeText(proxyActivity, "plugin onStart", Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onDestroy() {
        Toast.makeText(proxyActivity, "plugin onDestroy", Toast.LENGTH_LONG).show();
    }
}
