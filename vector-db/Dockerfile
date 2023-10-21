FROM ubuntu:23.04

COPY setup-pgvector.sh setup-pgvector.sh
RUN apt-get -y update \
    && apt-get -y install git build-essential \
    && bash setup-pgvector.sh
