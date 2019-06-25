docker kill $(docker ps | grep openam1 | awk -F ' ' '{print $1}')
docker rm $(docker ps -a | grep openam1 | awk -F ' ' '{print $1}')
