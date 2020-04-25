FROM ubuntu:20.04

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    doxygen graphviz plantuml \
 && rm -rf /var/lib/apt/lists/*

ENV PLANTUML_JAR_PATH /usr/share/plantuml/plantuml.jar

WORKDIR /usr/project
VOLUME ["/usr/project"]
