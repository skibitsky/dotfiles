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
echo "Running Brewfile"
brew bundle --file="~/.dotfiles/macos/Brewfile"

echo "Installing latest node"
nvm install --lts
sudo ln -sf "$(nvm which current)" /usr/local/bin/node

echo "Installing node apps"
npm install -g alfred-fkill \
               alfred-dark-mode

echo "Installing go apps"
go get -u github.com/nikitavoloboev/gitupdate