#!/bin/sh

if [ -f Settings.apk ]; then
    rm Settings.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
apktool b ../Settings -o Settings.apk
cp -r certs-settings/META-INF ../Settings/build/apk/
cp -r certs-settings/AndroidManifest.xml ../Settings/build/apk/
apktool b ../Settings -o Settings.apk
~/Android/Sdk/platform-tools/adb push Settings.apk /system/priv-app/Settings/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/priv-app/Settings/Settings.apk
~/Android/Sdk/platform-tools/adb shell sync
