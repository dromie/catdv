#!/bin/bash
docker run -d -v $PWD/catdv.properties:/usr/local/catdvServer/catdv.properties -p 192.168.1.250:1099:1099 --name catdvserver6.10 catdvserver:6.10.0 "$@"
#docker run --net=host -v $PWD/catdv.properties:/usr/local/catdvServer/catdv.properties --name catdvserver catdvserver:7.3.5p10 "$@"
