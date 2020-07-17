#!/bin/sh
set -eu

wd=$(dirname $0)
cd $wd

sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

ansible-playbook -i inventory  setup.yaml --ask-become-pass
