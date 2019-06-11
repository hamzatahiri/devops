# IAM devops

This project aims to provide multiple ready-to-use containers, for opendj, ldap and other forgercok products
All three services are accessible from the host os, on forwarded ports (you can change these on the respoective Dockerfile for each service) 
Forgerock DS 6.5: 2636(ldap)
Forgerock IDM 6.5 :8080(http)
Apache DS : 3389(ldap)

Both forgerock products zip files should be placed in the respective directories (ds, idm)

All services could be started from start-all.sh to check if everything is created, this commande "docker ps -a" should print somethign like this:


```linux

CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                      NAMES
97e02612d4cf        idm                 "/bin/bash -c '/root…"   4 seconds ago       Up 2 seconds        0.0.0.0:8080->8080/tcp     idm1
66e4695b6d4e        opendj              "/bin/bash -c '/root…"   4 seconds ago       Up 2 seconds        0.0.0.0:2389->2389/tcp     opendj1
fe696f97c4c6        ad                  "java -jar ldap-serv…"   34 seconds ago      Up 33 seconds       0.0.0.0:3389->3389/tcp     ad1

```
