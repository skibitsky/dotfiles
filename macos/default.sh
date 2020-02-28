#!/bin/sh

echo "Setting up macOS deafults..."

COMPUTER_NAME="Gleb’s MacBook Pro"

osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "$COMPUTER_NAME"
sudo scutil --set HostName "$COMPUTER_NAME"
sudo scutil --set LocalHostName "$COMPUTER_NAME"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$COMPUTER_NAME"

# Disable Gatekeeper
sudo spctl --master-disable


# Main

# Menu bar: show battery percentage
defaults write com.apple.menuextra.battery ShowPercent YES

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false


# Keyboard

# Follow the keyboard focus while zoomed in
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true

# Disable accented chars on press and hold 
defaults write -g ApplePressAndHoldEnabled -bool false

# Finder

# Finder: shorter path when in home directory
defaults write com.apple.finder PathBarRootAtHome -bool true

# Finder: Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false


# Dock

# Dock: Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true;

# Dock: Don't show recently used applications
defaults write com.Apple.Dock show-recents -bool false;

# Dock: magnification settings
defaults write com.apple.dock magnification -bool true;
defaults write com.apple.dock largesize -int 55;
defaults write com.apple.dock tilesize -int 41;

# Dock: Minimise to application
defaults write com.apple.dock minimize-to-application -bool true; 

killall Dock
