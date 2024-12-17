docker build --no-cache --add-host ansible-master:172.17.0.12 -t ansible-master . -f Dockerfile-ansible-master

docker build --no-cache -t ubuntu-node . -f Dockerfile-ansible-node

docker run -dt -h ubuntu-node01 --restart=unless-stopped --name ubuntu-node01 ubuntu-node
docker run -dt -h ubuntu-node02 --restart=unless-stopped --name ubuntu-node02 ubuntu-node
docker run -dt -h ubuntu-node03 --restart=unless-stopped --name ubuntu-node03 ubuntu-node
docker run -dt -h ubuntu-node04 --restart=unless-stopped --name ubuntu-node04 ubuntu-node
docker run -dt -h ubuntu-node05 --restart=unless-stopped --name ubuntu-node05 ubuntu-node
docker run -dt -h ubuntu-node06 --restart=unless-stopped --name ubuntu-node06 ubuntu-node
docker run -dt -h ubuntu-node07 --restart=unless-stopped --name ubuntu-node07 ubuntu-node
docker run -dt -h ubuntu-node08 --restart=unless-stopped --name ubuntu-node08 ubuntu-node
docker run -dt -h ubuntu-node09 --restart=unless-stopped --name ubuntu-node09 ubuntu-node
docker run -dt -h ubuntu-node10 --restart=unless-stopped --name ubuntu-node10 ubuntu-node

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

docker run -dt -h ansible-master --restart=unless-stopped --name ansible-master ansible-master
docker exec -t ansible-master /bin/bash -c "/setup/setup-master.sh"
docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-ansadmin.sh"
