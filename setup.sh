#!/bin/bash
export ANSIBLE_HOST_KEY_CHECKING=False
export ANSIBLE_STDOUT_CALLBACK=debug
if [[ $# == 1 ]] && [[ $1 == "local" ]]; then
  ansible-playbook setup-local.yml
else
  ansible-playbook setup-local.yml
  ansible-playbook setup-ocne.yml -i hosts
fi