#!/bin/bash

#run on ubuntu2

docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/run-host-status-collection.sh"
