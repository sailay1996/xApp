# xApp

**just a small script for sign after recompile apk.**

decompile apk 

	./apktool d filename.apk -o foldername

recompile apk

	./apktool b foldername -o recompiled.apk

sign recompiled apk 

	./sign.sh recompiled.apk outfilename.apk 

 
