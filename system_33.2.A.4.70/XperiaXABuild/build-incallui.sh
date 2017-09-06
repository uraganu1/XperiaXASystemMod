#!/bin/sh

if [ -f InCallUI.apk ]; then
    rm InCallUI.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
apktool b ../InCallUI -o InCallUI.apk
cp -r certs-incallui/META-INF ../InCallUI/build/apk/
cp -r certs-incallui/AndroidManifest.xml ../InCallUI/build/apk/
apktool b ../InCallUI -o InCallUI.apk
~/Android/Sdk/platform-tools/adb push InCallUI.apk /system/priv-app/InCallUI/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/priv-app/InCallUI/InCallUI.apk
~/Android/Sdk/platform-tools/adb shell sync
