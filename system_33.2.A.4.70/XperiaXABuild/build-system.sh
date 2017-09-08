#!/bin/sh

if [ -f SystemUI.apk ]; then
    rm SystemUI.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
apktool b ../SystemUI -o SystemUI.apk
cp -r certs-system/META-INF ../SystemUI/build/apk/
cp -r certs-system/AndroidManifest.xml ../SystemUI/build/apk/
apktool b ../SystemUI -o SystemUI.apk
~/Android/Sdk/platform-tools/adb push SystemUI.apk /system/priv-app/SystemUI/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/priv-app/SystemUI/SystemUI.apk
~/Android/Sdk/platform-tools/adb shell rm -rf /system/priv-app/SystemUI/oat
~/Android/Sdk/platform-tools/adb shell sync
