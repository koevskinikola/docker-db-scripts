docker run -itd \
	--name db2 \
	--privileged=true \
	-p 50000:50000 \
	-e LICENSE=accept \
	registry.camunda.cloud/team-cambpm/camunda-ci-db2:11.1
