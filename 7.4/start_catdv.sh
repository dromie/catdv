#!/bin/bash
NAME=catdvserver7.4
docker rm $NAME
docker run -d --link docker.mysql.service:mysql -v $PWD/catdv.properties:/usr/local/catdvServer/catdv.properties -p 192.168.1.251:1099:1099 -p 192.168.1.251:8080:8080 --name $NAME catdvserver:7.4.3 "$@"
addhost.sh $NAME
#docker run --net=host -v $PWD/catdv.properties:/usr/local/catdvServer/catdv.properties --name catdvserver catdvserver:7.3.5p10 "$@"
