#!/bin/bash

/usr/bin/ansible-playbook -i /ops/ansible/inventory.txt /ops/ansible/systemstatus.yaml > /var/log/`date "+%Y%m%d_%H%M%S"`-systemstatus.log