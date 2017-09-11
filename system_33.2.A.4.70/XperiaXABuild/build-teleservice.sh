#!/bin/sh

if [ -f TeleService.apk ]; then
    rm TeleService.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
apktool b ../TeleService -o TeleService.apk
cp -r certs-teleservice/META-INF ../TeleService/build/apk/
cp -r certs-teleservice/AndroidManifest.xml ../TeleService/build/apk/
apktool b ../TeleService -o TeleService.apk
~/Android/Sdk/platform-tools/adb push TeleService.apk /system/priv-app/TeleService/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/priv-app/TeleService/TeleService.apk
~/Android/Sdk/platform-tools/adb shell sync
