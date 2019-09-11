#!/bin/sh

# General
alias f='open .'

# Brew
alias bi='brew install'

# Open in Sublime Text
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Jump into dotfiles
alias cdd='cd ~/.dotfiles'

# Jump into iCloud Downloads
alias cdid='cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads'

# Screenfetch bug workaround https://github.com/KittyKatt/screenFetch/issues/552
alias screenfetch='screenfetch -E'

# Git
alias gs='git status --short'

# Git Flow 
alias gfff='git flow feature finish'
alias gffs='git flow feature start'
alias gfbs='git flow bugfix start'
alias gfbf='git flow bugfix finish'

# Navigation
alias ..="cd .."

# cd into selected Finder dir
alias ppath='cd "$(osascript <<<"tell application \"Finder\" to get the POSIX path of (the insertion location as text)")"'