FROM oaisim-base

RUN git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git enb_folder
RUN cd enb_folder && git checkout develop

RUN adduser l2nfapi
RUN adduser l2nfapi sudo
RUN echo "l2nfapi      ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER l2nfapi
USER root

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata
RUN cd enb_folder/cmake_targets && sudo ./build_oai --eNB --mu -I -c

COPY rcc.band7.tm1.nfapi.conf /enb_folder/ci-scripts/conf_files/rcc.band7.tm1.nfapi.conf


