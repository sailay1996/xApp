#/bin/bash

#  signing after recompile the apk
# ./sign.sh file.apk outfile.apk
# You can create urself ssl-key.keystore 
# keytool -genkey -v -keystore ssl-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
apk="$1"
out="$2"
if [[ $apk == "" || $out == "" ]]; then
	echo ""
	echo "Usage: ./sign.sh file.apk outfile.apk"
	echo ""
else 
	echo "let sign !!!"
	jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore ssl-key.keystore -storepass android -keypass android $apk 51j0 && zipalign -fv 4 $apk xsignedoutfile/$out
fi

