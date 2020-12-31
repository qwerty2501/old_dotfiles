#!/bin/bash

set -eu
cd $HOME

sudo apt update
sudo apt install --yes git
git clone https://github.com/qwerty2501/dotfiles.git
cd $HOME/dotfiles

bash ./setup.sh $@

