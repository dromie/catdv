#!/bin/bash

docker run -d --name mysql -v $PWD/create_catdv.sql:/docker-entrypoint-initdb.d/catdv.sql -e MYSQL_ROOT_PASSWORD=rootpw mysql:5.5

