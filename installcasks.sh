#!/bin/bash

# Install brewcasks
brew install caskroom/cask/brew-cask

# Essential applications
brew cask install alfred
brew cask install dropbox
brew cask install onepassword
brew cask install google-chrome
brew cask install firefox
brew cask install vlc
brew cask install cyberduck
brew cask install caffeine
brew cask install bettertouchtool
brew cask install awareness
brew cask install iterm2
brew cask install appcleaner
brew cask install a-better-finder-rename

brew cask install flash-player
brew cask install microsoft-office
# Cleanup and maintainence
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
