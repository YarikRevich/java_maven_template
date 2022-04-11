.PHONY: build, install

build:
	@mvn clean compile assembly:single -T100 -DskipTests -q

install:
	@touch ${installation path}
	@chmod +x ${installation path}
	@echo '' > ${installation path}
	@echo '#!/bin/bash' >> ${installation path}
	@echo 'java -jar $(PWD)/${path to jar file}' >> ${installation path}
