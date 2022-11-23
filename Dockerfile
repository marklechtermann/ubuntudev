FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

ADD scripts/infinity.sh /usr/bin/infinity

RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates curl gnupg2 lsb-release iputils-ping curl wget vim git postgresql dnsutils && \
    chmod ugo+xr /usr/bin/infinity && \
    curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && \
    apt-get install -y kubectl
