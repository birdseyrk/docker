#!/bin/bash

# run on ubuntu1 as ansadmin
echo $1
echo $2

docker run -dt -h $1 --net $2 --restart=unless-stopped --name $1 ubuntu-node

sleep 10;

docker exec -it $1  service ssh restart