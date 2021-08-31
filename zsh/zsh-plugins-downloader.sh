#!/bin/sh

echo "Downloading zsh plugins..."

# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#zsh-better-npm-completion
git clone https://github.com/lukechilds/zsh-better-npm-completion ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-better-npm-completion

# typewritten theme
git clone https://github.com/reobin/typewritten.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/themes/typewritten