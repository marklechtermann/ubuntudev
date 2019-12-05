FROM ubuntu:latest

RUN apt update;\
    apt install -y iputils-ping curl vim git;\
    curl -s -o /usr/bin/hey https://storage.googleapis.com/hey-release/hey_linux_amd64;\
    chmod 755 /usr/bin/hey