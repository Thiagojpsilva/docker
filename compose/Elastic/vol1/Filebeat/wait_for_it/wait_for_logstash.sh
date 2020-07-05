#!/bin/sh

set -e
while [[ "$(curl -s -o /dev/null -L -w ''%{http_code}'' "ls01:9600")" != "200" ]];  
              do 
              echo aguardando_logstash
              sleep 10
              done; echo logstash_ok;
exec filebeat -e