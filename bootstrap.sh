#!/usr/bin/env bash
set -e

rm -rf .dotfiles
rm -rf dotfiles-master

curl -L https://github.com/albertlatacz/dotfiles/archive/master.zip -o master.zip
unzip master.zip
rm -rf master.zip
./dotfiles-master/brew/setup.sh
rm -rf dotfiles-master

git clone https://github.com/albertlatacz/dotfiles.git .dotfiles
pushd .dotfiles
git remote rm origin
git remote add origin git@github.com:albertlatacz/dotfiles.git
popd

.dotfiles/git/setup.sh
.dotfiles/osx/setup.sh
.dotfiles/zsh/setup.sh
.dotfiles/dev/setup.sh
