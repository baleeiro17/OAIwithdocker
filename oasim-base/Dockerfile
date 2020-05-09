FROM ubuntu:18.04

RUN apt-get update && apt-get install linux-image-4.15.0-99-lowlatency /
linux-headers-4.15.0-99-lowlatency software-properties-common git wget git /
build-essential sudo psmic vim -yq

RUN apt-get -y install git
RUN apt-get install iputils-ping
