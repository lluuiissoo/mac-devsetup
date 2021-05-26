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
#brew update
#brew upgrade

beginDeploy() {
    echo
    echo "${bold}$1${normal}"
}

### GUI
CaskAppList=(
    google-chrome
    visual-studio-code
    virtualbox
    docker
)
brew install --cask --appdir="/Applications" ${CaskAppList[@]}

### CLI Tools
CLIToolList=(
    go
    terraform
)
brew install ${CLIToolList[@]}

### Custom
# Install VS Code extensions listed in separate txt file
cat vscode-extensions | xargs -L1 code --install-extension 
