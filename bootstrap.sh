#!/bin/sh
set -eu
cd $HOME

sudo apt update
sudo apt install git
git clone https://github.com/qwerty2501/dotfiles.git
cd $HOME/dotfiles
./setup.sh
