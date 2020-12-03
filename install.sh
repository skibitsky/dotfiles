#!/bin/sh

echo "     /\     .___      __    _____.__.__                 
    / /   __| _/_____/  |__/ ____\__|  |   ____   ______
   / /   / __ |/  _ \   __\   __\|  |  | _/ __ \ /  ___/
  / /   / /_/ (  <_> )  |  |  |  |  |  |__  ___/ \___ \ 
 / /    \____ |\____/|__|  |__|  |__|____/\___  >____  >
 \/          \/                               \/     \/ "

 echo "\nWelcome! Dotfiles install begins... now!\n"
 echo "------------------------------------------\n\n"

# macOS defaults
sh ./macos/default.sh

# Install apps
sh ./macos/apps.sh

# zsh plugins
sh ./zsh/zsh-plugins-downloader.sh

# Symlinks
sh symlinks.sh

zsh