#!/bin/sh

set +x

cd /home/pi/living-room
git pull origin master

ansible-playbook --flush-cache -i inventory/hosts site.yml

set -x
