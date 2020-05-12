FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y git vim nano net-tools cmake g++ kmod linux-image-$(uname -r) linux-headers-$(uname -r) sudo
RUN apt-get -y install iputils-ping
