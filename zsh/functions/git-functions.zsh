# Init git repo and deploy it on GitHub (private)
# Uses $1 for making gitignore
gih() {
  git init

  if [ ! -z "$1" ]; then 
    gi $1 >> .gitignore
  fi

  git add .
  git commit -m "Initial commit"
  hub create -p
  git push --set-upstream origin master
}

# Commit everything
gce() {
  if [ $# -eq 0 ]; then
    echo "No arguments supplied"
  fi

  git add .
  git commit -m $1
}