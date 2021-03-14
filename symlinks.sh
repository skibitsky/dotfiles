#!/bin/sh

echo "Installing Symlinks..."

## Symlinks

# Use iCloud Downloads directory
sudo rm -rf ~/Downloads
ln -s $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads ~/Downloads

# Git
ln -sf ~/.dotfiles/git/gitignore_global  ~/.gitignore_global
ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig

# Karabiner
ln -sf ~/.dotfiles/karabiner/karabiner.edn ~/.config/karabiner.edn

# Sublime Text 3
ln -sf ~/.dotfiles/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -sf ~/.dotfiles/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# VS Code
ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

# Hyper
# ln -sf ~/.dotfiles/hyper/hyper.js ~/.hyper.js

# zsh
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"

# yabai
ln -sf ~/.dotfiles/yabai/yabairc ~/.yabairc

# Vimari
ln -sf ~/.dotfiles/vimari/userSettings.json ~/Library/Containers/net.televator.Vimari.SafariExtension/Data/Library/Application\ Support/userSettings.json