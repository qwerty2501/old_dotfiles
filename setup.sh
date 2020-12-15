#!/bin/sh
set -eu

wd=$(dirname $0)
cd $wd


skip_tags=''
force_install="false"
for OPT in "$@"
do
	case $OPT in
				--force-install)
			force_install=true
			shift 1;;

		--no-interactive)
			skip_tags="$skip_tags --skip-tags require_google_auth --skip-tags environment"
			shift 1;;
	esac

done

sudo apt update
sudo apt install --yes ansible

ansible-galaxy install robertdebock.cargo
ansible-playbook ansible/setup.yaml --ask-become-pass $skip_tags --extra-vars="force_install=$force_install"

