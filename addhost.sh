#!/bin/bash -x
lock="/var/run/addhosts.lock"
NAME=$1
if [ -n $NAME ];then
	while [ -z $ipaddress ];do 
		ipaddress=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' $NAME`
	done
	exec 200> $lock
	flock -e 200
	sed -i -e "/$NAME\$/d" /etc/hosts
	echo "$ipaddress $NAME" >>/etc/hosts
fi
