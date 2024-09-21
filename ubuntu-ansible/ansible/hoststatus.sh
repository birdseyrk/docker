#!/bin/bash

/usr/bin/ansible-playbook -i /ops/ansible/inventory.txt /ops/ansible/postHostStatus.yaml >> /var/log/hoststatus.log
