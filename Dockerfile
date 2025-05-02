FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  iputils-ping \
  curl \
  wget \
  jq \
  vim \
  kafkacat \
  telnet \
  bind9-dnsutils \
  sysvbanner \
  netcat-traditional \
  openssh-client \ 
  sysstat \
  htop \
  iotop \
  net-tools \
  pciutils \
  nload \
  iftop \
  tcpdump \
  && rm -rf /var/lib/apt/lists/*

CMD /bin/bash
