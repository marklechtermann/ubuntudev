FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

ADD scripts/infinity.sh /usr/bin/infinity

RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl iputils-ping curl vim git postgresql dnsutils && \
    curl -s -o /usr/bin/hey https://storage.googleapis.com/hey-release/hey_linux_amd64 && \
    chmod 755 /usr/bin/hey && \
    chmod ugo+xr /usr/bin/infinity && \
    sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list && \
    sudo apt-get update && \
    sudo apt-get install -y kubectl
