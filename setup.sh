#!/bin/sh

sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
