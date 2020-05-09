package com.example.rnwithnative;

import android.util.Log;

import android.app.Activity;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class NativeBridgeExmp extends ReactContextBaseJavaModule {

    private static ReactApplicationContext reactContext;

    NativeBridgeExmp(ReactApplicationContext context) {
        super(context);
        reactContext = context;
    }

    @Override
    public String getName() {
        return "NativeBridgeExmp";
    }

    @ReactMethod
    public void show() {
        Activity currentActivity = reactContext.getCurrentActivity();
        if(currentActivity == null){
            Log.i("Context", "Null");
        }
        else{
            Log.i("Context", "Here");
            currentActivity.finish();
        }
        //        Toast.makeText(getReactApplicationContext(), message, duration).show();
    }

}
