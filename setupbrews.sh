#!/bin/bash

#install homebrew

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Make sure we're using the latest Homebrew
brew update
# Upgrade any already-installed formulae
brew upgrade

# Install essential formulae
brew install git
brew install rbenv
brew install ruby-build
brew install postgresql
brew install the_silver_searcher
brew install neovim
brew install python
brew install python3
brew install heroku-toolbelt

# Link apps to /Applications
brew linkapps
# Remove outdated versions from the cellar
brew cleanup
