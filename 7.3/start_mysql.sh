#!/bin/bash

docker run -d --name mysql -v $PWD/create_catdv.sql:/docker-entrypoint-initdb.d/catdv.sql -e MYSQL_ROOT_PASSWORD=rootpw -e MYSQL_USER=catdv -e MYSQL_PASSWORD=catdv -e MYSQL_DATABASE=catdv mysql:5.5

