#!/bin/bash
if [ "$1" == "controlpanel" ];then
  vncserver
  sleep 10
  while pidof java &>/dev/null;do sleep 10;done
else 
  exec /usr/local/catdvServer/launchServer_stdout "$@"
fi
