build:
	docker build -t rdaneel/spark:2.1.1_2.7 .

run: build
	docker run -ti --rm rdaneel/spark:2.1.1_2.7 bash

run-master: build
	docker run -ti -p 8081:8080 --rm --name spark_master rdaneel/spark:2.1.1_2.7 bash

run-slave: build
	docker run -ti --rm --name spark_slave --link spark_master:master rdaneel/spark:2.1.1_2.7 bash
