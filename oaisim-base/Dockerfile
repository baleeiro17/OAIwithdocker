FROM ubuntu:18.04

RUN apt-get -y update && apt-get install linux-image-4.15.0-99-lowlatency 
RUN apt-get -y linux-headers-4.15.0-99-lowlatency software-properties-common git wget git /
RUN apt-get -y build-essential sudo psmic vim -yq
RUN apt-get -y install git
RUN apt-get -y install iputils-ping
