#!/bin/bash

#run on ubuntu2

docker run -dt -h ansible-master --net ansiblenet --ip 172.20.0.20 --restart=unless-stopped --name ansible-master ansible-master
# moved
# docker exec -t ansible-master /bin/bash -c "/setup/setup-master-hostfile.sh"
# docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-ansadmin.sh"
