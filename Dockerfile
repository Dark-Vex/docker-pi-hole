FROM debian:9
MAINTAINER Daniele De Lorenzi <daniele.delorenzi@fastnetserv.net>

RUN apt update && \
    apt install curl -y
    
RUN curl -sSL https://install.pi-hole.net | bash

EXPOSE 53 53/UDP 80

ENTRYPOINT
