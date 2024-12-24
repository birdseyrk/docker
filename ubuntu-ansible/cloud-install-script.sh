#!/bin/bash

#run in jenkins
chmod +x /home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/*.sh

cd /home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/

/home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/delete-cloud.sh;
sleep 5;
/home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/build-cloud-network.sh;
sleep 1;
/home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/build-cloud-images.sh;
sleep 5;
/home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/install-cloud-nodes.sh;
sleep 1;
/home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/setup-cloud-nodes.sh
sleep 1;
/home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/install-cloud-master.sh
sleep 5;
/home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/setup-cloud-master.sh
sleep 2;
/home/ansadmin/local/docker-ubuntu/docker/ubuntu-ansible/get-status.sh

exit 0

