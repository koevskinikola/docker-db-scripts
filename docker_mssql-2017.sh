#!/bin/bash

docker run -i \
	--name mssql2017 \
	-p 127.0.0.1:1433:1433 \
	-e 'ACCEPT_EULA=Y' \
	-e 'MSSQL_SA_ID=camunda' \
  	-e 'MSSQL_SA_PASSWORD=Camunda-BPM123' \
  	-e 'MSSQL_PID=Developer' \
  	-d mcr.microsoft.com/mssql/server:2017-latest

sleep 5s

docker cp sqlServerInit.sql mssql2017:/

sleep 5s

docker exec -it mssql2017 /opt/mssql-tools/bin/sqlcmd -U sa -P Camunda-BPM123 -i /sqlServerInit.sql