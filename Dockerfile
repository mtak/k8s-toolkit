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
  && rm -rf /var/lib/apt/lists/*

CMD /bin/bash
