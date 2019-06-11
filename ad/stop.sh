docker kill $(docker ps | grep ad1 | awk -F ' ' '{print $1}')
#docker rm $(docker ps -a | grep ad1 | awk -F ' ' '{print $1}')
