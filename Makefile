build:
	docker build -t rdaneel/spark:2.1.1_2.7 .

run: build
	docker run -ti --rm rdaneel/spark:2.1.1_2.7 bash

run-master:
	docker run -p 8081:8080 -d --name spark_master rdaneel/spark:2.1.1_2.7 run_master

run-slave:
	docker run -d --name spark_slave --link spark_master:spark_master rdaneel/spark:2.1.1_2.7 run_slave

shell:
	docker run -ti --rm --name spark_shell rdaneel/spark:2.1.1_2.7 bash

push:
	docker push rdaneel/spark:2.1.1_2.7

test: build
	./test.sh
