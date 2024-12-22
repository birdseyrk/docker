#!/bin/bash

#run on ubuntu2

docker exec -t ansible-master /bin/bash -c "/setup/setup-master-hostfile.sh"
docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-ansadmin.sh"
