#!/bin/bash

start=`date +%s`
bold=$(tput bold)
normal=$(tput sgr0)
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

# if test ! $(which gcc); then
#   echo "Installing command line developer tools..."
#   xcode-select --install
# fi

if test ! $(which brew); then
  echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating homebrew..."
brew update
brew upgrade
