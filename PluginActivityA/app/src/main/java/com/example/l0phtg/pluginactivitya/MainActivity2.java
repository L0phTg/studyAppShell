package com.example.l0phtg.pluginactivitya;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

/**
 * Created by l0phtg on 18-3-13.
 * http://blog.csdn.net/cauchyweierstrass/article/details/51087198       reference
 */

public class MainActivity2 extends Activity {

    private static View view;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        if (view != null) {
            setContentView(view);
        }
    }

    @Override
    protected void onStart() {
        super.onStart();
        Toast.makeText(this, "onStart", Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Toast.makeText(this, "onDestroy", Toast.LENGTH_LONG).show();
    }

    private static void setLayout(View v) {
        view = v;
    }
}
