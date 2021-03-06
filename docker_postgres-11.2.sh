#!/bin/bash

docker run -i \
	--name postgres112 \
	-p 127.0.0.1:5432:5432 \
  	-e POSTGRES_USER=camunda \
  	-e POSTGRES_PASSWORD=camunda \
  	-e POSTGRES_DB=process-engine \
  	-t postgres:11.2
