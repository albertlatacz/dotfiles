#!/bin/bash
cd $(dirname $0)
set -e

echo Brew setup

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

BREW_COMMAND='eval "$(/opt/homebrew/bin/brew shellenv)"'
if [[ $(grep -L $BREW_COMMAND ~/.zprofile) ]]; then
  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

brew tap Homebrew/bundle
brew bundle

JENV_COMMAND='export PATH="$HOME/.jenv/bin:$PATH"'
if [[ $(grep -L $BREW_COMMAND ~/.zprofile) ]]; then
  $ echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zprofile
  $ echo 'eval "$(jenv init -)"' >> ~/.zprofile
fi

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

echo "Sign into the App Store then press <enter>"
read enter

./mas.sh
