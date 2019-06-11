#!/bin/bash

docker build -t opendj .
docker run -dit --name opendj1 -p 2389:2389 opendj /bin/bash -c "/root/opendj/bin/start-ds && /bin/bash" > container_id
docker exec -it $(cat container_id) /bin/bash
