package com.example.dynamiclibrary;

import com.example.commoninterfacelibrary.ICommoninterface;

/**
 * Created by l0phtg on 18-3-11.
 */

public class DynamicImpl implements ICommoninterface {

    @Override
    public int plusNum(int a, int b) {
        return a +b;
    }


    @Override
    public String getMessage() {
        return "hello World hahahahaha";
    }
}
