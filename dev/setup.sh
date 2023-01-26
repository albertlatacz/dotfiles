#!/usr/bin/env bash
cd $(dirname $0)
set -e

source ~/.zprofile

mkdir -p ~/dev

mkdir -p ~/.jenv/versions
jenv add /Library/Java/JavaVirtualMachines/temurin-11.jdk/Contents/Home
jenv global 11.0
