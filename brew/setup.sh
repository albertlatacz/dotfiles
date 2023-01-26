#!/bin/bash
cd $(dirname $0)
set -e

echo Brew setup

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/albert/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/albert/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew tap Homebrew/bundle
brew bundle

echo "Sign into the App Store then press <enter>"
read enter

./mas.sh
