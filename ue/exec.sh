#!/bin/bash

cd ue_folder/cmake_targets/ran_build/build/ && ./lte-uesoftmodem -O /ue_folder/ci-scripts/conf_files/ue.nfapi.conf --L2-emul 3 --num-ues 1 --nums_ue_thread 1 --nokrnmod 1 > ue.log 2>&1