FROM ubuntu:23.04

RUN apt-get -y update \
    && apt-get -y install sudo \
    && echo 'root ALL=(ALL:ALL) NOPASSWD:ALL' | tee -a /etc/sudoers \
    && echo 'ubuntu ALL=(ALL:ALL) NOPASSWD:ALL' | tee -a /etc/sudoers

USER ubuntu

COPY setup-pgvector.sh setup-pgvector.sh
RUN sudo chmod ugo+rx setup-pgvector.sh

RUN sudo apt-get -y update \
    && sudo apt-get -y install git build-essential

RUN bash setup-pgvector.sh
