#!/bin/bash

docker run \
	--name mariadb103 \
	-p 127.0.0.1:3306:3306 \
  	-e MYSQL_ROOT_PASSWORD=camunda \
  	-e MYSQL_USER=camunda \
  	-e MYSQL_PASSWORD=camunda \
  	-e MYSQL_DATABASE=process-engine \
  	-d mariadb:10.3
