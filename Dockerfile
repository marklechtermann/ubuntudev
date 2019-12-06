FROM ubuntu:latest

ARG testversion

RUN apt update;\
    apt install -y iputils-ping curl vim git;\
    curl -s -o /usr/bin/hey https://storage.googleapis.com/hey-release/hey_linux_amd64;\
    chmod 755 /usr/bin/hey;\
    echo "###############################";\
    echo 789;\
    echo $testversion;\
    echo 123;\
    echo 456;\
    echo "Hello my name is 123 and 345";\
    echo "Hello my name is 123 and 345 and $testversion and 678";\
    echo "###############################"