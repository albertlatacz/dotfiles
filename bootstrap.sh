#!/usr/bin/env bash
set -e

rm -rf .dotfiles
rm -rf dotfiles-main

curl -L https://github.com/albertlatacz/dotfiles/archive/main.zip -o df-main.zip
unzip df-main.zip
rm -rf df-main.zip
./dotfiles-main/brew/setup.sh
rm -rf dotfiles-main

git clone https://github.com/albertlatacz/dotfiles.git .dotfiles
pushd .dotfiles
git remote rm origin
git remote add origin git@github.com:albertlatacz/dotfiles.git
popd

.dotfiles/git/setup.sh
.dotfiles/osx/setup.sh
.dotfiles/zsh/setup.sh
.dotfiles/dev/setup.sh
