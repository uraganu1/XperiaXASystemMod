#!/bin/sh

if [ -f Conversations.apk ]; then
    rm Conversations.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
apktool b ../Conversations -o Conversations.apk
cp -r certs-conversations/META-INF ../Conversations/build/apk/
cp -r certs-conversations/AndroidManifest.xml ../Conversations/build/apk/
apktool b ../Conversations -o Conversations.apk
~/Android/Sdk/platform-tools/adb push Conversations.apk /system/priv-app/Conversations/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/priv-app/Conversations/Conversations.apk
~/Android/Sdk/platform-tools/adb shell sync
