FROM ubuntu:20.04

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    doxygen graphviz plantuml \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
