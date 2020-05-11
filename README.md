## OAISIM + free5GC with Docker.

## Project Description

In this repository, we developed an environment for simulating UE and ENB using l2NFAPI simulator from Open Air interface connected into 5g core from free5gcore. This work is on-going.

For more information:
* [free5gc](https://www.free5gc.org/)
* [Open Air Interface](https://www.openairinterface.org/)


## Dependencies

* [Docker](https://docs.docker.com/install/)
* [Docker Compose](https://docs.docker.com/compose/install/)


## Base Image
Each box of project is based on a compiled free5gc image. To build this image use the follow command:
``sudo docker build -t free5gc-base .``

Each box of project is based on a compiled oaisim image. To build this image use the follow command:
``cd oaisim-base sudo docker build -t oaisim-base  .``


## Running
To run all boxes and Web interface use the follow command:
``sudo docker-compose up -d``
