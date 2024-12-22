
#run on ubuntu2 called from ansible script

docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-cloud-nodes.sh"

docker exec -t ansible-master /bin/bash -c "/setup/setup-master-hostfile.sh"
docker exec -t -u ansadmin ansible-master /bin/bash -c "/setup/setup-ansadmin.sh"
