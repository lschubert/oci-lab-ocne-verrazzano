#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_STDOUT_CALLBACK=debug
if [[ $# == 1 ]] && [[ $1 == "local" ]]; then
  ansible-playbook setup-local.yml
elif [[ $# == 1 ]] && [[ $1 == "v8o" ]]; then
  ansible-playbook setup-local.yml
  ansible-playbook setup-ocne.yml -i hosts
  ansible-playbook setup-verrazzano.yml -i hosts
else
  ansible-playbook setup-local.yml
  ansible-playbook setup-ocne.yml -i hosts
fi