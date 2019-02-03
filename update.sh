#!/bin/sh

set +x

cd /home/pi/setup
git pull origin master

ansible-playbook --flush-cache -i inventory/hosts site.yml

set -x
