FROM oaisim-base

RUN apt-get -y install git
RUN git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git ue_folder
RUN cd ue_folder && git checkout develop

RUN adduser l2nfapi
RUN adduser l2nfapi sudo
RUN echo "l2nfapi      ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER l2nfapi

RUN cd ue_folder/cmake_targets && sudo ./build_oai -i
RUN cd ue_folder/cmake_targets && sudo ./build_oai --UE -c

USER root

COPY ue.nfapi.conf /ue_folder/ci-scripts/conf_files/ue.nfapi.conf