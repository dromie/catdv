#!/bin/bash
docker run --net=host -v $PWD/catdv.properties:/usr/local/catdvServer/catdv.properties --name catdvserver catdvserver:7.3.5p10
