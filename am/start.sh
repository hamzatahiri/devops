#!/bin/bash

docker build -t openam .
docker run -dit --name openam1 -p 80:8080 openam /bin/bash -c 'sed -i "s/hostname/$(hostname -f)/g" "/root/sample.config" && sed -i "s/cookie/$(hostname -f)/g" "/root/sample.config" && echo $(hostname -i)" "$(hostname -f) >> /etc/hosts && echo $(hostname -f) && echo $(hostname -i)  && /root/tomcat/bin/startup.sh && sleep 120 && java -jar /root/openam/openam-configurator-tool-14.1.2.3.jar -f /root/sample.config >> /root/output.out   &&  /bin/bash' > container_id
docker exec -it $(cat container_id) /bin/bash
