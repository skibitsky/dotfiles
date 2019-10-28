# Init git repo and deploy it on GitHub (private)
gih() {
  git init
  git add .
  git commit -m "Initial commit"
  hub create -p
  git push origin master
}