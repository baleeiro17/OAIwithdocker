FROM oaisim-base

RUN apt-get -y install git
RUN git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git ue_folder
RUN cd ue_folder && git checkout develop