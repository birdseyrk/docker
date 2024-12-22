#!/bin/bash

#run on ubuntu2

#docker build --no-cache --add-host ansible-master:172.20.0.20 -t ansible-master . -f Dockerfile-ansible-master
docker build --no-cache -t ansible-master . -f Dockerfile-ansible-master

docker build --no-cache -t ubuntu-node . -f Dockerfile-ansible-node
