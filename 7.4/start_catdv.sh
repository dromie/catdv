#!/bin/bash
docker run -d -v $PWD/catdv.properties:/usr/local/catdvServer/catdv.properties -p 192.168.1.251:1099:1099 --name catdvserver7.3 catdvserver:7.3.5p10 "$@"
#docker run --net=host -v $PWD/catdv.properties:/usr/local/catdvServer/catdv.properties --name catdvserver catdvserver:7.3.5p10 "$@"
