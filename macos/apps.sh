#!/bin/sh

echo "Installing apps..."

# Install Brew
BREW_VAR=$(which brew)
if [ "$BREW_VAR" != "/usr/local/bin/brew" ]
then
	echo "Brew is missing. Installing brew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install Brew packages and apps, and AppStore apps
brew bundle --file="~/.dotfiles/macos/Brewfile"

# Make brew zsh default shell
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh