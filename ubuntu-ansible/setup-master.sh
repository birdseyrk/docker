#!/bin/bash

cp -p /etc/hosts /etc/hosts.orig
cp /setup/hosts /etc/hosts
service ssh restart

# su - ansadmin
# #bash

# ssh-keygen -q -t rsa -N '' <<< $'\ny' >/dev/null 2>&1

# sshpass -f /setup/password.txt ssh-copy-id ansadmin@creede
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@creede02
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@creede03

# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu1
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu2
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu3

# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node01
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node02
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node03
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node04
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node05
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node06
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node07
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node08
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node09
# sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node10

# /ops/ansible/systemstatus.sh > /var/log/systemstatus.log
# /ops/ansible/uptime.sh > /var/log/uptime.log
