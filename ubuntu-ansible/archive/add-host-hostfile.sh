#!/bin/bash

# run on ansible-master as root

# parameter 1 is IP and Hostname with one space in between them

echo "add-host-hostfile.sh [ $1 ]" >> /var/log/ops.log

/usr/bin/ansible-playbook -i /ops/ansible/master-inventory.txt /ops/ansible/add-host-hostfile.yaml --extra-vars "myLine='$1'"
