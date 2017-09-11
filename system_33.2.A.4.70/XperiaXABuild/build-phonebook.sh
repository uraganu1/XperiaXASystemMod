#!/bin/sh

if [ -f Phonebook.apk ]; then
    rm Phonebook.apk
fi
rm ~/.local/share/apktool/framework/*
apktool if ../XperiaXAFramework/framework-res.apk
apktool if ../XperiaXAFramework/SemcGenericUxpRes.apk
apktool if ../XperiaXAFramework/SystemUI.apk
cp ../Phonebook.apk .
~/Android/Sdk/platform-tools/adb push Phonebook.apk /system/priv-app/Phonebook/
~/Android/Sdk/platform-tools/adb shell chmod 644 /system/priv-app/Phonebook/Phonebook.apk
~/Android/Sdk/platform-tools/adb shell sync
