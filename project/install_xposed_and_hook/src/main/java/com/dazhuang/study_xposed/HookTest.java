package com.dazhuang.study_xposed;
import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

public class HookTest implements IXposedHookLoadPackage {

    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam loadPackageParam) throws Throwable {
//        匹配包名
        if (loadPackageParam.packageName.equals("com.dazhuang.study_xposed")) {
//            获取操作类
            Class clazz = loadPackageParam.classLoader.loadClass(
                    "com.dazhuang.study_xposed.MainActivity");
//            参数为,操作类,操作方法,xposed内部类
            XposedHelpers.findAndHookMethod(clazz, "toastMessage", new XC_MethodHook() {
//                这里是不是很像scrapy的中间件
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    super.beforeHookedMethod(param);
                }
                protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                    param.setResult("安卓从开发到逆向");
                }

            });

        }

    }

}
