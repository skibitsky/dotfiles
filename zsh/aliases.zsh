#!/bin/zsh

# General
alias f='open .'
alias flushdns='sudo killall -HUP mDNSResponder'
alias md5dir='md5 -qs $(find ~+ -type f -not -name ".*" -exec md5 -q {} + | LC_ALL=C sort | tr -d "\n")'

# VS Code
alias c='code .'

# Nova
alias n='nova .'

# Brew
alias bi='brew install'
alias bu='brew uninstall'
alias bci='brew install --cask'
alias bcu='brew uninstall --cask'

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
alias yda="youtube-dl -x --audio-format mp3"

# There is a bug in latest adb version. Hombrew casks are garbage and hard to downgrade,
# Therefore I just use adb that comes with Unity
alias adb="/Applications/Unity/Hub/Editor/2021.1.28f1/PlaybackEngines/AndroidPlayer/SDK/platform-tools/adb"
alias aapt="/Applications/Unity/Hub/Editor/2021.1.28f1/PlaybackEngines/AndroidPlayer/SDK/build-tools/30.0.2/aapt"

# Streams Unity logs from connected Android device into terminal and file on Desktop
alias logcat="adb logcat -s Unity ActivityManager PackageManager dalvikvm DEBUG > ~/Desktop/logcat.log | less +F"

# ffmpeg
alias keyframes="ffprobe -loglevel error -skip_frame nokey -select_streams v:0 -show_entries frame=pkt_pts_time -of csv=print_section=0"