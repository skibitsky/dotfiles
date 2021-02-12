#!/bin/zsh

# General
alias f='open .'

# VS Code
alias c='code .'

# Brew
alias bi='brew install'
alias bu='brew uninstall'
alias bci='brew cask install'
alias bcu='brew cask uninstall'

# Open in Sublime Text
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias subl='sublime'

# Jump into dotfiles
alias cdd='cd ~/.dotfiles'

# Jump into iCloud Downloads
alias cdid='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads'

# Screenfetch bug workaround https://github.com/KittyKatt/screenFetch/issues/552
alias screenfetch='screenfetch -E'

# Git
alias gs='git status --short'
alias gsur='git submodule update --remote --merge'

# Hub
alias hubp='hub create -p; git push --set-upstream origin master'

# Git Flow 
alias feat='git flow feature'
alias bug='git flow bugfix'

# Navigation
alias ..="cd .."

# cd into selected Finder dir
alias ppath='cd "$(osascript <<<"tell application \"Finder\" to get the POSIX path of (the insertion location as text)")"'

# Docker
alias dk='docker'
alias dkc='docker-compose'

# exa
alias ls='exa -F'
alias ll='exa --long --header --git -F'
alias tree='exa --tree'

# OpenUPM
alias upm="openupm"

# youtube-dl
alias yd="youtube-dl"