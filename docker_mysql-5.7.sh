#!/bin/bash

docker run -i \
	--name=camunda \
	-p 127.0.0.1:3306:3306 \
    -e MYSQL_ROOT_PASSWORD=camunda \
	-e MYSQL_USER=camunda \
	-e MYSQL_PASSWORD=camunda \
	-e MYSQL_DATABASE=process-engine \
	-d mysql/mysql-server:5.7