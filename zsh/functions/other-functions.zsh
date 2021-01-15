# Download video using youtube-dl into iCLoud Downloads directory
ydd() {
  if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    return 1
  fi
  cdid
  youtube-dl $1
}

# Make dir and cd into it
mc() {
  if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    return 1
  fi

  mkdir -p -- "$1"
  cd -P -- "$1"
}

# Symlink Unity project from current dir into target dir
# Excludes Library, Logs, and obj directories
lnunity() {
  if [ $# -eq 0 ]; then
    echo "No target directory specified"
    return 1
  fi

  if [ ! -d "$1" ] ; then 
    echo "Creating $1"
    mkdir "$1" ; 
  fi

  for file in *; do 
    if [[ $file != "Library" && $file != "Logs" && $file != "obj" ]]; then
      ln -sv "$(pwd)/$file" "$1/$file"
    fi;
  done
}


# Symlink all files in dir
lnall() {
  if [ $# -eq 0 ]; then
    echo "No target directory specified"
    return 1
  fi

  if [ ! -d "$1" ] ; then 
    echo "Creating $1"
    mkdir "$1" ; 
  fi

  for file in *; do 
      ln -sv "$(pwd)/$file" "$1/$file"
  done
}

# Removes empty dirs
rmempty() {
  find . -depth  -type d  -empty -exec rmdir {} \;
}

# Deletes all files in current dir by name pattern. Ex: `$ rmname "*.mp3"`
rmname() {
  if [ $# -eq 0 ]; then
    echo "No file name specified"
    return 1
  fi

  find . -type f -name "$1" -exec rm -rf {} \;
}