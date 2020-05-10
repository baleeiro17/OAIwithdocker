FROM oaisim-base

RUN git clone https://gitlab.eurecom.fr/oai/openairinterface5g.git ue_folder
RUN cd ue_folder && git checkout develop

RUN adduser l2nfapi
RUN adduser l2nfapi sudo
RUN echo "l2nfapi      ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER l2nfapi
USER root

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata
RUN cd ue_folder/cmake_targets && sudo ./build_oai --UE -I -c

COPY ue.nfapi.conf /ue_folder/ci-scripts/conf_files/ue.nfapi.conf
COPY ue_eurecom_test_sfr.conf    /ue_folder/openair3/NAS/TOOLS/ue_eurecom_test_sfr.conf
COPY script.sh /root/script.sh
RUN chmod +x /root/script.sh
RUN sudo ./root/script.sh
RUN cd ue_folder/targets/bin && sudo ./conf2uedata -c /ue_folder/openair3/NAS/TOOLS/ue_eurecom_test_sfr.conf -o /ue_folder/cmake_targets/ran_build/build/
COPY exec.sh /exec.sh
RUN chmod +x /exec.sh
ENTRYPOINT ["/exec.sh"]

