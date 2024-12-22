#!/bin/bash

#run on ubuntu2

docker stop ansible-master
docker stop ubuntu-node01
docker stop ubuntu-node02
docker stop ubuntu-node03
docker stop ubuntu-node04
docker stop ubuntu-node05
docker stop ubuntu-node06
docker stop ubuntu-node07
docker stop ubuntu-node08
docker stop ubuntu-node09
docker stop ubuntu-node10
docker ps -a

docker rm ansible-master
docker rm ubuntu-node01
docker rm ubuntu-node02
docker rm ubuntu-node03
docker rm ubuntu-node04
docker rm ubuntu-node05
docker rm ubuntu-node06
docker rm ubuntu-node07
docker rm ubuntu-node08
docker rm ubuntu-node09
docker rm ubuntu-node10
docker ps -a

docker network rm ansiblenet

docker image rm ubuntu-node
docker image rm ansible-master

# docker ps -a
# docker images
