#!/bin/sh

echo "Installing Symlinks..."

# Symlinks

## Use iCloud Downloads directory
sudo rm -rf ~/Downloads
ln -s $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Downloads ~/Downloads

## Git
ln -sf ~/.dotfiles/git/gitignore_global  ~/.gitignore_global
ln -sf ~/.dotfiles/git/gitconfig ~/.gitconfig

## Karabiner
ln -sf ~/.dotfiles/karabiner/karabiner.edn ~/.config/karabiner.edn

## zsh
ln -sf ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -sf "$ZSH_CUSTOM/themes/typewritten/typewritten.zsh-theme" "$ZSH_CUSTOM/themes/typewritten.zsh-theme"

## Gitupdate
ln -sf ~/.dotfiles/gitupdate /usr/local/bin/gitupdate