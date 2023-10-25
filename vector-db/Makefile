
CONTAINER_NAME = pgvector

build:
	docker build --rm=false -t hanyuc/pgvector:latest -f Dockerfile ..

run: build
	docker run --name $(CONTAINER_NAME) -d hanyuc/pgvector:latest

stop:
	docker stop $(CONTAINER_NAME) && docker rm $(CONTAINER_NAME)
