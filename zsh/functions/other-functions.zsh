# Download video using youtube-dl into iCLoud Downloads directory
yd() {
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

  mkdir $1
  cd $1
}