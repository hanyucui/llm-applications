FROM ubuntu:23.04

RUN apt-get -y update \
    && apt-get -y install sudo \
    && echo 'root ALL=(ALL:ALL) NOPASSWD:ALL' | tee -a /etc/sudoers \
    && echo 'ubuntu ALL=(ALL:ALL) NOPASSWD:ALL' | tee -a /etc/sudoers

USER ubuntu

COPY setup-pgvector.sh setup-pgvector.sh
RUN sudo chmod ugo+rx setup-pgvector.sh

RUN sudo apt-get -y update \
    && sudo apt-get -y install lsb-release git build-essential

#RUN bash setup-pgvector.sh


RUN sudo apt install -y wget ca-certificates
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
RUN sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
RUN sudo apt update && sudo apt install -y postgresql postgresql-contrib
RUN # Install pgvector
RUN sudo apt install -y postgresql-server-dev-15
RUN cd /tmp && git clone --branch v0.4.4 https://github.com/pgvector/pgvector.git && cd pgvector && make && sudo make install
RUN # Activate pgvector and the database
RUN echo 'ray ALL=(ALL:ALL) NOPASSWD:ALL' | sudo tee -a /etc/sudoers

COPY vector-db/pg-init.sh /home/ubuntu/pg-init.sh
RUN sudo chmod ugo+rx /home/ubuntu/pg-init.sh
CMD /home/ubuntu/pg-init.sh
