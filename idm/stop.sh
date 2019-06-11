docker kill $(docker ps | grep idm1 | awk -F ' ' '{print $1}')
docker rm $(docker ps -a | grep idm1 | awk -F ' ' '{print $1}')
