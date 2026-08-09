#apk

adb shell pm path `apk` - get apk path
adb pull /data/app/.../base.apk - take apk from android to pc, name it base.apk

apktool d `apk` -o base - decompile apk

apktool b `apk-decompiled` -o `modificated-apk` - compile apk after modify

zipalign -v -p 4 `modificated-apk` `aligned-apk` - align apk

apksigner sign --ks `key` `aligned-apk` - sign apk

adb install `signed-apk` - install apk on phone