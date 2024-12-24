#!/bin/bash

#run on ubuntu2

docker run -dt -h ansible-master --net ansiblenet --ip 172.20.0.20 --restart=unless-stopped --name ansible-master ansible-master
