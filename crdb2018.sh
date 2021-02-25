#!/bin/bash

docker run -i \
	--name crdb2018 \
	-p 127.0.0.1:26257:26257 \
  	-t cockroachdb/cockroach:v20.1.8 start-single-node --insecure
