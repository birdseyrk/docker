#!/bin/bash

/usr/bin/ansible-playbook -i /ops/ansible/inventory.txt /ops/ansible/systemstatus.yaml >> /var/log/systemstatus.log