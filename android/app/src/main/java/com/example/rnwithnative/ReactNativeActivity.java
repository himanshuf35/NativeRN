package com.example.rnwithnative;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import com.facebook.react.ReactActivity;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.ReactPackage;
import com.facebook.react.ReactRootView;
import com.facebook.react.common.LifecycleState;
import com.facebook.react.shell.MainReactPackage;

import java.util.List;
import java.util.ArrayList;

public class ReactNativeActivity extends AppCompatActivity {

//    @Override
//    protected String getMainComponentName() {
//        return "RNWithNative";
//    }

    private ReactRootView mReactRootView;
    private ReactInstanceManager mReactInstanceManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        List<ReactPackage> PackageList = new ArrayList<ReactPackage>();
        PackageList.add(new MainReactPackage());
        PackageList.add(new NativeBridgeExmpPackage());
        super.onCreate(savedInstanceState);
        mReactRootView = new ReactRootView(this);
        mReactInstanceManager = ReactInstanceManager.builder()
                .setApplication(getApplication())
                .setCurrentActivity(this)
                .setBundleAssetName("index.android.bundle")
                .setJSMainModulePath("index")
                .addPackages(PackageList)
                .setUseDeveloperSupport(BuildConfig.DEBUG)
                .setInitialLifecycleState(LifecycleState.RESUMED)
                .build();
        mReactRootView.startReactApplication(mReactInstanceManager, "RNWithNative", null);
        setContentView(mReactRootView);
    }
}
