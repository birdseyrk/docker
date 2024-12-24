
#run on ubuntu2

# docker exec -t -u ansadmin ubuntu2 /bin/bash -c "~/local/docker-ubuntu/docker/ubuntu-ansible/setup-cloud-nodes.sh"


docker exec -t ubuntu-node01 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node02 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node03 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node04 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node05 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node06 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node07 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node08 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node09 /bin/bash -c "service ssh restart"
docker exec -t ubuntu-node10 /bin/bash -c "service ssh restart"


docker exec -t ansible-master /bin/bash -c "/setup/setup-master-hostfile.sh"
docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-ansadmin.sh"
