all: run

build:
	docker build --rm=false -t hanyuc/pgvector:latest -f Dockerfile ..

run: build
	docker run -d hanyuc/pgvector:latest
