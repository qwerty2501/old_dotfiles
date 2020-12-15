#!/bin/sh
set -eu

wd=$(dirname $0)
cd $wd


ask_become_pass="--ask-become-pass"
skip_tags=''
for OPT in "$@"
do
	case $OPT in
		--no-interactive)
			ask_become_pass=""
			skip_tags="$skip_tags --skip-tags require_google_auth"
			shift 1;;
	esac

done

sudo apt update
sudo apt install --yes ansible

ansible-galaxy install robertdebock.cargo
ansible-playbook ansible/setup.yaml $ask_become_pass $skip_tags

