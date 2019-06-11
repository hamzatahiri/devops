#!/bin/bash

docker build -t idm .
docker run -dit --name idm1 -p 8080:8080 idm /bin/bash -c "/root/openidm/startup.sh -p /root/openidm/samples/getting-started/ > /dev/null 2>&1 &  /bin/bash" > container_id
docker exec -it $(cat container_id) /bin/bash
