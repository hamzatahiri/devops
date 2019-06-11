#!/bin/bash

docker build -t ad .
docker run -dit --rm --name ad1 -p 3389:3389 ad > container_id
docker exec -it $(cat container_id) /bin/sh
