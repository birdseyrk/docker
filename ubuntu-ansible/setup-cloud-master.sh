#!/bin/bash

#run on ubuntu2

docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-ansadmin.sh"
docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-ssh-keys.sh"
