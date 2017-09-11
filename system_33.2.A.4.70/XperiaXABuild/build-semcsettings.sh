#!/bin/sh

if [ -f SemcSettings.apk ]; then
    rm SemcSettings.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
cp ../SemcSettings.apk .
~/Android/Sdk/platform-tools/adb push SemcSettings.apk /system/app/SemcSettings/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/app/SemcSettings/SemcSettings.apk
~/Android/Sdk/platform-tools/adb shell sync
