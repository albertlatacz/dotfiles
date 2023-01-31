#!/usr/bin/env bash
cd $(dirname $0)
set -e

eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

mkdir -p ~/dev

mkdir -p ~/.jenv/versions
jenv add /Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home
jenv global 17.0

# Ruby
ruby-install ruby 3.1.3
source $(brew --prefix)/opt/chruby/share/chruby/chruby.sh
source $(brew --prefix)/opt/chruby/share/chruby/auto.sh
chruby ruby-3.1.3

gem install jekyll
