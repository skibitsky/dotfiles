#!/bin/sh

# Install Brew
BREW_VAR=$(which brew)
if [ $BREW_VAR != "/usr/local/bin/brew" ]
then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install Brew packages
sh brew-install.sh

# Install AppStore apps using mas !TODO