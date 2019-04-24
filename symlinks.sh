#!/bin/sh

## Symlinks

# Git
ln -sf ~/.dotfiles/git/gitignore_global  ~/.gitignore_global
ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig

# System
ln -sf ~/.dotfiles/spelling/LocalDictionary ~/Library/Spelling/LocalDictionary

# Karabiner
ln -sf ~/.dotfiles/karabiner/karabiner.edn ~/.config/karabiner.edn

# Sublime Text 3
ln -sf ~/.dotfiles/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -sf ~/.dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# VS Code
ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json

# Hyper
ln -sf ~/.dotfiles/hyper/hyper.js ~/.hyper.js

# Bash
ln -sf ~/.dotfiles/bash/.bash_profile ~/.bash_profile