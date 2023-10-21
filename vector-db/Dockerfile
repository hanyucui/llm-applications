FROM ubuntu:23.04

RUN apt-get -y update \
    && apt-get -y install sudo \
    && echo 'ubuntu ALL=(ALL:ALL) NOPASSWD:ALL' | tee /etc/sudoers

USER ubuntu

COPY setup-pgvector.sh setup-pgvector.sh
RUN sudo apt-get -y update \
    && sudo apt-get -y install git build-essential \
    && bash setup-pgvector.sh
