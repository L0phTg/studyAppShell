package l0phtg.dalvikshell;

import android.app.Application;
import android.util.Log;

/**
 * Created by heiheihei on 2017/5/8.
 */

public class MyApplication extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        Log.i("demo", "source apk onCreate: " + this);
    }

}
