#!/bin/sh

if [ -f SemcClock.apk ]; then
    rm SemcClock.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
apktool b ../SemcClock -o SemcClock.apk
cp -r certs-semcclock/META-INF ../SemcClock/build/apk/
cp -r certs-semcclock/AndroidManifest.xml ../SemcClock/build/apk/
apktool b ../SemcClock -o SemcClock.apk
~/Android/Sdk/platform-tools/adb push SemcClock.apk /system/priv-app/SemcClock/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/priv-app/SemcClock/SemcClock.apk
~/Android/Sdk/platform-tools/adb shell sync
