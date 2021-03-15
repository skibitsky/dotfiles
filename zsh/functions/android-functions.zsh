# Reliable version of `adb install`
adbi() {
  adb push "$1" /data/local/tmp
  adb shell pm install /data/local/tmp/"$1"
}

# Prints package name of .apk file
pname() {
  aapt dump badging "$1" | awk -v FS="'" '/package: name=/{print $2}'
}

# Reinstalls .apk file. Unlike `adb install -r`, this will erase all local data
adbir() {
  package=$( pname $1 )
  adb uninstall "$package"
  adbi $1
}