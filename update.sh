#!/bin/sh

set +x

cd /home/pi/setup
git pull origin master

ansible-playbook --flush-cache -i inventory/prod/hosts site.yml

set -x
