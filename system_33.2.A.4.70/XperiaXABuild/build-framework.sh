#!/bin/sh

if [ -f framework-res.apk ]; then
    rm framework-res.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
apktool b ../framework-res -o framework-res.apk
cp -r certs-framework/META-INF ../framework-res/build/apk/
cp -r certs-framework/AndroidManifest.xml ../framework-res/build/apk/
apktool b ../framework-res -o framework-res.apk
~/Android/Sdk/platform-tools/adb push framework-res.apk /system/framework/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/framework/framework-res.apk
~/Android/Sdk/platform-tools/adb shell sync
