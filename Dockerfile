FROM debian:9
MAINTAINER Daniele De Lorenzi <daniele.delorenzi@fastnetserv.net>

RUN apt update && \
    apt install curl
    
RUN curl -sSL https://install.pi-hole.net | bash

EXPOSE 80
EXPOSE 53

ENTRYPOINT