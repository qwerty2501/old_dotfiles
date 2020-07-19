#!/bin/sh
set -eu

wd=$(dirname $0)
cd $wd

sudo apt update
sudo apt install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

ansible-galaxy install robertdebock.cargo
ansible-playbook ansible/setup.yaml --ask-become-pass
