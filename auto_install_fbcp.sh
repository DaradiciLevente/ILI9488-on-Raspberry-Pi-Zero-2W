#!/bin/bash
cd ~
sudo apt update
sudo apt install libraspberrypi-dev
sudo apt install cmake git build-essential
git clone https://github.com/juj/fbcp-ili9341.git
cd fbcp-ili9341
mkdir build
cd build
cmake -DILI9488=ON -DGPIO_TFT_DATA_CONTROL=24 -DGPIO_TFT_RESET_PIN=25 -DSPI_BUS_CLOCK_DIVISOR=8 -DSTATISTICS=0  ..
make -j
sudo ./fbcp-ili9341
