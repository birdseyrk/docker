#!/bin/bash

/usr/bin/ansible-playbook -i /ops/ansible/inventory.txt /ops/ansible/postUpTime.yaml > /var/log/`date "+%Y%m%d_%H%M%S"`-uptime.log

/setup/setup-ssh-keys.sh
