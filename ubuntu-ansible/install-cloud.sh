docker build --no-cache --add-host ansible-master -t ansible-master . -f Dockerfile-ansible-master

docker build --no-cache -t ubuntu-node . -f Dockerfile-ansible-node

docker network create --subnet=172.20.0.0/16 ansiblenet

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

docker exec -t ubuntu-node01 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node02 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node03 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node04 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node05 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node06 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node07 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node08 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node09 /bin/bash -c "/setup/setup-node.sh"
docker exec -t ubuntu-node10 /bin/bash -c "/setup/setup-node.sh"

docker run -dt -h ansible-master --net ansiblenet --ip 172.20.0.20 --restart=unless-stopped --name ansible-master ansible-master
docker exec -t ansible-master /bin/bash -c "/setup/setup-master.sh"
docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-ansadmin.sh"
