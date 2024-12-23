#!/bin/bash

#run as ansible on ubuntu2

echo "restart-ssh-service.sh [ $1 ]" >> /var/log/ops.log

#docker exec -t $1 /bin/bash -c  "service ssh restart"

/usr/bin/ansible-playbook -i /ops/ansible/restart-inventory.txt /ops/ansible/restart-ssh-service.yaml --extra-vars "myHost='$1'"
