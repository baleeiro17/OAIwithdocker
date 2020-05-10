#!/bin/bash

echo "Initializing UEs ..."
cd enb_folder/cmake_targets/ran_build/build/ && sudo -E ./lte-softmodem -O /enb_folder/ci-scripts/conf_files/rcc.band7.tm1.nfapi.conf > enb.log 2>&1
