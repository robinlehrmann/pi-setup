#!/bin/sh

set -x

echo "gpu_mem=16" >> /boot/config.txt
echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" > /etc/apt/sources.list.d/ansible.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt-get update

cat <<EOF > inventory/prod/group_vars/pi.yml
---
mysql_password: `pwgen -sCB 15 1`
pihole_password: `pwgen -sCB 15 1`
owncloud_password: `pwgen -sCB 15 1`
firefly_app_key: `pwgen -sCB 15 1`
EOF
