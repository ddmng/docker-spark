build:
	docker build -t rdaneel/spark:latest .
run:
	docker run --rm -ti rdaneel/spark
push:
	docker push rdaneel/spark:latest