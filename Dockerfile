FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

ADD scripts/infinity.sh /usr/bin/infinity

RUN apt-get update && \
    apt-get install -y iputils-ping curl vim git postgresql dnsutils && \
    curl -s -o /usr/bin/hey https://storage.googleapis.com/hey-release/hey_linux_amd64 && \
    chmod 755 /usr/bin/hey && \
    chmod ugo+xr /usr/bin/infinity && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.21.0/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl
