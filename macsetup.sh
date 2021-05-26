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

beginDeploy() {
    echo
    echo "${bold}$1${normal}"
}

### Applications
CaskAppList=(
    google-chrome
)
brew install --cask --appdir="/Applications" ${CaskAppList[@]}

### IDEs
CaskIDEsList=(
    visual-studio-code
    #visual-studio
)
brew install --cask --appdir="/Applications" ${CaskIDEsList[@]}
# TODO: Install VS Code extensions listed in separate txt file
#cat vscode-extensions.txt | xargs -L1 code --install-extension 


