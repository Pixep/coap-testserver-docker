FROM ubuntu:latest

MAINTAINER Adrien Leravat <Pixep@users.noreply.github.com>

# Install prerequisites
RUN echo nameserver 8.8.8.8 > /etc/resolv.conf
RUN apt-get update && apt-get -y install git maven default-jdk

RUN mkdir -p /root/src/

# Get Californium
WORKDIR /root/src
RUN git clone https://github.com/eclipse/californium.git
WORKDIR /root/src/californium

# Building is not necessary: Binaries are in the repository.
RUN mvn clean install

WORKDIR /root
ADD tools /root
RUN chmod +x start_coap

EXPOSE 5683/udp

CMD ["/root/start_coap"]
