#!/bin/sh
set -eu

wd=$(dirname $0)
cd $wd

sudo apt update
sudo apt install --yes ansible

ansible-galaxy install robertdebock.cargo
ansible-playbook ansible/setup.yaml --ask-become-pass
