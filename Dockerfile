FROM ubuntu:latest

ADD scripts/infinity.sh /usr/bin/infinity

RUN apt-get update;\
    apt-get install -y iputils-ping curl vim git;\
    curl -s -o /usr/bin/hey https://storage.googleapis.com/hey-release/hey_linux_amd64;\
    chmod 755 /usr/bin/hey;\
    chmod ugo+xr /usr/bin/infinity