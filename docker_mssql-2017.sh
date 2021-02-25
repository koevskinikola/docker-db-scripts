#!/bin/bash

docker run -i \
	--name mssql \
	-p 1433:1433 \
	-e 'ACCEPT_EULA=Y' \
  	-e 'MSSQL_SA_PASSWORD=Camunda-BPM123' \
  	-d mcr.microsoft.com/mssql/server:2017-latest

sleep 5s

docker cp sqlServerInit.sql mssql:/

sleep 5s

docker exec -it mssql /opt/mssql-tools/bin/sqlcmd -U sa -P Camunda-BPM123 -i /sqlServerInit.sql
