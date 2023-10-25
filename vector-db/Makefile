
CONTAINER_NAME = pgvector

build:
	docker build --rm=false -t hanyuc/pgvector:latest -f Dockerfile ..

run:
	docker run -p 127.0.0.1:5432:5432 --name $(CONTAINER_NAME) -d hanyuc/pgvector:latest

stop:
	docker stop $(CONTAINER_NAME) && docker rm $(CONTAINER_NAME)

restart: stop run
