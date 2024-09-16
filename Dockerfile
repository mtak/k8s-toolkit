FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
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
  kafkacat \
  sysstat \
  htop \
  iotop \
  net-tools \
  pciutils \
  nload \
  iftop \
  && rm -rf /var/lib/apt/lists/*

CMD /bin/bash
