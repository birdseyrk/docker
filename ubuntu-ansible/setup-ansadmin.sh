#!/bin/bash

#run as ansible on ubuntu2

rm -r /home/ansadmin/.ssh

ssh-keygen -q -t rsa -N '' <<< $'\ny' >/dev/null 2>&1

ssh-keyscan creede   >> ~/.ssh/known_hosts
ssh-keyscan creede02 >> ~/.ssh/known_hosts
ssh-keyscan creede03 >> ~/.ssh/known_hosts
 
ssh-keyscan ubuntu1 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu2 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu3 >> ~/.ssh/known_hosts

ssh-keyscan ansible-master >> ~/.ssh/known_hosts

ssh-keyscan ubuntu-node01 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node02 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node03 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node04 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node05 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node06 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node07 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node08 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node09 >> ~/.ssh/known_hosts
ssh-keyscan ubuntu-node10 >> ~/.ssh/known_hosts

sshpass -f /setup/password.txt ssh-copy-id ansadmin@creede
sshpass -f /setup/password.txt ssh-copy-id ansadmin@creede02
sshpass -f /setup/password.txt ssh-copy-id ansadmin@creede03

sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu1
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu2
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu3

sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node01
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node02
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node03
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node04
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node05
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node06
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node07
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node08
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node09
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ubuntu-node10
sshpass -f /setup/password.txt ssh-copy-id ansadmin@ansible-master

/ops/ansible/systemstatus.sh > /var/log/systemstatus.log
/ops/ansible/uptime.sh > /var/log/uptime.log
