docker run -itd \
	--name oracle11 \
	--privileged=true \
	-p 5432:5432 \
	-p 1521:1521 \
	-e LICENSE=accept \
	registry.camunda.cloud/team-cambpm/camunda-ci-oracle:11
