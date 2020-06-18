# Download video using youtube-dl into iCLoud Downloads directory
yd() {
  if [ $# -eq 0 ]; then
    echo "No arguments supplied"
    return 1
	fi
  cdid
  youtube-dl $1
}