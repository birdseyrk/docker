#!/bin/bash

#run as ansible on ansible-master

rm -r /home/ansadmin/.ssh

cd /home/ansadmin/

ssh-keygen -q -t rsa -N '' <<< $'\ny' >/dev/null 2>&1
