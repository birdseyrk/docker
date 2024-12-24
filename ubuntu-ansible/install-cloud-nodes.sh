#!/bin/bash

#run on ubuntu2

docker run -dt -h ubuntu-node01 --net ansiblenet --ip 172.20.0.21 --restart=unless-stopped --name ubuntu-node01 ubuntu-node
docker run -dt -h ubuntu-node02 --net ansiblenet --ip 172.20.0.22 --restart=unless-stopped --name ubuntu-node02 ubuntu-node
docker run -dt -h ubuntu-node03 --net ansiblenet --ip 172.20.0.23 --restart=unless-stopped --name ubuntu-node03 ubuntu-node
docker run -dt -h ubuntu-node04 --net ansiblenet --ip 172.20.0.24 --restart=unless-stopped --name ubuntu-node04 ubuntu-node
docker run -dt -h ubuntu-node05 --net ansiblenet --ip 172.20.0.25 --restart=unless-stopped --name ubuntu-node05 ubuntu-node
docker run -dt -h ubuntu-node06 --net ansiblenet --ip 172.20.0.26 --restart=unless-stopped --name ubuntu-node06 ubuntu-node
docker run -dt -h ubuntu-node07 --net ansiblenet --ip 172.20.0.27 --restart=unless-stopped --name ubuntu-node07 ubuntu-node
docker run -dt -h ubuntu-node08 --net ansiblenet --ip 172.20.0.28 --restart=unless-stopped --name ubuntu-node08 ubuntu-node
docker run -dt -h ubuntu-node09 --net ansiblenet --ip 172.20.0.29 --restart=unless-stopped --name ubuntu-node09 ubuntu-node
docker run -dt -h ubuntu-node10 --net ansiblenet --ip 172.20.0.30 --restart=unless-stopped --name ubuntu-node10 ubuntu-node
