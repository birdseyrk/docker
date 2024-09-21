#!/bin/bash

/usr/bin/ansible-playbook -i /ops/ansible/inventory.txt /ops/ansible/postUpTime.yaml >> /var/log/uptime.log
