docker kill $(docker ps | grep opendj1 | awk -F ' ' '{print $1}')
docker rm $(docker ps -a | grep opendj1 | awk -F ' ' '{print $1}')
